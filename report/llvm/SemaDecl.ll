Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5clang4Sema23ActOnFunctionDeclaratorEPNS_5ScopeERNS_10DeclaratorEPNS_11DeclContextEPNS_14TypeSourceInfoERNS_12LookupResultEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEERb:bb.a
  br i1 %or.cond41, label %bb.nu, label %bb.nw

bb.nu:                                            ; preds = %bb.nt
  %i.bzl = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bzm = load i16, ptr %i.bzl, align 8
  %i.bzn = and i16 %i.bzm, 127
  %i.bzo = add nsw i16 %i.bzn, -59
  %spec.select.i1047 = icmp ult i16 %i.bzo, 4
  br i1 %spec.select.i1047, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.bzp = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.1) #28
  %i.bzq = select i1 %i.bzp, i32 2, i32 1
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nt, %bb.nu, %bb.nv, %bb.ns
  %i.bzr = phi i32 [ %i.bzh, %bb.ns ], [ 1, %bb.nu ], [ %i.bzq, %bb.nv ], [ 1, %bb.nt ]
  %i.bzs = call noundef zeroext i1 @_ZN5clang4Sema26CheckTemplateParameterListEPNS_21TemplateParameterListES2_NS0_24TemplateParamListContextEPNS_12SkipBodyInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.byx, ptr noundef %i.bzb, i32 noundef %i.bzr, ptr noundef null) #28 ; 0 uses
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.no
  %i.bzt = load ptr, ptr %i.h, align 8, !tbaa !1925 ; 4 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 28 ; 2 uses
  %i.bzv = load i32, ptr %i.bzu, align 4          ; 3 uses
  %i.bzw = and i32 %i.bzv, 128
  %.not1603.a = icmp eq i32 %i.bzw, 0
  br i1 %.not1603.a, label %bb.ny, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

bb.ny:                                            ; preds = %bb.nx
  %i.bzx = load i16, ptr %i.bbu, align 8          ; 2 uses
  %i.bzy = and i16 %i.bzx, 16
  %.not1604.a = icmp eq i16 %i.bzy, 0
  br i1 %.not1604.a, label %bb.nz, label %bb.oo

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  store ptr %1, ptr %91, align 8, !tbaa !2626
  %i.bzz = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %2, ptr %i.bzz, align 8, !tbaa !2630
  %i.caa = getelementptr inbounds nuw i8, ptr %91, i64 16
  %i.cab = load ptr, ptr %43, align 8, !tbaa !770
  store ptr %i.cab, ptr %i.caa, align 8, !tbaa !2309
  %i.cac = getelementptr inbounds nuw i8, ptr %91, i64 24
  %i.cad = load i32, ptr %i.ai, align 8, !tbaa !771
  %i.cae = zext i32 %i.cad to i64
  store i64 %i.cae, ptr %i.cac, align 8, !tbaa !2310
  %i.caf = getelementptr inbounds nuw i8, ptr %91, i64 32 ; 2 uses
  %i.cag = load i8, ptr %7, align 1, !tbaa !776, !range !709, !noundef !697
  store i8 %i.cag, ptr %i.caf, align 8, !tbaa !2631
  %i.cah = getelementptr inbounds nuw i8, ptr %i.bzt, i64 16
  %.0.copyload.i.i.i.i.i.i.i1048 = load i64, ptr %i.cah, align 8 ; 3 uses
  %i.cai = and i64 %.0.copyload.i.i.i.i.i.i.i1048, 4
  %i.caj = icmp eq i64 %i.cai, 0
  br i1 %i.caj, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.cak = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i1048 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit1050

bb.ob:                                            ; preds = %bb.nz
  %i.cal = and i64 %.0.copyload.i.i.i.i.i.i.i1048, -5
  %i.cam = inttoptr i64 %i.cal to ptr
  %i.can = load ptr, ptr %i.cam, align 8, !tbaa !699
  br label %_ZN5clang4Decl14getDeclContextEv.exit1050

_ZN5clang4Decl14getDeclContextEv.exit1050:        ; preds = %bb.oa, %bb.ob
  %.0.i1049 = phi ptr [ %i.cak, %bb.oa ], [ %i.can, %bb.ob ]
  %i.cao = getelementptr inbounds nuw i8, ptr %.0.i1049, i64 8
  %i.cap = load i16, ptr %i.cao, align 8
  %i.caq = and i16 %i.cap, 127
  %i.car = add nsw i16 %i.caq, -60
  %i.cas = icmp ult i16 %i.car, 3
  br i1 %i.cas, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit1050
  %i.cat = and i32 %i.bzv, -24705
  store i32 %i.cat, ptr %i.bzu, align 4
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %_ZN5clang4Decl14getDeclContextEv.exit1050
  %i.cau = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i1051 = load i64, ptr %i.cau, align 8, !tbaa !728 ; 2 uses
  %.not1605 = icmp eq i64 %.sroa.0.0.copyload.i.i.i1051, 0
  %i.cav = load i8, ptr %i.f, align 1, !tbaa !776, !range !709, !noundef !697
  %i.caw = trunc nuw i8 %i.cav to i1              ; 2 uses
  br i1 %.not1605, label %bb.ol, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28
  br i1 %i.caw, label %bb.of, label %.critedge43

bb.of:                                            ; preds = %bb.oe
  store i64 %.sroa.0.0.copyload.i.i.i1051, ptr %92, align 8
  %i.cax = call noundef zeroext i8 @_ZNK5clang19NestedNameSpecifier13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #28
  %i.cay = and i8 %i.cax, 4
  %.not1606 = icmp eq i8 %i.cay, 0
  br i1 %.not1606, label %bb.og, label %.critedge45

bb.og:                                            ; preds = %bb.of
  %i.caz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cba = load i32, ptr %i.caz, align 8, !tbaa !771
  %.not.i.i.i1053 = icmp eq i32 %i.cba, 0
  br i1 %.not.i.i.i1053, label %.critedge43, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.cbb = load ptr, ptr %i.px, align 8, !tbaa !830
  %i.cbc = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cbb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  br i1 %i.cbc, label %.thread1508, label %bb.oi

.critedge45:                                      ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  br label %.thread1508

.critedge43:                                      ; preds = %bb.og, %bb.oe
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  br label %bb.oi

bb.oi:                                            ; preds = %.critedge43, %bb.oh
  %i.cbd = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.cbe = call noundef zeroext i1 @_ZNK5clang12FunctionDecl25isCPUDispatchMultiVersionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cbd) #28
  br i1 %i.cbe, label %.thread1508, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.cbf = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.cbg = call noundef zeroext i1 @_ZNK5clang12FunctionDecl25isCPUSpecificMultiVersionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cbf) #28
  br i1 %i.cbg, label %.thread1508, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.cbh = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.cbi = call fastcc noundef ptr @_ZL28DiagnoseInvalidRedeclarationRN5clang4SemaERNS_12LookupResultEPNS_12FunctionDeclERN12_GLOBAL__N_111ActOnFDArgsEbPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef %i.cbh, ptr noundef nonnull align 8 dereferenceable(33) %91, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not652 = icmp eq ptr %i.cbi, null
  br i1 %.not652, label %.thread1508, label %bb.or

bb.ol:                                            ; preds = %bb.od
  br i1 %i.caw, label %bb.om, label %.thread1508

