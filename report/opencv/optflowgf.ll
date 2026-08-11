inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  invoke void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull align 8 dereferenceable(688) %41, ptr noundef nonnull align 8 dereferenceable(208) %32, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.bv, !inline_history !101

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.bt
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  %.pre = zext i32 %i.il to i64
  %.pre404 = shl nuw i64 %.pre, 32
  %.pre405 = zext i32 %i.ih to i64
  %.pre406 = or disjoint i64 %.pre404, %.pre405
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bs
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %41) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn82 = phi { ptr, i32 } [ %i.ix, %bb.bv ], [ %i.iw, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.fd

bb.bx:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  store i32 0, ptr %i.eo, align 8, !tbaa !92
  store i32 0, ptr %i.ep, align 4, !tbaa !93
  store i32 16842752, ptr %42, align 8, !tbaa !94
  store ptr %31, ptr %i.eq, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  store i64 0, ptr %i.es, align 8
  store i32 33619968, ptr %43, align 8, !tbaa !94
  store ptr %32, ptr %i.er, align 8, !tbaa !66
  %.sroa.2262.0.insert.ext = zext i32 %i.il to i64
  %.sroa.2262.0.insert.shift = shl nuw i64 %.sroa.2262.0.insert.ext, 32
  %.sroa.0261.0.insert.ext = zext i32 %i.ih to i64
  %.sroa.0261.0.insert.insert = or disjoint i64 %.sroa.2262.0.insert.shift, %.sroa.0261.0.insert.ext ; 2 uses
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, i64 %.sroa.0261.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  %i.iy = load double, ptr %i.bi, align 8, !tbaa !25
  %i.iz = fdiv double 1.000000e+00, %i.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store i64 0, ptr %i.eu, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !94
  store ptr %32, ptr %i.et, align 8, !tbaa !66
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef -1, double noundef %i.iz, double noundef 0.000000e+00)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.fd

bb.cb:                                            ; preds = %bb.by
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.cc:                                            ; preds = %_ZN2cvmLERNS_3MatERKd.exit, %_ZN2cv3MataSERKNS_7MatExprE.exit, %bb.bz
  %.sroa.0.0.insert.insert.pre-phi = phi i64 [ %.sroa.0263.0.insert.insert, %_ZN2cvmLERNS_3MatERKd.exit ], [ %.pre406, %_ZN2cv3MataSERKNS_7MatExprE.exit ], [ %.sroa.0261.0.insert.insert, %bb.bz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %44) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %45) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %46) #23
  %.sroa.2260.0.insert.ext = zext nneg i32 %.sroa.speculated to i64
  %.sroa.0259.0.insert.insert = mul nuw nsw i64 %.sroa.2260.0.insert.ext, 4294967297
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.dq
  %i.jc = phi i1 [ true, %bb.cc ], [ false, %bb.dq ]
  %indvars.iv.sroa.phi = phi ptr [ %44, %bb.cc ], [ %indvars.iv.sroa.gep738, %bb.dq ] ; 3 uses
  %indvars.iv.sroa.phi739.sroa.speculated = phi ptr [ %29, %bb.cc ], [ %30, %bb.dq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  store i64 0, ptr %i.fg, align 8
  store i32 33619968, ptr %47, align 8, !tbaa !94
  store ptr %33, ptr %i.ff, align 8, !tbaa !66
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %indvars.iv.sroa.phi739.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(24) %47, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ce unwind label %bb.dr

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  store i32 0, ptr %i.fh, align 8, !tbaa !92
  store i32 0, ptr %i.fi, align 4, !tbaa !93
  store i32 16842752, ptr %48, align 8, !tbaa !94
  store ptr %33, ptr %i.fj, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  store i64 0, ptr %i.fl, align 8
  store i32 33619968, ptr %49, align 8, !tbaa !94
  store ptr %33, ptr %i.fk, align 8, !tbaa !66
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, i64 %.sroa.0259.0.insert.insert, double noundef %i.hx, double noundef %i.hx, i32 noundef 4, i32 noundef 0)
          to label %bb.cf unwind label %bb.ds

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  store i32 0, ptr %i.fm, align 8, !tbaa !92
  store i32 0, ptr %i.fn, align 4, !tbaa !93
  store i32 16842752, ptr %50, align 8, !tbaa !94
  store ptr %33, ptr %i.fo, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  store i64 0, ptr %i.fq, align 8
  store i32 33619968, ptr %51, align 8, !tbaa !94
  store ptr %45, ptr %i.fp, align 8, !tbaa !66
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %51, i64 %.sroa.0.0.insert.insert.pre-phi, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.cg unwind label %bb.dt

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  %i.jd = load i32, ptr %i.fr, align 4, !tbaa !29 ; 14 uses
  %i.je = load double, ptr %i.fs, align 8, !tbaa !30 ; 2 uses
  %i.jf = load i32, ptr %45, align 8, !tbaa !78
  %i.jg = and i32 %i.jf, 4095
  %i.jh = icmp eq i32 %i.jg, 5
  br i1 %i.jh, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cvL16FarnebackPolyExpERKNS_3MatERS0_id, ptr noundef nonnull @.str.1, i32 noundef 121) #27
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ch
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176

