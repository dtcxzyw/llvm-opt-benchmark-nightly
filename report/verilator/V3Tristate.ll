Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Tristate?download=true
inline.NumInlined: 6058
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15TristateVisitor25mergeWiredNetsAssignmentsEv:bb.a
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !214 ; 4 uses
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !145
  %.not.i.i57 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i57, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.s, ptr %i.bw, align 8, !tbaa !135
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.e, align 8, !tbaa !214
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !144 ; 4 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
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
  store ptr %i.s, ptr %i.cl, align 8, !tbaa !135
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
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ck, ptr %i.d, align 8, !tbaa !144
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !214
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.f, align 8, !tbaa !145
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %bb.ac, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !353 ; 7 uses
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !358 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit
  store ptr %i.cs, ptr %i.h, align 8, !tbaa !358
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit

_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit:  ; preds = %_ZN9VNDeleter11pushDeletepEP7AstNode.exit, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cu = phi ptr [ %i.ct, %_ZN9VNDeleter11pushDeletepEP7AstNode.exit ], [ %i.cs, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.065.087, i64 56 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !354
  %.not.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit
  store ptr %i.bp, ptr %i.cu, align 8, !tbaa !360
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !358
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE5clearEv.exit
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 5 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.aj, label %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #28 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  store ptr %i.bp, ptr %i.dj, align 8, !tbaa !360
  %i.dk = icmp sgt i64 %i.da, 0
  br i1 %i.dk, label %bb.ak, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ak:                                            ; preds = %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.cs, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ak, %_ZNKSt6vectorIP10AstAssignWSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.dm = load ptr, ptr %i.cv, align 8, !tbaa !354
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.do) #25
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIP10AstAssignWSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.di, ptr %i.g, align 8, !tbaa !353
  store ptr %i.dl, ptr %i.h, align 8, !tbaa !358
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dp, ptr %i.cv, align 8, !tbaa !354
  br label %_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10AstAssignWSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP10AstAssignWSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ah, %bb.c, %bb.b
  %i.dq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.065.087) #26 ; 2 uses
  %.not68 = icmp eq ptr %i.dq, %i.c
  br i1 %.not68, label %._crit_edge90, label %bb.b

bb.am:                                            ; preds = %._crit_edge
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 232) #25
  br label %common.resume

