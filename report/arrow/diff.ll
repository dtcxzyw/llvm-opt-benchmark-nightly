inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1379 = phi ptr [ %i.awe, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0806, ptr %i.ds, align 1, !tbaa !70
  %i.awg = load ptr, ptr %.0.i1379, align 8, !tbaa !446
  %i.awh = getelementptr i8, ptr %i.awg, i64 -24
  %i.awi = load i64, ptr %i.awh, align 8
  %i.awj = getelementptr inbounds i8, ptr %.0.i1379, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !659
  %.not.i1383 = icmp eq i64 %i.awl, 0
  br i1 %.not.i1383, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, i8 noundef signext %.0806)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1384 = phi ptr [ %i.awm, %bb.jp ], [ %.0.i1379, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awo = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awo, ptr %i.dr, align 1, !tbaa !70
  %i.awp = load ptr, ptr %.0.i1384, align 8, !tbaa !446
  %i.awq = getelementptr i8, ptr %i.awp, i64 -24
  %i.awr = load i64, ptr %i.awq, align 8
  %i.aws = getelementptr inbounds i8, ptr %.0.i1384, i64 %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !659
  %.not.i1388 = icmp eq i64 %i.awu, 0
  br i1 %.not.i1388, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.awv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, i8 noundef signext %i.awo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.kz, ptr %i.dq, align 1, !tbaa !70
  %i.awx = load ptr, ptr %0, align 8, !tbaa !446
  %i.awy = getelementptr i8, ptr %i.awx, i64 -24
  %i.awz = load i64, ptr %i.awy, align 8
  %i.axa = getelementptr inbounds i8, ptr %0, i64 %i.awz
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 16
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !659
  %.not.i1393 = icmp eq i64 %i.axc, 0
  br i1 %.not.i1393, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axf = icmp eq i8 %.0806, 69
  br i1 %i.axf, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !70
  %i.axg = load ptr, ptr %0, align 8, !tbaa !446
  %i.axh = getelementptr i8, ptr %i.axg, i64 -24
  %i.axi = load i64, ptr %i.axh, align 8
  %i.axj = getelementptr inbounds i8, ptr %0, i64 %i.axi
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 16
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !659
  %.not.i1398 = icmp eq i64 %i.axl, 0
  br i1 %.not.i1398, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1399 = phi ptr [ %i.axm, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !70
  %i.axo = load ptr, ptr %.0.i1399, align 8, !tbaa !446
  %i.axp = getelementptr i8, ptr %i.axo, i64 -24
  %i.axq = load i64, ptr %i.axp, align 8
  %i.axr = getelementptr inbounds i8, ptr %.0.i1399, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axt = load i64, ptr %i.axs, align 8, !tbaa !659
  %.not.i1403 = icmp eq i64 %i.axt, 0
  br i1 %.not.i1403, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1404 = phi ptr [ %i.axu, %bb.kd ], [ %.0.i1399, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axw = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axw, ptr %i.dn, align 1, !tbaa !70
  %i.axx = load ptr, ptr %.0.i1404, align 8, !tbaa !446
  %i.axy = getelementptr i8, ptr %i.axx, i64 -24
  %i.axz = load i64, ptr %i.axy, align 8
  %i.aya = getelementptr inbounds i8, ptr %.0.i1404, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 16
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !659
  %.not.i1408 = icmp eq i64 %i.ayc, 0
  br i1 %.not.i1408, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ayd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, i8 noundef signext %i.axw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ki:                                            ; preds = %bb.jy
  %i.ayf = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.ayg = trunc nuw i8 %i.ayf to i1
  br i1 %i.ayg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayh = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 -24
  %i.ayj = load i64, ptr %i.ayi, align 8
  %i.ayk = getelementptr inbounds i8, ptr %0, i64 %i.ayj ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !677
  %i.ayn = or i32 %i.aym, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayk, i32 noundef %i.ayn)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414: ; preds = %bb.kj, %bb.ki
  %i.ayo = trunc i8 %.0794 to i1
  br i1 %i.ayo, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !70
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 -24
  %i.ayr = load i64, ptr %i.ayq, align 8
  %i.ays = getelementptr inbounds i8, ptr %0, i64 %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !659
  %.not.i1415 = icmp eq i64 %i.ayu, 0
  br i1 %.not.i1415, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  %.1795 = phi i8 [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 ] ; 3 uses
  %.sroa.02703.0.copyload = load i64, ptr %i.io, align 8, !tbaa !408
  %.sroa.02703.0.copyload.fr = freeze i64 %.sroa.02703.0.copyload ; 7 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayx = load i8, ptr %.0731, align 1, !tbaa !70
  %i.ayy = icmp eq i8 %i.ayx, 73
  br i1 %i.ayy, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.ayz = icmp slt i64 %.sroa.02703.0.copyload.fr, 12
  br i1 %i.ayz, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.aza = icmp eq i64 %.sroa.02703.0.copyload.fr, 0
  br i1 %i.aza, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02703.0.copyload.fr, 12
  %i.azc = add nsw i64 %.sroa.02703.0.copyload.fr, -12
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02703.0.copyload.fr, %bb.kq ], [ %i.azc, %bb.kr ], [ %.sroa.02703.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.azd = icmp slt i64 %storemerge, 10
  br i1 %i.azd, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.aze = load ptr, ptr %0, align 8, !tbaa !446
  %i.azf = getelementptr i8, ptr %i.aze, i64 -24
  %i.azg = load i64, ptr %i.azf, align 8
  %i.azh = getelementptr inbounds i8, ptr %0, i64 %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 16
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !659
  %.not.i1423 = icmp eq i64 %i.azj, 0
  br i1 %.not.i1423, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kf, align 1, !tbaa !70
  %i.azo = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azo, ptr %i.kg, align 1, !tbaa !70
  %i.azp = trunc i64 %.sroa.02703.0.copyload.fr to i32
  store i32 %i.azp, ptr %i.is, align 8, !tbaa !735
  %i.azq = load ptr, ptr %0, align 8, !tbaa !446
  %i.azr = getelementptr i8, ptr %i.azq, i64 -24
  %i.azs = load i64, ptr %i.azr, align 8
  %i.azt = getelementptr inbounds i8, ptr %0, i64 %i.azs ; 6 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 232
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !727 ; 2 uses
  %.not.i1430 = icmp eq ptr %i.azv, null
  %i.azw = zext i1 %.not.i1430 to i8
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azt, i64 225 ; 2 uses
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !688, !range !86, !noundef !87
  %i.azz = trunc nuw i8 %i.azy to i1
  br i1 %i.azz, label %._crit_edge.i1436, label %bb.kx

._crit_edge.i1436:                                ; preds = %bb.kw
  %.phi.trans.insert.i1437 = getelementptr inbounds nuw i8, ptr %i.azt, i64 224
  %.pre.i1438 = load i8, ptr %.phi.trans.insert.i1437, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

bb.kx:                                            ; preds = %bb.kw
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azt, i64 240
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1431 = icmp eq ptr %i.bab, null
  br i1 %.not.i.i.i1431, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1439 unwind label %.loopexit.split-lp2983

.noexc1439:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432: ; preds = %bb.kx
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 56
  %i.bad = load i8, ptr %i.bac, align 8, !tbaa !695
  %.not.i1.i.i1433 = icmp eq i8 %i.bad, 0
  br i1 %.not.i1.i.i1433, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bab, i64 89
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bab)
          to label %.noexc1440 unwind label %.loopexit2982

.noexc1440:                                       ; preds = %bb.la
  %i.bag = load ptr, ptr %i.bab, align 8, !tbaa !446
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 48
  %i.bai = load ptr, ptr %i.bah, align 8
  %i.baj = invoke noundef signext i8 %i.bai(ptr noundef nonnull align 8 dereferenceable(570) %i.bab, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434: ; preds = %.noexc1440, %bb.kz
  %.0.i.i.i1435 = phi i8 [ %i.baf, %bb.kz ], [ %i.baj, %.noexc1440 ] ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azt, i64 224
  store i8 %.0.i.i.i1435, ptr %i.bak, align 8, !tbaa !700
  store i8 1, ptr %i.azx, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434, %._crit_edge.i1436
  %i.bal = phi i8 [ %.pre.i1438, %._crit_edge.i1436 ], [ %.0.i.i.i1435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 ]
  %i.bam = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.azv, i8 %i.azw, ptr noundef nonnull align 8 dereferenceable(216) %i.azt, i8 noundef signext %i.bal, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.kh)
          to label %bb.lb unwind label %.loopexit2982 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442, %bb.la, %.noexc1440
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2983:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.kz, ptr %i.dk, align 1, !tbaa !70
  %i.ban = load ptr, ptr %0, align 8, !tbaa !446
  %i.bao = getelementptr i8, ptr %i.ban, i64 -24
  %i.bap = load i64, ptr %i.bao, align 8
  %i.baq = getelementptr inbounds i8, ptr %0, i64 %i.bap
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 16
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !659
  %.not.i1443 = icmp eq i64 %i.bas, 0
  br i1 %.not.i1443, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bat = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.lg:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bav = icmp eq i8 %.0806, 0
  br i1 %i.bav, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.baw = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1448 = icmp eq i16 %i.baw, -32768
  br i1 %.not.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bax = load i8, ptr %i.iv, align 2, !tbaa !731 ; 8 uses
  %i.bay = add i8 %i.bax, -1
  %spec.select.i.i1449 = icmp ult i8 %i.bay, 12
  br i1 %spec.select.i.i1449, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538

bb.lk:                                            ; preds = %bb.lj
  %i.baz = load i8, ptr %i.iw, align 1, !tbaa !732 ; 2 uses
  %.not8.i1451 = icmp eq i8 %i.baz, 0
  br i1 %.not8.i1451, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1452 = icmp eq i8 %i.bax, 2
  %i.bba = and i16 %i.baw, 3
  %i.bbb = icmp eq i16 %i.bba, 0
  %or.cond.i1453 = and i1 %i.bbb, %.not.i.i1452
  br i1 %or.cond.i1453, label %bb.lm, label %.thread.i.i1454

bb.lm:                                            ; preds = %bb.ll
  %i.bbc = srem i16 %i.baw, 100
  %.not.i.i.i1457 = icmp ne i16 %i.bbc, 0
  %i.bbd = srem i16 %i.baw, 400
  %i.bbe = icmp eq i16 %i.bbd, 0
  %or.cond.i.i1458 = or i1 %.not.i.i.i1457, %i.bbe
  br i1 %or.cond.i.i1458, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455, label %.thread.i.i1454

.thread.i.i1454:                                  ; preds = %bb.lm, %bb.ll
  %i.bbf = zext nneg i8 %i.bax to i64
  %i.bbg = add nuw nsw i64 %i.bbf, 4294967295
  %i.bbh = and i64 %i.bbg, 4294967295
  %i.bbi = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbh
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455: ; preds = %.thread.i.i1454, %bb.lm
  %.sroa.03.0.i.i1456 = phi i8 [ %i.bbj, %.thread.i.i1454 ], [ 29, %bb.lm ]
  %i.bbk = icmp uge i8 %.sroa.03.0.i.i1456, %i.baz
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455
  %.0.i1450 = phi i1 [ %i.bbk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455 ], [ false, %bb.lk ]
  %i.bbl = load i8, ptr %i.gw, align 8, !range !86
  %i.bbm = trunc nuw i8 %i.bbl to i1
  %or.cond959 = select i1 %.0.i1450, i1 true, i1 %i.bbm
  br i1 %or.cond959, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538: ; preds = %bb.lj
  %i.bbn = load i8, ptr %i.gw, align 8, !range !86
  %i.bbo = trunc nuw i8 %i.bbn to i1
  br i1 %i.bbo, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread: ; preds = %bb.li
  %i.bbp = load i8, ptr %i.gw, align 8, !range !86
  %i.bbq = trunc nuw i8 %i.bbp to i1
  br i1 %i.bbq, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459
  %i.bbr = load i8, ptr %i.iw, align 1, !tbaa !732 ; 3 uses
  %.not8.i1463 = icmp eq i8 %i.bbr, 0
  br i1 %.not8.i1463, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1464 = icmp eq i8 %i.bax, 2
  %i.bbs = and i16 %i.baw, 3
  %i.bbt = icmp eq i16 %i.bbs, 0
  %or.cond.i1465 = and i1 %i.bbt, %.not.i.i1464
  br i1 %or.cond.i1465, label %bb.lp, label %.thread.i.i1466

bb.lp:                                            ; preds = %bb.lo
  %i.bbu = srem i16 %i.baw, 100
  %.not.i.i.i1469 = icmp ne i16 %i.bbu, 0
  %i.bbv = srem i16 %i.baw, 400
  %i.bbw = icmp eq i16 %i.bbv, 0
  %or.cond.i.i1470 = or i1 %.not.i.i.i1469, %i.bbw
  br i1 %or.cond.i.i1470, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471, label %.thread.i.i1466

.thread.i.i1466:                                  ; preds = %bb.lp, %bb.lo
  %i.bbx = zext nneg i8 %i.bax to i64
  %i.bby = add nuw nsw i64 %i.bbx, 4294967295
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1379 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0806, ptr %i.ds, align 1, !tbaa !70
  %i.awh = load ptr, ptr %.0.i1379, align 8, !tbaa !446
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1379, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !659
  %.not.i1383 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1383, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, i8 noundef signext %.0806)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1384 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1379, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !70
  %i.awq = load ptr, ptr %.0.i1384, align 8, !tbaa !446
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1384, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !659
  %.not.i1388 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1388, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !70
  %i.awy = load ptr, ptr %0, align 8, !tbaa !446
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !659
  %.not.i1393 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1393, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0806, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !70
  %i.axh = load ptr, ptr %0, align 8, !tbaa !446
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !659
  %.not.i1398 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1398, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1399 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !70
  %i.axp = load ptr, ptr %.0.i1399, align 8, !tbaa !446
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1399, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !659
  %.not.i1403 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1403, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1404 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1399, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !70
  %i.axy = load ptr, ptr %.0.i1404, align 8, !tbaa !446
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1404, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !659
  %.not.i1408 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1408, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !677
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0794 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !70
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !659
  %.not.i1415 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1415, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  %.1795 = phi i8 [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 ] ; 3 uses
  %.sroa.02703.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !408
  %.sroa.02703.0.copyload.fr = freeze i64 %.sroa.02703.0.copyload ; 7 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !70
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02703.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02703.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02703.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02703.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02703.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02703.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.azf = load ptr, ptr %0, align 8, !tbaa !446
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !659
  %.not.i1423 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1423, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !70
  %i.azq = trunc i64 %.sroa.02703.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !735
  %i.azr = load ptr, ptr %0, align 8, !tbaa !446
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !727 ; 2 uses
  %.not.i1430 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1430 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !688, !range !86, !noundef !87
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1436, label %bb.kx