bb.cl:                                            ; preds = %bb.ci
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = load ptr, ptr %16, align 8, !tbaa !63   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177: ; preds = %bb.cl
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !38
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177, %bb.ck
  %.pn.i = phi { ptr, i32 } [ %i.ji, %bb.ck ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177 ], [ %i.jj, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body180

bb.cm:                                            ; preds = %bb.cg
  %i.jp = load i32, ptr %i.ft, align 4, !tbaa !86 ; 8 uses
  %i.jq = load i32, ptr %i.fu, align 8, !tbaa !102 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.jr = mul nsw i32 %i.jd, 6
  %i.js = add nsw i32 %i.jr, 3                    ; 2 uses
  %i.jt = sext i32 %i.js to i64                   ; 2 uses
  store ptr %i.fv, ptr %18, align 8, !tbaa !103
  %.not.i.i.i = icmp ugt i32 %i.js, 264
  store i64 %i.jt, ptr %i.fw, align 8, !tbaa !106
  br i1 %.not.i.i.i, label %bb.cn, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.ju = icmp slt i32 %i.jd, 0
  %i.jv = shl nuw nsw i64 %i.jt, 2
  %i.jw = select i1 %i.ju, i64 -1, i64 %i.jv
  %i.jx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jw) #24
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc179:                                        ; preds = %bb.cn
  store ptr %i.jx, ptr %18, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i:           ; preds = %.noexc179, %bb.cm
  %i.jy = phi ptr [ %i.fv, %bb.cm ], [ %i.jx, %.noexc179 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.jz = shl nsw i32 %i.jd, 1                    ; 5 uses
  %i.ka = add nsw i32 %i.jp, %i.jz                ; 2 uses
  %i.kb = mul nsw i32 %i.ka, 3                    ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  store ptr %i.fx, ptr %19, align 8, !tbaa !103
  %.not.i.i208.i = icmp ugt i32 %i.kb, 264
  store i64 %i.kc, ptr %i.fy, align 8, !tbaa !106
  br i1 %.not.i.i208.i, label %bb.co, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i

bb.co:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i
  %i.kd = icmp slt i32 %i.ka, 0
  %i.ke = shl nuw nsw i64 %i.kc, 2
  %i.kf = select i1 %i.kd, i64 -1, i64 %i.ke
  %i.kg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kf) #24
          to label %.noexc.i unwind label %bb.dk  ; 2 uses

.noexc.i:                                         ; preds = %bb.co
  store ptr %i.kg, ptr %19, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i:        ; preds = %.noexc.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i
  %i.kh = phi ptr [ %i.kg, %.noexc.i ], [ %i.fx, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ] ; 3 uses
  %i.ki = sext i32 %i.jd to i64                   ; 2 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ki ; 12 uses
  %i.kk = sext i32 %i.jz to i64                   ; 4 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 5 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 4 uses
  %i.kp = mul i32 %i.jd, 3                        ; 3 uses
  %i.kq = sext i32 %i.kp to i64                   ; 3 uses
  %i.kr = getelementptr [4 x i8], ptr %i.kh, i64 %i.kq ; 22 uses
  %i.ks = sub i32 0, %i.jd                        ; 4 uses
  %.not129.i.i = icmp slt i32 %i.jd, 0            ; 2 uses
  br i1 %.not129.i.i, label %._crit_edge136.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i
  %i.kt = fcmp olt double %i.je, f0x3E80000000000000
  %i.ku = uitofp nneg i32 %i.jd to double
  %i.kv = fmul nnan double %i.ku, 3.000000e-01
  %.083.i.i = select i1 %i.kt, double %i.kv, double %i.je ; 2 uses
  %i.kw = fmul double %.083.i.i, 2.000000e+00
  %i.kx = fmul double %.083.i.i, %i.kw
  %i.ky = sext i32 %i.ks to i64                   ; 7 uses
  %i.kz = add nuw i32 %i.jd, 1                    ; 2 uses
  br label %bb.cp

.lr.ph135.preheader.i.i:                          ; preds = %bb.cp
  %i.la = fdiv double 1.000000e+00, %i.mg         ; 2 uses
  %min.iters.check651 = icmp ult i32 %i.jz, 8
  br i1 %min.iters.check651, label %.lr.ph135.i.i.preheader, label %vector.memcheck629

.lr.ph135.i.i.preheader:                          ; preds = %vector.body661, %vector.memcheck629, %.lr.ph135.preheader.i.i
  %indvars.iv165.i.i.ph = phi i64 [ %i.ky, %vector.memcheck629 ], [ %i.ky, %.lr.ph135.preheader.i.i ], [ %i.li, %vector.body661 ]
  br label %.lr.ph135.i.i

