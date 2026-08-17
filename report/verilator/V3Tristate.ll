inline.NumInlined: 6058
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15TristateVisitor25mergeWiredNetsAssignmentsEv:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !135 ; 4 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.ae, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #28 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store ptr %i.s, ptr %i.cl, align 8, !tbaa !123
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.af, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.af, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ck, ptr %i.d, align 8, !tbaa !135
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !224
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.co, ptr %i.f, align 8, !tbaa !136
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %bb.ac, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !490 ; 7 uses
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !518 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit
  store ptr %i.cp, ptr %i.h, align 8, !tbaa !518
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit

_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit:  ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cr = phi ptr [ %i.cq, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit ], [ %i.cp, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.065.087, i64 56 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !493
  %.not.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit
  store ptr %i.bp, ptr %i.cr, align 8, !tbaa !519
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !518
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.aj, label %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #28 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store ptr %i.bp, ptr %i.dg, align 8, !tbaa !519
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.ak, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ak:                                            ; preds = %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cp, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ak, %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cx) #25
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.df, ptr %i.g, align 8, !tbaa !490
  store ptr %i.di, ptr %i.h, align 8, !tbaa !518
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dj, ptr %i.cs, align 8, !tbaa !493
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ah, %bb.c, %bb.b
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.065.087) #26 ; 2 uses
  %.not68 = icmp eq ptr %i.dk, %i.c
  br i1 %.not68, label %._crit_edge90, label %bb.b

bb.am:                                            ; preds = %._crit_edge
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 232) #25
  br label %common.resume