bb.om:                                            ; preds = %bb.ol
  %i.cbj = load ptr, ptr %i.px, align 8, !tbaa !830
  %i.cbk = getelementptr inbounds i8, ptr %i.cbj, i64 -64
  %i.cbl = call noundef ptr @_ZN5clang13CXXRecordDecl12isLocalClassEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cbk)
  %.not650 = icmp eq ptr %i.cbl, null
  br i1 %.not650, label %.thread1508, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cbm = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.cbn = call fastcc noundef ptr @_ZL28DiagnoseInvalidRedeclarationRN5clang4SemaERNS_12LookupResultEPNS_12FunctionDeclERN12_GLOBAL__N_111ActOnFDArgsEbPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef %i.cbm, ptr noundef nonnull align 8 dereferenceable(33) %91, i1 noundef zeroext true, ptr noundef %1) ; 2 uses
  %.not651 = icmp eq ptr %i.cbn, null
  br i1 %.not651, label %.thread1508, label %bb.or

bb.oo:                                            ; preds = %bb.ny
  %i.cbo = and i16 %i.bzx, 12
  %i.cbp = icmp eq i16 %i.cbo, 0
  %i.cbq = and i32 %i.bzv, 124
  %i.cbr = icmp eq i32 %i.cbq, 36
  %or.cond1553.a = and i1 %i.cbr, %i.cbp
  br i1 %or.cond1553.a, label %bb.op, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

bb.op:                                            ; preds = %bb.oo
  %i.cbs = load ptr, ptr %i.bzt, align 8, !tbaa !701
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 24
  %i.cbu = load ptr, ptr %i.cbt, align 8
  %i.cbv = call noundef zeroext i1 %i.cbu(ptr noundef nonnull align 8 dereferenceable(168) %i.bzt) #28
  %.not46 = xor i1 %i.cbv, true
  %i.cbw = load i8, ptr %i.f, align 1, !range !709
  %i.cbx = trunc nuw i8 %i.cbw to i1
  %or.cond48 = select i1 %.not46, i1 true, i1 %i.cbx
  %or.cond50 = or i1 %.1550, %or.cond48
  %i.cby = load i8, ptr %i.g, align 1, !range !709
  %i.cbz = trunc nuw i8 %i.cby to i1
  %or.cond52 = select i1 %or.cond50, i1 true, i1 %i.cbz
  br i1 %or.cond52, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  %i.cca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ccb = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 24
  %.sroa.0.0.copyload.i1054 = load i32, ptr %i.ccc, align 8, !tbaa !706
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %93, ptr noundef nonnull align 8 dereferenceable(8) %i.cca, i32 %.sroa.0.0.copyload.i1054, i32 noundef 5776) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #28
  %.sroa.0.0.copyload.i1055 = load i64, ptr %i.ard, align 8
  store i64 %.sroa.0.0.copyload.i1055, ptr %94, align 8
  %i.ccd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %93, ptr noundef nonnull align 4 dereferenceable(8) %94) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %93) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  br label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

.thread1508:                                      ; preds = %bb.on, %bb.ok, %bb.ol, %bb.om, %.critedge45, %bb.oh, %bb.oi, %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

bb.or:                                            ; preds = %bb.on, %bb.ok
  %.3 = phi ptr [ %i.cbi, %bb.ok ], [ %i.cbn, %bb.on ]
  %i.cce = load i8, ptr %i.caf, align 8, !tbaa !2631, !range !709, !noundef !697
  store i8 %i.cce, ptr %7, align 1, !tbaa !776
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  br label %bb.vy

_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread: ; preds = %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i992, %bb.nx, %bb.oo, %bb.op, %bb.oq, %.thread1508, %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit1012
  %i.ccf = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !747, !nonnull !697, !align !698
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 80
  %i.cch = load i64, ptr %i.ccg, align 8
  %i.cci = and i64 %i.cch, 1099511627776
  %.not653 = icmp eq i64 %i.cci, 0
  br i1 %.not653, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %bb.os

bb.os:                                            ; preds = %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread
  %i.ccj = load i16, ptr %i.bbu, align 8
  %i.cck = and i16 %i.ccj, 12
  %.not1611.a = icmp eq i16 %i.cck, 0
  br i1 %.not1611.a, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.ccl = load ptr, ptr %i.h, align 8, !tbaa !1925 ; 5 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.ccl, i64 28
  %i.ccn = load i32, ptr %i.ccm, align 4          ; 4 uses
  %i.cco = and i32 %i.ccn, 128
  %.not1612.a = icmp eq i32 %i.cco, 0
  br i1 %.not1612.a, label %bb.ou, label %bb.ox

bb.ou:                                            ; preds = %bb.ot
  %i.ccp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ccq = load i16, ptr %i.ccp, align 4, !tbaa !2490
  %i.ccr = icmp eq i16 %i.ccq, 0
  br i1 %i.ccr, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %bb.ou
  %i.ccs = load i64, ptr %45, align 8, !tbaa !704
  %i.cct = and i64 %i.ccs, 7
  %i.ccu = icmp eq i64 %i.cct, 0
  br i1 %i.ccu, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.ccv = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !819
  call void @_ZN5clang8SemaHLSL21ActOnTopLevelFunctionEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(273) %i.ccw, ptr noundef nonnull %i.ccl) #28
  %.pre1792 = load ptr, ptr %i.h, align 8, !tbaa !1925 ; 2 uses
  %.phi.trans.insert1793 = getelementptr inbounds nuw i8, ptr %.pre1792, i64 28
  %.pre1794 = load i32, ptr %.phi.trans.insert1793, align 4
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov, %bb.ou, %bb.ot
  %i.ccx = phi i32 [ %.pre1794, %bb.ow ], [ %i.ccn, %bb.ov ], [ %i.ccn, %bb.ou ], [ %i.ccn, %bb.ot ]
  %i.ccy = phi ptr [ %.pre1792, %bb.ow ], [ %i.ccl, %bb.ov ], [ %i.ccl, %bb.ou ], [ %i.ccl, %bb.ot ]
  %i.ccz = and i32 %i.ccx, 256
  %.not.i1056 = icmp eq i32 %i.ccz, 0
  br i1 %.not.i1056, label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.cda = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ccy) #28 ; 2 uses
  %i.cdb = load ptr, ptr %i.cda, align 8, !tbaa !770 ; 2 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cda, i64 8
  %i.cdd = load i32, ptr %i.cdc, align 8, !tbaa !771 ; 2 uses
  %i.cde = zext i32 %i.cdd to i64
  %.idx.i.i1057 = shl nuw nsw i64 %i.cde, 3
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cdb, i64 %.idx.i.i1057 ; 2 uses
  %.not.i.i1058 = icmp eq i32 %i.cdd, 0
  br i1 %.not.i.i1058, label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511, label %.lr.ph.i.i.i.i.i1059

.lr.ph.i.i.i.i.i1059:                             ; preds = %bb.oy, %bb.oz
  %.sroa.07.1.i.i.i.i1060 = phi ptr [ %i.cdk, %bb.oz ], [ %i.cdb, %bb.oy ] ; 3 uses
  %i.cdg = load ptr, ptr %.sroa.07.1.i.i.i.i1060, align 8, !tbaa !1504
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdg, i64 36
  %i.cdi = load i16, ptr %i.cdh, align 4
  %i.cdj = icmp eq i16 %i.cdi, 241
  br i1 %i.cdj, label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit, label %bb.oz

bb.oz:                                            ; preds = %.lr.ph.i.i.i.i.i1059
  %i.cdk = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i1060, i64 8 ; 2 uses
  %.not.i.i.i.i.i1061 = icmp eq ptr %i.cdk, %i.cdf
  br i1 %.not.i.i.i.i.i1061, label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511, label %.lr.ph.i.i.i.i.i1059, !llvm.loop !2632

_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i1059
  %.not1613.a = icmp eq ptr %.sroa.07.1.i.i.i.i1060, %i.cdf
  br i1 %.not1613.a, label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511, label %bb.pa

