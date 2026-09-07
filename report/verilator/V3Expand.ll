Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Expand?download=true
inline.NumInlined: 2164
inline.NumDeleted: 409
begin_hunk_0_@_ZN13ExpandVisitor5visitEP12AstReplicate:bb.a
          to label %.noexc.i unwind label %bb.az  ; 2 uses

.noexc.i:                                         ; preds = %.noexc145
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 72 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !118
  %.not.i.i.i143 = icmp eq ptr %i.gv, %i.gt
  br i1 %.not.i.i.i143, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.ay

bb.ay:                                            ; preds = %.noexc.i
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !118
  %i.gw = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.az:                                            ; preds = %.noexc145
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.gq) #21
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.ay, %.noexc.i
  %i.gz = load ptr, ptr %i.h, align 8, !tbaa !118 ; 2 uses
  %.not.i146 = icmp eq ptr %i.gz, null
  br i1 %.not.i146, label %_ZNK7AstNode5widthEv.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN8AstConstC2EP8FileLinej.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !122
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.ba, %_ZN8AstConstC2EP8FileLinej.exit
  %i.hc = phi i32 [ %i.hb, %bb.ba ], [ 0, %_ZN8AstConstC2EP8FileLinej.exit ]
  invoke void @_ZN9AstShiftLC2EP8FileLineP11AstNodeExprS3_i(ptr noundef nonnull align 8 dereferenceable(160) %i.gn, ptr noundef %i.o, ptr noundef %i.go, ptr noundef nonnull %i.gp, i32 noundef %i.hc)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNK7AstNode5widthEv.exit
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.gm, i16 273, ptr noundef %i.o)
          to label %.noexc149 unwind label %bb.be

.noexc149:                                        ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.gm, align 8, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 152
  store i64 0, ptr %i.hd, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.gm, ptr noundef nonnull %i.gn)
          to label %.noexc150 unwind label %bb.be

.noexc150:                                        ; preds = %.noexc149
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.gm, ptr noundef %.056171)
          to label %.noexc151 unwind label %bb.be

.noexc151:                                        ; preds = %.noexc150
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV5AstOr, i64 16), ptr %i.gm, align 8, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !118 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 72 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !118
  %.not.i.i.i148 = icmp eq ptr %i.hh, %i.hf
  br i1 %.not.i.i.i148, label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.bc

bb.bc:                                            ; preds = %.noexc151
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !118
  %i.hi = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit

_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit:     ; preds = %.noexc151, %bb.bc
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !118 ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.hf, %i.hk
  br i1 %.not.i.i153, label %_ZN7AstNode9dtypeFromEPKS_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit
  store ptr %i.hk, ptr %i.hg, align 8, !tbaa !118
  %i.hl = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN7AstNode9dtypeFromEPKS_.exit

_ZN7AstNode9dtypeFromEPKS_.exit:                  ; preds = %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit, %bb.bd
  %i.hn = add nuw i32 %.0172, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.hn, %i.fy
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

bb.be:                                            ; preds = %.noexc150, %.noexc149, %bb.bb, %.lr.ph
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %bb.aw, %_ZNK7AstNode5widthEv.exit, %_ZN11AstNodeExpr13cloneTreePureEb.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc144, %bb.ax
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.az, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.hq, %bb.bg ], [ %i.gy, %bb.az ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 208) #22
  br label %bb.bh

bb.bh:                                            ; preds = %.body, %bb.bf
  %.pn68 = phi { ptr, i32 } [ %i.hp, %bb.bf ], [ %eh.lpad-body, %.body ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef 160) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.pn70 = phi { ptr, i32 } [ %i.ho, %bb.be ], [ %.pn68, %bb.bh ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 160) #22
  br label %bb.bk

_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit:    ; preds = %._crit_edge, %.noexc106, %bb.y
  %i.hr = phi ptr [ %.pre187, %._crit_edge ], [ %i.cs, %.noexc106 ], [ %i.cs, %bb.y ]
  %.157 = phi ptr [ %.056.lcssa, %._crit_edge ], [ %i.cl, %.noexc106 ], [ %i.cl, %bb.y ] ; 2 uses
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !118 ; 2 uses
  %.not.i.i155 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not.i.i155, label %_ZN7AstNode9dtypeFromEPKS_.exit156, label %bb.bj

bb.bj:                                            ; preds = %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %.157, i64 72
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !118
  %i.hu = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN7AstNode9dtypeFromEPKS_.exit156

_ZN7AstNode9dtypeFromEPKS_.exit156:               ; preds = %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit, %bb.bj
  call void @_ZN13ExpandVisitor17replaceWithDeleteEP7AstNodeS1_(ptr noundef nonnull %1, ptr noundef nonnull %.157)
  br label %_ZN7AstNode12user1SetOnceEv.exit