bb.an:                                            ; preds = %.noexc53, %.noexc, %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 152) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEv(ptr noundef nonnull align 8 dereferenceable(344) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.V3Number, align 8            ; 12 uses
  %2 = alloca %class.V3Number, align 8            ; 12 uses
  %3 = alloca %class.V3Number, align 8            ; 12 uses
  %4 = alloca %class.V3Number, align 8            ; 12 uses
  %5 = alloca %class.anon.206, align 8            ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.not8688 = icmp eq ptr %i.d, %i.e
  br i1 %.not8688, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aw, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  %.sroa.053.089 = phi ptr [ %i.d, %.lr.ph ], [ %i.ge, %bb.aw ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.053.089, i64 40 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.053.089, i64 48 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !518  ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !490 ; 5 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 9
  br i1 %i.ae, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = icmp eq ptr %i.aa, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ag, %i.z
  %or.cond.i.i.i = select i1 %i.af, i1 true, i1 %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread
  %i.ah = phi ptr [ %i.ck, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ], [ %i.ag, %bb.c ] ; 3 uses
  %.sroa.02.013.i.i.i = phi ptr [ %8, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ], [ %i.aa, %bb.c ] ; 5 uses
  %i.ai = load ptr, ptr %.sroa.02.013.i.i.i, align 8, !tbaa !519 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !519 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.al, null
  br i1 %.not.i.i26, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.0.0.copyload.i.i.i.i27 = load i16, ptr %i.am, align 8, !tbaa !124
  %i.an = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i27, 121
  br i1 %i.an, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.aq = invoke noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28
  %i.ar = load i8, ptr %i.g, align 4, !tbaa !236  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 3
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.i
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30: ; preds = %bb.f
  %i.av = load i64, ptr %i.i, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

bb.g:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !233
  %i.ay = icmp sgt i32 %i.ax, 128
  %i.az = icmp eq i8 %i.ar, 1
  %i.ba = and i1 %i.az, %i.ay
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %3, align 8, !tbaa !237   ; 3 uses
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

common.resume:                                    ; preds = %bb.ah, %bb.aa, %bb.q, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %i.ce, %bb.q ], [ %i.ds, %bb.aa ], [ %i.eq, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31: ; preds = %bb.f, %bb.i, %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32: ; preds = %.lr.ph.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31
  %i.bh = phi i1 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31 ], [ false, %.lr.ph.i.i.i ], [ false, %bb.d ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !149 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread, label %bb.k

bb.k:                                             ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.bk, align 8, !tbaa !124
  %i.bl = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  br i1 %i.bl, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  %i.bo = invoke noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i
  %i.bp = load i8, ptr %i.k, align 4, !tbaa !236  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 3
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.m
  br i1 %i.bs, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bt = load i64, ptr %i.m, align 8, !tbaa !17
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.n:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %i.l, align 8, !tbaa !233
  %i.bw = icmp sgt i32 %i.bv, 128
  %i.bx = icmp eq i8 %i.bp, 1
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %bb.o, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %4, align 8, !tbaa !237   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !240
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.q:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %brmerge.not.i.i.i.i.i = and i1 %i.bh, %i.bo
  br i1 %brmerge.not.i.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i

bb.r:                                             ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !241 ; 2 uses
  %.not.not.i9.i.i.i.i.i.a = icmp eq ptr %i.cg, null
  br i1 %.not.not.i9.i.i.i.i.i.a, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i: ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i.i.i = load i8, ptr %i.ch, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i, %bb.r
  %spec.select.i.i.i.i.i.i = phi i8 [ 6, %bb.r ], [ %.sroa.0.0.copyload.i8.i.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i ]
  %6 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !241      ; 2 uses
  %.not.not.i9.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %.not.not.i9.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 152
  %.sroa.0.0.copyload.i8.i10.i.i.i.i.i = load i8, ptr %i.ci, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i
  %spec.select.i11.i.i.i.i.i = phi i8 [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i8.i10.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.cj = icmp ult i8 %spec.select.i.i.i.i.i.i, %spec.select.i11.i.i.i.i.i
  %cond.fr66 = freeze i1 %i.cj
  br i1 %cond.fr66, label %bb.s, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit
  %.not.i.i.i.i.i = xor i1 %i.bh, true
  %.mux.i.i.i.i.i = and i1 %i.bo, %.not.i.i.i.i.i
  br i1 %.mux.i.i.i.i.i, label %bb.s, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

bb.s:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32, %bb.k, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i, %bb.s
  %8 = phi ptr [ %i.ah, %bb.s ], [ %.sroa.02.013.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i ], [ %.sroa.02.013.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i ], [ %.sroa.02.013.i.i.i, %bb.k ], [ %.sroa.02.013.i.i.i, %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %i.z
  br i1 %.not.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !584

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread, %bb.c
  %.sroa.02.2.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %8, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.02.2.i.i.i, align 8, !tbaa !519
  %i.cm = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %i.cl, i1 noundef zeroext false)
  br i1 %i.cm, label %bb.t, label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit

bb.t:                                             ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i
  %i.cn = load ptr, ptr %.sroa.02.2.i.i.i, align 8, !tbaa !519
  br label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit

_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i, %bb.t
  %i.co = phi ptr [ %i.cn, %bb.t ], [ null, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i ] ; 4 uses
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !582 ; 4 uses
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !582 ; 3 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %.not12.i.i.i11 = icmp eq ptr %i.cs, %i.cq
  %or.cond.i.i.i12 = select i1 %i.cr, i1 true, i1 %.not12.i.i.i11
  br i1 %or.cond.i.i.i12, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread
  %i.ct = phi ptr [ %i.ew, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread ], [ %i.cs, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit ] ; 3 uses
  %.sroa.02.013.i.i.us.i = phi ptr [ %11, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread ], [ %i.cp, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit ] ; 5 uses
  %i.cu = load ptr, ptr %.sroa.02.013.i.i.us.i, align 8, !tbaa !519 ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !519 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !149 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i40, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.us.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %.sroa.0.0.copyload.i.i.i.i41 = load i16, ptr %i.cy, align 8, !tbaa !124
  %i.cz = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i41, 121
  br i1 %i.cz, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i42, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i42: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false)
  %i.dc = invoke noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i42
  %i.dd = load i8, ptr %i.o, align 4, !tbaa !236  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 3
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.q
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %bb.w
  %i.dh = load i64, ptr %i.q, align 8, !tbaa !17
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45

bb.x:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.p, align 8, !tbaa !233
  %i.dk = icmp sgt i32 %i.dj, 128
  %i.dl = icmp eq i8 %i.dd, 1
  %i.dm = and i1 %i.dl, %i.dk
  br i1 %i.dm, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %1, align 8, !tbaa !237   ; 3 uses
  %.not.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !240
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45

bb.aa:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i42
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45: ; preds = %bb.w, %bb.z, %bb.y, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46: ; preds = %.lr.ph.i.i.us.i, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45
  %i.dt = phi i1 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i45 ], [ false, %.lr.ph.i.i.us.i ], [ false, %bb.u ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !149 ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i33, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %.sroa.0.0.copyload.i.i.i.i34 = load i16, ptr %i.dw, align 8, !tbaa !124
  %i.dx = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i34, 121
  br i1 %i.dx, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i35, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i35: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false)
  %i.ea = invoke noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0)
          to label %bb.ac unwind label %bb.ah     ; 2 uses

