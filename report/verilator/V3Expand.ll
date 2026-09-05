Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Expand?download=true
inline.NumInlined: 2164
inline.NumDeleted: 409
begin_hunk_0_@_ZN13ExpandVisitor10expandWideEP13AstNodeAssignP12AstReplicate:bb.a
  br label %bb.w

bb.v:                                             ; preds = %_ZNK7AstNode10widthWordsEv.exit.thread.i, %_ZNK7AstNode10widthWordsEv.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !78
  %i.cd = fadd double %i.cc, 1.000000e+00
  store double %i.cd, ptr %i.cb, align 8, !tbaa !78
  br label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.ce = phi double [ %i.ca, %bb.u ], [ 0.000000e+00, %bb.t ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !78
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !124 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !118 ; 3 uses
  %.not.i77 = icmp eq ptr %i.cn, null
  br i1 %.not.i77, label %_ZNK7AstNode8widthMinEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 156
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !126 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = select i1 %.not.i.i, i32 %i.cr, i32 %i.cp
  %i.ct = freeze i32 %i.cs
  br label %_ZNK7AstNode8widthMinEv.exit

_ZNK7AstNode8widthMinEv.exit:                     ; preds = %bb.w, %bb.x
  %.fr104 = phi i32 [ %i.ct, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !125 ; 4 uses
  %.not.i78 = icmp eq ptr %i.cv, null
  br i1 %.not.i78, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK7AstNode8widthMinEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cw, align 8, !tbaa !143
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.z, !prof !105

bb.z:                                             ; preds = %bb.y
  %i.cx = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.47)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.cw, align 8, !tbaa !143
  %i.da = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !153
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.dc)
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.48)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.cv, ptr noundef nonnull align 8 dereferenceable(112) %i.de) #25
  unreachable

bb.aa:                                            ; preds = %_ZNK7AstNode8widthMinEv.exit
  %i.df = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 933) ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.546)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.dh) #25
  unreachable

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 152
  %i.dj = call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.di) ; 2 uses
  %i.dk = load ptr, ptr %i.bm, align 8, !tbaa !118 ; 4 uses
  %.not.i.i7996 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i7996, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread, label %_ZNK7AstNode10widthWordsEv.exit.lr.ph

_ZNK7AstNode10widthWordsEv.exit.lr.ph:            ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.dl = icmp eq i32 %.fr104, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br i1 %i.dl, label %_ZNK7AstNode10widthWordsEv.exit.us, label %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split

_ZNK7AstNode10widthWordsEv.exit.us:               ; preds = %_ZNK7AstNode10widthWordsEv.exit.lr.ph, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us
  %i.do = phi ptr [ %i.es, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us ], [ %i.dk, %_ZNK7AstNode10widthWordsEv.exit.lr.ph ]
  %.03697.us = phi i32 [ %i.er, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us ], [ 0, %_ZNK7AstNode10widthWordsEv.exit.lr.ph ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 152
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !122
  %i.dr = add nsw i32 %i.dq, 31
  %i.ds = sdiv i32 %i.dr, 32
  %i.dt = icmp slt i32 %.03697.us, %i.ds
  br i1 %i.dt, label %bb.ab, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread

bb.ab:                                            ; preds = %_ZNK7AstNode10widthWordsEv.exit.us
  %i.du = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 12 uses
  %i.dv = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.cl, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN11AstNodeExpr13cloneTreePureEb.exit.us unwind label %.split.us ; 3 uses

_ZN11AstNodeExpr13cloneTreePureEb.exit.us:        ; preds = %bb.ab
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.du, i16 328, ptr noundef %i.cj)
          to label %.noexc.us unwind label %.split.us

.noexc.us:                                        ; preds = %_ZN11AstNodeExpr13cloneTreePureEb.exit.us
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.du, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 152
  store i64 0, ptr %i.dw, align 8
  %.not.i.i.i80.us = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i80.us, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.us, label %bb.ac

bb.ac:                                            ; preds = %.noexc.us
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 72 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !118 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 72 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !118
  %.not.i.i.i.i.us = icmp eq ptr %i.ea, %i.dy
  br i1 %.not.i.i.i.i.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !118
  %i.eb = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.du, ptr noundef nonnull %i.dv)
          to label %.noexc82.us unwind label %.split.us

.noexc82.us:                                      ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV9AstNegate, i64 16), ptr %i.du, align 8, !tbaa !21
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !118 ; 2 uses
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !118
  %.not.i.i5.i.us = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i5.i.us, label %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us, label %bb.af