vector.memcheck629:                               ; preds = %.lr.ph135.preheader.i.i
  %52 = shl nuw nsw i64 %i.ki, 2                  ; 3 uses
  %53 = shl nsw i64 %i.ky, 2                      ; 3 uses
  %54 = add nsw i64 %52, %53                      ; 2 uses
  %scevgep630 = getelementptr i8, ptr %i.jy, i64 %54 ; 2 uses
  %scevgep631.a = getelementptr i8, ptr %i.jy, i64 4 ; 2 uses
  %i.lb = zext nneg i32 %i.jz to i64
  %i.lc = shl nuw nsw i64 %i.lb, 2                ; 3 uses
  %55 = getelementptr i8, ptr %scevgep631.a, i64 %54
  %scevgep632.a = getelementptr i8, ptr %55, i64 %i.lc ; 2 uses
  %56 = add nsw i64 %52, %53
  %i.ld = shl nuw nsw i64 %i.kk, 2
  %57 = add nsw i64 %56, %i.ld                    ; 2 uses
  %scevgep633.a = getelementptr i8, ptr %scevgep631.a, i64 %57 ; 2 uses
  %scevgep634.a = getelementptr i8, ptr %i.jy, i64 8 ; 2 uses
  %i.le = getelementptr i8, ptr %scevgep634.a, i64 %57
  %scevgep635.a = getelementptr i8, ptr %i.le, i64 %i.lc ; 2 uses
  %i.lf = shl nuw nsw i64 %i.kk, 3
  %58 = add nuw nsw i64 %i.lf, %52
  %59 = add nsw i64 %58, %53                      ; 2 uses
  %scevgep636.a = getelementptr i8, ptr %scevgep634.a, i64 %59 ; 2 uses
  %scevgep637.a = getelementptr i8, ptr %i.jy, i64 12
  %i.lg = getelementptr i8, ptr %scevgep637.a, i64 %59
  %scevgep638 = getelementptr i8, ptr %i.lg, i64 %i.lc ; 2 uses
  %bound0639 = icmp ult ptr %scevgep630, %scevgep635.a
  %bound1640 = icmp ult ptr %scevgep633.a, %scevgep632.a
  %found.conflict641 = and i1 %bound0639, %bound1640
  %bound0642 = icmp ult ptr %scevgep630, %scevgep638
  %bound1643 = icmp ult ptr %scevgep636.a, %scevgep632.a
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx645 = or i1 %found.conflict641, %found.conflict644
  %bound0646 = icmp ult ptr %scevgep633.a, %scevgep638
  %bound1647 = icmp ult ptr %scevgep636.a, %scevgep635.a
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %conflict.rdx645, %found.conflict648
  br i1 %conflict.rdx649, label %.lr.ph135.i.i.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %vector.memcheck629
  %i.lh = and i32 %i.jz, 2147483644
  %n.vec653 = zext nneg i32 %i.lh to i64          ; 2 uses
  %i.li = add nsw i64 %n.vec653, %i.ky
  %broadcast.splatinsert654 = insertelement <4 x double> poison, double %i.la, i64 0
  %broadcast.splat655 = shufflevector <4 x double> %broadcast.splatinsert654, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert656 = insertelement <4 x i64> poison, i64 %i.ky, i64 0
  %broadcast.splat657 = shufflevector <4 x i64> %broadcast.splatinsert656, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat657, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert658 = insertelement <4 x i32> poison, i32 %i.ks, i64 0
  %broadcast.splat659 = shufflevector <4 x i32> %broadcast.splatinsert658, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction660 = add <4 x i32> %broadcast.splat659, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph652
  %index662 = phi i64 [ 0, %vector.ph652 ], [ %index.next665, %vector.body661 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph652 ], [ %vec.ind.next, %vector.body661 ] ; 3 uses
  %vec.ind663 = phi <4 x i32> [ %induction660, %vector.ph652 ], [ %vec.ind.next666, %vector.body661 ] ; 2 uses
  %i.lj = add i64 %index662, %i.ky                ; 3 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.lj ; 2 uses
  %wide.load664 = load <4 x float>, ptr %i.lk, align 4, !tbaa !107, !alias.scope !109, !noalias !112
  %i.ll = fpext <4 x float> %wide.load664 to <4 x double>
  %i.lm = fmul <4 x double> %broadcast.splat655, %i.ll
  %i.ln = fptrunc <4 x double> %i.lm to <4 x float> ; 3 uses
  store <4 x float> %i.ln, ptr %i.lk, align 4, !tbaa !107, !alias.scope !109, !noalias !112
  %i.lo = sitofp <4 x i32> %vec.ind663 to <4 x float>
  %i.lp = fmul <4 x float> %i.lo, %i.ln
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.lj
  store <4 x float> %i.lp, ptr %i.lq, align 4, !tbaa !107, !alias.scope !115, !noalias !116
  %i.lr = mul nsw <4 x i64> %vec.ind, %vec.ind
  %i.ls = trunc nsw <4 x i64> %i.lr to <4 x i32>
  %i.lt = uitofp nneg <4 x i32> %i.ls to <4 x float>
  %i.lu = fmul <4 x float> %i.lt, %i.ln
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.lj
  store <4 x float> %i.lu, ptr %i.lv, align 4, !tbaa !107, !alias.scope !116
  %index.next665 = add nuw i64 %index662, 4       ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next666 = add <4 x i32> %vec.ind663, splat (i32 4)
  %i.lw = icmp eq i64 %index.next665, %n.vec653
  br i1 %i.lw, label %.lr.ph135.i.i.preheader, label %vector.body661, !llvm.loop !117