bb.ac:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i35
  %i.eb = load i8, ptr %i.s, align 4, !tbaa !236  ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 3
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.u
  br i1 %i.ee, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i37: ; preds = %bb.ad
  %i.ef = load i64, ptr %i.u, align 8, !tbaa !17
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39

bb.ae:                                            ; preds = %bb.ac
  %i.eh = load i32, ptr %i.t, align 8, !tbaa !233
  %i.ei = icmp sgt i32 %i.eh, 128
  %i.ej = icmp eq i8 %i.eb, 1
  %i.ek = and i1 %i.ej, %i.ei
  br i1 %i.ek, label %bb.af, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39

bb.af:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %2, align 8, !tbaa !237   ; 3 uses
  %.not.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i.i.i36, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.u, align 8, !tbaa !240
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39

bb.ah:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i35
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i37, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %brmerge.not.i.i.i.i.us.i = and i1 %i.dt, %i.ea
  br i1 %brmerge.not.i.i.i.i.us.i, label %bb.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.us.i

bb.ai:                                            ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39
  %i.er = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !241 ; 2 uses
  %.not.not.i9.i.i.i.i.us.i = icmp eq ptr %i.es, null
  br i1 %.not.not.i9.i.i.i.i.us.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread20.i.i.i.i.us.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread20.i.i.i.i.us.i: ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i.i.us.i = load i8, ptr %i.et, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread20.i.i.i.i.us.i, %bb.ai
  %spec.select.i.i.i.i.i.i29 = phi i8 [ 6, %bb.ai ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.us.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread20.i.i.i.i.us.i ]
  %9 = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !241     ; 2 uses
  %.not.not.i9.i.i.i.i.i30 = icmp eq ptr %10, null
  br i1 %.not.not.i9.i.i.i.i.i30, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i, label %.thread23.i.i.i.i.us.i

.thread23.i.i.i.i.us.i:                           ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 153
  %.sroa.0.0.copyload.i.i12.i.i.i.i.us.i = load i8, ptr %i.eu, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i: ; preds = %.thread23.i.i.i.i.us.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i
  %spec.select.i11.i.i.i.i.us.i = phi i8 [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.us.i ], [ %.sroa.0.0.copyload.i.i12.i.i.i.i.us.i, %.thread23.i.i.i.i.us.i ]
  %i.ev = icmp ult i8 %spec.select.i.i.i.i.i.i29, %spec.select.i11.i.i.i.i.us.i
  %cond.fr7073 = freeze i1 %i.ev
  br i1 %cond.fr7073, label %bb.aj, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.us.i: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit39
  %.not.i.i.i.i.us.i = xor i1 %i.dt, true
  %.mux.i.i.i.i.us.i = and i1 %i.ea, %.not.i.i.i.i.us.i
  br i1 %.mux.i.i.i.i.us.i, label %bb.aj, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread

bb.aj:                                            ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.us.i
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46, %bb.ab, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.us.i, %bb.aj
  %11 = phi ptr [ %i.ct, %bb.aj ], [ %.sroa.02.013.i.i.us.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.us.i ], [ %.sroa.02.013.i.i.us.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i ], [ %.sroa.02.013.i.i.us.i, %bb.ab ], [ %.sroa.02.013.i.i.us.i, %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit46 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %i.ew, %i.cq
  br i1 %.not.i.i.us.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14, label %.lr.ph.i.i.us.i, !llvm.loop !584

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit
  %.sroa.02.2.i.i.i15 = phi ptr [ %i.cp, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit ], [ %11, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.us.i.thread ] ; 2 uses
  %i.ex = load ptr, ptr %.sroa.02.2.i.i.i15, align 8, !tbaa !519
  %i.ey = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %i.ex, i1 noundef zeroext true)
  br i1 %i.ey, label %bb.ak, label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16

bb.ak:                                            ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14
  %i.ez = load ptr, ptr %.sroa.02.2.i.i.i15, align 8, !tbaa !519
  br label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16

