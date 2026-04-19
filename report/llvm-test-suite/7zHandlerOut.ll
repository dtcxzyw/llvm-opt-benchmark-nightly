inline.NumInlined: 260
inline.NumDeleted: 100
begin_hunk_0_@_ZN8NArchive3N7z8CHandler20SetCompressionMethodERNS0_22CCompressionMethodModeER13CObjectVectorINS_14COneMethodInfoEEj:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.r = load i32, ptr %.0.i.i, align 4, !tbaa !32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.r, ptr %.04.i.i, align 4, !tbaa !32
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !llvm.loop !45

end_hunk_0
begin_hunk_1_@_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE3AddERKS1_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.r, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.u = load i32, ptr %.0.i.i.i, align 4, !tbaa !32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.u, ptr %.04.i.i.i, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !llvm.loop !45

end_hunk_1
begin_hunk_2_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %.0166386 = phi i32 [ %i.bi, %bb.b ], [ 0, %.lr.ph.split.preheader ] ; 11 uses
  %.0169377 = phi i32 [ %.18187, %bb.b ], [ undef, %.lr.ph.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
end_hunk_2
begin_hunk_3_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cu, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cs, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ct = load i32, ptr %.0.i.i, align 4, !tbaa !32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ct, ptr %.04.i.i, align 4, !tbaa !32
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.n, !llvm.loop !45

end_hunk_3
begin_hunk_4_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.ae, %bb.ab
  %.3172 = phi i32 [ -2147024809, %bb.ae ], [ %i.eq, %bb.ab ], [ %.0169377, %.sink.split ] ; 2 uses
  %cond10 = phi i1 [ false, %bb.ae ], [ false, %bb.ab ], [ true, %.sink.split ]
  %i.ex = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 unwind label %bb.ah ; 0 uses

end_hunk_4
begin_hunk_5_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bn, %bb.bl, %bb.bz
  %.8177 = phi i32 [ %.3172, %bb.bz ], [ %i.gu, %bb.bl ], [ -2147024809, %bb.bn ] ; 3 uses
  %cond16 = phi i1 [ true, %bb.bz ], [ false, %bb.bl ], [ false, %bb.bn ]
  %i.hk = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288.a unwind label %bb.cb ; 0 uses

end_hunk_5
begin_hunk_6_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a

bb.ci:                                            ; preds = %bb.cd
  %i.hy = load i16, ptr %13, align 8, !tbaa !34
  switch i16 %i.hy, label %bb.ck [
    i16 0, label %bb.cl
    i16 11, label %bb.cj
  ]

end_hunk_6
begin_hunk_7_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
bb.ck:                                            ; preds = %bb.ci
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.ck, %bb.cj, %bb.cd
  %.10179 = phi i32 [ %.8177, %bb.cj ], [ %i.hq, %bb.cd ], [ %.8177, %bb.ci ], [ -2147024809, %bb.ck ] ; 2 uses
  %cond18 = phi i1 [ true, %bb.cj ], [ false, %bb.cd ], [ true, %bb.ci ], [ false, %bb.ck ]
  %.1126 = phi i1 [ false, %bb.cj ], [ undef, %bb.cd ], [ true, %bb.ci ], [ undef, %bb.ck ]
  %i.ic = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 unwind label %bb.cm ; 0 uses

end_hunk_7
begin_hunk_8_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %bb.co, %bb.ct
  %.12181 = phi i32 [ %.10179, %bb.ct ], [ %i.ii, %bb.co ], [ -2147024809, %bb.cr ] ; 4 uses
  %cond20 = phi i1 [ true, %bb.ct ], [ false, %bb.co ], [ false, %bb.cr ]
  %i.ir = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 unwind label %bb.cv ; 0 uses

end_hunk_8
begin_hunk_9_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
bb.cx:                                            ; preds = %bb.cw
  %.pre418 = load i8, ptr %i.ao, align 8, !range !22
  %i.iw = trunc nuw i8 %.pre418 to i1
  %or.cond = select i1 %.1126, i1 %i.iw, i1 false
  br i1 %or.cond, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
end_hunk_9
begin_hunk_10_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.cz

bb.cz:                                            ; preds = %.thread467, %bb.x, %bb.cy, %bb.cx, %bb.z
  %.14 = phi i32 [ %.0169377, %bb.z ], [ %.12181, %bb.cx ], [ %.12181, %bb.cy ], [ %.0169377, %bb.x ], [ %.12181, %.thread467 ] ; 2 uses
  %i.jb = load i8, ptr %i.n, align 4, !tbaa !61, !range !22, !noundef !23
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.da, label %bb.di
end_hunk_10
begin_hunk_11_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  %i.jo = load i8, ptr %i.l, align 2, !range !22
  %i.jp = trunc nuw i8 %i.jo to i1
  %or.cond25 = select i1 %i.jn, i1 %i.jp, i1 false ; 2 uses
  %..14183. = select i1 %or.cond25, i32 -2147024809, i32 %.14
  %not.or.cond25 = xor i1 %or.cond25, true
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.db
  %.16185 = phi i32 [ %i.jg, %bb.db ], [ %..14183., %bb.df ], [ -2147024809, %bb.de ] ; 2 uses
  %cond8 = phi i1 [ false, %bb.db ], [ %not.or.cond25, %bb.df ], [ false, %bb.de ]
  %i.jq = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 unwind label %bb.dh ; 0 uses

end_hunk_11
begin_hunk_12_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br i1 %cond8, label %bb.di, label %.thread

bb.di:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295, %bb.cz
  %.17 = phi i32 [ %.16185, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ %.14, %bb.cz ]
  %i.jt = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #20
          to label %.noexc296 unwind label %bb.i  ; 7 uses

end_hunk_12
begin_hunk_13_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.ke, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.ki, %bb.dk ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.kf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.kg, %bb.dk ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.kh = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.kh, ptr %.04.i.i.i.i, align 4, !tbaa !32
  %.not.i.i.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i.i.i, label %bb.dl, label %bb.dk, !llvm.loop !45

end_hunk_13
begin_hunk_14_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %.thread

.thread:                                          ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276, %bb.bj, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288.a, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit, %bb.g, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295
  %.18187 = phi i32 [ %.17, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit ], [ -2147024809, %bb.g ], [ %.16185, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ %.3172, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 ], [ %.1.i, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit ], [ %.1.i272, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 ], [ %.1.i279, %bb.bj ], [ %.8177, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288.a ], [ %.10179, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 ], [ %.12181, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 ] ; 2 uses
  %i.kr = phi i1 [ true, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit ], [ false, %bb.g ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 ], [ false, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit ], [ false, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 ], [ false, %bb.bj ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288.a ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 ]
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.do, label %bb.dn
end_hunk_14
begin_hunk_15_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i306.preheader: ; preds = %bb.eg, %bb.ee
  %.0.i.i308.ph = phi ptr [ %i.mt, %bb.eg ], [ %i.mk, %bb.ee ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306

_ZN11CStringBaseIwE11SetCapacityEi.exit.i306:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306
  %.04.i.i307 = phi ptr [ %i.na, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306 ], [ %.0.i.i308.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306.preheader ] ; 2 uses
  %.0.i.i308 = phi ptr [ %i.my, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306 ], [ %.pre421, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306.preheader ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i.i308, i64 4
  %i.mz = load i32, ptr %.0.i.i308, align 4, !tbaa !32 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.04.i.i307, i64 4
  store i32 %i.mz, ptr %.04.i.i307, align 4, !tbaa !32
  %.not.i.i309 = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i309, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i306, !llvm.loop !45

end_hunk_15
begin_hunk_16_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i315
  %.04.i.i316 = phi ptr [ %i.oh, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i315 ], [ %i.ol, %bb.er ] ; 2 uses
  %.0.i.i317 = phi ptr [ %i.oi, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i315 ], [ %i.oj, %bb.er ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i.i317, i64 4
  %i.ok = load i32, ptr %.0.i.i317, align 4, !tbaa !32 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.04.i.i316, i64 4
  store i32 %i.ok, ptr %.04.i.i316, align 4, !tbaa !32
  %.not.i.i318.a = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i318.a, label %_ZN11CStringBaseIwEaSERKS0_.exit323, label %bb.er, !llvm.loop !45

end_hunk_16
begin_hunk_17_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
  br label %bb.gi

.thread356:                                       ; preds = %bb.do, %.thread351, %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit338
  %.28 = phi i32 [ %.27, %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit338 ], [ %.us-phi, %.thread351 ], [ %.18187, %bb.do ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CUpdateItemEE, i64 16), ptr %7, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED2Ev.exit unwind label %bb.gh, !inline_history !123
end_hunk_17
begin_hunk_18_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
bb.gi:                                            ; preds = %.body301, %bb.dq
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn, %.body301 ], [ %.pn237.pn.pn, %bb.dq ] ; 2 uses
  call void @_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  %.18148 = extractvalue { ptr, i32 } %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn, 1
  %.18167 = extractvalue { ptr, i32 } %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.vi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #19
  %i.vj = icmp eq i32 %.18148, %i.vi
  %i.vk = call ptr @__cxa_begin_catch(ptr %.18167) #19
  br i1 %i.vj, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
end_hunk_18
begin_hunk_19_@_ZN11CStringBaseIwEaSERKS0_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.u, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !32  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.v, ptr %.04.i, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !45

end_hunk_19
begin_hunk_20_@_ZN11CStringBaseIwEC2EPKw:bb.a
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.i, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %1, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.k = load i32, ptr %.0.i, align 4, !tbaa !32  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.k, ptr %.04.i, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit, !llvm.loop !45

end_hunk_20
begin_hunk_21_@_ZN8NArchive3N7z8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.y, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.x = load i32, ptr %.0.i.i, align 4, !tbaa !32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.x, ptr %.04.i.i, align 4, !tbaa !32
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !llvm.loop !45

end_hunk_21