bb.cp:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ky, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cp ] ; 3 uses
  %.082130.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.mg, %bb.cp ]
  %i.lx = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.ly = mul i32 %i.lx, %i.lx
  %i.lz = sub i32 0, %i.ly
  %i.ma = sitofp i32 %i.lz to double
  %i.mb = fdiv double %i.ma, %i.kx
  %i.mc = call double @exp(double noundef %i.mb) #23
  %i.md = fptrunc double %i.mc to float           ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv.i.i
  store float %i.md, ptr %i.me, align 4, !tbaa !107
  %i.mf = fpext float %i.md to double
  %i.mg = fadd double %.082130.i.i, %i.mf         ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.kz, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph135.preheader.i.i, label %bb.cp, !llvm.loop !120

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv165.i.i = phi i64 [ %indvars.iv.next166.i.i, %.lr.ph135.i.i ], [ %indvars.iv165.i.i.ph, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv165.i.i ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !107
  %i.mj = fpext float %i.mi to double
  %i.mk = fmul double %i.la, %i.mj
  %i.ml = fptrunc double %i.mk to float           ; 3 uses
  store float %i.ml, ptr %i.mh, align 4, !tbaa !107
  %i.mm = trunc nsw i64 %indvars.iv165.i.i to i32
  %i.mn = sitofp i32 %i.mm to float
  %i.mo = fmul float %i.mn, %i.ml
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.km, i64 %indvars.iv165.i.i
  store float %i.mo, ptr %i.mp, align 4, !tbaa !107
  %i.mq = mul nsw i64 %indvars.iv165.i.i, %indvars.iv165.i.i
  %i.mr = trunc nsw i64 %i.mq to i32
  %i.ms = uitofp nneg i32 %i.mr to float
  %i.mt = fmul float %i.ms, %i.ml
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %indvars.iv165.i.i
  store float %i.mt, ptr %i.mu, align 4, !tbaa !107
  %indvars.iv.next166.i.i = add nsw i64 %indvars.iv165.i.i, 1 ; 2 uses
  %lftr.wideiv168.i.i = trunc i64 %indvars.iv.next166.i.i to i32
  %exitcond169.not.i.i = icmp eq i32 %i.kz, %lftr.wideiv168.i.i
  br i1 %exitcond169.not.i.i, label %._crit_edge136.i.i, label %.lr.ph135.i.i, !llvm.loop !121

._crit_edge136.i.i:                               ; preds = %.lr.ph135.i.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit209.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 6, i32 noundef 6, i32 noundef 6)
          to label %.noexc210.i unwind label %bb.dl

.noexc210.i:                                      ; preds = %._crit_edge136.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !122
  store i32 -1056833530, ptr %13, align 8, !tbaa !94
  store ptr %i.a, ptr %i.ga, align 8, !tbaa !66
  store i64 4294967297, ptr %i.fz, align 8
  %i.mv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %.noexc210.i
  %i.mw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.cr unwind label %bb.ct     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.fr159.i.i = freeze i32 %.pre.i.i              ; 2 uses
  %.pre191.i.i = load ptr, ptr %.phi.trans.insert190.i.i, align 8 ; 21 uses
  br i1 %.not129.i.i, label %._crit_edge149.split.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.cr
  %i.mx = icmp slt i32 %.fr159.i.i, 2
  %i.my = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 24 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 40 ; 2 uses
  br i1 %i.mx, label %.preheader.lr.ph.split.split.us.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.nb = sext i32 %i.ks to i64                   ; 2 uses
  %i.nc = add nuw i32 %i.jd, 1                    ; 2 uses
  br label %.preheader.i.i

.preheader.lr.ph.split.split.us.i.i:              ; preds = %.preheader.lr.ph.i.i
  %i.nd = load <2 x double>, ptr %.pre191.i.i, align 8, !tbaa !122
  %.promoted155.i.i = load double, ptr %i.mz, align 8, !tbaa !122
  %.promoted157.i.i = load double, ptr %i.na, align 8, !tbaa !122
  %i.ne = sext i32 %i.ks to i64                   ; 2 uses
  %i.nf = add nuw i32 %i.jd, 1                    ; 2 uses
  %i.ng = insertelement <4 x double> poison, double %.promoted157.i.i, i64 0
  %i.nh = insertelement <4 x double> %i.ng, double %.promoted155.i.i, i64 1
  %i.ni = shufflevector <2 x double> %i.nd, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.nj = shufflevector <4 x double> %i.nh, <4 x double> %i.ni, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge140.split.us.us.i.i, %.preheader.lr.ph.split.split.us.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %._crit_edge140.split.us.us.i.i ], [ %i.ne, %.preheader.lr.ph.split.split.us.i.i ] ; 3 uses
  %i.nk = phi <4 x double> [ %i.og, %._crit_edge140.split.us.us.i.i ], [ %i.nj, %.preheader.lr.ph.split.split.us.i.i ]
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv185.i.i
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !107
  %i.nn = trunc nsw i64 %indvars.iv185.i.i to i32
  %i.no = sitofp i32 %i.nn to float               ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.preheader.us.i.i
  %indvars.iv180.i.i = phi i64 [ %indvars.iv.next181.i.i, %bb.cs ], [ %i.ne, %.preheader.us.i.i ] ; 3 uses
  %i.np = phi <4 x double> [ %i.og, %bb.cs ], [ %i.nk, %.preheader.us.i.i ]
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv180.i.i
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !107
  %i.ns = trunc nsw i64 %indvars.iv180.i.i to i32
  %i.nt = sitofp i32 %i.ns to float               ; 4 uses
  %i.nu = fmul float %i.nm, %i.nr                 ; 2 uses
  %i.nv = fmul float %i.nu, %i.nt
  %i.nw = fmul float %i.nv, %i.nt                 ; 3 uses
  %i.nx = fmul float %i.nw, %i.nt
  %i.ny = fmul float %i.nx, %i.nt
  %i.nz = fmul float %i.nw, %i.no
  %i.oa = fmul float %i.nz, %i.no
  %i.ob = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.ny, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nw, i64 2
  %i.oe = insertelement <4 x float> %i.od, float %i.nu, i64 3
  %i.of = fpext <4 x float> %i.oe to <4 x double>
  %i.og = fadd <4 x double> %i.np, %i.of          ; 6 uses
  %indvars.iv.next181.i.i = add nsw i64 %indvars.iv180.i.i, 1 ; 2 uses
  %lftr.wideiv183.i.i = trunc i64 %indvars.iv.next181.i.i to i32
  %exitcond184.not.i.i = icmp eq i32 %i.nf, %lftr.wideiv183.i.i
  br i1 %exitcond184.not.i.i, label %._crit_edge140.split.us.us.i.i, label %bb.cs, !llvm.loop !123

