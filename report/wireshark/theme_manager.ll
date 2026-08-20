inline.NumInlined: 1769
inline.NumDeleted: 764
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12ThemeManagerC2EP7QObject:bb.a
_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322:   ; preds = %_ZN7QStringD2Ev.exit320
  %i.nx = atomicrmw sub ptr %i.nw, i32 1 acq_rel, align 4
  %.not.i.i323 = icmp eq i32 %i.nx, 1
  br i1 %.not.i.i323, label %bb.cs, label %_ZN7QStringD2Ev.exit324

bb.cs:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322
  %i.ny = load ptr, ptr %31, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ny, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit324

_ZN7QStringD2Ev.exit324:                          ; preds = %_ZN7QStringD2Ev.exit320, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  %i.nz = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i325 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i325, label %_ZN7QStringD2Ev.exit328, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i326

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i326:   ; preds = %_ZN7QStringD2Ev.exit324
  %i.oa = atomicrmw sub ptr %i.nz, i32 1 acq_rel, align 4
  %.not.i.i327 = icmp eq i32 %i.oa, 1
  br i1 %.not.i.i327, label %bb.ct, label %_ZN7QStringD2Ev.exit328

bb.ct:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i326
  %i.ob = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ob, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit328

_ZN7QStringD2Ev.exit328:                          ; preds = %_ZN7QStringD2Ev.exit324, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i326, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  %i.oc = add nuw nsw i32 %.075, 1
  br label %bb.bc, !llvm.loop !12

bb.cu:                                            ; preds = %bb.ca
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit352

bb.cv:                                            ; preds = %bb.cb
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit348

bb.cw:                                            ; preds = %bb.cc
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit344

bb.cx:                                            ; preds = %_ZN7QStringD2Ev.exit.i, %bb.cd
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit340

bb.cy:                                            ; preds = %bb.cf
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit336

bb.cz:                                            ; preds = %bb.cg
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit332