bb.af:                                            ; preds = %.noexc82.us
  store ptr %i.ed, ptr %i.dz, align 8, !tbaa !118
  %i.ef = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.us: ; preds = %.noexc.us
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.du, ptr noundef null)
          to label %.noexc81.us unwind label %.split.us

.noexc81.us:                                      ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.us
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV9AstNegate, i64 16), ptr %i.du, align 8, !tbaa !21
  br label %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us

_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us: ; preds = %.noexc81.us, %bb.af, %.noexc82.us
  %i.eh = call noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i32 noundef 32, i32 noundef 32, i8 0) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 72 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !118
  %.not.i.i83.us = icmp eq ptr %i.ej, %i.eh
  br i1 %.not.i.i83.us, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us, label %bb.ag

bb.ag:                                            ; preds = %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !118
  %i.ek = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us: ; preds = %bb.ag, %_ZN9AstNegateC2EP8FileLineP11AstNodeExpr.exit.us
  %i.em = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.en = call noundef ptr @_ZN13ExpandVisitor13newWordAssignEP13AstNodeAssigniP11AstNodeExprS3_(ptr noundef nonnull %1, i32 noundef %.03697.us, ptr noundef %i.em, ptr noundef nonnull %i.du) ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  store i64 1, ptr %i.eo, align 8, !tbaa !19
  %i.ep = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !117
  call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.en)
  %i.er = add nuw nsw i32 %.03697.us, 1
  %i.es = load ptr, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %.not.i.i79.us = icmp eq ptr %i.es, null
  br i1 %.not.i.i79.us, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread, label %_ZNK7AstNode10widthWordsEv.exit.us, !llvm.loop !319

.split.us:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i.us, %bb.ae, %_ZN11AstNodeExpr13cloneTreePureEb.exit.us, %bb.ab
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 160) #22
  br label %bb.al

_ZNK7AstNode10widthWordsEv.exit.lr.ph.split:      ; preds = %_ZNK7AstNode10widthWordsEv.exit.lr.ph
  %i.eu = icmp ugt i32 %i.dj, 1
  br i1 %i.eu, label %_ZNK7AstNode10widthWordsEv.exit.us99, label %_ZNK7AstNode10widthWordsEv.exit

_ZNK7AstNode10widthWordsEv.exit.us99:             ; preds = %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split, %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us
  %i.ev = phi ptr [ %i.fu, %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us ], [ %i.dk, %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split ]
  %.03697.us100 = phi i32 [ %i.ft, %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us ], [ 0, %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 152
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !122
  %i.ey = add nsw i32 %i.ex, 31
  %i.ez = sdiv i32 %i.ey, 32
  %i.fa = icmp slt i32 %.03697.us100, %i.ez
  br i1 %i.fa, label %.lr.ph.us, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread

.lr.ph.us:                                        ; preds = %_ZNK7AstNode10widthWordsEv.exit.us99
  %i.fb = call noundef ptr @_ZN13ExpandVisitor18newAstWordSelCloneEP11AstNodeExpri(ptr noundef nonnull %i.cl, i32 noundef %.03697.us100)
  %i.fc = load ptr, ptr %i.dm, align 8, !tbaa !123
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.us, %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us
  %.095.us = phi i32 [ 1, %.lr.ph.us ], [ %i.fn, %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us ] ; 2 uses
  %.03594.us = phi ptr [ %i.fb, %.lr.ph.us ], [ %i.fd, %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us ]
  %i.fd = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 10 uses
  %i.fe = mul i32 %.095.us, %.fr104
  %i.ff = invoke noundef ptr @_ZN13ExpandVisitor16newWordGrabShiftEP8FileLineiP11AstNodeExpri(ptr noundef %i.fc, i32 noundef %.03697.us100, ptr noundef nonnull %i.cl, i32 noundef %i.fe)
          to label %bb.ai unwind label %.split.us102 ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.fd, i16 273, ptr noundef %i.cj)
          to label %.noexc86.us unwind label %.split.us102

.noexc86.us:                                      ; preds = %bb.ai
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.fd, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  store i64 0, ptr %i.fg, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fd, ptr noundef %i.ff)
          to label %.noexc87.us unwind label %.split.us102

.noexc87.us:                                      ; preds = %.noexc86.us
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fd, ptr noundef %.03594.us)
          to label %.noexc88.us unwind label %.split.us102

.noexc88.us:                                      ; preds = %.noexc87.us
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV5AstOr, i64 16), ptr %i.fd, align 8, !tbaa !21
  %.not.i.i84.us = icmp eq ptr %i.ff, null
  br i1 %.not.i.i84.us, label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us, label %bb.aj