._crit_edge140.split.us.us.i.i:                   ; preds = %bb.cs
  %indvars.iv.next186.i.i = add nsw i64 %indvars.iv185.i.i, 1 ; 2 uses
  %lftr.wideiv188.i.i = trunc i64 %indvars.iv.next186.i.i to i32
  %exitcond189.not.i.i = icmp eq i32 %i.nf, %lftr.wideiv188.i.i
  br i1 %exitcond189.not.i.i, label %._crit_edge149.split151.us.i.i, label %.preheader.us.i.i, !llvm.loop !124

._crit_edge149.split151.us.i.i:                   ; preds = %._crit_edge140.split.us.us.i.i
  %i.oh = extractelement <4 x double> %i.og, i64 3
  store double %i.oh, ptr %.pre191.i.i, align 8, !tbaa !122
  %i.oi = extractelement <4 x double> %i.og, i64 2
  store double %i.oi, ptr %i.my, align 8, !tbaa !122
  %i.oj = extractelement <4 x double> %i.og, i64 1
  store double %i.oj, ptr %i.mz, align 8, !tbaa !122
  %i.ok = extractelement <4 x double> %i.og, i64 0
  store double %i.ok, ptr %i.na, align 8, !tbaa !122
  br label %._crit_edge149.split.i.i

.preheader.i.i:                                   ; preds = %._crit_edge140.split.i.i, %.preheader.preheader.i.i
  %indvars.iv175.i.i = phi i64 [ %i.nb, %.preheader.preheader.i.i ], [ %indvars.iv.next176.i.i, %._crit_edge140.split.i.i ] ; 3 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %indvars.iv175.i.i
  %i.om = load float, ptr %i.ol, align 4, !tbaa !107
  %i.on = trunc nsw i64 %indvars.iv175.i.i to i32
end_hunk_0
begin_hunk_1_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  %i.qb = fpext float %i.qa to double
  %i.qc = load i64, ptr %i.gb, align 8
  %.sink.i116.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.qc
  %i.qd = getelementptr inbounds nuw i8, ptr %.sink.i116.i.i, i64 8 ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !122
  %i.qf = fadd double %i.qe, %i.qb
  store double %i.qf, ptr %i.qd, align 8, !tbaa !122
  %i.qg = fmul float %i.qa, %i.py
  %i.qh = fmul float %i.qg, %i.py
  %i.qi = fpext float %i.qh to double
  %i.qj = load i64, ptr %i.gb, align 8
  %i.qk = mul i64 %i.qj, 3
  %.sink.i118.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.qk
  %i.ql = getelementptr inbounds nuw i8, ptr %.sink.i118.i.i, i64 24 ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !122
  %i.qn = fadd double %i.qm, %i.qi
  store double %i.qn, ptr %i.ql, align 8, !tbaa !122
  %i.qo = fmul float %i.qa, %i.oo
  %i.qp = fmul float %i.qo, %i.oo
  %i.qq = fpext float %i.qp to double
  %i.qr = load i64, ptr %i.gb, align 8
  %i.qs = mul i64 %i.qr, 5
  %.sink.i120.i.i = getelementptr inbounds nuw i8, ptr %.pre191.i.i, i64 %i.qs
  %i.qt = getelementptr inbounds nuw i8, ptr %.sink.i120.i.i, i64 40 ; 2 uses
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !122
  %i.qv = fadd double %i.qu, %i.qq
  store double %i.qv, ptr %i.qt, align 8, !tbaa !122
  %indvars.iv.next171.i.i = add nsw i64 %indvars.iv170.i.i, 1 ; 2 uses
  %lftr.wideiv173.i.i = trunc i64 %indvars.iv.next171.i.i to i32
  %exitcond174.not.i.i = icmp eq i32 %i.nc, %lftr.wideiv173.i.i
  br i1 %exitcond174.not.i.i, label %._crit_edge140.split.i.i, label %bb.cu, !llvm.loop !123