bb.da:                                            ; preds = %_ZNO7QString7toLowerEv.exit
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN7QStringD2Ev.exit8.i.i, %bb.da
  %eh.lpad-body = phi { ptr, i32 } [ %i.oj, %bb.da ], [ %i.ng, %_ZN7QStringD2Ev.exit8.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  %i.ok = load ptr, ptr %27, align 16             ; 2 uses
  %.not.i.i.i329 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i329, label %_ZN7QStringD2Ev.exit332, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i330

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i330:   ; preds = %.body
  %i.ol = atomicrmw sub ptr %i.ok, i32 1 acq_rel, align 4
  %.not.i.i331 = icmp eq i32 %i.ol, 1
  br i1 %.not.i.i331, label %bb.db, label %_ZN7QStringD2Ev.exit332

bb.db:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i330
  %i.om = load ptr, ptr %27, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.om, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit332

_ZN7QStringD2Ev.exit332:                          ; preds = %bb.db, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i330, %.body, %bb.cz
  %.pn96 = phi { ptr, i32 } [ %i.oi, %bb.cz ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i330 ], [ %eh.lpad-body, %bb.db ] ; 3 uses
  %i.on = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i333, label %_ZN7QStringD2Ev.exit336, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i334

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i334:   ; preds = %_ZN7QStringD2Ev.exit332
  %i.oo = atomicrmw sub ptr %i.on, i32 1 acq_rel, align 4
  %.not.i.i335 = icmp eq i32 %i.oo, 1
  br i1 %.not.i.i335, label %bb.dc, label %_ZN7QStringD2Ev.exit336

bb.dc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i334
  %i.op = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.op, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit336

_ZN7QStringD2Ev.exit336:                          ; preds = %bb.dc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i334, %_ZN7QStringD2Ev.exit332, %bb.cy
  %.pn96.pn = phi { ptr, i32 } [ %i.oh, %bb.cy ], [ %.pn96, %_ZN7QStringD2Ev.exit332 ], [ %.pn96, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i334 ], [ %.pn96, %bb.dc ] ; 3 uses
  %i.oq = load ptr, ptr %32, align 16             ; 2 uses
  %.not.i.i.i337 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i337, label %_ZN7QStringD2Ev.exit340, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i338

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i338:   ; preds = %_ZN7QStringD2Ev.exit336
  %i.or = atomicrmw sub ptr %i.oq, i32 1 acq_rel, align 4
  %.not.i.i339 = icmp eq i32 %i.or, 1
  br i1 %.not.i.i339, label %bb.dd, label %_ZN7QStringD2Ev.exit340

bb.dd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i338
  %i.os = load ptr, ptr %32, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.os, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit340

_ZN7QStringD2Ev.exit340:                          ; preds = %bb.dd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i338, %_ZN7QStringD2Ev.exit336, %bb.cx
  %.pn96.pn.pn = phi { ptr, i32 } [ %i.og, %bb.cx ], [ %.pn96.pn, %_ZN7QStringD2Ev.exit336 ], [ %.pn96.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i338 ], [ %.pn96.pn, %bb.dd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  %i.ot = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i341 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i341, label %_ZN7QStringD2Ev.exit344, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i342

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i342:   ; preds = %_ZN7QStringD2Ev.exit340
  %i.ou = atomicrmw sub ptr %i.ot, i32 1 acq_rel, align 4
  %.not.i.i343 = icmp eq i32 %i.ou, 1
  br i1 %.not.i.i343, label %bb.de, label %_ZN7QStringD2Ev.exit344

bb.de:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i342
  %i.ov = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ov, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit344

_ZN7QStringD2Ev.exit344:                          ; preds = %bb.de, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i342, %_ZN7QStringD2Ev.exit340, %bb.cw
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %i.of, %bb.cw ], [ %.pn96.pn.pn, %_ZN7QStringD2Ev.exit340 ], [ %.pn96.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i342 ], [ %.pn96.pn.pn, %bb.de ] ; 3 uses
  %i.ow = load ptr, ptr %31, align 16             ; 2 uses
  %.not.i.i.i345 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i345, label %_ZN7QStringD2Ev.exit348, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i346

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i346:   ; preds = %_ZN7QStringD2Ev.exit344
  %i.ox = atomicrmw sub ptr %i.ow, i32 1 acq_rel, align 4
  %.not.i.i347 = icmp eq i32 %i.ox, 1
  br i1 %.not.i.i347, label %bb.df, label %_ZN7QStringD2Ev.exit348

bb.df:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i346
  %i.oy = load ptr, ptr %31, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.oy, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit348

_ZN7QStringD2Ev.exit348:                          ; preds = %bb.df, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i346, %_ZN7QStringD2Ev.exit344, %bb.cv
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oe, %bb.cv ], [ %.pn96.pn.pn.pn, %_ZN7QStringD2Ev.exit344 ], [ %.pn96.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i346 ], [ %.pn96.pn.pn.pn, %bb.df ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  %i.oz = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i349, label %_ZN7QStringD2Ev.exit352, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i350

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i350:   ; preds = %_ZN7QStringD2Ev.exit348
  %i.pa = atomicrmw sub ptr %i.oz, i32 1 acq_rel, align 4
  %.not.i.i351 = icmp eq i32 %i.pa, 1
  br i1 %.not.i.i351, label %bb.dg, label %_ZN7QStringD2Ev.exit352

bb.dg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i350
  %i.pb = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pb, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit352

_ZN7QStringD2Ev.exit352:                          ; preds = %bb.dg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i350, %_ZN7QStringD2Ev.exit348, %bb.cu
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.od, %bb.cu ], [ %.pn96.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit348 ], [ %.pn96.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i350 ], [ %.pn96.pn.pn.pn.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.fr

_ZN9QMetaEnum8fromTypeIN12ThemeManager10ThemeTokenEEES_v.exit266: ; preds = %.noexc264
  %i.pc = extractvalue { ptr, ptr } %i.lh, 0
  %i.pd = extractvalue { ptr, ptr } %i.lh, 1
  store ptr %i.pc, ptr %17, align 8
  store ptr %i.pd, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  %i.pe = load ptr, ptr %i.i, align 8, !noalias !13 ; 5 uses
  %.not.i.i.i353 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i353, label %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i, label %bb.dh

bb.dh:                                            ; preds = %_ZN9QMetaEnum8fromTypeIN12ThemeManager10ThemeTokenEEES_v.exit266
  %i.pf = getelementptr i8, ptr %i.pe, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !noalias !13 ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !13
  %.not.i.i.i.i.i354 = icmp eq i8 %i.ph, -1
  br i1 %.not.i.i.i.i.i354, label %bb.di, label %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i

bb.di:                                            ; preds = %bb.dh
  %i.pi = getelementptr i8, ptr %i.pe, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !13 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i, label %.lr.ph676

bb.dj:                                            ; preds = %.lr.ph676
  %i.pl = add i64 %i.pn, 1                        ; 2 uses
  %i.pm = icmp eq i64 %i.pl, %i.pj
  br i1 %i.pm, label %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i, label %.lr.ph676, !llvm.loop !16

.lr.ph676:                                        ; preds = %bb.di, %bb.dj
  %i.pn = phi i64 [ %i.pl, %bb.dj ], [ 1, %bb.di ] ; 4 uses
  %i.po = lshr i64 %i.pn, 7
  %i.pp = getelementptr [144 x i8], ptr %i.pg, i64 %i.po
  %i.pq = and i64 %i.pn, 127
  %i.pr = getelementptr i8, ptr %i.pp, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !noalias !13
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ps, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.dj, label %._ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i.loopexit_crit_edge678, !llvm.loop !16

._ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i.loopexit_crit_edge678: ; preds = %.lr.ph676
  br label %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i, !llvm.loop !16

_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i: ; preds = %bb.dj, %bb.di, %._ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i.loopexit_crit_edge678, %bb.dh, %_ZN9QMetaEnum8fromTypeIN12ThemeManager10ThemeTokenEEES_v.exit266
  %.sroa.0.0.i.i.i = phi ptr [ null, %_ZN9QMetaEnum8fromTypeIN12ThemeManager10ThemeTokenEEES_v.exit266 ], [ %i.pe, %bb.dh ], [ %i.pe, %._ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i.loopexit_crit_edge678 ], [ null, %bb.di ], [ null, %bb.dj ]
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN9QMetaEnum8fromTypeIN12ThemeManager10ThemeTokenEEES_v.exit266 ], [ 0, %bb.dh ], [ %i.pn, %._ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i.loopexit_crit_edge678 ], [ 0, %bb.di ], [ 0, %bb.dj ]
  invoke void @_ZN5QListI7QStringEC2IN5QHashIS0_16ThemeSectionInfoE12key_iteratorETnNSt9enable_ifIXsr3std14is_convertibleINSt15iterator_traitsIT_E17iterator_categoryESt18input_iterator_tagEE5valueEbE4typeELb1EEES9_S9_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %33, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i, ptr null, i64 0)
          to label %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit.preheader unwind label %bb.dn