bb.pa:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit
  %i.cdl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cdm = load ptr, ptr %i.cdl, align 8, !tbaa !819
  %i.cdn = load ptr, ptr %i.h, align 8, !tbaa !1925
  call void @_ZN5clang8SemaHLSL15CheckEntryPointEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(273) %i.cdm, ptr noundef %i.cdn) #28
  br label %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511

_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511: ; preds = %bb.oz, %bb.oy, %bb.ox, %bb.pa, %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit
  %i.cdo = load ptr, ptr %i.h, align 8, !tbaa !1925 ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 28
  %i.cdq = load i32, ptr %i.cdp, align 4
  %i.cdr = and i32 %i.cdq, 256
  %.not.i1063 = icmp eq i32 %i.cdr, 0
  br i1 %.not.i1063, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %bb.pb

bb.pb:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_14HLSLShaderAttrEEEbv.exit.thread1511
  %i.cds = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cdo) #28 ; 2 uses
  %i.cdt = load ptr, ptr %i.cds, align 8, !tbaa !770 ; 4 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  %i.cdv = load i32, ptr %i.cdu, align 8, !tbaa !771 ; 2 uses
  %i.cdw = zext i32 %i.cdv to i64
  %.idx.i.i1064 = shl nuw nsw i64 %i.cdw, 3
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdt, i64 %.idx.i.i1064 ; 2 uses
  %.not.i.i1065 = icmp eq i32 %i.cdv, 0
  br i1 %.not.i.i1065, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i1066

.lr.ph.i.i.i.i.i1066:                             ; preds = %bb.pb, %bb.pc
  %.sroa.07.1.i.i.i.i1067 = phi ptr [ %i.cec, %bb.pc ], [ %i.cdt, %bb.pb ] ; 3 uses
  %i.cdy = load ptr, ptr %.sroa.07.1.i.i.i.i1067, align 8, !tbaa !1504
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 36
  %i.cea = load i16, ptr %i.cdz, align 4
  %i.ceb = icmp eq i16 %i.cea, 61
  br i1 %i.ceb, label %_ZN5clangneENS_22specific_attr_iteratorINS_12NoInlineAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, label %bb.pc

bb.pc:                                            ; preds = %.lr.ph.i.i.i.i.i1066
  %i.cec = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i1067, i64 8 ; 2 uses
  %.not.i.i.i.i.i1068 = icmp eq ptr %i.cec, %i.cdx
  br i1 %.not.i.i.i.i.i1068, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i1066, !llvm.loop !2633

_ZN5clangneENS_22specific_attr_iteratorINS_12NoInlineAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i1066
  %.not5.i.i1069 = icmp eq ptr %.sroa.07.1.i.i.i.i1067, %i.cdx
  br i1 %.not5.i.i1069, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %bb.pd

bb.pd:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_12NoInlineAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.ced = load ptr, ptr %i.cdt, align 8, !tbaa !1504 ; 2 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 36
  %i.cef = load i16, ptr %i.cee, align 4
  %i.ceg = icmp eq i16 %i.cef, 61
  br i1 %i.ceg, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i1070

.lr.ph.i.i.i.i1070:                               ; preds = %bb.pd, %.lr.ph.i.i.i.i1070
  %i.ceh = phi ptr [ %i.cei, %.lr.ph.i.i.i.i1070 ], [ %i.cdt, %bb.pd ]
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 8 ; 2 uses
  %i.cej = load ptr, ptr %i.cei, align 8, !tbaa !1504 ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 36
  %i.cel = load i16, ptr %i.cek, align 4
  %i.cem = icmp eq i16 %i.cel, 61
  br i1 %i.cem, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i1070, !llvm.loop !2634

_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i1070, %bb.pd
  %i.cen = phi ptr [ %i.ced, %bb.pd ], [ %i.cej, %.lr.ph.i.i.i.i1070 ]
  %i.ceo = load ptr, ptr %i.h, align 8, !tbaa !1925 ; 2 uses
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 120
  %i.ceq = load ptr, ptr %i.cep, align 8, !tbaa !980 ; 2 uses
  %i.cer = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ceo) #28 ; 2 uses
  %i.ces = zext i32 %i.cer to i64
  %.idx1716.a = shl nuw nsw i64 %i.ces, 3
  %i.cet = getelementptr inbounds nuw i8, ptr %i.ceq, i64 %.idx1716.a
  %.not6551700 = icmp eq i32 %i.cer, 0
  br i1 %.not6551700, label %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit.thread, label %.lr.ph1702

.lr.ph1702:                                       ; preds = %_ZNK5clang4Decl7getAttrINS_12NoInlineAttrEEEPT_v.exit
  %i.ceu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cen, i64 24
  br label %bb.pe

bb.pe:                                            ; preds = %.lr.ph1702, %bb.pk
  %.05631701 = phi ptr [ %i.ceq, %.lr.ph1702 ], [ %i.cgq, %bb.pk ] ; 2 uses
  %i.cew = load ptr, ptr %.05631701, align 8, !tbaa !1003 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 48
  %.sroa.0.0.copyload.i1073 = load i64, ptr %i.cex, align 8, !tbaa !727 ; 3 uses
  %i.cey = and i64 %.sroa.0.0.copyload.i1073, -16
  %i.cez = inttoptr i64 %i.cey to ptr
  %i.cfa = load ptr, ptr %i.cez, align 16, !tbaa !748 ; 4 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 16
  %i.cfc = load i8, ptr %i.cfb, align 16
  %i.cfd = and i8 %i.cfc, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.cfd, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cfe, align 8, !tbaa !727
  %i.cff = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.cfg = inttoptr i64 %i.cff to ptr
  %i.cfh = load ptr, ptr %i.cfg, align 16, !tbaa !748
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 16
  %i.cfj = load i8, ptr %i.cfi, align 16
  %i.cfk = and i8 %i.cfj, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.cfk, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.pf
  %i.cfl = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cfa) #28 ; 2 uses
  %.not.i1075 = icmp eq ptr %i.cfl, null
  br i1 %.not.i1075, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.pe
  %.1.i8.i = phi ptr [ %i.cfl, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.cfa, %bb.pe ] ; 3 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.cfn = load i24, ptr %i.cfm, align 16
  %i.cfo = and i24 %i.cfn, 1048576
  %.not4.i.i = icmp eq i24 %i.cfo, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i1076 = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.cfp = getelementptr inbounds nuw i8, ptr %.05.i.i1076, i64 32
  %.0.copyload.i.i.i.i.i.i.i1077 = load i64, ptr %i.cfp, align 8
  %i.cfq = and i64 %.0.copyload.i.i.i.i.i.i.i1077, -16
  %i.cfr = inttoptr i64 %i.cfq to ptr
  %i.cfs = load ptr, ptr %i.cfr, align 16, !tbaa !748 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema23ActOnVariableDeclaratorEPNS_5ScopeERNS_10DeclaratorEPNS_11DeclContextEPNS_14TypeSourceInfoERNS_12LookupResultEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEERbNSB_8ArrayRefIPNS_11BindingDeclEEE:bb.a
_ZN5clang9FixItHintD2Ev.exit611:                  ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i609
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cj