bb.cv:                                            ; preds = %._crit_edge149.split.i.i
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #23
  %i.qw = load i32, ptr %14, align 8, !tbaa !78
  %i.qx = and i32 %i.qw, -4096
  %i.qy = or disjoint i32 %i.qx, 6
  store i32 %i.qy, ptr %14, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #23
  %i.qz = load ptr, ptr %15, align 8, !tbaa !95, !noalias !125 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8
  invoke void %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %i.qz, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i:           ; preds = %bb.cv
  %i.re = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %.noexc252 unwind label %bb.df

.noexc252:                                        ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i
  br i1 %i.re, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc252
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %.noexc253 unwind label %bb.df

.noexc253:                                        ; preds = %bb.cx
  %i.rf = load i32, ptr %14, align 8, !tbaa !78
  %i.rg = and i32 %i.rf, -4096
  %i.rh = or disjoint i32 %i.rg, 6
  store i32 %i.rh, ptr %14, align 8, !tbaa !78
  br label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit

bb.cy:                                            ; preds = %.noexc252
  %i.ri = load i32, ptr %11, align 8, !tbaa !78   ; 2 uses
  %i.rj = and i32 %i.ri, 4095
  %i.rk = icmp eq i32 %i.rj, 6
  br i1 %i.rk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit unwind label %bb.df ; 0 uses

bb.da:                                            ; preds = %bb.cy
  %i.rm = and i32 %i.ri, 31
  %i.rn = icmp eq i32 %i.rm, 6
  br i1 %i.rn, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ro = load i32, ptr %i.ge, align 4, !tbaa !128
  invoke void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 1, i32 noundef %i.ro, ptr noundef null)
          to label %.noexc255 unwind label %bb.df

.noexc255:                                        ; preds = %bb.db
  %i.rp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.dc unwind label %bb.dd     ; 0 uses

bb.dc:                                            ; preds = %.noexc255
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit

bb.dd:                                            ; preds = %.noexc255
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body.i.i.i

bb.de:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 0, ptr %i.gd, align 8
  store i32 -2113863674, ptr %5, align 8, !tbaa !94
  store ptr %14, ptr %i.gc, align 8, !tbaa !66
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %.noexc258 unwind label %bb.df

.noexc258:                                        ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN2cv4Mat_IdEaSEONS_3MatE.exit

bb.df:                                            ; preds = %bb.de, %bb.db, %bb.cz, %bb.cx, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.df, %bb.dd, %bb.cw
  %.pn.i.i.i = phi { ptr, i32 } [ %i.rd, %bb.cw ], [ %i.rr, %bb.df ], [ %i.rq, %bb.dd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #23
  br label %bb.dh

bb.dg:                                            ; preds = %._crit_edge149.split.i.i
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.body.i.i.i
  %.pn89.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.rs, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.ct
  %.pn89.pn.i.i = phi { ptr, i32 } [ %.pn89.i.i, %bb.dh ], [ %i.pq, %bb.ct ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body.i

_ZN2cv4Mat_IdEaSEONS_3MatE.exit:                  ; preds = %.noexc258, %bb.dc, %.noexc253, %bb.cz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gf) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gg) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.rt = load i32, ptr %i.gi, align 4, !tbaa !128
  %i.ru = icmp slt i32 %i.rt, 2                   ; 3 uses
  %i.rv = load ptr, ptr %i.gj, align 8, !tbaa !129 ; 4 uses
  %i.rw = load i64, ptr %i.gk, align 8            ; 3 uses
  %.sink.idx.i121.i.i = select i1 %i.ru, i64 0, i64 %i.rw
  %.sink.i122.i.i = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.sink.idx.i121.i.i
  %i.rx = getelementptr inbounds nuw i8, ptr %.sink.i122.i.i, i64 8
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !122
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !122
  %i.sb = mul i64 %i.rw, 3
  %.sink.idx.i125.i.i = select i1 %i.ru, i64 0, i64 %i.sb
  %.sink.i126.i.i = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.sink.idx.i125.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.sink.i126.i.i, i64 24
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !122
  %i.se = mul i64 %i.rw, 5
  %.sink.idx.i127.i.i = select i1 %i.ru, i64 0, i64 %i.se
  %.sink.i128.i.i = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.sink.idx.i127.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.sink.i128.i.i, i64 40
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !122
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %indvars.iv.sroa.phi, i32 noundef %i.jq, i32 noundef %i.jp, i32 noundef 133)
          to label %.preheader238.i unwind label %bb.dl

.preheader238.i:                                  ; preds = %_ZN2cv4Mat_IdEaSEONS_3MatE.exit
  %i.sh = icmp sgt i32 %i.jq, 0
  br i1 %i.sh, label %.lr.ph272.i, label %._crit_edge273.i

