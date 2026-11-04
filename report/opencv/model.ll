Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/model?download=true
inline.NumInlined: 3643
inline.NumDeleted: 1499
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514DetectionModel6detectERKNS_11_InputArrayERSt6vectorIiSaIiEERS6_IfSaIfEERS6_INS_5Rect_IiEESaISE_EEff:bb.a
  %i.gd = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.bs
  br i1 %i.ge, label %.critedge298.thread795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.thread: ; preds = %.thread788
  %i.gf = load i64, ptr %i.bs, align 8, !tbaa !77
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bd

.critedge298.thread795:                           ; preds = %.thread788
  %i.gh = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.gi = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gi)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.bc
  %i.gj = load i64, ptr %i.ga, align 8, !tbaa !77
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gk) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %.not800, label %.critedge302, label %bb.bd

.critedge298:                                     ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %.not800, label %.critedge302, label %bb.bd

.critedge299:                                     ; preds = %bb.bb
  br i1 %.not800, label %.critedge302, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.thread, %.critedge298.thread795, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %.critedge298, %.critedge299.thread, %.critedge299
  %.pn239.pn.pn.pn.pn.pn779 = phi { ptr, i32 } [ %i.fr, %.critedge299.thread ], [ %.pn239.pn.pn, %.critedge299 ], [ %.pn239.pn.pn, %.critedge298 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348.thread ], [ %.pn239.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %i.gc, %.critedge298.thread795 ]
  %i.gl = load ptr, ptr %18, align 8, !tbaa !78   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %.critedge301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %bb.bd
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !77
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #28
  br label %.critedge301

.critedge301:                                     ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %.critedge302