_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit.preheader: ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i
  %i.pt = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.qe = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  br label %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit

_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit: ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit.preheader, %_ZN7QStringD2Ev.exit427
  %.077 = phi i32 [ %i.wg, %_ZN7QStringD2Ev.exit427 ], [ 0, %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit.preheader ] ; 4 uses
  %i.qh = invoke noundef i32 @_ZNK9QMetaEnum8keyCountEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %17)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit
  %i.qi = icmp slt i32 %.077, %i.qh
  br i1 %i.qi, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qj = load ptr, ptr @mainApp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 ptrtoint (ptr @_ZN15MainApplication18preferencesChangedEv to i64), ptr %i.c, align 8, !noalias !17
  %.fca.1.gep.i356 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep.i356, align 8, !noalias !17
  %i.qk = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc357 unwind label %bb.fo ; 4 uses

.noexc357:                                        ; preds = %bb.dl
  store i32 1, ptr %i.qk, align 4, !noalias !17
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr @"_ZN9QtPrivate18QFunctorSlotObjectIZN12ThemeManagerC1EP7QObjectE3$_1Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseES3_PPvPb", ptr %i.ql, align 8, !noalias !17
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store ptr %0, ptr %i.qm, align 8, !noalias !17
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %39, ptr noundef %i.qj, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef null, ptr noundef %i.qk, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN15MainApplication16staticMetaObjectE)
          to label %bb.fi unwind label %bb.fo