.lr.ph272.i:                                      ; preds = %.preheader238.i
  %i.si = load ptr, ptr %i.gl, align 8, !tbaa !129 ; 9 uses
  %i.sj = load i64, ptr %i.gm, align 8, !tbaa !61 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !129
  %i.sm = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 128
  %i.sn = load i64, ptr %i.sm, align 16, !tbaa !61
  %i.so = icmp sgt i32 %i.jp, 0                   ; 2 uses
  %.not246.i = icmp slt i32 %i.jd, 1              ; 2 uses
  %i.sp = add nsw i32 %i.jq, -1                   ; 2 uses
  %i.sq = icmp eq i32 %i.jp, 0
  %i.sr = icmp sgt i32 %i.jd, 0
  %i.ss = mul nsw i32 %i.jp, 3
  %i.st = add i32 %i.jd, 1
  %i.su = sext i32 %i.ss to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.kp, i32 1) ; 2 uses
  %wide.trip.count314.i = zext nneg i32 %i.jq to i64 ; 2 uses
  %wide.trip.count.i = zext i32 %i.jp to i64      ; 13 uses
  %brmerge.i = select i1 %.not246.i, i1 true, i1 %i.sq
  %wide.trip.count294.i = zext i32 %i.st to i64   ; 2 uses
  %wide.trip.count299.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.kr, i64 %i.su ; 3 uses
  %i.sv = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.sw = shl nsw i64 %i.kq, 2
  %i.sx = getelementptr i8, ptr %i.kh, i64 %i.sv
  %scevgep576 = getelementptr i8, ptr %i.sx, i64 %i.sw ; 2 uses
  %i.sy = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep578 = getelementptr i8, ptr %i.si, i64 %i.sy
  %scevgep581 = getelementptr i8, ptr %i.si, i64 %i.sy
  %i.sz = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.ta = shl nsw i64 %i.kq, 2
  %i.tb = getelementptr i8, ptr %i.kh, i64 %i.sz
  %scevgep610 = getelementptr i8, ptr %i.tb, i64 %i.ta
  %i.tc = add nsw i64 %wide.trip.count314.i, -1
  %i.td = mul i64 %i.sj, %i.tc
  %i.te = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.tf = getelementptr i8, ptr %i.si, i64 %i.td
  %scevgep611 = getelementptr i8, ptr %i.tf, i64 %i.te
  %min.iters.check616 = icmp ult i32 %i.jp, 4
  %bound0612 = icmp ult ptr %i.kr, %scevgep611
  %bound1613 = icmp ult ptr %i.si, %scevgep610
  %found.conflict614 = and i1 %bound0612, %bound1613
  %stride.check = icmp slt i64 %i.sj, 0
  %i.tg = or i1 %found.conflict614, %stride.check
  %n.vec618 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec618, %wide.trip.count.i
  %xtraiter692 = and i64 %wide.trip.count.i, 1
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  %i.th = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check591 = icmp ult i32 %i.jp, 4
  %n.vec593 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n607 = icmp eq i64 %n.vec593, %wide.trip.count.i
  %xtraiter694 = and i64 %wide.trip.count299.i, 1
  %i.ti = icmp slt i32 %i.kp, 2
  %unroll_iter698 = and i64 %wide.trip.count299.i, 2147483646
  %lcmp.mod696.not = icmp eq i64 %xtraiter694, 0
  %lcmp.mod697 = trunc i32 %smax.i to i1
  %i.tj = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.tk = shufflevector <2 x double> %i.tj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tl = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.tm = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tn = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.to = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge269.i, %.lr.ph272.i
  %indvars.iv311.i = phi i64 [ 0, %.lr.ph272.i ], [ %indvars.iv.next312.i, %._crit_edge269.i ] ; 7 uses
  %i.tp = trunc i64 %indvars.iv311.i to i32
  %i.tq = add i32 %i.tp, 1
  %i.tr = trunc i64 %indvars.iv311.i to i32
  %i.ts = load float, ptr %i.kj, align 4, !tbaa !107 ; 4 uses
  %i.tt = mul i64 %indvars.iv311.i, %i.sj
  %i.tu = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.tt ; 4 uses
  %i.tv = mul i64 %indvars.iv311.i, %i.sn
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.tv
  br i1 %i.so, label %.lr.ph.i.preheader, label %.preheader236.i

.lr.ph.i.preheader:                               ; preds = %bb.dj
  %brmerge = select i1 %min.iters.check616, i1 true, i1 %i.tg
  br i1 %brmerge, label %.lr.ph.i.preheader675, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert619 = insertelement <4 x float> poison, float %i.ts, i64 0
  %broadcast.splat620 = shufflevector <4 x float> %broadcast.splatinsert619, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph617
  %index622 = phi i64 [ 0, %vector.ph617 ], [ %index.next625, %vector.body621 ] ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %index622
  %wide.load623 = load <4 x float>, ptr %i.tx, align 4, !tbaa !107, !alias.scope !130
  %i.ty = fmul <4 x float> %broadcast.splat620, %wide.load623
  %i.tz = mul nuw nsw i64 %index622, 12
  %i.ua = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.tz
  %i.ub = shufflevector <4 x float> %i.ty, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec624 = shufflevector <8 x float> %i.ub, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec624, ptr %i.ua, align 4, !tbaa !107, !alias.scope !133, !noalias !130
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.uc = icmp eq i64 %index.next625, %n.vec618
  br i1 %i.uc, label %middle.block626, label %vector.body621, !llvm.loop !135