._crit_edge.i1436:                                ; preds = %bb.kw
  %.phi.trans.insert.i1437 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1438 = load i8, ptr %.phi.trans.insert.i1437, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1431 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1431, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1439 unwind label %.loopexit.split-lp2983

.noexc1439:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !695
  %.not.i1.i.i1433 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1433, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1440 unwind label %.loopexit2982

.noexc1440:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !446
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434: ; preds = %.noexc1440, %bb.kz
  %.0.i.i.i1435 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1440 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1435, ptr %i.bal, align 8, !tbaa !700
  store i8 1, ptr %i.azy, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434, %._crit_edge.i1436
  %i.bam = phi i8 [ %.pre.i1438, %._crit_edge.i1436 ], [ %.0.i.i.i1435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2982 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442, %bb.la, %.noexc1440
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2983:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bao = load ptr, ptr %0, align 8, !tbaa !446
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !659
  %.not.i1443 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1443, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.lg:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0806, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1448 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1449 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1449, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1451 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1451, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1452 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1453 = and i1 %i.bbc, %.not.i.i1452
  br i1 %or.cond.i1453, label %bb.lm, label %.thread.i.i1454

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1457 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1458 = or i1 %.not.i.i.i1457, %i.bbf
  br i1 %or.cond.i.i1458, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455, label %.thread.i.i1454

.thread.i.i1454:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455: ; preds = %.thread.i.i1454, %bb.lm
  %.sroa.03.0.i.i1456 = phi i8 [ %i.bbk, %.thread.i.i1454 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1456, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455
  %.0.i1450 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !86
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond959 = select i1 %.0.i1450, i1 true, i1 %i.bbn
  br i1 %or.cond959, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !86
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !86
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1463 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1463, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1464 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1465 = and i1 %i.bbu, %.not.i.i1464
  br i1 %or.cond.i1465, label %bb.lp, label %.thread.i.i1466

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1469 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1470 = or i1 %.not.i.i.i1469, %i.bbx
  br i1 %or.cond.i.i1470, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471, label %.thread.i.i1466

.thread.i.i1466:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1379 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0806, ptr %i.ds, align 1, !tbaa !70
  %i.awh = load ptr, ptr %.0.i1379, align 8, !tbaa !446
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1379, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !659
  %.not.i1383 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1383, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, i8 noundef signext %.0806)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1384 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1379, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !70
  %i.awq = load ptr, ptr %.0.i1384, align 8, !tbaa !446
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1384, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !659
  %.not.i1388 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1388, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !70
  %i.awy = load ptr, ptr %0, align 8, !tbaa !446
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !659
  %.not.i1393 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1393, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0806, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !70
  %i.axh = load ptr, ptr %0, align 8, !tbaa !446
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !659
  %.not.i1398 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1398, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1399 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !70
  %i.axp = load ptr, ptr %.0.i1399, align 8, !tbaa !446
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1399, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !659
  %.not.i1403 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1403, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1404 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1399, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !70
  %i.axy = load ptr, ptr %.0.i1404, align 8, !tbaa !446
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1404, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !659
  %.not.i1408 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1408, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !677
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0794 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !70
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !659
  %.not.i1415 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1415, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  %.1795 = phi i8 [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 ] ; 3 uses
  %.sroa.02703.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !408
  %.sroa.02703.0.copyload.fr = freeze i64 %.sroa.02703.0.copyload ; 7 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !70
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02703.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02703.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02703.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02703.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02703.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02703.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.azf = load ptr, ptr %0, align 8, !tbaa !446
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !659
  %.not.i1423 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1423, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !70
  %i.azq = trunc i64 %.sroa.02703.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !735
  %i.azr = load ptr, ptr %0, align 8, !tbaa !446
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !727 ; 2 uses
  %.not.i1430 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1430 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !688, !range !86, !noundef !87
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1436, label %bb.kx

._crit_edge.i1436:                                ; preds = %bb.kw
  %.phi.trans.insert.i1437 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1438 = load i8, ptr %.phi.trans.insert.i1437, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1431 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1431, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1439 unwind label %.loopexit.split-lp2983

.noexc1439:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !695
  %.not.i1.i.i1433 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1433, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1440 unwind label %.loopexit2982

.noexc1440:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !446
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434: ; preds = %.noexc1440, %bb.kz
  %.0.i.i.i1435 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1440 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1435, ptr %i.bal, align 8, !tbaa !700
  store i8 1, ptr %i.azy, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434, %._crit_edge.i1436
  %i.bam = phi i8 [ %.pre.i1438, %._crit_edge.i1436 ], [ %.0.i.i.i1435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2982 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442, %bb.la, %.noexc1440
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2983:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bao = load ptr, ptr %0, align 8, !tbaa !446
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !659
  %.not.i1443 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1443, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.lg:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0806, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1448 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1449 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1449, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1451 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1451, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1452 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1453 = and i1 %i.bbc, %.not.i.i1452
  br i1 %or.cond.i1453, label %bb.lm, label %.thread.i.i1454

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1457 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1458 = or i1 %.not.i.i.i1457, %i.bbf
  br i1 %or.cond.i.i1458, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455, label %.thread.i.i1454

.thread.i.i1454:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455: ; preds = %.thread.i.i1454, %bb.lm
  %.sroa.03.0.i.i1456 = phi i8 [ %i.bbk, %.thread.i.i1454 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1456, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455
  %.0.i1450 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !86
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond959 = select i1 %.0.i1450, i1 true, i1 %i.bbn
  br i1 %or.cond959, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !86
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !86
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1463 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1463, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1464 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1465 = and i1 %i.bbu, %.not.i.i1464
  br i1 %or.cond.i1465, label %bb.lp, label %.thread.i.i1466

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1469 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1470 = or i1 %.not.i.i.i1469, %i.bbx
  br i1 %or.cond.i.i1470, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471, label %.thread.i.i1466

.thread.i.i1466:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1379 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0806, ptr %i.ds, align 1, !tbaa !70
  %i.awh = load ptr, ptr %.0.i1379, align 8, !tbaa !446
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1379, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !659
  %.not.i1383 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1383, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1379, i8 noundef signext %.0806)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1384 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1379, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !70
  %i.awq = load ptr, ptr %.0.i1384, align 8, !tbaa !446
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1384, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !659
  %.not.i1388 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1388, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1384, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !70
  %i.awy = load ptr, ptr %0, align 8, !tbaa !446
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !659
  %.not.i1393 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1393, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0806, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !70
  %i.axh = load ptr, ptr %0, align 8, !tbaa !446
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !659
  %.not.i1398 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1398, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1399 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !70
  %i.axp = load ptr, ptr %.0.i1399, align 8, !tbaa !446
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1399, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !659
  %.not.i1403 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1403, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1399, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1404 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1399, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !70
  %i.axy = load ptr, ptr %.0.i1404, align 8, !tbaa !446
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1404, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !659
  %.not.i1408 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1408, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1404, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !677
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0794 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !70
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !659
  %.not.i1415 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1415, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  %.1795 = phi i8 [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1419 ] ; 3 uses
  %.sroa.02703.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !408
  %.sroa.02703.0.copyload.fr = freeze i64 %.sroa.02703.0.copyload ; 7 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !70
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02703.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02703.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02703.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02703.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02703.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02703.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.azf = load ptr, ptr %0, align 8, !tbaa !446
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !659
  %.not.i1423 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1423, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1427 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !70
  %i.azq = trunc i64 %.sroa.02703.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !735
  %i.azr = load ptr, ptr %0, align 8, !tbaa !446
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !727 ; 2 uses
  %.not.i1430 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1430 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !688, !range !86, !noundef !87
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1436, label %bb.kx

._crit_edge.i1436:                                ; preds = %bb.kw
  %.phi.trans.insert.i1437 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1438 = load i8, ptr %.phi.trans.insert.i1437, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1431 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1431, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1439 unwind label %.loopexit.split-lp2983

.noexc1439:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !695
  %.not.i1.i.i1433 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1433, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1440 unwind label %.loopexit2982

.noexc1440:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !446
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434: ; preds = %.noexc1440, %bb.kz
  %.0.i.i.i1435 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1440 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1435, ptr %i.bal, align 8, !tbaa !700
  store i8 1, ptr %i.azy, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434, %._crit_edge.i1436
  %i.bam = phi i8 [ %.pre.i1438, %._crit_edge.i1436 ], [ %.0.i.i.i1435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2982 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442, %bb.la, %.noexc1440
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2983:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bao = load ptr, ptr %0, align 8, !tbaa !446
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !659
  %.not.i1443 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1443, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.lg:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0806, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1448 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1449 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1449, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1451 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1451, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1452 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1453 = and i1 %i.bbc, %.not.i.i1452
  br i1 %or.cond.i1453, label %bb.lm, label %.thread.i.i1454

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1457 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1458 = or i1 %.not.i.i.i1457, %i.bbf
  br i1 %or.cond.i.i1458, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455, label %.thread.i.i1454

.thread.i.i1454:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455: ; preds = %.thread.i.i1454, %bb.lm
  %.sroa.03.0.i.i1456 = phi i8 [ %i.bbk, %.thread.i.i1454 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1456, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455
  %.0.i1450 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !86
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond959 = select i1 %.0.i1450, i1 true, i1 %i.bbn
  br i1 %or.cond959, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !86
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !86
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1463 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1463, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1464 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1465 = and i1 %i.bbu, %.not.i.i1464
  br i1 %or.cond.i1465, label %bb.lp, label %.thread.i.i1466

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1469 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1470 = or i1 %.not.i.i.i1469, %i.bbx
  br i1 %or.cond.i.i1470, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471, label %.thread.i.i1466

.thread.i.i1466:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_3
begin_hunk_4_@_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev:bb.a

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIsEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.an, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.ao, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.aj, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]  ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !1248
  %i.j = getelementptr inbounds [2 x i8], ptr %.val, i64 %.030
  %i.k = load i16, ptr %i.j, align 2, !tbaa !634
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1249, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val42 = load ptr, ptr %i.g, align 8, !tbaa !1250
  %i.q = getelementptr inbounds [2 x i8], ptr %.val42, i64 %.028
  %i.r = load i16, ptr %i.q, align 2, !tbaa !634
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1003, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val43, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val43, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sext i16 %i.r to i64
  %i.ac = sub nsw i64 %i.ab, %i.w
  %i.ad = sext i16 %i.k to i64
  %i.ae = sub nsw i64 %i.ad, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ae)
  %i.af = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ac)
  %i.ag = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = icmp sle i64 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nsw i64 %.030, %i.ai
  %i.ak = icmp sle i64 %i.ag, %i.af
  %i.al = zext i1 %i.ak to i64
  %i.am = add nsw i64 %.028, %i.al
  %i.an = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.ao = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.ap = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.an, %2
  %.not40 = icmp slt i64 %i.ao, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  %cond.fr = freeze i1 %or.cond41
  br i1 %cond.fr, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ap, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !996    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1243 ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !1251
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i2), !inline_history !1252
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !1245

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1253
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, %bb.b
  ret void
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIiEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.an, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.ao, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.aj, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]  ; 2 uses
  %.val42 = load ptr, ptr %i.e, align 8, !tbaa !1254
  %i.j = getelementptr inbounds [4 x i8], ptr %.val42, i64 %.030
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1255, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.g, align 8, !tbaa !1256
  %i.q = getelementptr inbounds [4 x i8], ptr %.val43, i64 %.028
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1010, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sext i32 %i.r to i64
  %i.ac = sub nsw i64 %i.ab, %i.w
  %i.ad = sext i32 %i.k to i64
  %i.ae = sub nsw i64 %i.ad, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ae)
  %i.af = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ac)
  %i.ag = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = icmp sle i64 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nsw i64 %.030, %i.ai
  %i.ak = icmp sle i64 %i.ag, %i.af
  %i.al = zext i1 %i.ak to i64
  %i.am = add nsw i64 %.028, %i.al
  %i.an = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.ao = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.ap = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.an, %2
  %.not40 = icmp slt i64 %i.ao, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  %cond.fr = freeze i1 %or.cond41
  br i1 %cond.fr, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ap, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIlEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.al, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.am, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.ah, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.ak, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.an, %bb.d ]  ; 2 uses
  %.val42 = load ptr, ptr %i.e, align 8, !tbaa !1257
  %i.j = getelementptr inbounds [8 x i8], ptr %.val42, i64 %.030
  %i.k = load i64, ptr %i.j, align 8, !tbaa !408
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1258, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.g, align 8, !tbaa !1259
  %i.q = getelementptr inbounds [8 x i8], ptr %.val43, i64 %.028
  %i.r = load i64, ptr %i.q, align 8, !tbaa !408
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1016, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i64 %i.r, %i.w
  %i.ac = sub nsw i64 %i.k, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ac)
  %i.ad = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ab)
  %i.ae = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ad) ; 3 uses
  %i.af = icmp sle i64 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i64
  %i.ah = add nsw i64 %.030, %i.ag
  %i.ai = icmp sle i64 %i.ae, %i.ad
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nsw i64 %.028, %i.aj
  %i.al = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.am = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.an = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.al, %2
  %.not40 = icmp slt i64 %i.am, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  %cond.fr = freeze i1 %or.cond41
  br i1 %cond.fr, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeIPKbEEvSt13_Bit_iteratorT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %4 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !544  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !542    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = shl nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !542  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !543  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.p = sub i64 %i.o, %i.h
  %i.q = shl nsw i64 %i.p, 3
  %i.r = zext i32 %i.n to i64                     ; 4 uses
  %i.s = add nsw i64 %i.q, %i.r                   ; 5 uses
  %i.t = sub i64 %i.j, %i.s
  %.not76 = icmp ult i64 %i.t, %i.c
  br i1 %.not76, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add nsw i64 %i.c, %i.r                   ; 3 uses
  %i.v = sdiv i64 %i.u, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v
  %i.x = and i64 %i.u, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i ; 3 uses
  %i.z = trunc i64 %i.u to i32
  %i.aa = and i32 %i.z, 63                        ; 3 uses
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = sub i64 %i.o, %i.ab
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = zext i32 %2 to i64
  %i.af = sub nsw i64 %i.r, %i.ae
  %i.ag = add i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %bb.c, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ag, %bb.c ] ; 2 uses
  %.sroa.515.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %bb.c ]
  %.sroa.59.021.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.07.020.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %bb.c ]
  %i.ai = add i32 %.sroa.515.023.i.i.i.i.i, -1
  %i.aj = icmp eq i32 %.sroa.515.023.i.i.i.i.i, 0 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.aj, i64 -8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i = select i1 %i.aj, i32 63, i32 %i.ai ; 2 uses
  %i.ak = zext nneg i32 %spec.select19.i.i.i.i.i to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = add i32 %.sroa.59.021.i.i.i.i.i, -1
  %i.an = icmp eq i32 %.sroa.59.021.i.i.i.i.i, 0  ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.an, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.020.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.an, i32 63, i32 %i.am ; 2 uses
  %i.ao = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ap = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.aq = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !408
  %i.ar = and i64 %i.aq, %i.al
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.at = or i64 %i.as, %i.ap
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.au = xor i64 %i.ap, -1
  %i.av = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.aw = and i64 %i.av, %i.au
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.at, %bb.d ], [ %i.aw, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.ax = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ay, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1260

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.az = icmp sgt i64 %i.c, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %.sink.split

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi i64 [ %i.bm, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i ], [ %i.c, %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit ] ; 2 uses
  %.0515.i.i.i.i.i = phi ptr [ %i.bj, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i ], [ %3, %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit ] ; 2 uses
  %.sroa.59.014.i.i.i.i.i = phi i32 [ %spec.select12.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i ], [ %2, %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit ] ; 3 uses
  %.sroa.07.013.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i86, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i ], [ %1, %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit ] ; 4 uses
  %i.ba = load i8, ptr %.0515.i.i.i.i.i, align 1, !tbaa !560, !range !86, !noundef !87
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = zext nneg i32 %.sroa.59.014.i.i.i.i.i to i64
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = load i64, ptr %.sroa.07.013.i.i.i.i.i, align 8, !tbaa !408
  %i.bf = or i64 %i.be, %i.bd
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = xor i64 %i.bd, -1
  %i.bh = load i64, ptr %.sroa.07.013.i.i.i.i.i, align 8, !tbaa !408
  %i.bi = and i64 %i.bh, %i.bg
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i:         ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.i84 = phi i64 [ %i.bi, %bb.g ], [ %i.bf, %bb.f ]
  store i64 %storemerge.i.i.i.i.i84, ptr %.sroa.07.013.i.i.i.i.i, align 8, !tbaa !408
  %i.bj = getelementptr inbounds nuw i8, ptr %.0515.i.i.i.i.i, i64 1
  %i.bk = add i32 %.sroa.59.014.i.i.i.i.i, 1
  %i.bl = icmp eq i32 %.sroa.59.014.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i85 = select i1 %i.bl, i64 8, i64 0
  %spec.select.i.i.i.i.i86 = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i85
  %spec.select12.i.i.i.i.i = select i1 %i.bl, i32 0, i32 %i.bk
  %i.bm = add nsw i64 %.016.i.i.i.i.i, -1
  %i.bn = icmp sgt i64 %.016.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i, label %.sink.split, !llvm.loop !1261

