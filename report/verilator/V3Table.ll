inline.NumInlined: 3882
inline.NumDeleted: 1079
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14VNVisitorConst5visitEP9AstSelBit

declare void @_ZN14VNVisitorConst5visitEP13AstSelExtract(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSelMinus(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSelPlus(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSenItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP10AstSenTree(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP11AstSequence(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSetAssoc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstSetWildcard(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstSetuphold(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstShiftL(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstShiftLOvr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstShiftR(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstShiftROvr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstShiftRS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstShiftRSOvr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstSigned(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstSinD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstSinhD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP11AstSliceSel(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i8, ptr %i.b, align 8, !tbaa !212, !range !164, !noundef !165
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !192
  %i.m = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !99
  %i.n = icmp ne i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %.not7.i.i = icmp eq i64 %i.p, 0
  %.not.i.i = select i1 %i.n, i1 true, i1 %.not7.i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !193
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.j)
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !195, !noalias !350
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i

_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %.pre.i.i, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199, !noalias !353
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !203, !noalias !350
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !188
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i

_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i: ; preds = %bb.g, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i
  %i.ah = phi ptr [ %i.ag, %bb.g ], [ %i.y, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %i.o, align 8, !tbaa !52
  %i.ak = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !99
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !192
  br label %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit

_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit: ; preds = %bb.c, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %i.ai, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204 ; 4 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.an, align 8, !tbaa !207
  %i.ao = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 147
  br i1 %i.ao, label %_ZN7AstNode4castI12AstInitArray11AstNodeExprEEPT_PT0_.exit, label %.noexc.i

_ZN7AstNode4castI12AstInitArray11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !356 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !358 ; 2 uses
  %sub.i = sub i32 %i.aq, %i.as
  %i.at = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false)
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !77
  %i.aw = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.av, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !191 ; 2 uses
  %.not37 = icmp eq ptr %i.ay, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7AstNode4castI12AstInitArray11AstNodeExprEEPT_PT0_.exit
  %i.az = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.ay, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7AstNode4castI12AstInitArray11AstNodeExprEEPT_PT0_.exit
  %.033 = phi ptr [ %i.az, %bb.i ], [ null, %_ZN7AstNode4castI12AstInitArray11AstNodeExprEEPT_PT0_.exit ] ; 2 uses
  %i.ba = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #26 ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(200) %i.ba, i16 147, ptr noundef %i.bc)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV12AstInitArray, i64 16), ptr %i.ba, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 160 ; 3 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !261
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  store ptr null, ptr %i.be, align 8, !tbaa !262
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !263
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !264
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  store i64 0, ptr %i.bh, align 8, !tbaa !265
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  %.not.i.i41 = icmp eq ptr %i.bj, %i.aw
  br i1 %.not.i.i41, label %_ZN7AstNode6dtypepEP12AstNodeDType.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  store ptr %i.aw, ptr %i.bi, align 8, !tbaa !77
  %i.bk = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !166
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !166
  br label %_ZN7AstNode6dtypepEP12AstNodeDType.exit.i

_ZN7AstNode6dtypepEP12AstNodeDType.exit.i:        ; preds = %bb.k, %.noexc
  %.not.i.i.i42 = icmp eq ptr %.033, null
  br i1 %.not.i.i.i42, label %_ZN12AstInitArrayC2EP8FileLineP12AstNodeDTypeP11AstNodeExpr.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit.i
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(200) %i.ba, ptr noundef nonnull %.033)
          to label %_ZN12AstInitArrayC2EP8FileLineP12AstNodeDTypeP11AstNodeExpr.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  tail call void @_ZNSt3mapImP11AstInitItemSt4lessImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bn) #23
  br label %.body

_ZN12AstInitArrayC2EP8FileLineP12AstNodeDTypeP11AstNodeExpr.exit: ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit.i, %bb.l
  %i.bo = add nuw i32 %i.at, 1
  br label %bb.u

bb.n:                                             ; preds = %bb.w
  tail call void @_ZN15SimulateVisitor8setValueEP7AstNodeP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !180 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !173
  %.not.i.i43 = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !181
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !180
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !172 ; 4 uses
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.q, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #26 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store ptr %i.ba, ptr %i.ch, align 8, !tbaa !181
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.r, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.bv, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.cg, ptr %i.bp, align 8, !tbaa !172
  store ptr %i.cj, ptr %i.bq, align 8, !tbaa !180
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !173
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.t:                                             ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.bm, %bb.m ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 200) #24
  br label %bb.aa

bb.u:                                             ; preds = %_ZN12AstInitArrayC2EP8FileLineP12AstNodeDTypeP11AstNodeExpr.exit, %bb.w
  %indvars.iv = phi i64 [ 0, %_ZN12AstInitArrayC2EP8FileLineP12AstNodeDTypeP11AstNodeExpr.exit ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %3 = trunc nuw i64 %indvars.iv to i32
  %4 = add i32 %..i, %3
  %5 = zext i32 %4 to i64
  %i.cm = tail call noundef ptr @_ZNK12AstInitArray23getIndexDefaultedValuepEm(ptr noundef nonnull align 8 dereferenceable(200) %i.am, i64 noundef %5) ; 2 uses
  %.not40 = icmp eq ptr %i.cm, null
  br i1 %.not40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = tail call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.cm, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call void @_ZN12AstInitArray14addIndexValuepEmP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(200) %i.ba, i64 noundef %indvars.iv, ptr noundef %i.cn)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bo, %lftr.wideiv
  br i1 %exitcond.not, label %bb.n, label %bb.u, !llvm.loop !359

.noexc.i:                                         ; preds = %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 25, ptr %i.a, align 8, !tbaa !166
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc44 unwind label %bb.y   ; 2 uses

.noexc44:                                         ; preds = %.noexc.i
  store ptr %i.cp, ptr %2, align 8, !tbaa !50
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !166 ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.cp, ptr noundef nonnull align 1 dereferenceable(25) @.str.636, i64 25, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !51
  %i.cs = load ptr, ptr %2, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.noexc44
  %i.cu = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.co
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !52
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %.noexc.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.z:                                             ; preds = %.noexc44
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.co
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.z
  %i.dc = load i64, ptr %i.co, align 8, !tbaa !52
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.cz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.aa

_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a, %bb.b
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %.body
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn38
}

declare void @_ZN14VNVisitorConst5visitEP19AstSplitPlaceholder(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstSqrtD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstStable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstStackTraceF(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstStackTraceT(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstSteady(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP11AstStmtExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP13AstStmtPragma(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP7AstStop(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.e = load i8, ptr %i.d, align 2, !tbaa !234, !range !164, !noundef !165
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 79, ptr %i.a, align 8, !tbaa !166
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !50
  %i.i = load i64, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %i.h, ptr noundef nonnull align 1 dereferenceable(79) @.str.637, i64 79, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.g, align 8, !tbaa !52
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.g
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.s = load i64, ptr %i.g, align 8, !tbaa !52
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @_ZN14VNVisitorConst5visitEP14AstStreamDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstStreamL(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstStreamR(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP15AstStrengthSpec(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstStructDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstStructSel(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstSub(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstSubD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSubstrN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstSysIgnore(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP17AstSystemCSection(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSystemF(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3
end_hunk_0