bb.dm:                                            ; preds = %.noexc264, %bb.be
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.dn:                                            ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE8keyBeginEv.exit.i
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.do:                                            ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE4keysEv.exit
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.dp:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  %i.qq = invoke noundef ptr @_ZNK9QMetaEnum3keyEi(ptr noundef nonnull align 8 dereferenceable_or_null(16) %17, i32 noundef %.077)
          to label %bb.dq unwind label %bb.eb     ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %.not.i.i359 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i359, label %_ZN7QStringD2Ev.exit.i361, label %.split.i.i360

.split.i.i360:                                    ; preds = %bb.dq
  %i.qr = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.qq) #29
  br label %_ZN7QStringD2Ev.exit.i361

_ZN7QStringD2Ev.exit.i361:                        ; preds = %.split.i.i360, %bb.dq
  %.sink5.i.i362 = phi i64 [ %i.qr, %.split.i.i360 ], [ 0, %bb.dq ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %.sink5.i.i362, ptr %i.qq)
          to label %bb.dr unwind label %bb.eb

bb.dr:                                            ; preds = %_ZN7QStringD2Ev.exit.i361
  %i.qs = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.qs, ptr %35, align 16
  %i.qt = load i64, ptr %i.pu, align 16
  store i64 %i.qt, ptr %i.pt, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  invoke void @_ZN7QString14toLower_helperERS_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %35)
          to label %_ZNO7QString7toLowerEv.exit366 unwind label %bb.ec

_ZNO7QString7toLowerEv.exit366:                   ; preds = %bb.dr
  %i.qu = load ptr, ptr %35, align 16             ; 2 uses
  %.not.i.i.i367 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i367, label %_ZN7QStringD2Ev.exit370, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368:   ; preds = %_ZNO7QString7toLowerEv.exit366
  %i.qv = atomicrmw sub ptr %i.qu, i32 1 acq_rel, align 4
  %.not.i.i369 = icmp eq i32 %i.qv, 1
  br i1 %.not.i.i369, label %bb.ds, label %_ZN7QStringD2Ev.exit370

bb.ds:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368
  %i.qw = load ptr, ptr %35, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qw, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit370

_ZN7QStringD2Ev.exit370:                          ; preds = %_ZNO7QString7toLowerEv.exit366, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.qx = invoke noundef i32 @_ZNK9QMetaEnum5valueEi(ptr noundef nonnull align 8 dereferenceable_or_null(16) %17, i32 noundef %.077)
          to label %bb.dt unwind label %bb.ee

bb.dt:                                            ; preds = %_ZN7QStringD2Ev.exit370
  store i32 %i.qx, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.qy = load <2 x ptr>, ptr %34, align 16
  %i.qz = load ptr, ptr %34, align 16             ; 2 uses
  store <2 x ptr> %i.qy, ptr %2, align 16
  %i.ra = load i64, ptr %i.pw, align 16
  store i64 %i.ra, ptr %i.pv, align 16
  %.not.i.i.i.i.i371 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i.i.i371, label %_ZN7QStringC2ERKS_.exit.i.i372, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rb = atomicrmw add ptr %i.qz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i.i372

_ZN7QStringC2ERKS_.exit.i.i372:                   ; preds = %bb.du, %bb.dt
  %i.rc = invoke { ptr, i64 } @_ZN5QHashI7QStringN12ThemeManager10ThemeTokenEE7emplaceIJRKS2_EEENS3_8iteratorEOS0_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.dv unwind label %bb.dx     ; 0 uses