bb.bk:                                            ; preds = %bb.av, %bb.bi, %bb.ap, %bb.z, %bb.t
  %.pn81 = phi { ptr, i32 } [ %i.cw, %bb.z ], [ %.pn78.pn, %bb.t ], [ %.pn64.pn, %bb.ap ], [ %.pn70, %bb.bi ], [ %i.gi, %bb.av ]
  resume { ptr, i32 } %.pn81

_ZN7AstNode12user1SetOnceEv.exit:                 ; preds = %bb.a, %_ZNK7AstNode6isWideEv.exit.thread, %_ZNK7AstNode6isWideEv.exit, %_ZN7AstNode9dtypeFromEPKS_.exit156
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13ExpandVisitor5visitEP6AstSel(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %class.V3Number, align 8            ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !28 ; 2 uses
  %i.d = icmp ne i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295
  %.not.i353 = icmp eq i64 %i.g, 0
  %.not.i = select i1 %i.d, i1 true, i1 %.not.i353
  br i1 %.not.i, label %bb.b, label %_ZN7AstNode12user1SetOnceEv.exit

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.e, align 8, !tbaa !19
  store i32 %i.c, ptr %i.a, align 8, !tbaa !117
  tail call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 4 uses
  %.not.i222 = icmp eq ptr %i.i, null             ; 2 uses
  br i1 %.not.i222, label %_ZNK7AstNode8widthMinEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !126  ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.m = load i32, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i, i32 %i.m, i32 %i.k
  br label %_ZNK7AstNode8widthMinEv.exit

_ZNK7AstNode8widthMinEv.exit:                     ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !157
  %.not168 = icmp eq i32 %i.o, %i.q
  br i1 %.not168, label %bb.e, label %bb.d, !prof !105

bb.d:                                             ; preds = %_ZNK7AstNode8widthMinEv.exit
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 493) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.38)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #25
  unreachable

bb.e:                                             ; preds = %_ZNK7AstNode8widthMinEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158  ; 3 uses
  %.not.i223 = icmp eq ptr %i.v, null
  br i1 %.not.i223, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit

_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit:    ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.w, align 8, !tbaa !143
  %i.x = add i16 %.sroa.0.0.copyload.i.i.i, -466
  %spec.select.i.i = icmp ult i16 %i.x, 6
  br i1 %spec.select.i.i, label %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread

_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit:   ; preds = %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN7AstNode12user1SetOnceEv.exit, label %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread

_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread: ; preds = %bb.e, %_ZN7AstNode2asI13AstNodeAssignS_EEPT_PT0_.exit, %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit
  br i1 %.not.i222, label %_ZNK7AstNode6isWideEv.exit.thread, label %_ZNK7AstNode6isWideEv.exit

_ZNK7AstNode6isWideEv.exit:                       ; preds = %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !122
  %i.ad = icmp sgt i32 %i.ac, 64
  br i1 %i.ad, label %_ZN7AstNode12user1SetOnceEv.exit, label %_ZNK7AstNode6isWideEv.exit.thread

_ZNK7AstNode6isWideEv.exit.thread:                ; preds = %_ZN7AstNode2isI13AstNodeAssignS_EEbPKT0_.exit.thread, %_ZNK7AstNode6isWideEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 3 uses
  %.not.i228 = icmp eq ptr %i.ah, null
  br i1 %.not.i228, label %_ZNK7AstNode6isWideEv.exit233.thread, label %_ZN7AstNode2isI14AstStreamDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI14AstStreamDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZNK7AstNode6isWideEv.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.0.0.copyload.i.i.i229 = load i16, ptr %i.ai, align 8, !tbaa !143
  switch i16 %.sroa.0.0.copyload.i.i.i229, label %_ZNK7AstNode6isWideEv.exit233 [
    i16 94, label %_ZN7AstNode12user1SetOnceEv.exit
    i16 90, label %_ZN7AstNode12user1SetOnceEv.exit
  ]

_ZNK7AstNode6isWideEv.exit233:                    ; preds = %_ZN7AstNode2isI14AstStreamDType12AstNodeDTypeEEbPKT0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !122
  %i.al = icmp sgt i32 %i.ak, 64
  br i1 %i.al, label %bb.f, label %_ZNK7AstNode6isWideEv.exit233.thread

bb.f:                                             ; preds = %_ZNK7AstNode6isWideEv.exit233
  %i.am = tail call noundef zeroext i1 @_ZN13ExpandVisitor8isImpureEP7AstNode(ptr noundef nonnull %1)
  br i1 %i.am, label %_ZN7AstNode12user1SetOnceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call noundef i32 @_ZL5debugv()
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %bb.h, label %bb.x, !prof !11

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.1, i32 noundef 504)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.aq, i64 noundef %i.as)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.567, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %1)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.aw = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %.not183 = icmp eq i8 %i.bg, 10
  %i.bh = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236: ; preds = %bb.l
  %i.bk = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.l
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bm) #22
  %.pre = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  %i.bn = phi ptr [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i236 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.not183, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.s unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.p
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %bb.o
  %.pn179 = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %i.bv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.w

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.r:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cd = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.r
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.q
  %.pn181 = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %i.cc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.w

bb.s:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_0