_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14, %bb.ak
  %i.fa = phi ptr [ %i.ez, %bb.ak ], [ null, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i14 ] ; 3 uses
  %.not.i = icmp ne ptr %i.co, null               ; 3 uses
  br i1 %.not.i, label %bb.al, label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit

bb.al:                                            ; preds = %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !241 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.not.i.i, label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  %.sroa.0.0.copyload.i8.i.i = load i8, ptr %i.fd, align 1, !tbaa !515
  br label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit

_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit: ; preds = %bb.am, %bb.al, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16
  %.059 = phi i8 [ 0, %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit16 ], [ 6, %bb.al ], [ %.sroa.0.0.copyload.i8.i.i, %bb.am ] ; 3 uses
  %.not.i17 = icmp eq ptr %i.fa, null
  br i1 %.not.i17, label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22, label %bb.an

bb.an:                                            ; preds = %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !241 ; 2 uses
  %.not.not.i.i18 = icmp eq ptr %i.ff, null
  br i1 %.not.not.i.i18, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 153
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.fg, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19: ; preds = %bb.ao, %bb.an
  %spec.select.i.i20 = phi i8 [ 6, %bb.an ], [ %.sroa.0.0.copyload.i.i.i, %bb.ao ] ; 2 uses
  %.not6.i21 = icmp uge i8 %spec.select.i.i20, %.059 ; 2 uses
  %brmerge = or i1 %.not6.i21, %.not.i
  %.mux = select i1 %.not6.i21, ptr %i.fa, ptr %i.co
  %spec.select.i.i20.mux = call i8 @llvm.umax.i8(i8 %spec.select.i.i20, i8 %.059)
  br i1 %brmerge, label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread, label %bb.aw

_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22: ; preds = %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit
  br i1 %.not.i, label %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread, label %bb.aw

_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22
  %.178 = phi ptr [ %i.co, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22 ], [ %.mux, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19 ]
  %.16077 = phi i8 [ %.059, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22 ], [ %spec.select.i.i20.mux, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.178, ptr %i.a, align 8, !tbaa !519
  store i8 %.16077, ptr %i.b, align 1, !tbaa !17
  %i.fh = load ptr, ptr %i.x, align 8, !tbaa !582
  %i.fi = load ptr, ptr %i.y, align 8, !tbaa !582 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.fj = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.fh, ptr %i.fi, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_pred") align 8 %5) ; 4 uses
  %i.fk = icmp eq ptr %i.fj, %i.fi
  %.sroa.06.015.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.06.015.i.i.i, %i.fi
  %or.cond.i.i.i23 = select i1 %i.fk, i1 true, i1 %.not16.i.i.i
  br i1 %or.cond.i.i.i23, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread, %bb.av
  %.sroa.06.018.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.av ], [ %.sroa.06.015.i.i.i, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread ] ; 3 uses
  %.sroa.012.017.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.av ], [ %i.fj, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread ] ; 3 uses
  %i.fl = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !519 ; 6 uses
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !519
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i24
  %i.fo = load i8, ptr %i.b, align 1, !tbaa !17   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !241 ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.not.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i = load i8, ptr %i.fr, align 1, !tbaa !515
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.fs, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i: ; preds = %bb.aq, %bb.ap
  %spec.select.i18.i.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i.i, %bb.aq ], [ 6, %bb.ap ]
  %spec.select.i15.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.aq ], [ 6, %bb.ap ]
  %.not.i.i.i47 = icmp ugt i8 %spec.select.i18.i.i.i, %i.fo ; 2 uses
  %.not12.i.i.i48 = icmp ugt i8 %spec.select.i15.i.i.i, %i.fo ; 3 uses
  %or.cond.i.i.i49 = or i1 %.not.i.i.i47, %.not12.i.i.i48
  br i1 %or.cond.i.i.i49, label %bb.ar, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit

bb.ar:                                            ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i
  br i1 %.not.i.i.i47, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.fl, i1 noundef zeroext false) ; 2 uses
  %brmerge.i.i.i = or i1 %.not12.i.i.i48, %i.ft
  br i1 %brmerge.i.i.i, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, label %.split.i.i

bb.at:                                            ; preds = %bb.ar
  br i1 %.not12.i.i.i48, label %bb.au, label %.split.i.i