bb.an:                                            ; preds = %.noexc53, %.noexc, %bb.z
  %i.ds = landingpad { ptr, i32 }
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
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
  %.sroa.053.089 = phi ptr [ %i.d, %.lr.ph ], [ %i.gj, %bb.aw ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.053.089, i64 40 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.053.089, i64 48 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !358  ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !353 ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 9
  br i1 %i.ae, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.af, %i.z
  br i1 %.not12.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread
  %i.ag = phi ptr [ %i.cm, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ], [ %i.af, %bb.c ] ; 3 uses
  %.sroa.02.013.i.i.i = phi ptr [ %i.cl, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ], [ %i.aa, %bb.c ] ; 6 uses
  %i.ah = load ptr, ptr %.sroa.02.013.i.i.i, align 8, !tbaa !360 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !360 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i26, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.sroa.0.0.copyload.i.i.i.i27 = load i16, ptr %i.al, align 8, !tbaa !137
  %i.am = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i27, 121
  br i1 %i.am, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = invoke noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28
  %i.aq = load i8, ptr %i.g, align 4, !tbaa !225  ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 3
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30: ; preds = %bb.f
  %i.au = load i64, ptr %i.i, align 8, !tbaa !29
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

bb.g:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.h, align 8, !tbaa !224
  %i.ax = icmp sgt i32 %i.aw, 128
  %i.ay = icmp eq i8 %i.aq, 1
  %i.az = and i1 %i.ay, %i.ax
  br i1 %i.az, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %3, align 8, !tbaa !228   ; 3 uses
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !229
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31

common.resume:                                    ; preds = %bb.ah, %bb.aa, %bb.q, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.j ], [ %i.cd, %bb.q ], [ %i.du, %bb.aa ], [ %i.es, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i28
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31: ; preds = %bb.f, %bb.i, %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32: ; preds = %.lr.ph.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31
  %i.bg = phi i1 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i31 ], [ false, %.lr.ph.i.i.i ], [ false, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !164 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread, label %bb.k

bb.k:                                             ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.bj, align 8, !tbaa !137
  %i.bk = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  br i1 %i.bk, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bn = invoke noundef zeroext i1 @_ZNK8V3Number8isEqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i
  %i.bo = load i8, ptr %i.k, align 4, !tbaa !225  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 3
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.m
  br i1 %i.br, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !29
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.n:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !224
  %i.bv = icmp sgt i32 %i.bu, 128
  %i.bw = icmp eq i8 %i.bo, 1
  %i.bx = and i1 %i.bw, %i.bv
  br i1 %i.bx, label %bb.o, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %4, align 8, !tbaa !228   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !229
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #25
  br label %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit

bb.q:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %brmerge.not.i.i.i.i.i = and i1 %i.bg, %i.bn
  br i1 %brmerge.not.i.i.i.i.i, label %bb.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i

bb.r:                                             ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !230 ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !230 ; 2 uses
  %.not.not.i9.i.i.i.i.i = icmp eq ptr %i.ch, null ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i: ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i.i.i = load i8, ptr %i.ci, align 8, !tbaa !356 ; 2 uses
  br i1 %.not.not.i9.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, label %.thread.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i: ; preds = %bb.r
  br i1 %.not.not.i9.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i
  %spec.select.i1619.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i ], [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 152
  %.sroa.0.0.copyload.i8.i10.i.i.i.i.i = load i8, ptr %i.cj, align 8, !tbaa !356
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i
  %spec.select.i17.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i ], [ %spec.select.i1619.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %spec.select.i11.i.i.i.i.i = phi i8 [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.thread.i.i.i.i.i ], [ %.sroa.0.0.copyload.i8.i10.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.ck = icmp ult i8 %spec.select.i17.i.i.i.i.i, %spec.select.i11.i.i.i.i.i
  %cond.fr66 = freeze i1 %i.ck
  br i1 %cond.fr66, label %bb.s, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit
  %.not.i.i.i.i.i = xor i1 %i.bg, true
  %.mux.i.i.i.i.i = and i1 %i.bn, %.not.i.i.i.i.i
  br i1 %.mux.i.i.i.i.i, label %bb.s, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

bb.s:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread: ; preds = %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32, %bb.k, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i, %bb.s
  %i.cl = phi ptr [ %i.ag, %bb.s ], [ %.sroa.02.013.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS5_EEbEUlPKS4_SB_E_EclINS_17__normal_iteratorIPKS5_S7_EESI_EEbT_T0_.exit.i.i.i ], [ %.sroa.02.013.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit.i.i.i.i.i ], [ %.sroa.02.013.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i ], [ %.sroa.02.013.i.i.i, %bb.k ], [ %.sroa.02.013.i.i.i, %_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb.exit32 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, %i.z
  br i1 %.not.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !638

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread, %bb.c
  %.sroa.02.2.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.cl, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit13.i.i.i.i.i.thread ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.02.2.i.i.i, align 8, !tbaa !360
  %i.co = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %i.cn, i1 noundef zeroext false)
  br i1 %i.co, label %bb.t, label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit

bb.t:                                             ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor29getStrongestAssignmentOfValueERKS8_bEUlPKS2_SE_E_ET_SG_SG_T0_.exit.i
  %i.cp = load ptr, ptr %.sroa.02.2.i.i.i, align 8, !tbaa !360
  br label %_ZN15TristateVisitor29getStrongestAssignmentOfValueERKSt6vectorIP10AstAssignWSaIS2_EEb.exit
end_hunk_0
begin_hunk_1_@_ZN13TristateGraph9graphWalkEP13AstNodeModule:bb.a
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.o
  %.pn19 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.ag, %bb.h ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.z

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.065.072 = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 2 uses
  %.not7073 = icmp eq ptr %.sroa.065.072, null
  br i1 %.not7073, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.sroa.059.075.pre = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 2 uses
  %.not7176 = icmp eq ptr %.sroa.059.075.pre, null
  br i1 %.not7176, label %._crit_edge, label %.lr.ph78

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %.sroa.065.074 = phi ptr [ %.sroa.065.0, %.lr.ph ], [ %.sroa.065.072, %bb.r ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.065.074, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !148 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  %i.bp = select i1 %.not.i, ptr %.sroa.065.074, ptr %i.bo
  call void @llvm.prefetch.p0(ptr nonnull %i.bp, i32 1, i32 3, i32 1)
  call void @_ZN13TristateGraph19graphWalkRecurseFwdEP14TristateVertexi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.065.074, i32 noundef 0)
  %.sroa.065.0 = load ptr, ptr %i.bn, align 8, !tbaa !146 ; 2 uses
  %.not70 = icmp eq ptr %.sroa.065.0, null
  br i1 %.not70, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph78, %bb.r, %.preheader
  %i.bq = call noundef i32 @_ZL14dumpGraphLevelv()
  %i.br = icmp sgt i32 %i.bq, 8
  br i1 %i.br, label %bb.s, label %bb.y

.lr.ph78:                                         ; preds = %.preheader, %.lr.ph78
  %.sroa.059.077 = phi ptr [ %.sroa.059.0, %.lr.ph78 ], [ %.sroa.059.075.pre, %.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.059.077, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !148 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bt, null
  %i.bu = select i1 %.not.i25, ptr %.sroa.059.077, ptr %i.bt
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 1, i32 3, i32 1)
  call void @_ZN13TristateGraph20graphWalkRecurseBackEP14TristateVertexi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.059.077, i32 noundef 0)
  %.sroa.059.0 = load ptr, ptr %i.bs, align 8, !tbaa !146 ; 2 uses
  %.not71 = icmp eq ptr %.sroa.059.0, null
  br i1 %.not71, label %._crit_edge, label %.lr.ph78

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bv = load ptr, ptr %1, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(306) %1)
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.579, i64 noundef 9)
          to label %.noexc unwind label %bb.w     ; 6 uses