bb.cj:                                            ; preds = %bb.bv, %bb.cb, %bb.cc, %._crit_edge, %.critedge534, %bb.cf, %_ZN5clang9FixItHintD2Ev.exit611, %_ZN5clang9FixItHintD2Ev.exit605, %bb.cg, %bb.cd, %bb.ce
  %.2431 = phi i32 [ %.1430947, %bb.cf ], [ 2, %bb.ce ], [ %.1430947, %bb.cd ], [ %.1430947, %bb.cg ], [ 2, %_ZN5clang9FixItHintD2Ev.exit605 ], [ %.1430947, %_ZN5clang9FixItHintD2Ev.exit611 ], [ 2, %.critedge534 ], [ 2, %._crit_edge ], [ 2, %bb.cc ], [ 2, %bb.cb ], [ 2, %bb.bv ] ; 4 uses
  br i1 %.0434, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.oy = load i64, ptr %i.jh, align 8, !tbaa !2310
  %.not491 = icmp eq i64 %i.oy, 0
  br i1 %.not491, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oz = load ptr, ptr %6, align 8, !tbaa !2309
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !2515
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %.sroa.0.0.copyload.i612 = load i32, ptr %i.pb, align 8, !tbaa !706
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.sroa.0879.0 = phi i32 [ %.sroa.0.0.copyload.i612, %bb.cl ], [ 0, %bb.ck ]
  %i.pc = load ptr, ptr %i.c, align 8, !tbaa !2452
  %i.pd = call { ptr, i8 } @_ZN5clang4Sema30ActOnVarTemplateSpecializationEPNS_5ScopeERNS_10DeclaratorEPNS_14TypeSourceInfoERNS_12LookupResultENS_14SourceLocationEPNS_21TemplateParameterListENS_12StorageClassEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(2664) %2, ptr noundef %i.pc, ptr noundef nonnull align 8 dereferenceable(168) %5, i32 %.sroa.0879.0, ptr noundef %.0447, i32 noundef %.2431, i1 noundef zeroext %i.kz) #28 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.pd, 1
  %i.pe = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.pe, label %.critedge536.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.fca.0.extract = extractvalue { ptr, i8 } %i.pd, 0 ; 2 uses
  store ptr %.fca.0.extract, ptr %i.f, align 8, !tbaa !1581
  store i8 0, ptr %7, align 1, !tbaa !776
  br label %bb.cr

bb.co:                                            ; preds = %bb.cj
  %i.pf = load i32, ptr %i.z, align 8, !tbaa !751
  %.not994 = icmp eq i32 %i.pf, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !11, !nonnull !697, !align !698 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload.i.i616 = load i32, ptr %i.pi, align 8, !tbaa !706 ; 2 uses
  %.sroa.0.0.copyload.i617 = load i32, ptr %i.iy, align 8, !tbaa !706 ; 2 uses
  br i1 %.not994, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0.0.copyload.i.i615 = load i32, ptr %i.pj, align 4, !tbaa !706
  %.sroa.0155.0.copyload = load i64, ptr %12, align 8, !tbaa !727
  %i.pk = load ptr, ptr %i.c, align 8, !tbaa !2452
  %i.pl = call noundef ptr @_ZN5clang17DecompositionDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES5_S5_NS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEN4llvm8ArrayRefIPNS_11BindingDeclEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ph, ptr noundef %.0, i32 %.sroa.0.0.copyload.i.i616, i32 %.sroa.0.0.copyload.i617, i32 %.sroa.0.0.copyload.i.i615, i64 %.sroa.0155.0.copyload, ptr noundef %i.pk, i32 noundef %.2431, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1912") align 8 %8) #28 ; 2 uses
  store ptr %i.pl, ptr %i.f, align 8, !tbaa !1581
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.pm = load ptr, ptr %i.d, align 8, !tbaa !705
  %.sroa.0152.0.copyload = load i64, ptr %12, align 8, !tbaa !727
  %i.pn = load ptr, ptr %i.c, align 8, !tbaa !2452
  %i.po = call noundef ptr @_ZN5clang7VarDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES5_PKNS_14IdentifierInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ph, ptr noundef %.0, i32 %.sroa.0.0.copyload.i.i616, i32 %.sroa.0.0.copyload.i617, ptr noundef %i.pm, i64 %.sroa.0152.0.copyload, ptr noundef %i.pn, i32 noundef %.2431) #28 ; 2 uses
  store ptr %i.po, ptr %i.f, align 8, !tbaa !1581
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cn, %bb.cp, %bb.cq
  %i.pp = phi ptr [ %.fca.0.extract, %bb.cn ], [ %i.pl, %bb.cp ], [ %i.po, %bb.cq ]
  %i.pq = trunc nuw i8 %.0440 to i1               ; 2 uses
  br i1 %i.pq, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !11, !nonnull !697, !align !698
  %.sroa.0.0.copyload.i618 = load i32, ptr %i.iy, align 8, !tbaa !706
  %.sroa.0150.0.copyload = load i64, ptr %13, align 8, !tbaa !728
  %i.pt = call noundef ptr @_ZN5clang15VarTemplateDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationENS_15DeclarationNameEPNS_21TemplateParameterListEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ps, ptr noundef %.0, i32 %.sroa.0.0.copyload.i618, i64 %.sroa.0150.0.copyload, ptr noundef %.0447, ptr noundef %i.pp) #28 ; 2 uses
  %i.pu = load ptr, ptr %i.f, align 8, !tbaa !1581
  call void @_ZN5clang7VarDecl23setDescribedVarTemplateEPNS_15VarTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(100) %i.pu, ptr noundef %i.pt) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0443 = phi ptr [ %i.pt, %bb.cs ], [ null, %bb.cr ] ; 3 uses
  %.0.copyload.i.i.i.i.i619 = load i64, ptr %12, align 8
  %i.pv = and i64 %.0.copyload.i.i.i.i.i619, -16
  %i.pw = inttoptr i64 %i.pv to ptr
  %i.px = load ptr, ptr %i.pw, align 16, !tbaa !748
  %i.py = call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.px) #28
  %.not492 = icmp eq ptr %i.py, null
  br i1 %.not492, label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.qa = load ptr, ptr %i.f, align 8, !tbaa !1581 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.qc = load i8, ptr %i.qb, align 8, !tbaa !1006, !range !709, !noalias !2695, !noundef !697
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.cv, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i620

bb.cv:                                            ; preds = %bb.cu
  %i.qe = load ptr, ptr %i.pz, align 8, !tbaa !1010, !noalias !2695 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 3028 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !1011, !noalias !2695 ; 4 uses
  %i.qh = zext i32 %i.qg to i64
  %.idx.i.i635 = shl nuw nsw i64 %i.qh, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx.i.i635 ; 2 uses
  %.not22.i.i636 = icmp eq i32 %i.qg, 0
  br i1 %.not22.i.i636, label %._crit_edge.i.i642, label %.lr.ph.i.i637

.lr.ph.i.i637:                                    ; preds = %bb.cv, %.critedge.i.i640
  %.023.i.i638 = phi ptr [ %i.qk, %.critedge.i.i640 ], [ %i.qe, %bb.cv ] ; 2 uses
  %i.qj = load ptr, ptr %.023.i.i638, align 8, !tbaa !816, !noalias !2695
  %.not15.i.i639 = icmp eq ptr %i.qj, %i.qa
  br i1 %.not15.i.i639, label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647, label %.critedge.i.i640

.critedge.i.i640:                                 ; preds = %.lr.ph.i.i637
  %i.qk = getelementptr inbounds nuw i8, ptr %.023.i.i638, i64 8 ; 2 uses
  %.not.i.i641 = icmp eq ptr %i.qk, %i.qi
  br i1 %.not.i.i641, label %._crit_edge.i.i642, label %.lr.ph.i.i637

._crit_edge.i.i642:                               ; preds = %.critedge.i.i640, %bb.cv
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !1012, !noalias !2695
  %i.qn = icmp ult i32 %i.qg, %i.qm
  br i1 %i.qn, label %bb.cw, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i620