middle.block626:                                  ; preds = %vector.body621
  br i1 %cmp.n627, label %.preheader237.i, label %.lr.ph.i.preheader675

.lr.ph.i.preheader675:                            ; preds = %.lr.ph.i.preheader, %middle.block626
  %indvars.iv.i.ph = phi i64 [ %n.vec618, %middle.block626 ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  br i1 %lcmp.mod693.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader675
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i.ph
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !107
  %i.uf = fmul float %i.ts, %i.ue
  %.idx.i.prol = mul nuw nsw i64 %indvars.iv.i.ph, 12
  %i.ug = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i.prol ; 2 uses
  store float %i.uf, ptr %i.ug, align 4, !tbaa !107
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store <2 x float> zeroinitializer, ptr %i.uh, align 4, !tbaa !107
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader675
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader675 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ui = icmp eq i64 %indvars.iv.i.ph, %i.th
  br i1 %i.ui, label %.preheader237.i, label %.lr.ph.i

.preheader237.i:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block626
  br i1 %brmerge.i, label %.preheader236.i, label %.lr.ph245.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !107
  %i.ul = fmul float %i.ts, %i.uk
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.um = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i ; 2 uses
  store float %i.ul, ptr %i.um, align 4, !tbaa !107
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  store <2 x float> zeroinitializer, ptr %i.un, align 4, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.next.i
  %i.up = load float, ptr %i.uo, align 4, !tbaa !107
  %i.uq = fmul float %i.ts, %i.up
  %.idx.i.1 = mul nuw nsw i64 %indvars.iv.next.i, 12
  %i.ur = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i.1 ; 2 uses
  store float %i.uq, ptr %i.ur, align 4, !tbaa !107
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store <2 x float> zeroinitializer, ptr %i.us, align 4, !tbaa !107
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader237.i, label %.lr.ph.i, !llvm.loop !136

bb.dk:                                            ; preds = %bb.co
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

bb.dl:                                            ; preds = %_ZN2cv4Mat_IdEaSEONS_3MatE.exit, %._crit_edge136.i.i
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dl, %bb.di
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.uu, %bb.dl ], [ %.pn89.pn.i.i, %bb.di ] ; 2 uses
  %i.uv = load ptr, ptr %19, align 8, !tbaa !103  ; 3 uses
  %.not.i.i211.i = icmp eq ptr %i.uv, %i.fx
  %i.uw = icmp eq ptr %i.uv, null
  %or.cond.i.i = or i1 %.not.i.i211.i, %i.uw
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %.body.i
  call void @_ZdaPv(ptr noundef nonnull %i.uv) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

.preheader236.i:                                  ; preds = %._crit_edge.i, %.preheader237.i, %bb.dj
  br i1 %i.sr, label %.lr.ph250.i.preheader, label %.preheader.i

.lr.ph250.i.preheader:                            ; preds = %.preheader236.i
  br i1 %i.ti, label %.lr.ph250.i.epil.preheader, label %.lr.ph250.i

.lr.ph245.i:                                      ; preds = %.preheader237.i, %._crit_edge.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader237.i ] ; 3 uses
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %._crit_edge.i ], [ 1, %.preheader237.i ] ; 6 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv291.i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !107 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv291.i
  %i.va = load float, ptr %i.uz, align 4, !tbaa !107 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv291.i
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !107 ; 2 uses
  %i.vd = sub nsw i64 %indvars.iv311.i, %indvars.iv291.i
  %i.ve = trunc nsw i64 %i.vd to i32
  %.sroa.speculated225.i = call i32 @llvm.smax.i32(i32 %i.ve, i32 0)
  %i.vf = zext nneg i32 %.sroa.speculated225.i to i64
  %i.vg = mul i64 %i.sj, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.vg ; 2 uses
  %i.vi = add nuw nsw i64 %indvars.iv291.i, %indvars.iv311.i
  %i.vj = trunc nuw nsw i64 %i.vi to i32
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.sp, i32 %i.vj)
  %i.vk = sext i32 %.sroa.speculated.i to i64
  %i.vl = mul i64 %i.sj, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.vl ; 2 uses
  br i1 %min.iters.check591, label %scalar.ph590.preheader, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph245.i
  %i.vn = xor i32 %indvar, -1
  %i.vo = add i32 %i.vn, %i.tr
  %smax = call i32 @llvm.smax.i32(i32 %i.vo, i32 0)
  %i.vp = zext nneg i32 %smax to i64
  %i.vq = mul i64 %i.sj, %i.vp                    ; 2 uses
  %scevgep582 = getelementptr i8, ptr %scevgep581, i64 %i.vq
  %scevgep580 = getelementptr nuw i8, ptr %i.si, i64 %i.vq
  %i.vr = add i32 %i.tq, %indvar
  %i.vs = call i32 @llvm.smin.i32(i32 %i.vr, i32 %i.sp)
  %smin = sext i32 %i.vs to i64
  %i.vt = mul i64 %i.sj, %smin                    ; 2 uses
  %scevgep579 = getelementptr i8, ptr %scevgep578, i64 %i.vt
end_hunk_1