.split.i.i:                                       ; preds = %bb.at, %bb.as
  %i.fu = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.fl, i1 noundef zeroext true)
  br i1 %i.fu, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.au

_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i: ; preds = %bb.as
  br i1 %i.ft, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.au

_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, %.split.i.i, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i
  call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull %i.fl)
  %i.fv = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.fl, ptr noundef null)
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef %i.fv)
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.i.i24, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, %.split.i.i, %bb.at
  %i.fw = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !519
  store ptr %i.fw, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !519
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, %bb.au
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.017.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit ], [ %i.fx, %bb.au ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.06.0.i.i.i, %i.fi
  br i1 %.not.i.i.i25, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i24, !llvm.loop !585

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i: ; preds = %bb.av, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread
  %.sroa.012.2.i.i.i = phi ptr [ %i.fj, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22.thread ], [ %.sroa.012.1.i.i.i, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fy = load ptr, ptr %i.y, align 8, !tbaa !582
  %.not.i.i7.i = icmp eq ptr %.sroa.012.2.i.i.i, %i.fy
  br i1 %.not.i.i7.i, label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, label %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i
  %i.fz = load ptr, ptr %i.x, align 8, !tbaa !582 ; 2 uses
  %i.ga = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fz, i64 %i.gc
  store ptr %i.gd, ptr %i.y, align 8, !tbaa !518
  br label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit

_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i19, %_ZZN15TristateVisitor47removeAssignmentsNotStrongerThanUniformConstantEvENKUlPK10AstAssignWbE_clES2_b.exit22, %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, %bb.b
  %i.ge = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.053.089) #26 ; 2 uses
  %.not86 = icmp eq ptr %i.ge, %i.e
  br i1 %.not86, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13TristateGraph9graphWalkEP13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZL5debugv()
  %i.b = icmp sgt i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.r, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.1, i32 noundef 288)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = load ptr, ptr %3, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.578, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.j = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !10     ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  %.not = icmp eq i8 %i.t, 10
  %i.u = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %bb.f
  %i.x = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.f
  %i.y = load i64, ptr %i.v, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #25
  %.pre = load ptr, ptr %4, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.aa = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