bb.cw:                                            ; preds = %._crit_edge.i.i642
  %i.qo = add nuw i32 %i.qg, 1
  store i32 %i.qo, ptr %i.qf, align 4, !tbaa !1011, !noalias !2695
  store ptr %i.qa, ptr %i.qi, align 8, !tbaa !816, !noalias !2695
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i620: ; preds = %._crit_edge.i.i642, %bb.cu
  %i.qp = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.pz, ptr noundef %i.qa) #28, !noalias !2695 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647

_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647: ; preds = %.lr.ph.i.i637, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i620, %bb.cw, %bb.ct
  %i.qq = load i16, ptr %i.fk, align 8
  %i.qr = and i16 %i.qq, 1
  %.not.i648 = icmp eq i16 %i.qr, 0
  br i1 %.not.i648, label %_ZNK5clang10Declarator13isInvalidTypeEv.exit649, label %_ZNK5clang10Declarator13isInvalidTypeEv.exit649.thread

_ZNK5clang10Declarator13isInvalidTypeEv.exit649:  ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647
  %i.qs = load ptr, ptr %2, align 8, !tbaa !2481, !nonnull !697, !align !698
  %i.qt = load i64, ptr %i.qs, align 8
  %i.qu = and i64 %i.qt, 520192
  %i.qv = icmp eq i64 %i.qu, 282624
  %i.qw = load i8, ptr %i.g, align 1, !range !709
  %i.qx = trunc nuw i8 %i.qw to i1
  %or.cond23 = select i1 %i.qv, i1 true, i1 %i.qx
  br i1 %or.cond23, label %_ZNK5clang10Declarator13isInvalidTypeEv.exit649.thread, label %bb.cy

_ZNK5clang10Declarator13isInvalidTypeEv.exit649.thread: ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_.exit647, %_ZNK5clang10Declarator13isInvalidTypeEv.exit649
  %i.qy = load ptr, ptr %i.f, align 8, !tbaa !1581
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %i.qy, i1 noundef zeroext true) #28
  %.not493 = icmp eq ptr %.0443, null
  br i1 %.not493, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNK5clang10Declarator13isInvalidTypeEv.exit649.thread
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %.0443, i1 noundef zeroext true) #28
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNK5clang10Declarator13isInvalidTypeEv.exit649.thread, %bb.cx, %_ZNK5clang10Declarator13isInvalidTypeEv.exit649
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i.i650 = load i64, ptr %i.ra, align 8, !tbaa !728
  %.not.i651 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i650, 0
  br i1 %.not.i651, label %_ZL22SetNestedNameSpecifierRN5clang4SemaEPNS_14DeclaratorDeclERNS_10DeclaratorE.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val = load ptr, ptr %i.qz, align 8
  %i.rb = load ptr, ptr %i.f, align 8, !tbaa !1581
  %i.rc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, ptr noundef nonnull align 8 dereferenceable(23904) %.val) #28 ; 2 uses
  %i.rd = extractvalue { i64, ptr } %i.rc, 0
  %i.re = extractvalue { i64, ptr } %i.rc, 1
  call void @_ZN5clang14DeclaratorDecl16setQualifierInfoENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(68) %i.rb, i64 %i.rd, ptr %i.re) #28
  br label %_ZL22SetNestedNameSpecifierRN5clang4SemaEPNS_14DeclaratorDeclERNS_10DeclaratorE.exit

_ZL22SetNestedNameSpecifierRN5clang4SemaEPNS_14DeclaratorDeclERNS_10DeclaratorE.exit: ; preds = %bb.cy, %bb.cz
  %i.rf = icmp eq ptr %.0447, null
  %.not495 = select i1 %i.rf, i1 true, i1 %i.lb
  %not..not495 = xor i1 %.not495, true
  %i.rg = load i64, ptr %i.jh, align 8, !tbaa !2310 ; 2 uses
  %i.rh = zext i1 %not..not495 to i64             ; 2 uses
  %i.ri = icmp ugt i64 %i.rg, %i.rh
  br i1 %i.ri, label %bb.da, label %.critedge536

bb.da:                                            ; preds = %_ZL22SetNestedNameSpecifierRN5clang4SemaEPNS_14DeclaratorDeclERNS_10DeclaratorE.exit
  %i.rj = load ptr, ptr %i.f, align 8, !tbaa !1581
  %i.rk = load ptr, ptr %i.qz, align 8, !tbaa !11, !nonnull !697, !align !698
  %i.rl = sub nuw i64 %i.rg, %i.rh
  %i.rm = load ptr, ptr %6, align 8, !tbaa !2309
  call void @_ZN5clang14DeclaratorDecl29setTemplateParameterListsInfoERNS_10ASTContextEN4llvm8ArrayRefIPNS_21TemplateParameterListEEE(ptr noundef nonnull align 8 dereferenceable(68) %i.rj, ptr noundef nonnull align 8 dereferenceable(23904) %i.rk, ptr %i.rm, i64 %i.rl) #28
  br label %.critedge536

.critedge536.thread:                              ; preds = %bb.bl, %bb.bq, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %bb.la

.critedge536:                                     ; preds = %bb.da, %_ZL22SetNestedNameSpecifierRN5clang4SemaEPNS_14DeclaratorDeclERNS_10DeclaratorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i, %.critedge536, %bb.az, %bb.ba
  %.2449 = phi ptr [ %.0447, %.critedge536 ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ null, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ] ; 2 uses
  %.3446 = phi ptr [ %.0443, %.critedge536 ], [ null, %bb.ba ], [ null, %bb.az ], [ null, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ null, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ] ; 9 uses
  %.2442 = phi i1 [ %i.pq, %.critedge536 ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ false, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ]
  %.2439 = phi i8 [ %.0437, %.critedge536 ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ 0, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ] ; 3 uses
  %.2436 = phi i1 [ %.0434, %.critedge536 ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ false, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ] ; 4 uses
  %.4433 = phi i32 [ %.2431, %.critedge536 ], [ %.1430947, %bb.ba ], [ %.1430947, %bb.az ], [ %.1430947, %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i ], [ %.1430947, %_ZNK5clang8QualType38hasNonTrivialToPrimitiveDestructCUnionEv.exit ] ; 4 uses
  %i.rn = load ptr, ptr %2, align 8, !tbaa !2481, !nonnull !697, !align !698 ; 6 uses
  %i.ro = load i64, ptr %i.rn, align 8            ; 2 uses
  %i.rp = and i64 %i.ro, 211106232532992
  %.not995 = icmp eq i64 %i.rp, 0
  br i1 %.not995, label %bb.df, label %bb.db