.noexc:                                           ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bz, ptr %7, align 8, !tbaa !30, !alias.scope !641
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.t:                                             ; preds = %.noexc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !28 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %.noexc
  store ptr %i.ca, ptr %7, align 8, !tbaa !27, !alias.scope !641
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !29
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !29, !alias.scope !641
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.t
  %i.ci = phi i64 [ %i.ce, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !28, !alias.scope !641
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !27
  store i64 0, ptr %i.cj, align 8, !tbaa !28
  store i8 0, ptr %i.cb, align 8, !tbaa !29
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bz
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.v
  %i.cn = load i64, ptr %i.bz, align 8, !tbaa !29
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.cp = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !29
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
  %i.cw = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bz
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.x
  %i.cy = load i64, ptr %i.bz, align 8, !tbaa !29
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.w
  %.pn22 = phi { ptr, i32 } [ %i.cu, %bb.w ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.cv, %bb.x ]
  %i.da = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !29
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
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
  %.sroa.027.036 = phi ptr [ %i.d, %.lr.ph ], [ %i.cr, %.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !358  ; 7 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !353  ; 5 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 9
  br i1 %i.o, label %.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.p, %i.j
  %.pre37 = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !31 ; 4 uses
  br i1 %.not16.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i
  %i.q = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ], [ %i.p, %.preheader.i.i ] ; 3 uses
  %.sroa.02.017.i.i = phi ptr [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ], [ %i.k, %.preheader.i.i ] ; 4 uses
  %i.r = load ptr, ptr %.sroa.02.017.i.i, align 8, !tbaa !360 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !360  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 140
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  %i.v = icmp ne i32 %i.u, %.pre37
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.x, 0
  %.not.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !154, !range !77, !noundef !78
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i

bb.c:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 140
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !221
  %i.ae = icmp ne i32 %i.ad, %.pre37
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.not3.i10.i.i.i.i = icmp eq i64 %i.ag, 0
  %.not.i11.i.i.i.i = select i1 %i.ae, i1 true, i1 %.not3.i10.i.i.i.i
  br i1 %.not.i11.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !154, !range !77, !noundef !78
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.i.i.i.i, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 140
  %i.am = load i32, ptr %i.al, align 4, !tbaa !221
  %i.an = icmp ne i32 %i.am, %.pre37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not3.i13.i.i.i.i = icmp eq i64 %i.ap, 0
  %.not.i14.i.i.i.i = select i1 %i.an, i1 true, i1 %.not3.i13.i.i.i.i
  br i1 %.not.i14.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !154, !range !77, !noundef !78
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i

_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !230 ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.not.i.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i.i = load i8, ptr %i.aw, align 8, !tbaa !356
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ax, align 1, !tbaa !356
  %i.ay = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i.i.i.i.i, i8 %.sroa.0.0.copyload.i8.i.i.i.i.i)
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i: ; preds = %bb.d, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i
  %spec.select.i17.i.i.i.i = phi i8 [ %i.ay, %bb.d ], [ 6, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.thread.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !230 ; 3 uses
  %.not.not.i19.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.not.i19.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %.sroa.0.0.copyload.i8.i20.i.i.i.i = load i8, ptr %i.bb, align 8, !tbaa !356
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 153
  %.sroa.0.0.copyload.i.i24.i.i.i.i = load i8, ptr %i.bc, align 1, !tbaa !356
  %i.bd = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i24.i.i.i.i, i8 %.sroa.0.0.copyload.i8.i20.i.i.i.i)
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i: ; preds = %bb.e, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i
  %spec.select.i25.i.i.i.i = phi i8 [ %i.bd, %bb.e ], [ 6, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18.i.i.i.i ]
  %i.be = icmp ult i8 %spec.select.i17.i.i.i.i, %spec.select.i25.i.i.i.i
  %cond.fr.i.i = freeze i1 %i.be
  br i1 %cond.fr.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, %.split.i.i, %bb.c
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i, %.split.i.i
  %i.bf = phi ptr [ %i.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i ], [ %.sroa.02.017.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i ], [ %.sroa.02.017.i.i, %.split.i.i ], [ %.sroa.02.017.i.i, %_ZN13TristateGraph10isTristateEPK7AstNode.exit15.i.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.j
  br i1 %.not.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, label %.lr.ph.i.i, !llvm.loop !642

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i, %.preheader.i.i
  %.sroa.02.2.i.i = phi ptr [ %i.k, %.preheader.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPK10AstAssignWS5_E_EclINS_17__normal_iteratorIPPS3_St6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread12.i.i ]
  %i.bh = load ptr, ptr %.sroa.02.2.i.i, align 8, !tbaa !360 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 140
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !221
  %i.bk = icmp ne i32 %i.bj, %.pre37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %.not3.i = icmp eq i64 %i.bm, 0
  %.not.i = select i1 %i.bk, i1 true, i1 %.not3.i
  br i1 %.not.i, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit

_ZN13TristateGraph10isTristateEPK7AstNode.exit:   ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !154, !range !77, !noundef !78
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread, label %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread

_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor43removeAssignmentsNotStrongerThanNonTristateEvEUlPKS2_SB_E_ET_SD_SD_T0_.exit, %_ZN13TristateGraph10isTristateEPK7AstNode.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !230 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.not.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18, label %bb.f

bb.f:                                             ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %.sroa.0.0.copyload.i8.i = load i8, ptr %i.bt, align 8, !tbaa !356
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 153
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bu, align 1, !tbaa !356
  %i.bv = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i.i, i8 %.sroa.0.0.copyload.i8.i)
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18: ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread, %bb.f
  %spec.select.i17 = phi i8 [ %i.bv, %bb.f ], [ 6, %_ZN13TristateGraph10isTristateEPK7AstNode.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !360
  store i8 %spec.select.i17, ptr %i.b, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.a, ptr %1, align 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.bw = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.k, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_pred") align 8 %1) ; 4 uses
  %i.bx = icmp eq ptr %i.bw, %i.j
  %.sroa.06.015.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.06.015.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.bx, i1 true, i1 %.not16.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18, %bb.m
  %.sroa.06.018.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.m ], [ %.sroa.06.015.i.i.i, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ] ; 3 uses
  %.sroa.012.017.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.m ], [ %i.bw, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !360 ; 6 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = load i8, ptr %i.b, align 1, !tbaa !29   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !230 ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.not.i.i.i.i, label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 152
  %.sroa.0.0.copyload.i8.i.i.i.i = load i8, ptr %i.ce, align 8, !tbaa !356
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 153
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.cf, align 1, !tbaa !356
  br label %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i

_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i: ; preds = %bb.h, %bb.g
  %spec.select.i18.i.i.i = phi i8 [ %.sroa.0.0.copyload.i8.i.i.i.i, %bb.h ], [ 6, %bb.g ]
  %spec.select.i15.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.h ], [ 6, %bb.g ]
  %.not.i.i.i19 = icmp ugt i8 %spec.select.i18.i.i.i, %i.cb ; 2 uses
  %.not12.i.i.i = icmp ugt i8 %spec.select.i15.i.i.i, %i.cb ; 3 uses
  %or.cond.i.i.i20 = or i1 %.not.i.i.i19, %.not12.i.i.i
  br i1 %or.cond.i.i.i20, label %bb.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit

bb.i:                                             ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i
  br i1 %.not.i.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.by, i1 noundef zeroext false) ; 2 uses
  %brmerge.i.i.i = or i1 %.not12.i.i.i, %i.cg
  br i1 %brmerge.i.i.i, label %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, label %.split.i.i21

bb.k:                                             ; preds = %bb.i
  br i1 %.not12.i.i.i, label %bb.l, label %.split.i.i21

.split.i.i21:                                     ; preds = %bb.k, %bb.j
  %i.ch = call noundef zeroext i1 @_ZN15TristateVisitor26assignmentOfValueOnAllBitsEPK10AstAssignWb(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %i.by, i1 noundef zeroext true)
  br i1 %i.ch, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.l

_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i: ; preds = %bb.j
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, label %bb.l

_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit: ; preds = %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit16.i.i.i, %.split.i.i21, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i
  call void @_ZN13TristateGraph32deleteVerticesFromSubtreeRecurseEP7AstNode(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.by)
  %i.ci = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.by, ptr noundef null)
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.ci)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i, %_ZN15TristateVisitor35isAssignmentNotStrongerThanStrengthEPK10AstAssignWh.exit.i.i, %.split.i.i21, %bb.k
  %i.cj = load ptr, ptr %.sroa.06.018.i.i.i, align 8, !tbaa !360
  store ptr %i.cj, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !360
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit, %bb.l
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.017.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS5_EEPKS4_hEUlS5_E_EclINS_17__normal_iteratorIPS5_S7_EEEEbT_.exit ], [ %i.ck, %bb.l ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i: ; preds = %bb.m, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18
  %.sroa.012.2.i.i.i = phi ptr [ %i.bw, %_ZN15TristateVisitor11getStrengthEPK10AstAssignWb.exit18 ], [ %.sroa.012.1.i.i.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !376
  %.not.i.i7.i = icmp eq ptr %.sroa.012.2.i.i.i, %i.cl
  br i1 %.not.i.i7.i, label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, label %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !376 ; 2 uses
  %i.cn = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cq, ptr %i.i, align 8, !tbaa !358
  br label %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit

_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPP10AstAssignWSt6vectorIS3_SaIS3_EEEEZN15TristateVisitor28removeNotStrongerAssignmentsERS7_PKS2_hEUlS3_E_ET_SE_SE_T0_.exit.i, %_ZSt8_DestroyIPP10AstAssignWS1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread

.thread:                                          ; preds = %_ZN13TristateGraph10isTristateEPK7AstNode.exit, %_ZN15TristateVisitor28removeNotStrongerAssignmentsERSt6vectorIP10AstAssignWSaIS2_EEPKS1_h.exit, %bb.b
  %i.cr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.027.036) #26 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.e
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
  %i.e = load ptr, ptr %3, align 8, !tbaa !368    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !368  ; 2 uses
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
end_hunk_1