bb.h:                                             ; preds = %bb.b
  %i.bo = sub i64 9223372036854775744, %i.s
  %i.bp = icmp ult i64 %i.bo, %i.c
  br i1 %i.bp, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #30
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.c)
  %i.bq = add i64 %.sroa.speculated.i, %i.s       ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.s
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 9223372036854775744)
  %i.bt = add nuw nsw i64 %i.bs, 63
  %i.bu = select i1 %i.br, i64 9223372036854775807, i64 %i.bt ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1152921504606846968
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #27 ; 5 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.h                     ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 8
  br i1 %i.ca, label %bb.j, label %bb.k, !prof !61

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.f, i64 %i.bz, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.cb = icmp eq i64 %i.bz, 8
  br i1 %i.cb, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !408
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !408
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.ce = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.cu, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.512.019.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.018.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.017.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.016.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.cf = zext nneg i32 %.sroa.512.019.i.i.i.i.i.i to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = load i64, ptr %.sroa.09.018.i.i.i.i.i.i, align 8, !tbaa !408
  %i.ci = and i64 %i.ch, %i.cg
  %.not.i.i.i.i.i.i94 = icmp eq i64 %i.ci, 0
  %i.cj = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i to i64
  %i.ck = shl nuw i64 1, %i.cj                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i94, label %bb.n, label %bb.m

end_hunk_4