end_hunk_0
begin_hunk_1_@_ZN13TristateGraph9graphWalkEP13AstNodeModule:bb.a
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !17
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !17, !alias.scope !586
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.t
  %i.ci = phi i64 [ %i.ce, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !16, !alias.scope !586
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !10
  store i64 0, ptr %i.cj, align 8, !tbaa !16
  store i8 0, ptr %i.cb, align 8, !tbaa !17
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bz
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.v
  %i.cn = load i64, ptr %i.bz, align 8, !tbaa !17
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.cp = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.x:                                             ; preds = %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bz
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.x
  %i.cy = load i64, ptr %i.bz, align 8, !tbaa !17
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.w
  %.pn22 = phi { ptr, i32 } [ %i.cu, %bb.w ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.cv, %bb.x ]
  %i.da = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %._crit_edge
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.q
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn19.pn, %bb.q ]
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEv(ptr noundef nonnull align 8 dereferenceable(344) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.206, align 8            ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.not35 = icmp eq ptr %i.d, %i.e
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.sroa.027.036 = phi ptr [ %i.d, %.lr.ph ], [ %i.ct, %.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !518  ; 8 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !490  ; 7 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 9
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %._ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit_crit_edge, label %.preheader.i.i

._ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit_crit_edge: ; preds = %bb.c
  %.pre = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !19
  br label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit

.preheader.i.i:                                   ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.q, %i.j
  %.pre37 = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !19 ; 5 uses
  br i1 %.not16.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i
  %i.r = phi ptr [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ], [ %i.q, %.preheader.i.i ] ; 3 uses
  %.sroa.02.017.i.i = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ], [ %i.k, %.preheader.i.i ] ; 4 uses
  %i.s = load ptr, ptr %.sroa.02.017.i.i, align 8, !tbaa !519 ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !519  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 140
  %i.v = load i32, ptr %i.u, align 4, !tbaa !232
  %i.w = icmp ne i32 %i.v, %.pre37
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.y, 0
  %.not.i.i.i.i.i = select i1 %i.w, i1 true, i1 %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !140, !range !65, !noundef !66
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !232
  %i.af = icmp ne i32 %i.ae, %.pre37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %.not3.i10.i.i.i.i = icmp eq i64 %i.ah, 0
  %.not.i11.i.i.i.i = select i1 %i.af, i1 true, i1 %.not3.i10.i.i.i.i
  br i1 %.not.i11.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !140, !range !65, !noundef !66
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.an = load i32, ptr %i.am, align 4, !tbaa !232
  %i.ao = icmp ne i32 %i.an, %.pre37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %.not3.i13.i.i.i.i = icmp eq i64 %i.aq, 0
  %.not.i14.i.i.i.i = select i1 %i.ao, i1 true, i1 %.not3.i13.i.i.i.i
  br i1 %.not.i14.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = load i8, ptr %i.as, align 8, !tbaa !140, !range !65, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !241 ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.not.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i.i = load i8, ptr %i.ax, align 1, !tbaa !515
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !515
  %i.az = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i.i.i.i.i, i8 %.sroa.0.0.copyload.i8.i.i.i.i.i)
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i: ; preds = %bb.e, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i
  %spec.select.i17.i.i.i.i = phi i8 [ %i.az, %bb.e ], [ 6, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !241 ; 3 uses
  %.not.not.i19.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.not.i19.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %.sroa.0.0.copyload.i8.i20.i.i.i.i = load i8, ptr %i.bc, align 1, !tbaa !515
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 153
  %.sroa.0.0.copyload.i.i24.i.i.i.i = load i8, ptr %i.bd, align 1, !tbaa !515
  %i.be = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i24.i.i.i.i, i8 %.sroa.0.0.copyload.i8.i20.i.i.i.i)
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i: ; preds = %bb.f, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i
  %spec.select.i25.i.i.i.i = phi i8 [ %i.be, %bb.f ], [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i ]
  %i.bf = icmp ult i8 %spec.select.i17.i.i.i.i, %spec.select.i25.i.i.i.i
  %cond.fr.i.i = freeze i1 %i.bf
  br i1 %cond.fr.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, %.split.i.i, %bb.d
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i, %.split.i.i
  %i.bg = phi ptr [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i ], [ %.sroa.02.017.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i ], [ %.sroa.02.017.i.i, %.split.i.i ], [ %.sroa.02.017.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.j
  br i1 %.not.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, label %.lr.ph.i.i, !llvm.loop !589

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, %._ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit_crit_edge, %.preheader.i.i
  %i.bi = phi i32 [ %.pre, %._ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit_crit_edge ], [ %.pre37, %.preheader.i.i ], [ %.pre37, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ]
  %.sroa.02.2.i.i = phi ptr [ %i.k, %._ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit_crit_edge ], [ %i.k, %.preheader.i.i ], [ %i.bg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ]
  %i.bj = load ptr, ptr %.sroa.02.2.i.i, align 8, !tbaa !519 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 140
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !232
  %i.bm = icmp ne i32 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not3.i = icmp eq i64 %i.bo, 0
  %.not.i = select i1 %i.bm, i1 true, i1 %.not3.i
  br i1 %.not.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit

_ZN13TristateGraph10isTristateEPK7AstNode.exit:   ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !140, !range !65, !noundef !66
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.thread, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread

_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, %_ZN13TristateGraph10isTristateEPK7AstNode.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !241 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.not.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %.sroa.0.0.copyload.i8.i = load i8, ptr %i.bv, align 1, !tbaa !515
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 153
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bw, align 1, !tbaa !515
  %i.bx = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i, i8 %.sroa.0.0.copyload.i8.i)
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread, %bb.g
  %spec.select.i17 = phi i8 [ %i.bx, %bb.g ], [ 6, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !519
  store i8 %spec.select.i17, ptr %i.b, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.a, ptr %1, align 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.by = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.k, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_pred") align 8 %1) ; 4 uses
  %i.bz = icmp eq ptr %i.by, %i.j
  %.sroa.06.015.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.06.015.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.bz, i1 true, i1 %.not16.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18, %bb.n
  %.sroa.06.018.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.n ], [ %.sroa.06.015.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ] ; 3 uses
  %.sroa.012.017.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.n ], [ %i.by, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ] ; 3 uses
  %i.ca = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !519 ; 6 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !519
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.cd = load i8, ptr %i.b, align 1, !tbaa !17   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !241 ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.not.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i = load i8, ptr %i.cg, align 1, !tbaa !515
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.ch, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i: ; preds = %bb.i, %bb.h
  %spec.select.i18.i.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i.i, %bb.i ], [ 6, %bb.h ]
  %spec.select.i15.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ], [ 6, %bb.h ]
  %.not.i.i.i19 = icmp ugt i8 %spec.select.i18.i.i.i, %i.cd ; 2 uses
  %.not12.i.i.i = icmp ugt i8 %spec.select.i15.i.i.i, %i.cd ; 3 uses
  %or.cond.i.i.i20 = or i1 %.not.i.i.i19, %.not12.i.i.i
  br i1 %or.cond.i.i.i20, label %bb.j, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit

bb.j:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.ca, i1 noundef zeroext false) ; 2 uses
  %brmerge.i.i.i = or i1 %.not12.i.i.i, %i.ci
  br i1 %brmerge.i.i.i, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, label %.split.i.i21

bb.l:                                             ; preds = %bb.j
  br i1 %.not12.i.i.i, label %bb.m, label %.split.i.i21

.split.i.i21:                                     ; preds = %bb.l, %bb.k
  %i.cj = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.ca, i1 noundef zeroext true)
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.m

_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i: ; preds = %bb.k
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.m

_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, %.split.i.i21, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i
  call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.ca)
  %i.ck = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noundef null)
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.ck)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, %.split.i.i21, %bb.l
  %i.cl = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !519
  store ptr %i.cl, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !519
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, %bb.m
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.017.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit ], [ %i.cm, %bb.m ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !585

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i: ; preds = %bb.n, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18
  %.sroa.012.2.i.i.i = phi ptr [ %i.by, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ], [ %.sroa.012.1.i.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !582
  %.not.i.i7.i = icmp eq ptr %.sroa.012.2.i.i.i, %i.cn
  br i1 %.not.i.i7.i, label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, label %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !582 ; 2 uses
  %i.cp = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !518
  br label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit

_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread

.thread:                                          ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit, %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, %bb.b
  %i.ct = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.027.036) #26 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TristateVisitor15insertTristatesEP13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::vector.209", align 8   ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %class.VAccess, align 1             ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::map.222", align 8     ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZN13TristateGraph12tristateVarsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.209") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = load ptr, ptr %3, align 8, !tbaa !527    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !527  ; 2 uses
  %.not522 = icmp eq ptr %i.e, %i.g
  br i1 %.not522, label %._crit_edge541, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread
  %.pre571 = load ptr, ptr %3, align 8, !tbaa !527 ; 4 uses
  %.pre572 = load ptr, ptr %i.f, align 8, !tbaa !527 ; 2 uses
  %.not444537 = icmp eq ptr %.pre571, %.pre572
  br i1 %.not444537, label %._crit_edge541, label %.lr.ph540

.lr.ph540:                                        ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.not.i312 = icmp eq ptr %1, null
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.bo = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %._crit_edge541, label %.lr.ph540.split

bb.b:                                             ; preds = %.lr.ph, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread
  %.sroa.0433.0523 = phi ptr [ %i.e, %.lr.ph ], [ %i.ja, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0433.0523, align 8, !tbaa !516 ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 140
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !232
  %i.bt = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !19
  %i.bu = icmp ne i32 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_St6vectorIP10AstAssignWSaIS6_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_:bb.a
.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIP10AstAssignWE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #28
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIP10AstAssignWE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIP10AstAssignWE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !490
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !518
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !493
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !582  ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !582
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 8
  br i1 %i.v, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.q, i64 %i.u, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %.noexc6
  %i.w = icmp eq i64 %i.u, 8
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !519
  store ptr %i.x, ptr %i.m, align 8, !tbaa !519
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIP10AstAssignWE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #25
  invoke void @__cxa_rethrow() #27
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !518
  ret void

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ab

bb.j:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #29
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstAssignW4rhspEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.V3Number, align 8            ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.c, align 8, !tbaa !124
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %i.d, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.k

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.h = invoke noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef 0)
          to label %bb.e unwind label %bb.j

bb.d:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.i = invoke noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.l = load i8, ptr %i.k, align 4, !tbaa !236   ; 2 uses
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !233
  %i.u = icmp sgt i32 %i.t, 128
  %i.v = icmp eq i8 %i.l, 1
  %i.w = and i1 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %3, align 8, !tbaa !237    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.f, %bb.i, %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ae = phi i1 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK8AstConst3numEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZNK8V3Number11isEqAllOnesEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !519    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !653  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !656, !nonnull !66, !align !270
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !519
  %i.f = icmp eq ptr %i.a, %i.e
  br i1 %i.f, label %_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !657, !nonnull !66
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %.sroa.0.0.copyload.i8.i.i.i = load i8, ptr %i.l, align 1, !tbaa !515
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 153
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !515
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i: ; preds = %bb.c, %bb.b
  %spec.select.i18.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i, %bb.c ], [ 6, %bb.b ]
  %spec.select.i15.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ 6, %bb.b ]
  %.not.i.i = icmp ugt i8 %spec.select.i18.i.i, %i.i ; 2 uses
  %.not12.i.i = icmp ugt i8 %spec.select.i15.i.i, %i.i ; 3 uses
  %or.cond.i.i = or i1 %.not.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.d, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i