bb.db:                                            ; preds = %.critedge
  %i.rq = load ptr, ptr %i.as, align 8, !tbaa !747, !nonnull !697, !align !698
  %i.rr = load i64, ptr %i.rq, align 8            ; 2 uses
  %i.rs = and i64 %i.rr, 4096
  %.not496 = icmp eq i64 %i.rs, 0
  br i1 %.not496, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ru = load i64, ptr %i.rn, align 8
  %i.rv = and i64 %i.ru, 70368744177664
  %.not.i652 = icmp eq i64 %i.rv, 0
  %.v.i = select i1 %.not.i652, i64 264, i64 244
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.v.i
  %.sroa.0.0.copyload.i653 = load i32, ptr %i.rw, align 4, !tbaa !706
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %i.rt, i32 %.sroa.0.0.copyload.i653, i32 noundef 4086) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i32 0, ptr %i.j, align 4, !tbaa !706
  %i.rx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !830
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load i16, ptr %i.sa, align 8
  %i.sc = and i16 %i.sb, 127                      ; 2 uses
  switch i16 %i.sc, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656 [
    i16 9, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread
    i16 7, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread
    i16 20, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread
    i16 1, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656: ; preds = %bb.dd
  %i.sd = add nsw i16 %i.sc, -35
  %spec.select.i655 = icmp ult i16 %i.sd, 6
  br i1 %spec.select.i655, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread, label %bb.de

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread: ; preds = %bb.dd, %bb.dd, %bb.dd, %bb.dd, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sf = load i64, ptr %i.rn, align 8
  %i.sg = and i64 %i.sf, 70368744177664
  %.not.i657 = icmp eq i64 %i.sg, 0
  %.v.i658 = select i1 %.not.i657, i64 264, i64 244
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.v.i658
  %.sroa.0.0.copyload.i659 = load i32, ptr %i.sh, align 4, !tbaa !706
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %38, ptr noundef nonnull align 8 dereferenceable(8) %i.se, i32 %.sroa.0.0.copyload.i659, i32 noundef 4082) #28
  %i.si = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %38, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.sj = load ptr, ptr %2, align 8, !tbaa !2481, !nonnull !697, !align !698 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = and i64 %i.sk, 70368744177664
  %.not.i660 = icmp eq i64 %i.sl, 0
  %.v.i661 = select i1 %.not.i660, i64 264, i64 244
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.v.i661
  %.sroa.0.0.copyload.i662 = load i32, ptr %i.sm, align 4, !tbaa !706
  %.sroa.2869.0.insert.ext = zext i32 %.sroa.0.0.copyload.i662 to i64 ; 2 uses
  %.sroa.2869.0.insert.shift = shl nuw i64 %.sroa.2869.0.insert.ext, 32
  %.sroa.0868.0.insert.insert = or disjoint i64 %.sroa.2869.0.insert.shift, %.sroa.2869.0.insert.ext
  %i.sn = getelementptr inbounds nuw i8, ptr %39, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.sn, i8 0, i64 9, i1 false), !alias.scope !2698
  %i.so = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %39, i64 40 ; 4 uses
  store ptr %i.sp, ptr %i.so, align 8, !tbaa !824, !alias.scope !2698
  %i.sq = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i64 0, ptr %i.sq, align 8, !tbaa !825, !alias.scope !2698
  store i8 0, ptr %i.sp, align 8, !tbaa !727, !alias.scope !2698
  %i.sr = getelementptr inbounds nuw i8, ptr %39, i64 56
  store i8 0, ptr %i.sr, align 8, !tbaa !826, !alias.scope !2698
  store i64 %.sroa.0868.0.insert.insert, ptr %39, align 8, !alias.scope !2698
  %.sroa.22.0..sroa_idx.i.i663 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i663, align 8, !tbaa !776, !alias.scope !2698
  %i.ss = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.si, ptr noundef nonnull align 8 dereferenceable(57) %39) ; 0 uses
  %i.st = load ptr, ptr %i.so, align 8, !tbaa !752 ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.sp
  br i1 %i.su, label %_ZN5clang9FixItHintD2Ev.exit666, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664: ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread
  %i.sv = load i64, ptr %i.sp, align 8, !tbaa !727
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #29
  br label %_ZN5clang9FixItHintD2Ev.exit666

_ZN5clang9FixItHintD2Ev.exit666:                  ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i664
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.df

bb.de:                                            ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit656
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sy = and i64 %i.ro, 70368744177664
  %.not.i667 = icmp eq i64 %i.sy, 0
  %.v.i668 = select i1 %.not.i667, i64 264, i64 244
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.v.i668
  %.sroa.0.0.copyload.i669 = load i32, ptr %i.sz, align 4, !tbaa !706
  %i.ta = and i64 %i.rr, 32768
  %.not497 = icmp eq i64 %i.ta, 0
  %i.tb = select i1 %.not497, i32 2857, i32 2832
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %i.sx, i32 %.sroa.0.0.copyload.i669, i32 noundef %i.tb) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %40) #28
  %i.tc = load ptr, ptr %i.f, align 8, !tbaa !1581
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 96 ; 2 uses
  %i.te = load i16, ptr %i.td, align 8
  %i.tf = or i16 %i.te, 24576
  store i16 %i.tf, ptr %i.td, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.dc, %bb.de, %_ZN5clang9FixItHintD2Ev.exit666, %.critedge
  %i.tg = load ptr, ptr %i.f, align 8, !tbaa !1581
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !830
  call void @_ZN5clang4Decl21setLexicalDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(33) %i.tg, ptr noundef %i.ti) #28
  %i.tj = icmp ne ptr %.3446, null                ; 6 uses
  br i1 %i.tj, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.tk = load ptr, ptr %i.th, align 8, !tbaa !830
  call void @_ZN5clang4Decl21setLexicalDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(33) %.3446, ptr noundef %i.tk) #28
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br i1 %i.dj, label %bb.di, label %_ZN5clang4Decl18setLocalExternDeclEv.exit673

bb.di:                                            ; preds = %bb.dh
  %i.tl = load i32, ptr %i.z, align 8, !tbaa !751
  %.not996 = icmp eq i32 %i.tl, 0
  br i1 %.not996, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tm = load ptr, ptr %8, align 8, !tbaa !2703  ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !2706 ; 2 uses
  %.idx = shl nuw nsw i64 %i.to, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 %.idx
  %.not4981036 = icmp eq i64 %i.to, 0
  br i1 %.not4981036, label %_ZN5clang4Decl18setLocalExternDeclEv.exit673, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %bb.dj, %_ZN5clang4Decl18setLocalExternDeclEv.exit
  %.04551037 = phi ptr [ %i.ud, %_ZN5clang4Decl18setLocalExternDeclEv.exit ], [ %i.tm, %bb.dj ] ; 2 uses
  %i.tq = load ptr, ptr %.04551037, align 8, !tbaa !1521 ; 3 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !701
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 48
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = call noundef ptr %i.tt(ptr noundef nonnull align 8 dereferenceable(33) %i.tq) #28, !inline_history !2524 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 28 ; 3 uses
  %i.tw = load i32, ptr %i.tv, align 4            ; 2 uses
  %i.tx = and i32 %i.tw, -136314881
  %i.ty = or disjoint i32 %i.tx, 134217728
  store i32 %i.ty, ptr %i.tv, align 4
  %.not.i670 = icmp eq ptr %i.tu, null
  br i1 %.not.i670, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph1039
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 28
  %i.ua = load i32, ptr %i.tz, align 4
  %i.ub = and i32 %i.ua, 2097152
  %.not3.i = icmp eq i32 %i.ub, 0
  br i1 %.not3.i, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.uc = or i32 %i.tw, 136314880
  store i32 %i.uc, ptr %i.tv, align 4
  br label %_ZN5clang4Decl18setLocalExternDeclEv.exit

_ZN5clang4Decl18setLocalExternDeclEv.exit:        ; preds = %.lr.ph1039, %bb.dk, %bb.dl
  %i.ud = getelementptr inbounds nuw i8, ptr %.04551037, i64 8 ; 2 uses
  %.not498 = icmp eq ptr %i.ud, %i.tp
  br i1 %.not498, label %_ZN5clang4Decl18setLocalExternDeclEv.exit673, label %.lr.ph1039

bb.dm:                                            ; preds = %bb.di
  %i.ue = load ptr, ptr %i.f, align 8, !tbaa !1581 ; 3 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !701
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = call noundef ptr %i.uh(ptr noundef nonnull align 8 dereferenceable(33) %i.ue) #28, !inline_history !2524 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 28 ; 3 uses
  %i.uk = load i32, ptr %i.uj, align 4            ; 2 uses
  %i.ul = and i32 %i.uk, -136314881
  %i.um = or disjoint i32 %i.ul, 134217728
  store i32 %i.um, ptr %i.uj, align 4
  %.not.i671 = icmp eq ptr %i.ui, null
  br i1 %.not.i671, label %_ZN5clang4Decl18setLocalExternDeclEv.exit673, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 28
  %i.uo = load i32, ptr %i.un, align 4
  %i.up = and i32 %i.uo, 2097152