bb.dv:                                            ; preds = %_ZN7QStringC2ERKS_.exit.i.i372
  %i.rd = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i4.i.i377 = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i4.i.i377, label %bb.dz, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i378

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i378: ; preds = %bb.dv
  %i.re = atomicrmw sub ptr %i.rd, i32 1 acq_rel, align 4
  %.not.i.i.i.i379 = icmp eq i32 %i.re, 1
  br i1 %.not.i.i.i.i379, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i378
  %i.rf = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rf, i64 noundef 2, i64 noundef 8) #29
  br label %bb.dz

bb.dx:                                            ; preds = %_ZN7QStringC2ERKS_.exit.i.i372
  %i.rg = landingpad { ptr, i32 }
          cleanup
  %i.rh = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i5.i.i373 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i5.i.i373, label %_ZN7QStringD2Ev.exit8.i.i376, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i374

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i374: ; preds = %bb.dx
  %i.ri = atomicrmw sub ptr %i.rh, i32 1 acq_rel, align 4
  %.not.i.i7.i.i375 = icmp eq i32 %i.ri, 1
  br i1 %.not.i.i7.i.i375, label %bb.dy, label %_ZN7QStringD2Ev.exit8.i.i376

bb.dy:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i374
  %i.rj = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rj, i64 noundef 2, i64 noundef 8) #29
  br label %_ZN7QStringD2Ev.exit8.i.i376

_ZN7QStringD2Ev.exit8.i.i376:                     ; preds = %bb.dy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i374, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body380

bb.dz:                                            ; preds = %bb.dw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i378, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.rk = load ptr, ptr %33, align 8, !noalias !20 ; 3 uses
  store ptr %i.rk, ptr %36, align 8, !alias.scope !20
  %i.rl = load ptr, ptr %i.py, align 8, !noalias !20 ; 4 uses
  store ptr %i.rl, ptr %i.px, align 8, !alias.scope !20
  %i.rm = load i64, ptr %i.qa, align 8, !noalias !20 ; 2 uses
  store i64 %i.rm, ptr %i.pz, align 8, !alias.scope !20
  %.not.i.i.i.i.i382 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i382, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit, label %bb.ea