bb.d:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i, %i.n
  br i1 %brmerge.i.i, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i, label %.split.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not12.i.i, label %_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit, label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  %i.o = tail call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  br i1 %i.o, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i, label %_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit

_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i: ; preds = %bb.e
  br i1 %i.n, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i, label %_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit

_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i: ; preds = %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i, %.split.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  tail call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.a)
  %i.q = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef null)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef %i.q)
  br label %_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit

_ZZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_hENKUlS2_E_clES2_.exit: ; preds = %bb.a, %bb.f, %.split.i, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i
  %.0.i = phi i1 [ false, %bb.a ], [ true, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.thread.i ], [ false, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i ], [ false, %.split.i ], [ false, %bb.f ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_pred") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.036 = phi i64 [ %i.n, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.025.035 = phi ptr [ %i.m, %bb.e ], [ %0, %bb.a ] ; 6 uses
  %i.f = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.025.035)
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 8 ; 2 uses
  %i.h = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.g)
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 16 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.i)
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 24 ; 2 uses
  %i.l = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.k)
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 32 ; 3 uses
  %i.n = add nsw i64 %.036, -1
  %i.o = icmp sgt i64 %.036, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !658

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.m to i64
  %.pre37 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi38 = phi i64 [ %.pre37, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.025.0.lcssa = phi ptr [ %i.m, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.p = ashr exact i64 %.pre-phi38, 3
  switch i64 %i.p, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.q = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.025.0.lcssa)
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.025.1 = phi ptr [ %i.r, %bb.g ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 3 uses
  %i.s = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.025.1)
  br i1 %i.s, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.025.2 = phi ptr [ %i.t, %bb.i ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 2 uses
  %i.u = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.025.2)
  %spec.select = select i1 %i.u, ptr %.sroa.025.2, ptr %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %._crit_edge, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.025.1, %bb.h ], [ %spec.select, %bb.j ], [ %1, %._crit_edge ], [ %.sroa.025.0.lcssa, %bb.f ], [ %i.k, %bb.d ], [ %i.i, %bb.c ], [ %i.g, %bb.b ], [ %.sroa.025.035, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr29 = phi ptr [ %1, %bb.a ], [ %i.r, %bb.j ] ; 8 uses
  %.not = icmp eq ptr %.tr29, null
  br i1 %.not, label %bb.k, label %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit

_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit:            ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr29, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 8, !tbaa !124
  %i.c = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %.tr29, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232
  %i.f = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !19
  %i.g = icmp ne i32 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.tr29, i64 144
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not2328 = icmp eq i64 %i.i, 0
  %.not23 = select i1 %i.g, i1 true, i1 %.not2328
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.i to ptr
  tail call void @_ZN13V3GraphVertex12unlinkDeleteEP7V3Graph(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %_ZN7AstNode2isI6AstVarS_EEbPKT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.tr29, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149  ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.tr29, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 2 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.tr29, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231  ; 2 uses
  %.not26 = icmp eq ptr %i.p, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.p)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.tr29, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !241  ; 2 uses
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %bb.k, label %tailrecurse

bb.k:                                             ; preds = %bb.j, %tailrecurse
  ret void
}

declare void @_ZN13V3GraphVertex12unlinkDeleteEP7V3Graph(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13TristateGraph19graphWalkRecurseFwdEP14TristateVertexi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