end_hunk_1
begin_hunk_2_@_ZNK5clang4Type12isObjCIdTypeEv:bb.a
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !748 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 16
  %i.q = and i8 %i.p, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.q, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread
  %i.r = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.n) #28
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i: ; preds = %bb.c, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread
  %.1.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.n, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.t = load i32, ptr %i.s, align 16
  %i.u = icmp ult i32 %i.t, 67108864
  br i1 %i.u, label %bb.d, label %_ZNK5clang21ObjCObjectPointerType12isObjCIdTypeEv.exit

bb.d:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i6 = load i64, ptr %i.v, align 8, !tbaa !727
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i6, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !748
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !727
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !748 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = icmp eq i8 %i.ae, 13
  %.not7.i.i.i.i = icmp ne ptr %i.ac, null
  %.not.not.not.i.i.i.i = and i1 %.not7.i.i.i.i, %i.af
  br i1 %.not.not.not.i.i.i.i, label %bb.e, label %_ZNK5clang21ObjCObjectPointerType12isObjCIdTypeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.ad, align 16
  %i.ah = and i32 %i.ag, 536346624
  %i.ai = icmp eq i32 %i.ah, 265289728
  br label %_ZNK5clang21ObjCObjectPointerType12isObjCIdTypeEv.exit

_ZNK5clang21ObjCObjectPointerType12isObjCIdTypeEv.exit: ; preds = %bb.e, %bb.d, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i, %bb.b, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %i.aj = phi i1 [ false, %bb.b ], [ false, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ false, %bb.d ], [ %i.ai, %bb.e ], [ false, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema29DeduceVariableDeclarationTypeEPNS_7VarDeclEbPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !728
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.b, align 8, !tbaa !727
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2173
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !701
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(100) %1) #30
  %i.o = tail call i64 @_ZN5clang4Sema28deduceVarTypeFromInitializerEPNS_7VarDeclENS_15DeclarationNameENS_8QualTypeEPNS_14TypeSourceInfoENS_11SourceRangeEbPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i27, ptr noundef %i.j, i64 %i.n, i1 noundef zeroext %2, ptr noundef %3) ; 2 uses
  %i.p = icmp ult i64 %i.o, 16
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  tail call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #28
  br label %bb.p

bb.e:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  store i64 %i.o, ptr %i.b, align 8, !tbaa !727
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !747, !nonnull !697, !align !698
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 4611686018427387904
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !879
  %i.x = tail call noundef zeroext i1 @_ZN5clang8SemaObjC20inferObjCARCLifetimeEPNS_9ValueDeclE(ptr noundef nonnull align 8 dereferenceable(328) %i.w, ptr noundef nonnull %1) #28
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !747, !nonnull !697, !align !698 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 4611686018427387904
  %.not24 = icmp eq i64 %i.ab, 0
  br i1 %.not24, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = tail call noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136) %i.y) #28
  %i.ae = icmp eq i32 %i.ad, 200
  br i1 %i.ae, label %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136) %i.y) #28
  %i.ag = icmp ugt i32 %i.af, 299
  br i1 %i.ag, label %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.i, label %_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit

_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.i: ; preds = %bb.j
  %i.ah = tail call noundef zeroext i1 @_ZNK5clang13OpenCLOptions11isSupportedEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr nonnull @.str.64, i64 41, ptr noundef nonnull align 8 dereferenceable(1136) %i.y) #28
  br i1 %i.ah, label %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.thread.i, label %_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit

_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.thread.i: ; preds = %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.i, %bb.i
  %i.ai = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %spec.select.i = select i1 %i.ai, i32 4, i32 1
  br label %_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit

_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit: ; preds = %bb.j, %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.i, %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.thread.i
  %.0.i = phi i32 [ 4, %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.i ], [ %spec.select.i, %_ZNK5clang13OpenCLOptions33areProgramScopeVariablesSupportedERKNS_11LangOptionsE.exit.thread.i ], [ 4, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11, !nonnull !697, !align !698
  tail call void @_ZN5clang7VarDecl18assignAddressSpaceERKNS_10ASTContextENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ak, i32 noundef %.0.i) #28
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !747
  br label %bb.k

bb.k:                                             ; preds = %_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit, %bb.h
  %i.al = phi ptr [ %.pre, %_ZN5clang4Sema24deduceOpenCLAddressSpaceEPNS_7VarDeclE.exit ], [ %i.y, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1099511627776
  %.not25 = icmp eq i64 %i.ao, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !819
  tail call void @_ZN5clang8SemaHLSL18deduceAddressSpaceEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(273) %i.aq, ptr noundef nonnull %1) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.0.copyload.i.i.i.i.i.i.i28 = load i64, ptr %i.ar, align 8 ; 3 uses
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i.i28, 3
  %.not.i29 = icmp ne i64 %i.as, 0
  %i.at = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i28, 4
  %or.cond.i.not = or i1 %i.at, %.not.i29
  br i1 %or.cond.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i28 to ptr
  tail call void @_ZN5clang4Sema17MergeVarDeclTypesEPNS_7VarDeclES2_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.au, i1 noundef zeroext false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN5clang4Sema28CheckVariableDeclarationTypeEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 128
  %i.ay = icmp ne i32 %i.ax, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ %i.ay, %bb.o ]
  ret i1 %.0
}