end_hunk_0
begin_hunk_1_@_ZN12ThemeManager18setValidationStateEP7QWidgetRK7QString:bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.d, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %2, ptr noundef align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN7QObject11setPropertyEPKcRK8QVariant(ptr noundef nonnull align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.f = call noundef ptr @_ZNK7QWidget5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %0) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef align 8 dereferenceable_or_null(16) %i.f, ptr noundef nonnull %0)
  %i.j = call noundef ptr @_ZNK7QWidget5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %0) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef align 8 dereferenceable_or_null(16) %i.j, ptr noundef nonnull %0)
  call void @_ZN7QWidget6updateEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.n
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN7QObject11setPropertyEPKcRK8QVariant(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1ERK7QString(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK7QWidget5styleEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK12ThemeManager12previewThemeERK7QStringNS_13PreviewSchemeE(ptr dead_on_unwind noalias writable sret(%class.QHash.29) align 8 %0, ptr noundef align 8 dereferenceable_or_null(208) %1, ptr noundef align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.0 = alloca <{ i32, %"union.QColor::CT" }>, align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %class.QHash.29, align 8            ; 9 uses
  %5 = alloca %class.QString, align 8             ; 10 uses
  %6 = alloca %class.ThemeParser, align 8         ; 5 uses
  %7 = alloca %"struct.ThemeParser::Result", align 8 ; 9 uses
  %8 = alloca %class.QPalette, align 8            ; 8 uses
  %9 = alloca %class.QPalette, align 8            ; 8 uses
  %10 = alloca [7 x %struct.anon.31], align 16    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr null, ptr %4, align 8
  switch i32 %3, label %bb.c [
    i32 1, label %bb.f
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 @_ZNK19SystemThemeDetector13currentSchemeEv(ptr noundef align 8 dereferenceable_or_null(24) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.e, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ], [ false, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke fastcc void @_ZN12_GLOBAL__N_116resolveThemePathERK7QString(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %4, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ax

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.l = getelementptr i8, ptr %1, i64 152
  %i.m = getelementptr i8, ptr %1, i64 160        ; 2 uses
  invoke void @_ZN11ThemeParserC1ERK5QHashI7QString16ThemeSectionInfoERKS0_IS1_N12ThemeManager10ThemeTokenEE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, ptr noundef align 8 dereferenceable(8) %i.l, ptr noundef align 8 dereferenceable(8) %i.m)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %7, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.n, i8 0, i64 128, i1 false)
  %i.o = invoke noundef zeroext i1 @_ZN11ThemeParser5parseERK7QStringS2_RNS_6ResultE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, ptr noundef align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(184) %7)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.o, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %4, align 8
  store ptr null, ptr %0, align 8
  br label %bb.at

bb.n:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.o:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  br i1 %.0, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN19ThemePaletteBuilder18builtInDarkPaletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %8)
          to label %bb.s unwind label %bb.x

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN19ThemePaletteBuilder19builtInLightPaletteEv(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %8)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 168
  invoke void @_ZN19ThemePaletteBuilder5buildERK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairEbRKS0_I7QStringS2_ERKS0_IS7_N8QPalette9ColorRoleEERKSB_(ptr dead_on_unwind nonnull writable sret(%class.QPalette) align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i1 noundef zeroext %.0, ptr noundef align 8 dereferenceable(8) %i.m, ptr noundef align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN17ThemeTokenHandler9deriveAllER5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairEbRK8QPalette(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i1 noundef zeroext %.0, ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %0, align 8
  %i.t = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE4sizeEv.exit

_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE4sizeEv.exit: ; preds = %bb.u
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %.not.i40 = icmp eq i64 %i.v, 0
  br i1 %.not.i40, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i

_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i: ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE4sizeEv.exit
  %.not4.i = icmp sgt i64 %i.v, 0
  br i1 %.not4.i, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i, label %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread

_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i: ; preds = %bb.u, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE4sizeEv.exit, %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i
  %i.w = phi i64 [ 0, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE4sizeEv.exit ], [ %i.v, %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i ], [ 0, %bb.u ]
  %i.x = invoke noundef ptr @_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE8detachedEPS6_m(ptr noundef null, i64 noundef %i.w)
          to label %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit unwind label %bb.aa

_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit: ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i
  store ptr %i.x, ptr %0, align 8
  %.pre = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i42 = icmp eq ptr %.pre, null
  br i1 %.not.i42, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit, label %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread

_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread: ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit
  %i.y = phi ptr [ %.pre, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit ], [ %i.t, %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE8capacityEv.exit.i ] ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.v, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph

bb.v:                                             ; preds = %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread
  %i.ac = getelementptr i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.af = add i64 %i.ah, 1                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.ad
  br i1 %i.ag, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %i.ah = phi i64 [ %i.af, %bb.w ], [ 1, %bb.v ]  ; 4 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = getelementptr [144 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = and i64 %i.ah, 127
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %.not.i.i.i.i = icmp eq i8 %i.am, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %._ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !63

._ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit, !llvm.loop !63

_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit: ; preds = %bb.w, %bb.v, %._ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit.loopexit_crit_edge, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit
  %.sroa.0.0.i = phi ptr [ null, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit ], [ null, %bb.v ], [ %i.y, %._ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.w ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit ], [ 0, %bb.v ], [ %i.ah, %._ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.w ] ; 2 uses
  %11 = icmp ne ptr %.sroa.0.0.i, null
  %12 = icmp ne i64 %.sroa.4.0.i, 0
  %or.cond74 = or i1 %12, %11
  br i1 %or.cond74, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph, label %._crit_edge

_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph: ; preds = %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit
  %.sroa.4.0.i104 = phi i64 [ %.sroa.4.0.i, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit ], [ 0, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread ]
  %.sroa.0.0.i103 = phi ptr [ %.sroa.0.0.i, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit ], [ %i.y, %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7reserveEx.exit.thread ]
  %.v = select i1 %.0, i64 20, i64 4
  br label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread

._crit_edge:                                      ; preds = %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE10constBeginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %10, ptr noundef nonnull align 16 dereferenceable(56) @__const._ZNK12ThemeManager12previewThemeERK7QStringNS_13PreviewSchemeE.paletteTokens, i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 56
  %.sroa.0.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.6..6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  br label %bb.af

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.y:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aa:                                            ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE10isDetachedEv.exit.thread.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread: ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit
  %.sroa.062.076 = phi ptr [ %.sroa.0.0.i103, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph ], [ %.sroa.062.1, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.10.075 = phi i64 [ %.sroa.4.0.i104, %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread.lr.ph ], [ %.sroa.10.1, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit ] ; 3 uses
  %i.as = getelementptr i8, ptr %.sroa.062.076, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = lshr i64 %.sroa.10.075, 7
  %i.av = getelementptr [144 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = and i64 %.sroa.10.075, 127
  %i.ax = getelementptr i8, ptr %i.av, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr [36 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.be = load i32, ptr %i.bc, align 4
  store i32 %i.be, ptr %i.b, align 4
  %i.bf = invoke { ptr, i64 } @_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7emplaceIJRKS2_EEENS3_8iteratorEOS1_DpOT_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef align 4 dereferenceable(14) %i.bd)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bg = getelementptr i8, ptr %.sroa.062.076, i64 16
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = add i64 %.sroa.10.075, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.as, align 8
  br label %.lr.ph113

bb.ac:                                            ; preds = %.lr.ph113
  %i.bl = add i64 %i.bn, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.bh
  br i1 %i.bm, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit, label %.lr.ph113, !llvm.loop !63

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ac
  %i.bn = phi i64 [ %i.bl, %bb.ac ], [ %i.bi, %.lr.ph113.preheader ] ; 4 uses
  %i.bo = lshr i64 %i.bn, 7
  %i.bp = getelementptr [144 x i8], ptr %i.bk, i64 %i.bo
  %i.bq = and i64 %i.bn, 127
  %i.br = getelementptr i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %.not.i.i.i44 = icmp eq i8 %i.bs, -1
  br i1 %.not.i.i.i44, label %bb.ac, label %._ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit_crit_edge116, !llvm.loop !63

._ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit_crit_edge116: ; preds = %.lr.ph113
  br label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit, !llvm.loop !63

_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit: ; preds = %bb.ac, %._ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit_crit_edge116, %bb.ab
  %.sroa.10.1 = phi i64 [ %i.bn, %._ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit_crit_edge116 ], [ 0, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.062.1 = phi ptr [ %.sroa.062.076, %._ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorppEv.exit_crit_edge116 ], [ null, %bb.ab ], [ null, %bb.ac ] ; 2 uses
  %i.bt = icmp ne ptr %.sroa.062.1, null
  %i.bu = icmp ne i64 %.sroa.10.1, 0
  %or.cond = or i1 %i.bu, %i.bt
  br i1 %or.cond, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread, label %._crit_edge, !llvm.loop !64

bb.ad:                                            ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE14const_iteratorneERKS4_.exit.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN8QPaletteD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.at

bb.af:                                            ; preds = %._crit_edge, %bb.ao
  %.03177 = phi ptr [ %10, %._crit_edge ], [ %i.dz, %bb.ao ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bw = load ptr, ptr %0, align 8               ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i45, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load i32, ptr %.03177, align 4          ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -2960836687051489901     ; 2 uses
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, -2960836687051489901     ; 2 uses
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = xor i64 %i.by, %i.ch
  %i.cj = xor i64 %i.ci, %i.cg
  %i.ck = getelementptr i8, ptr %i.bw, i64 16
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = add i64 %i.cl, -1
  %i.cn = and i64 %i.cj, %i.cm                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.bw, i64 32
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cq = lshr i64 %i.cn, 7
  %i.cr = getelementptr [144 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cs = and i64 %i.cn, 127                      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = lshr i64 %i.cl, 7
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i, %.lr.ph.i.i.i
  %i.cy = phi i8 [ %i.cu, %.lr.ph.i.i.i ], [ %i.dn, %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i ]
  %.sroa.0.023.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i ] ; 3 uses
  %.sroa.8.022.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i ]
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 128
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr [20 x i8], ptr %i.db, i64 %i.cz ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp eq i32 %i.dd, %i.bz
  br i1 %i.de, label %_ZNK12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE8findNodeERKS3_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = add nuw nsw i64 %.sroa.8.022.i.i.i, 1   ; 2 uses
  %i.dg = icmp eq i64 %i.df, 128
  br i1 %i.dg, label %bb.aj, label %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i, !prof !51

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 144 ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cw
  %i.dk = sdiv exact i64 %i.dj, 144
  %i.dl = icmp eq i64 %i.dk, %i.cx
  %spec.select.i.i.i = select i1 %i.dl, ptr %i.cp, ptr %i.dh
  br label %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i

_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.8.1.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.df, %bb.ai ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.aj ], [ %.sroa.0.023.i.i.i, %bb.ai ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.sroa.0.1.i.i.i, i64 %.sroa.8.1.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1             ; 2 uses
  %i.do = icmp eq i8 %i.dn, -1
  br i1 %i.do, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i, label %bb.ah, !llvm.loop !65

_ZNK12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE8findNodeERKS3_.exit.i.i: ; preds = %bb.ah
  %.not8.not.i.i = icmp eq ptr %i.dc, null
  %i.dp = getelementptr i8, ptr %i.dc, i64 4      ; 2 uses
  %.not.i48 = icmp eq ptr %i.dp, null
  %or.cond.i = or i1 %.not8.not.i.i, %.not.i48
  br i1 %or.cond.i, label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNK12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE8findNodeERKS3_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(14) %i.dp, i64 14, i1 false)
  br label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE5valueERKS1_.exit

_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i: ; preds = %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE6Bucket14advanceWrappedEPKS6_.exit.i.i.i, %_ZNK12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE6QColorEEE8findNodeERKS3_.exit.i.i, %bb.ag, %bb.af
  store i32 0, ptr %.sroa.0, align 8
  store i16 -1, ptr %.sroa.0.4..4..4..4..sroa_idx, align 4
  store i64 0, ptr %.sroa.0.6..6..6..6..sroa_idx, align 2
  br label %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE5valueERKS1_.exit

_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE5valueERKS1_.exit: ; preds = %bb.ak, %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE9valueImplERKS1_.exit.thread.i
  %.sroa.0.0..sroa.0.0..sroa.0.0..0..0..0..fca.0.load.i = load i64, ptr %.sroa.0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.dq = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..0..0..0..fca.0.load.i, 4294967295
  %.not72 = icmp eq i64 %i.dq, 0
  br i1 %.not72, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE5valueERKS1_.exit
  %i.dr = getelementptr i8, ptr %.03177, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %9, i32 noundef 4, i32 noundef %i.ds)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.dw = load i32, ptr %.03177, align 4
  store i32 %i.dw, ptr %i.a, align 4
  %i.dx = invoke { ptr, i64 } @_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE7emplaceIJRKS2_EEENS3_8iteratorEOS1_DpOT_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef align 4 dereferenceable(14) %i.dv)
          to label %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE6insertERKS1_RKS2_.exit51 unwind label %bb.an ; 0 uses

_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE6insertERKS1_RKS2_.exit51: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN5QHashIN12ThemeManager10ThemeTokenE6QColorE6insertERKS1_RKS2_.exit51, %_ZNK5QHashIN12ThemeManager10ThemeTokenE6QColorE5valueERKS1_.exit
  %i.dz = getelementptr i8, ptr %.03177, i64 8    ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.an
  br i1 %.not, label %bb.ae, label %bb.af

bb.ap:                                            ; preds = %bb.an, %bb.ad, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.ad ], [ %i.dy, %bb.an ], [ %i.ar, %bb.aa ]
end_hunk_1