.critedge302:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %.critedge299, %.critedge298, %.critedge301, %bb.aw
  %.pn239.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn779, %.critedge301 ], [ %i.fq, %bb.aw ], [ %.pn239.pn.pn, %.critedge298 ], [ %.pn239.pn.pn, %.critedge299 ], [ %.pn239.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #29
  br label %bb.be

bb.be:                                            ; preds = %.critedge302, %bb.av
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn, %.critedge302 ], [ %i.fp, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.gj

bb.bf:                                            ; preds = %bb.as, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit344
  %.0192 = phi i32 [ %i.fk, %bb.as ], [ %i.ar, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit344 ] ; 2 uses
  %.0191 = phi i32 [ %i.fm, %bb.as ], [ %i.as, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit344 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.gq = load ptr, ptr %.pre, align 8, !tbaa !37
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.gs(ptr noundef nonnull align 8 dereferenceable(336) %.pre)
          to label %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit355 unwind label %bb.bj, !inline_history !5

_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit355: ; preds = %bb.bf
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net13getLayerNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit355
  %i.gu = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !37
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.gx(ptr noundef nonnull align 8 dereferenceable(336) %i.gu)
          to label %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit357 unwind label %bb.bk, !inline_history !5

_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit357: ; preds = %bb.bg
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !122
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -32
  %i.hc = invoke noundef i32 @_ZNK2cv3dnn14dnn5_v202606053Net10getLayerIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.hb)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit357
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.hd = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !37
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.hg(ptr noundef nonnull align 8 dereferenceable(336) %i.hd)
          to label %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit359 unwind label %bb.bl, !inline_history !5

_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit359: ; preds = %bb.bh
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net8getLayerEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.47") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i32 noundef %i.hc)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit359
  %i.hi = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 120 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 128
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !76
  switch i64 %i.hl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit380.thread784 [
    i64 15, label %.split783
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit380
  ]

.split783:                                        ; preds = %bb.bi
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !78 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 1
  %i.ho = xor i64 %i.hn, 8028075781017331012
  %i.hp = getelementptr i8, ptr %i.hm, i64 7
  %i.hq = load i64, ptr %i.hp, align 1
  %i.hr = xor i64 %i.hq, 8391737126161444463
  %i.hs = or i64 %i.ho, %i.hr
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit380.thread784

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split783
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !104
  %i.hy = load ptr, ptr %15, align 8, !tbaa !105  ; 2 uses
  %.not965 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not965, label %_ZNSt6vectorIiSaIiEED2Ev.exit535, label %.lr.ph962

.lr.ph962:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.hz = insertelement <2 x i32> poison, i32 %.0192, i64 0
  %i.ia = insertelement <2 x i32> %i.hz, i32 %.0191, i64 1 ; 3 uses
  %i.ib = sitofp <2 x i32> %i.ia to <2 x float>   ; 2 uses
  %i.ic = add nsw <2 x i32> %i.ia, splat (i32 -1)
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bf, %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit355
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.bk:                                            ; preds = %bb.bg, %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit357
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.bl:                                            ; preds = %bb.bh, %_ZN2cv3dnn14dnn5_v202606055Model11getNetwork_Ev.exit359
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.bm:                                            ; preds = %.lr.ph962, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph962 ], [ %indvars.iv.next1013, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %i.ij = phi ptr [ %i.hy, %.lr.ph962 ], [ %i.is, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [208 x i8], ptr %i.ij, i64 %indvars.iv1012
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !113
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.bm
  %i.in = phi ptr [ %.pre1022, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.ij, %bb.bm ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %bb.bm ] ; 3 uses
  %i.io = getelementptr inbounds nuw [208 x i8], ptr %i.in, i64 %indvars.iv1012
  %i.ip = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.io)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.iq = icmp ugt i64 %i.ip, %indvars.iv1009
  br i1 %i.iq, label %bb.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bo
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.ir = load ptr, ptr %i.hw, align 8, !tbaa !104
  %i.is = load ptr, ptr %15, align 8, !tbaa !105  ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 208
  %i.ix = icmp ugt i64 %i.iw, %indvars.iv.next1013
  br i1 %i.ix, label %bb.bm, label %_ZNSt6vectorIiSaIiEED2Ev.exit535, !llvm.loop !464

bb.bp:                                            ; preds = %bb.bo
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv1009 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !96 ; 3 uses
  %i.jb = fcmp olt float %i.ja, %5
  br i1 %i.jb, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 20
  %i.je = load <2 x float>, ptr %i.jc, align 4, !tbaa !96 ; 2 uses
  %i.jf = fptosi <2 x float> %i.je to <2 x i32>   ; 2 uses
  %i.jg = load <2 x float>, ptr %i.jd, align 4, !tbaa !96 ; 2 uses
  %i.jh = fptosi <2 x float> %i.jg to <2 x i32>
  %i.ji = sub nsw <2 x i32> %i.jh, %i.jf          ; 2 uses
  %38 = icmp slt <2 x i32> %i.ji, splat (i32 2)   ; 2 uses
  %39 = extractelement <2 x i1> %38, i64 0
  %40 = extractelement <2 x i1> %38, i64 1
  %or.cond = select i1 %39, i1 true, i1 %40
  br i1 %or.cond, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jj = fmul <2 x float> %i.je, %i.ib
  %i.jk = fmul <2 x float> %i.jg, %i.ib
  %i.jl = fptosi <2 x float> %i.jj to <2 x i32>   ; 2 uses
  %i.jm = fptosi <2 x float> %i.jk to <2 x i32>
  %i.jn = sub nsw <2 x i32> %i.jm, %i.jl
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.jo = phi <2 x i32> [ %i.jl, %bb.br ], [ %i.jf, %bb.bq ]
  %i.jp = phi <2 x i32> [ %i.jn, %bb.br ], [ %i.ji, %bb.bq ]
  %i.jq = add nsw <2 x i32> %i.jp, splat (i32 1)
  %i.jr = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ic, <2 x i32> %i.jo)
  %i.js = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jr, <2 x i32> zeroinitializer) ; 4 uses
  %i.jt = sub nsw <2 x i32> %i.ia, %i.js
  %i.ju = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jt, <2 x i32> %i.jq)
  %i.jv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ju, <2 x i32> splat (i32 1)) ; 2 uses
  %i.jw = load ptr, ptr %i.aj, align 8, !tbaa !130 ; 6 uses
  %i.jx = load ptr, ptr %i.id, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jy = shufflevector <2 x i32> %i.js, <2 x i32> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.jy, ptr %i.jw, align 4, !tbaa !80
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr %i.jz, ptr %i.aj, align 8, !tbaa !130
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRiS6_S6_S6_EEERS2_DpOT_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.ka = load ptr, ptr %4, align 8, !tbaa !129   ; 5 uses
  %i.kb = ptrtoint ptr %i.jw to i64
  %i.kc = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 3 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775792
  br i1 %i.ke, label %.invoke, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.bx, %bb.cb, %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bu
  %i.kf = ashr exact i64 %i.kd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = call i64 @llvm.umin.i64(i64 %i.kg, i64 576460752303423487)
  %i.kj = select i1 %i.kh, i64 576460752303423487, i64 %i.ki ; 3 uses
  %.not.i.i.i367 = icmp ne i64 %i.kj, 0
  call void @llvm.assume(i1 %.not.i.i.i367)
  %i.kk = shl nuw nsw i64 %i.kj, 4
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #27
          to label %.noexc370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc370:                                        ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kd ; 3 uses
  %i.kn = extractelement <2 x i32> %i.js, i64 0
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !142
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kp = extractelement <2 x i32> %i.js, i64 1
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !143
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store <2 x i32> %i.jv, ptr %i.kq, align 4, !tbaa !80
  %.not10.i.i.i.i.i = icmp eq ptr %i.ka, %i.jw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc370, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ks, %.lr.ph.i.i.i.i.i ], [ %i.kl, %.noexc370 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i ], [ %i.ka, %.noexc370 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !144, !alias.scope !492
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i368 = icmp eq ptr %i.kr, %i.jw
  br i1 %.not.i.i.i.i.i368, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !468

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc370
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kl, %.noexc370 ], [ %i.ks, %.lr.ph.i.i.i.i.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i36.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRiS6_S6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  %i.ku = load ptr, ptr %i.id, align 8, !tbaa !140
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.kv, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kw) #28
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRiS6_S6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRiS6_S6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bv, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  store ptr %i.kl, ptr %4, align 8, !tbaa !129
  store ptr %i.kt, ptr %i.aj, align 8, !tbaa !130
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kx, ptr %i.id, align 8, !tbaa !140
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRiS6_S6_S6_EEERS2_DpOT_.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRiS6_S6_S6_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRiS6_S6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !96
  %i.la = fptosi float %i.kz to i32               ; 2 uses
  %i.lb = load ptr, ptr %i.ap, align 8, !tbaa !138 ; 4 uses
  %i.lc = load ptr, ptr %i.ie, align 8, !tbaa !145
  %.not.i.i371 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i.i371, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRiS6_S6_S6_EEERS2_DpOT_.exit
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !80
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store ptr %i.ld, ptr %i.ap, align 8, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bx:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRiS6_S6_S6_EEERS2_DpOT_.exit
  %i.le = load ptr, ptr %2, align 8, !tbaa !137   ; 4 uses
  %i.lf = ptrtoint ptr %i.lb to i64
  %i.lg = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lh = sub i64 %i.lf, %i.lg                    ; 5 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775804
  br i1 %i.li, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bx
  %i.lj = ashr exact i64 %i.lh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 2305843009213693951)
  %i.ln = select i1 %i.ll, i64 2305843009213693951, i64 %i.lm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.lo = shl nuw nsw i64 %i.ln, 2
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #27
          to label %.noexc373 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 %i.lh ; 2 uses
  store i32 %i.la, ptr %i.lq, align 4, !tbaa !80
  %i.lr = icmp sgt i64 %i.lh, 0
  br i1 %i.lr, label %bb.by, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.by:                                            ; preds = %.noexc373
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lp, ptr align 4 %i.le, i64 %i.lh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.by, %.noexc373
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lt = load ptr, ptr %i.ie, align 8, !tbaa !145
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = sub i64 %i.lu, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lv) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.lp, ptr %2, align 8, !tbaa !137
  store ptr %i.ls, ptr %i.ap, align 8, !tbaa !138
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.ln
  store ptr %i.lw, ptr %i.ie, align 8, !tbaa !145
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bw
  %i.lx = load ptr, ptr %i.am, align 8, !tbaa !134 ; 4 uses
  %i.ly = load ptr, ptr %i.if, align 8, !tbaa !146
  %.not.i374 = icmp eq ptr %i.lx, %i.ly
  br i1 %.not.i374, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store float %i.ja, ptr %i.lx, align 4, !tbaa !96
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store ptr %i.lz, ptr %i.am, align 8, !tbaa !134
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ma = load ptr, ptr %3, align 8, !tbaa !133   ; 4 uses
  %i.mb = ptrtoint ptr %i.lx to i64
  %i.mc = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.md = sub i64 %i.mb, %i.mc                    ; 5 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775804
  br i1 %i.me, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cb
  %i.mf = ashr exact i64 %i.md, 2                 ; 3 uses
  %.sroa.speculated.i.i.i375 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i375, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 2305843009213693951)
  %i.mj = select i1 %i.mh, i64 2305843009213693951, i64 %i.mi ; 3 uses
  %.not.i.i.i376 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i376)
  %i.mk = shl nuw nsw i64 %i.mj, 2
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #27
          to label %.noexc378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc378:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store float %i.ja, ptr %i.mm, align 4, !tbaa !96
  %i.mn = icmp sgt i64 %i.md, 0
  br i1 %i.mn, label %bb.cc, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.cc:                                            ; preds = %.noexc378
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ml, ptr align 4 %i.ma, i64 %i.md, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.cc, %.noexc378
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.cd

end_hunk_0