bb.aj:                                            ; preds = %.noexc88.us
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !118 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 72 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !118
  %.not.i.i.i85.us = icmp eq ptr %i.fk, %i.fi
  br i1 %.not.i.i.i85.us, label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !118
  %i.fl = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !75
  br label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us

_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us:  ; preds = %bb.ak, %bb.aj, %.noexc88.us
  %i.fn = add nuw i32 %.095.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.fn, %i.dj
  br i1 %exitcond.not, label %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us, label %bb.ah, !llvm.loop !320

._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us: ; preds = %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit.us
  %i.fo = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.fp = call noundef ptr @_ZN13ExpandVisitor13newWordAssignEP13AstNodeAssigniP11AstNodeExprS3_(ptr noundef nonnull %1, i32 noundef %.03697.us100, ptr noundef %i.fo, ptr noundef nonnull %i.fd) ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  store i64 1, ptr %i.fq, align 8, !tbaa !19
  %i.fr = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !117
  call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.fp)
  %i.ft = add nuw nsw i32 %.03697.us100, 1
  %i.fu = load ptr, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %.not.i.i79.us101 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i79.us101, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread, label %_ZNK7AstNode10widthWordsEv.exit.us99, !llvm.loop !319

.split.us102:                                     ; preds = %.noexc87.us, %.noexc86.us, %bb.ai, %bb.ah
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 160) #22
  br label %bb.al

_ZNK7AstNode10widthWordsEv.exit:                  ; preds = %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit
  %i.fw = phi ptr [ %i.gj, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit ], [ %i.dk, %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split ]
  %.03697 = phi i32 [ %i.gi, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit ], [ 0, %_ZNK7AstNode10widthWordsEv.exit.lr.ph.split ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !122
  %i.fz = add nsw i32 %i.fy, 31
  %i.ga = sdiv i32 %i.fz, 32
  %i.gb = icmp slt i32 %.03697, %i.ga
  br i1 %i.gb, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit: ; preds = %_ZNK7AstNode10widthWordsEv.exit
  %i.gc = call noundef ptr @_ZN13ExpandVisitor18newAstWordSelCloneEP11AstNodeExpri(ptr noundef nonnull %i.cl, i32 noundef %.03697)
  %i.gd = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.ge = call noundef ptr @_ZN13ExpandVisitor13newWordAssignEP13AstNodeAssigniP11AstNodeExprS3_(ptr noundef nonnull %1, i32 noundef %.03697, ptr noundef %i.gd, ptr noundef %i.gc) ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 104
  store i64 1, ptr %i.gf, align 8, !tbaa !19
  %i.gg = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 112
  store i32 %i.gg, ptr %i.gh, align 8, !tbaa !117
  call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.ge)
  %i.gi = add nuw nsw i32 %.03697, 1
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i79, label %_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread, label %_ZNK7AstNode10widthWordsEv.exit, !llvm.loop !319

_ZN13ExpandVisitor12doExpandWideEP7AstNode.exit.thread: ; preds = %_ZNK7AstNode10widthWordsEv.exit, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit, %_ZNK7AstNode10widthWordsEv.exit.us99, %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us, %_ZNK7AstNode10widthWordsEv.exit.us, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, %bb.r, %bb.v
  %.0.i91 = phi i1 [ false, %bb.r ], [ false, %bb.v ], [ true, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit ], [ true, %_ZNK7AstNode10widthWordsEv.exit.us ], [ true, %_ZNK7AstNode10widthWordsEv.exit.us99 ], [ true, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.us ], [ true, %._ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit_crit_edge.us ], [ true, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.loopexit ], [ true, %_ZNK7AstNode10widthWordsEv.exit ]
  ret i1 %.0.i91

bb.al:                                            ; preds = %.split.us, %.split.us102, %bb.q
  %.pn54.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.q ], [ %i.et, %.split.us ], [ %i.fv, %.split.us102 ]
  resume { ptr, i32 } %.pn54.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI6AstAnd11AstNodeExprEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !143
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 269
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13ExpandVisitor10expandWideEP13AstNodeAssignP6AstAnd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef i32 @_ZL5debugv()
  %i.b = icmp sgt i32 %i.a, 7
  br i1 %i.b, label %bb.b, label %bb.r, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef 338)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = load ptr, ptr %4, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.547, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.j = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %.not = icmp eq i8 %i.t, 10
  %i.u = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33: ; preds = %bb.f
  %i.x = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.f
  %i.y = load i64, ptr %i.v, align 8, !tbaa !19
end_hunk_0