declare void @_ZN5clang8SemaHLSL18deduceAddressSpaceEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema34checkNonTrivialCUnionInInitializerEPKNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 2 uses
  %i.b = and i16 %i.a, 511
  %.not = icmp eq i16 %i.b, 62
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1525 ; 2 uses
  %.pre = load i16, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i16 [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  %.0129 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = and i16 %i.e, 511
  %.not132.a = icmp eq i16 %i.f, 63
  br i1 %.not132.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0129, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1525
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %.0129, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !727 ; 4 uses
  %3 = load i16, ptr %.1, align 8
  %i.j = and i16 %3, 511
  switch i16 %i.j, label %.preheader136 [
    i16 55, label %bb.f
    i16 56, label %.preheader
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3120 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3125
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 34359738360                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %.not30152 = icmp samesign eq i64 %i.r, 0
  br i1 %.not30152, label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit89.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread
  %.0153 = phi ptr [ %i.bm, %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread ], [ %i.l, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.0153, align 8, !tbaa !2081 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i, %.lr.ph
  %.05.i.in.in.in.in.i.sroa.speculated.in = phi ptr [ %i.u, %.lr.ph ], [ %i.ah, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i ]
  %.05.i.in.in.in.in.i.sroa.speculated = load i64, ptr %.05.i.in.in.in.in.i.sroa.speculated.in, align 8
  %.05.i.in.in.i = and i64 %.05.i.in.in.in.in.i.sroa.speculated, -16
  %.05.i.in.i = inttoptr i64 %.05.i.in.in.i to ptr
  %.05.i.i = load ptr, ptr %.05.i.in.i, align 16, !tbaa !748 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %i.x = add i8 %i.w, -7
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.x, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !727
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !748 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i8, ptr %i.ac, align 16            ; 2 uses
  %i.ae = add i8 %i.ad, -2
  %switch.i.i.i.i.i.i.i.i5.i.i.i = icmp ult i8 %i.ae, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i: ; preds = %bb.h
  %i.af = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.05.i.i) #28 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.pre.i = load i64, ptr %i.ag, align 8, !tbaa !727
  %.pre.i = and i64 %.sroa.0.0.copyload.i.i.i.i.pre.i, -16
  %.pre16.i = inttoptr i64 %.pre.i to ptr
  %.pre171 = load ptr, ptr %.pre16.i, align 16, !tbaa !748 ; 2 uses
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %.pre171, i64 16
  %.pre173 = load i8, ptr %.phi.trans.insert172, align 16
  br label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i, %bb.g
  %.1.i12.i.i = phi ptr [ %i.af, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i ], [ %.05.i.i, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i12.i.i, i64 32
  br label %bb.g

_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i: ; preds = %bb.h, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i
  %i.ai = phi i8 [ %.pre173, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %.pre171, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i ], [ %i.ab, %bb.h ]
  %i.ak = add i8 %i.ai, -47
  %switch.i.i.i.i.i.i.i.i.i.i6.i = icmp ult i8 %i.ak, 3
  %i.al = and i8 %i.ai, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.al, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %switch.i.i.i.i.i.i.i.i.i.i6.i
  br i1 %or.cond.i.i, label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit, label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread.preheader

_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit: ; preds = %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1567 ; 2 uses
  %i.ao = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #28 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.ao, null
  %spec.select.i = select i1 %.not.not.i.i.i.i, ptr %i.an, ptr %i.ao
  %i.ap = tail call noundef zeroext i1 @_ZN5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEPKNS_10RecordDeclE(ptr noundef nonnull %spec.select.i) #28
  br i1 %i.ap, label %.critedge, label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread.preheader

_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread.preheader: ; preds = %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i, %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit
  br label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread

_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread: ; preds = %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread.preheader, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i43
  %.05.i.in.in.in.in.i37.sroa.speculated.in = phi ptr [ %i.bc, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i43 ], [ %i.u, %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread.preheader ]
  %.05.i.in.in.in.in.i37.sroa.speculated = load i64, ptr %.05.i.in.in.in.in.i37.sroa.speculated.in, align 8
  %.05.i.in.in.i39 = and i64 %.05.i.in.in.in.in.i37.sroa.speculated, -16
  %.05.i.in.i40 = inttoptr i64 %.05.i.in.in.i39 to ptr
  %.05.i.i41 = load ptr, ptr %.05.i.in.i40, align 16, !tbaa !748 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i41, i64 16
  %i.ar = load i8, ptr %i.aq, align 16
  %i.as = add i8 %i.ar, -7
  %switch.i.i.i.i.i.i.i.i.i.i.i42 = icmp ult i8 %i.as, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i42, label %bb.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i43

bb.i:                                             ; preds = %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i41, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i45 = load i64, ptr %i.at, align 8, !tbaa !727
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i45, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !748 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 16            ; 2 uses
  %i.az = add i8 %i.ay, -2
  %switch.i.i.i.i.i.i.i.i5.i.i.i46 = icmp ult i8 %i.az, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i.i.i46, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i57, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i47

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i57: ; preds = %bb.i
  %i.ba = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.05.i.i41) #28 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i58, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i59, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i43

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i59: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i57
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i41, i64 8
  %.sroa.0.0.copyload.i.i.i.i.pre.i60 = load i64, ptr %i.bb, align 8, !tbaa !727
  %.pre.i61 = and i64 %.sroa.0.0.copyload.i.i.i.i.pre.i60, -16
  %.pre16.i62 = inttoptr i64 %.pre.i61 to ptr
  %.pre174 = load ptr, ptr %.pre16.i62, align 16, !tbaa !748 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre174, i64 16
  %.pre176 = load i8, ptr %.phi.trans.insert175, align 16
  br label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i47

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i43: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i57, %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread
  %.1.i12.i.i44 = phi ptr [ %i.ba, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i57 ], [ %.05.i.i41, %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i12.i.i44, i64 32
  br label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit.thread

_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i47: ; preds = %bb.i, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i59
  %i.bd = phi i8 [ %.pre176, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i59 ], [ %i.ay, %bb.i ] ; 2 uses
  %i.be = phi ptr [ %.pre174, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i59 ], [ %i.aw, %bb.i ]
  %i.bf = add i8 %i.bd, -47
  %switch.i.i.i.i.i.i.i.i.i.i6.i49 = icmp ult i8 %i.bf, 3
  %i.bg = and i8 %i.bd, 62
  %spec.select.i.i.i.i52 = icmp eq i8 %i.bg, 48
  %or.cond.i.i53 = and i1 %spec.select.i.i.i.i52, %switch.i.i.i.i.i.i.i.i.i.i6.i49
  br i1 %or.cond.i.i53, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit: ; preds = %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1567 ; 2 uses
  %i.bj = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #28 ; 2 uses
  %.not.not.i.i.i.i55 = icmp eq ptr %i.bj, null
  %spec.select.i56 = select i1 %.not.not.i.i.i.i55, ptr %i.bi, ptr %i.bj
  %i.bk = tail call noundef zeroext i1 @_ZN5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEPKNS_10RecordDeclE(ptr noundef nonnull %spec.select.i56) #28
  br i1 %i.bk, label %.critedge, label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

.critedge:                                        ; preds = %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit, %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit
  %i.bl = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30 ; 2 uses
  %.not135 = icmp eq i32 %i.bl, 0
  %.sroa.04.0.copyload.sroa.speculated = select i1 %.not135, i32 %2, i32 %i.bl
  tail call void @_ZN5clang4Sema34checkNonTrivialCUnionInInitializerEPKNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.t, i32 %.sroa.04.0.copyload.sroa.speculated)
  br label %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread

_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit.thread: ; preds = %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i47, %_ZNK5clang8QualType34hasNonTrivialToPrimitiveCopyCUnionEv.exit, %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %.0153, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.bm, %i.s
  br i1 %.not30, label %_ZNK5clang8QualType47hasNonTrivialToPrimitiveDefaultInitializeCUnionEv.exit89.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.e, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i69
  %.05.i.in.in.in.in.i63.sroa.speculated = phi i64 [ %.05.i.in.in.in.in.i63.sroa.speculate.load._ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i69, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i69 ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %.05.i.in.in.i65 = and i64 %.05.i.in.in.in.in.i63.sroa.speculated, -16
  %.05.i.in.i66 = inttoptr i64 %.05.i.in.in.i65 to ptr
  %.05.i.i67 = load ptr, ptr %.05.i.in.i66, align 16, !tbaa !748 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i67, i64 16
  %i.bo = load i8, ptr %i.bn, align 16
  %i.bp = add i8 %i.bo, -7
  %switch.i.i.i.i.i.i.i.i.i.i.i68 = icmp ult i8 %i.bp, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i68, label %bb.j, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i69

bb.j:                                             ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i67, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i71 = load i64, ptr %i.bq, align 8, !tbaa !727
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i71, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !748 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16            ; 2 uses
  %i.bw = add i8 %i.bv, -2
  %switch.i.i.i.i.i.i.i.i5.i.i.i72 = icmp ult i8 %i.bw, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i.i.i72, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i83, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit.i73

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i83: ; preds = %bb.j
  %i.bx = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.05.i.i67) #28 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i84, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i85, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i.i69

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i._ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit_crit_edge.i85: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i83
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i67, i64 8
  %.sroa.0.0.copyload.i.i.i.i.pre.i86 = load i64, ptr %i.by, align 8, !tbaa !727
  %.pre.i87 = and i64 %.sroa.0.0.copyload.i.i.i.i.pre.i86, -16
  %.pre16.i88 = inttoptr i64 %.pre.i87 to ptr
  %.pre168.a = load ptr, ptr %.pre16.i88, align 16, !tbaa !748 ; 2 uses
end_hunk_2
