inline.NumInlined: 15753
inline.NumDeleted: 2714
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1379 = phi ptr [ %i.awe, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0806, ptr %i.ds, align 1, !tbaa !55
  %i.awg = load ptr, ptr %.0.i1379, align 8, !tbaa !44
  %i.awh = getelementptr i8, ptr %i.awg, i64 -24
  %i.awi = load i64, ptr %i.awh, align 8
  %i.awj = getelementptr inbounds i8, ptr %.0.i1379, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !3486
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
  %i.awo = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awo, ptr %i.dr, align 1, !tbaa !55
  %i.awp = load ptr, ptr %.0.i1384, align 8, !tbaa !44
  %i.awq = getelementptr i8, ptr %i.awp, i64 -24
  %i.awr = load i64, ptr %i.awq, align 8
  %i.aws = getelementptr inbounds i8, ptr %.0.i1384, i64 %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !3486
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
  store i8 %i.kz, ptr %i.dq, align 1, !tbaa !55
  %i.awx = load ptr, ptr %0, align 8, !tbaa !44
  %i.awy = getelementptr i8, ptr %i.awx, i64 -24
  %i.awz = load i64, ptr %i.awy, align 8
  %i.axa = getelementptr inbounds i8, ptr %0, i64 %i.awz
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 16
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !3486
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
  store i8 37, ptr %i.dp, align 1, !tbaa !55
  %i.axg = load ptr, ptr %0, align 8, !tbaa !44
  %i.axh = getelementptr i8, ptr %i.axg, i64 -24
  %i.axi = load i64, ptr %i.axh, align 8
  %i.axj = getelementptr inbounds i8, ptr %0, i64 %i.axi
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 16
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !3486
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
  store i8 69, ptr %i.do, align 1, !tbaa !55
  %i.axo = load ptr, ptr %.0.i1399, align 8, !tbaa !44
  %i.axp = getelementptr i8, ptr %i.axo, i64 -24
  %i.axq = load i64, ptr %i.axp, align 8
  %i.axr = getelementptr inbounds i8, ptr %.0.i1399, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axt = load i64, ptr %i.axs, align 8, !tbaa !3486
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
  %i.axw = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axw, ptr %i.dn, align 1, !tbaa !55
  %i.axx = load ptr, ptr %.0.i1404, align 8, !tbaa !44
  %i.axy = getelementptr i8, ptr %i.axx, i64 -24
  %i.axz = load i64, ptr %i.axy, align 8
  %i.aya = getelementptr inbounds i8, ptr %.0.i1404, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 16
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !3486
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
  %i.ayf = load i8, ptr %i.gw, align 8, !tbaa !3487, !range !97, !noundef !98
  %i.ayg = trunc nuw i8 %i.ayf to i1
  br i1 %i.ayg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayh = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 -24
  %i.ayj = load i64, ptr %i.ayi, align 8
  %i.ayk = getelementptr inbounds i8, ptr %0, i64 %i.ayj ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !3172
  %i.ayn = or i32 %i.aym, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayk, i32 noundef %i.ayn)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414: ; preds = %bb.kj, %bb.ki
  %i.ayo = trunc i8 %.0794 to i1
  br i1 %i.ayo, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !55
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 -24
  %i.ayr = load i64, ptr %i.ayq, align 8
  %i.ays = getelementptr inbounds i8, ptr %0, i64 %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !3486
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
  %.sroa.02703.0.copyload = load i64, ptr %i.io, align 8, !tbaa !637
  %.sroa.02703.0.copyload.fr = freeze i64 %.sroa.02703.0.copyload ; 7 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayx = load i8, ptr %.0731, align 1, !tbaa !55
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
  store i8 48, ptr %i.dl, align 1, !tbaa !55
  %i.aze = load ptr, ptr %0, align 8, !tbaa !44
  %i.azf = getelementptr i8, ptr %i.aze, i64 -24
  %i.azg = load i64, ptr %i.azf, align 8
  %i.azh = getelementptr inbounds i8, ptr %0, i64 %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 16
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !3486
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #28
  store i8 37, ptr %i.fg, align 1, !tbaa !55
  store i8 79, ptr %i.kf, align 1, !tbaa !55
  %i.azo = load i8, ptr %.0731, align 1, !tbaa !55
  store i8 %i.azo, ptr %i.kg, align 1, !tbaa !55
  %i.azp = trunc i64 %.sroa.02703.0.copyload.fr to i32
  store i32 %i.azp, ptr %i.is, align 8, !tbaa !3517
  %i.azq = load ptr, ptr %0, align 8, !tbaa !44
  %i.azr = getelementptr i8, ptr %i.azq, i64 -24
  %i.azs = load i64, ptr %i.azr, align 8
  %i.azt = getelementptr inbounds i8, ptr %0, i64 %i.azs ; 6 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 232
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !3509 ; 2 uses
  %.not.i1430 = icmp eq ptr %i.azv, null
  %i.azw = zext i1 %.not.i1430 to i8
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azt, i64 225 ; 2 uses
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.azz = trunc nuw i8 %i.azy to i1
  br i1 %i.azz, label %._crit_edge.i1436, label %bb.kx

._crit_edge.i1436:                                ; preds = %bb.kw
  %.phi.trans.insert.i1437 = getelementptr inbounds nuw i8, ptr %i.azt, i64 224
  %.pre.i1438 = load i8, ptr %.phi.trans.insert.i1437, align 8, !tbaa !3484
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

bb.kx:                                            ; preds = %bb.kw
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azt, i64 240
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !3477 ; 6 uses
  %.not.i.i.i1431 = icmp eq ptr %i.bab, null
  br i1 %.not.i.i.i1431, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc1439 unwind label %.loopexit.split-lp2983

.noexc1439:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432: ; preds = %bb.kx
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 56
  %i.bad = load i8, ptr %i.bac, align 8, !tbaa !3478
  %.not.i1.i.i1433 = icmp eq i8 %i.bad, 0
  br i1 %.not.i1.i.i1433, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bab, i64 89
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bab)
          to label %.noexc1440 unwind label %.loopexit2982

.noexc1440:                                       ; preds = %bb.la
  %i.bag = load ptr, ptr %i.bab, align 8, !tbaa !44
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 48
  %i.bai = load ptr, ptr %i.bah, align 8
  %i.baj = invoke noundef signext i8 %i.bai(ptr noundef nonnull align 8 dereferenceable(570) %i.bab, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 unwind label %.loopexit2982, !inline_history !3510

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434: ; preds = %.noexc1440, %bb.kz
  %.0.i.i.i1435 = phi i8 [ %i.baf, %bb.kz ], [ %i.baj, %.noexc1440 ] ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azt, i64 224
  store i8 %.0.i.i.i1435, ptr %i.bak, align 8, !tbaa !3484
  store i8 1, ptr %i.azx, align 1, !tbaa !3471
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434, %._crit_edge.i1436
  %i.bal = phi i8 [ %.pre.i1438, %._crit_edge.i1436 ], [ %.0.i.i.i1435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1434 ]
  %i.bam = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.azv, i8 %i.azw, ptr noundef nonnull align 8 dereferenceable(216) %i.azt, i8 noundef signext %i.bal, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.kh)
          to label %bb.lb unwind label %.loopexit2982 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.kz, ptr %i.dk, align 1, !tbaa !55
  %i.ban = load ptr, ptr %0, align 8, !tbaa !44
  %i.bao = getelementptr i8, ptr %i.ban, i64 -24
  %i.bap = load i64, ptr %i.bao, align 8
  %i.baq = getelementptr inbounds i8, ptr %0, i64 %i.bap
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 16
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !3486
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
  %i.baw = load i16, ptr %2, align 8, !tbaa !3512 ; 9 uses
  %.not.i1448 = icmp eq i16 %i.baw, -32768
  br i1 %.not.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bax = load i8, ptr %i.iv, align 2, !tbaa !3513 ; 8 uses
  %i.bay = add i8 %i.bax, -1
  %spec.select.i.i1449 = icmp ult i8 %i.bay, 12
  br i1 %spec.select.i.i1449, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538

bb.lk:                                            ; preds = %bb.lj
  %i.baz = load i8, ptr %i.iw, align 1, !tbaa !3514 ; 2 uses
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
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455: ; preds = %.thread.i.i1454, %bb.lm
  %.sroa.03.0.i.i1456 = phi i8 [ %i.bbj, %.thread.i.i1454 ], [ 29, %bb.lm ]
  %i.bbk = icmp uge i8 %.sroa.03.0.i.i1456, %i.baz
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455
  %.0.i1450 = phi i1 [ %i.bbk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1455 ], [ false, %bb.lk ]
  %i.bbl = load i8, ptr %i.gw, align 8, !range !97
  %i.bbm = trunc nuw i8 %i.bbl to i1
  %or.cond959 = select i1 %.0.i1450, i1 true, i1 %i.bbm
  br i1 %or.cond959, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread3538: ; preds = %bb.lj
  %i.bbn = load i8, ptr %i.gw, align 8, !range !97
  %i.bbo = trunc nuw i8 %i.bbn to i1
  br i1 %i.bbo, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459.thread: ; preds = %bb.li
  %i.bbp = load i8, ptr %i.gw, align 8, !range !97
  %i.bbq = trunc nuw i8 %i.bbp to i1
  br i1 %i.bbq, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1471.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1459
  %i.bbr = load i8, ptr %i.iw, align 1, !tbaa !3514 ; 3 uses
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
  %.0.i1381 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0807, ptr %i.ds, align 1, !tbaa !55
  %i.awh = load ptr, ptr %.0.i1381, align 8, !tbaa !44
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1381, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !3486
  %.not.i1385 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1385, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, i8 noundef signext %.0807)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1386 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1381, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !55
  %i.awq = load ptr, ptr %.0.i1386, align 8, !tbaa !44
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1386, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !3486
  %.not.i1390 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1390, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !55
  %i.awy = load ptr, ptr %0, align 8, !tbaa !44
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !3486
  %.not.i1395 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1395, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not952, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0807, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !55
  %i.axh = load ptr, ptr %0, align 8, !tbaa !44
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !3486
  %.not.i1400 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1400, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1401 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !55
  %i.axp = load ptr, ptr %.0.i1401, align 8, !tbaa !44
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1401, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !3486
  %.not.i1405 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1405, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1406 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1401, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !55
  %i.axy = load ptr, ptr %.0.i1406, align 8, !tbaa !44
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1406, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !3486
  %.not.i1410 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1410, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !3608, !range !97, !noundef !98
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !3172
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0795 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !55
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !3486
  %.not.i1417 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1417, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  %.1796 = phi i8 [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ] ; 3 uses
  %.sroa.02705.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !637
  %.sroa.02705.0.copyload.fr = freeze i64 %.sroa.02705.0.copyload ; 7 uses
  switch i8 %.0807, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !55
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02705.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02705.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02705.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02705.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02705.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02705.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !55
  %i.azf = load ptr, ptr %0, align 8, !tbaa !44
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !3486
  %.not.i1425 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1425, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3539 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3539)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #28
  store i8 37, ptr %i.fg, align 1, !tbaa !55
  store i8 79, ptr %i.kg, align 1, !tbaa !55
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !55
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !55
  %i.azq = trunc i64 %.sroa.02705.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !3517
  %i.azr = load ptr, ptr %0, align 8, !tbaa !44
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !3509 ; 2 uses
  %.not.i1432 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1432 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1438, label %bb.kx

._crit_edge.i1438:                                ; preds = %bb.kw
  %.phi.trans.insert.i1439 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1440 = load i8, ptr %.phi.trans.insert.i1439, align 8, !tbaa !3484
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !3477 ; 6 uses
  %.not.i.i.i1433 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1433, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc1441 unwind label %.loopexit.split-lp2985

.noexc1441:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !3478
  %.not.i1.i.i1435 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1435, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1442 unwind label %.loopexit2984

.noexc1442:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !44
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 unwind label %.loopexit2984, !inline_history !3510

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436: ; preds = %.noexc1442, %bb.kz
  %.0.i.i.i1437 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1442 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1437, ptr %i.bal, align 8, !tbaa !3484
  store i8 1, ptr %i.azy, align 1, !tbaa !3471
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436, %._crit_edge.i1438
  %i.bam = phi i8 [ %.pre.i1440, %._crit_edge.i1438 ], [ %.0.i.i.i1437, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2984 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

.loopexit2984:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444, %bb.la, %.noexc1442
  %lpad.loopexit2986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2985:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2985, %.loopexit2984
  %lpad.phi2988 = phi { ptr, i32 } [ %lpad.loopexit2986, %.loopexit2984 ], [ %lpad.loopexit.split-lp2987, %.loopexit.split-lp2985 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !55
  %i.bao = load ptr, ptr %0, align 8, !tbaa !44
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !3486
  %.not.i1445 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1445, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.lg:                                            ; preds = %bb.h
  br i1 %.not952, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0807, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !3512 ; 9 uses
  %.not.i1450 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1450, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !3513 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1451 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1451, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 2 uses
  %.not8.i1453 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1453, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1454 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1455 = and i1 %i.bbc, %.not.i.i1454
  br i1 %or.cond.i1455, label %bb.lm, label %.thread.i.i1456

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1459 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1460 = or i1 %.not.i.i.i1459, %i.bbf
  br i1 %or.cond.i.i1460, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457, label %.thread.i.i1456

.thread.i.i1456:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457: ; preds = %.thread.i.i1456, %bb.lm
  %.sroa.03.0.i.i1458 = phi i8 [ %i.bbk, %.thread.i.i1456 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1458, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457
  %.0.i1452 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !97
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond961 = select i1 %.0.i1452, i1 true, i1 %i.bbn
  br i1 %or.cond961, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !97
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !97
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 3 uses
  %.not8.i1465 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1465, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1466 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1467 = and i1 %i.bbu, %.not.i.i1466
  br i1 %or.cond.i1467, label %bb.lp, label %.thread.i.i1468

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1471 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1472 = or i1 %.not.i.i.i1471, %i.bbx
  br i1 %or.cond.i.i1472, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473, label %.thread.i.i1468

.thread.i.i1468:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1381 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0807, ptr %i.ds, align 1, !tbaa !55
  %i.awh = load ptr, ptr %.0.i1381, align 8, !tbaa !44
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1381, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !3486
  %.not.i1385 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1385, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, i8 noundef signext %.0807)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1386 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1381, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !55
  %i.awq = load ptr, ptr %.0.i1386, align 8, !tbaa !44
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1386, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !3486
  %.not.i1390 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1390, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !55
  %i.awy = load ptr, ptr %0, align 8, !tbaa !44
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !3486
  %.not.i1395 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1395, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not952, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0807, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !55
  %i.axh = load ptr, ptr %0, align 8, !tbaa !44
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !3486
  %.not.i1400 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1400, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1401 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !55
  %i.axp = load ptr, ptr %.0.i1401, align 8, !tbaa !44
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1401, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !3486
  %.not.i1405 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1405, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1406 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1401, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !55
  %i.axy = load ptr, ptr %.0.i1406, align 8, !tbaa !44
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1406, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !3486
  %.not.i1410 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1410, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !3683, !range !97, !noundef !98
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !3172
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0795 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !55
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !3486
  %.not.i1417 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1417, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  %.1796 = phi i8 [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ] ; 3 uses
  %.sroa.02705.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !637
  %.sroa.02705.0.copyload.fr = freeze i64 %.sroa.02705.0.copyload ; 7 uses
  switch i8 %.0807, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !55
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02705.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02705.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02705.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02705.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02705.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02705.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !55
  %i.azf = load ptr, ptr %0, align 8, !tbaa !44
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !3486
  %.not.i1425 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1425, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3539 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3539)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #28
  store i8 37, ptr %i.fg, align 1, !tbaa !55
  store i8 79, ptr %i.kg, align 1, !tbaa !55
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !55
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !55
  %i.azq = trunc i64 %.sroa.02705.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !3517
  %i.azr = load ptr, ptr %0, align 8, !tbaa !44
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !3509 ; 2 uses
  %.not.i1432 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1432 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1438, label %bb.kx

._crit_edge.i1438:                                ; preds = %bb.kw
  %.phi.trans.insert.i1439 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1440 = load i8, ptr %.phi.trans.insert.i1439, align 8, !tbaa !3484
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !3477 ; 6 uses
  %.not.i.i.i1433 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1433, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc1441 unwind label %.loopexit.split-lp2985

.noexc1441:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !3478
  %.not.i1.i.i1435 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1435, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1442 unwind label %.loopexit2984

.noexc1442:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !44
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 unwind label %.loopexit2984, !inline_history !3510

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436: ; preds = %.noexc1442, %bb.kz
  %.0.i.i.i1437 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1442 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1437, ptr %i.bal, align 8, !tbaa !3484
  store i8 1, ptr %i.azy, align 1, !tbaa !3471
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436, %._crit_edge.i1438
  %i.bam = phi i8 [ %.pre.i1440, %._crit_edge.i1438 ], [ %.0.i.i.i1437, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2984 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

.loopexit2984:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444, %bb.la, %.noexc1442
  %lpad.loopexit2986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2985:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2985, %.loopexit2984
  %lpad.phi2988 = phi { ptr, i32 } [ %lpad.loopexit2986, %.loopexit2984 ], [ %lpad.loopexit.split-lp2987, %.loopexit.split-lp2985 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !55
  %i.bao = load ptr, ptr %0, align 8, !tbaa !44
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !3486
  %.not.i1445 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1445, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.lg:                                            ; preds = %bb.h
  br i1 %.not952, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0807, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !3512 ; 9 uses
  %.not.i1450 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1450, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !3513 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1451 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1451, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 2 uses
  %.not8.i1453 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1453, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1454 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1455 = and i1 %i.bbc, %.not.i.i1454
  br i1 %or.cond.i1455, label %bb.lm, label %.thread.i.i1456

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1459 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1460 = or i1 %.not.i.i.i1459, %i.bbf
  br i1 %or.cond.i.i1460, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457, label %.thread.i.i1456

.thread.i.i1456:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457: ; preds = %.thread.i.i1456, %bb.lm
  %.sroa.03.0.i.i1458 = phi i8 [ %i.bbk, %.thread.i.i1456 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1458, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457
  %.0.i1452 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !97
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond961 = select i1 %.0.i1452, i1 true, i1 %i.bbn
  br i1 %or.cond961, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !97
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !97
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 3 uses
  %.not8.i1465 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1465, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1466 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1467 = and i1 %i.bbu, %.not.i.i1466
  br i1 %or.cond.i1467, label %bb.lp, label %.thread.i.i1468

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1471 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1472 = or i1 %.not.i.i.i1471, %i.bbx
  br i1 %or.cond.i.i1472, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473, label %.thread.i.i1468

.thread.i.i1468:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.jn:                                            ; preds = %bb.jl
  %i.awg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.jo unwind label %.loopexit ; 0 uses

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %.0.i1381 = phi ptr [ %i.awf, %bb.jm ], [ %0, %bb.jn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store i8 %.0807, ptr %i.ds, align 1, !tbaa !55
  %i.awh = load ptr, ptr %.0.i1381, align 8, !tbaa !44
  %i.awi = getelementptr i8, ptr %i.awh, i64 -24
  %i.awj = load i64, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds i8, ptr %.0.i1381, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !3486
  %.not.i1385 = icmp eq i64 %i.awm, 0
  br i1 %.not.i1385, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, ptr noundef nonnull %i.ds, i64 noundef 1)
          to label %bb.jr unwind label %.loopexit

bb.jq:                                            ; preds = %bb.jo
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1381, i8 noundef signext %.0807)
          to label %bb.jr unwind label %.loopexit ; 0 uses

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %.0.i1386 = phi ptr [ %i.awn, %bb.jp ], [ %.0.i1381, %bb.jq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.awp = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store i8 %i.awp, ptr %i.dr, align 1, !tbaa !55
  %i.awq = load ptr, ptr %.0.i1386, align 8, !tbaa !44
  %i.awr = getelementptr i8, ptr %i.awq, i64 -24
  %i.aws = load i64, ptr %i.awr, align 8
  %i.awt = getelementptr inbounds i8, ptr %.0.i1386, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !3486
  %.not.i1390 = icmp eq i64 %i.awv, 0
  br i1 %.not.i1390, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

bb.jt:                                            ; preds = %bb.jr
  %i.awx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1386, i8 noundef signext %i.awp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394: ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ju:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i8 %i.la, ptr %i.dq, align 1, !tbaa !55
  %i.awy = load ptr, ptr %0, align 8, !tbaa !44
  %i.awz = getelementptr i8, ptr %i.awy, i64 -24
  %i.axa = load i64, ptr %i.awz, align 8
  %i.axb = getelementptr inbounds i8, ptr %0, i64 %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !3486
  %.not.i1395 = icmp eq i64 %i.axd, 0
  br i1 %.not.i1395, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

bb.jw:                                            ; preds = %bb.ju
  %i.axf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1399: ; preds = %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.jx:                                            ; preds = %bb.h, %bb.h
  br i1 %.not952, label %bb.ld, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axg = icmp eq i8 %.0807, 69
  br i1 %i.axg, label %bb.jz, label %bb.ki

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store i8 37, ptr %i.dp, align 1, !tbaa !55
  %i.axh = load ptr, ptr %0, align 8, !tbaa !44
  %i.axi = getelementptr i8, ptr %i.axh, i64 -24
  %i.axj = load i64, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds i8, ptr %0, i64 %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !3486
  %.not.i1400 = icmp eq i64 %i.axm, 0
  br i1 %.not.i1400, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.axn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dp, i64 noundef 1)
          to label %bb.kc unwind label %.loopexit

bb.kb:                                            ; preds = %bb.jz
  %i.axo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.kc unwind label %.loopexit ; 0 uses

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.0.i1401 = phi ptr [ %i.axn, %bb.ka ], [ %0, %bb.kb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i8 69, ptr %i.do, align 1, !tbaa !55
  %i.axp = load ptr, ptr %.0.i1401, align 8, !tbaa !44
  %i.axq = getelementptr i8, ptr %i.axp, i64 -24
  %i.axr = load i64, ptr %i.axq, align 8
  %i.axs = getelementptr inbounds i8, ptr %.0.i1401, i64 %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !3486
  %.not.i1405 = icmp eq i64 %i.axu, 0
  br i1 %.not.i1405, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.axv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %bb.kf unwind label %.loopexit

bb.ke:                                            ; preds = %bb.kc
  %i.axw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1401, i8 noundef signext 69)
          to label %bb.kf unwind label %.loopexit ; 0 uses

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.0.i1406 = phi ptr [ %i.axv, %bb.kd ], [ %.0.i1401, %bb.ke ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.axx = load i8, ptr %.0731, align 1, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i8 %i.axx, ptr %i.dn, align 1, !tbaa !55
  %i.axy = load ptr, ptr %.0.i1406, align 8, !tbaa !44
  %i.axz = getelementptr i8, ptr %i.axy, i64 -24
  %i.aya = load i64, ptr %i.axz, align 8
  %i.ayb = getelementptr inbounds i8, ptr %.0.i1406, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !3486
  %.not.i1410 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i1410, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

bb.kh:                                            ; preds = %bb.kf
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1406, i8 noundef signext %i.axx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1414: ; preds = %bb.kh, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.ki:                                            ; preds = %bb.jy
  %i.ayg = load i8, ptr %i.gw, align 8, !tbaa !3757, !range !97, !noundef !98
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 -24
  %i.ayk = load i64, ptr %i.ayj, align 8
  %i.ayl = getelementptr inbounds i8, ptr %0, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !3172
  %i.ayo = or i32 %i.ayn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ayl, i32 noundef %i.ayo)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416: ; preds = %bb.kj, %bb.ki
  %i.ayp = trunc i8 %.0795 to i1
  br i1 %i.ayp, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i8 45, ptr %i.dm, align 1, !tbaa !55
  %i.ayq = load ptr, ptr %0, align 8, !tbaa !44
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds i8, ptr %0, i64 %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !3486
  %.not.i1417 = icmp eq i64 %i.ayv, 0
  br i1 %.not.i1417, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

bb.km:                                            ; preds = %bb.kk
  %i.ayx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421: ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.kn

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416
  %.1796 = phi i8 [ %.0795, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1416 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ] ; 3 uses
  %.sroa.02705.0.copyload = load i64, ptr %i.ip, align 8, !tbaa !637
  %.sroa.02705.0.copyload.fr = freeze i64 %.sroa.02705.0.copyload ; 7 uses
  switch i8 %.0807, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 [
    i8 0, label %bb.ko
    i8 79, label %bb.kw
  ]

bb.ko:                                            ; preds = %bb.kn
  %i.ayy = load i8, ptr %.0731, align 1, !tbaa !55
  %i.ayz = icmp eq i8 %i.ayy, 73
  br i1 %i.ayz, label %bb.kp, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kp:                                            ; preds = %bb.ko
  %i.aza = icmp slt i64 %.sroa.02705.0.copyload.fr, 12
  br i1 %i.aza, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azb = icmp eq i64 %.sroa.02705.0.copyload.fr, 0
  br i1 %i.azb, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azc = icmp eq i64 %.sroa.02705.0.copyload.fr, 12
  %i.azd = add nsw i64 %.sroa.02705.0.copyload.fr, -12
  br i1 %i.azc, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.kq, %bb.ko
  %storemerge = phi i64 [ %.sroa.02705.0.copyload.fr, %bb.kq ], [ %i.azd, %bb.kr ], [ %.sroa.02705.0.copyload.fr, %bb.ko ] ; 3 uses
  %i.aze = icmp slt i64 %storemerge, 10
  br i1 %i.aze, label %bb.ks, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.ks:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !55
  %i.azf = load ptr, ptr %0, align 8, !tbaa !44
  %i.azg = getelementptr i8, ptr %i.azf, i64 -24
  %i.azh = load i64, ptr %i.azg, align 8
  %i.azi = getelementptr inbounds i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !3486
  %.not.i1425 = icmp eq i64 %i.azk, 0
  br i1 %.not.i1425, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.azl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

bb.ku:                                            ; preds = %bb.ks
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kv:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.ku, %bb.kt
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3539 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1429 ], [ 12, %bb.kq ], [ 12, %bb.kr ]
  %i.azo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3539)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509 unwind label %bb.kv ; 0 uses

bb.kw:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #28
  store i8 37, ptr %i.fg, align 1, !tbaa !55
  store i8 79, ptr %i.kg, align 1, !tbaa !55
  %i.azp = load i8, ptr %.0731, align 1, !tbaa !55
  store i8 %i.azp, ptr %i.kh, align 1, !tbaa !55
  %i.azq = trunc i64 %.sroa.02705.0.copyload.fr to i32
  store i32 %i.azq, ptr %i.it, align 8, !tbaa !3517
  %i.azr = load ptr, ptr %0, align 8, !tbaa !44
  %i.azs = getelementptr i8, ptr %i.azr, i64 -24
  %i.azt = load i64, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds i8, ptr %0, i64 %i.azt ; 6 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 232
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !3509 ; 2 uses
  %.not.i1432 = icmp eq ptr %i.azw, null
  %i.azx = zext i1 %.not.i1432 to i8
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 225 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !3471, !range !97, !noundef !98
  %i.baa = trunc nuw i8 %i.azz to i1
  br i1 %i.baa, label %._crit_edge.i1438, label %bb.kx

._crit_edge.i1438:                                ; preds = %bb.kw
  %.phi.trans.insert.i1439 = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  %.pre.i1440 = load i8, ptr %.phi.trans.insert.i1439, align 8, !tbaa !3484
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

bb.kx:                                            ; preds = %bb.kw
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 240
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !3477 ; 6 uses
  %.not.i.i.i1433 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i.i1433, label %bb.ky, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc1441 unwind label %.loopexit.split-lp2985

.noexc1441:                                       ; preds = %bb.ky
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434: ; preds = %bb.kx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 56
  %i.bae = load i8, ptr %i.bad, align 8, !tbaa !3478
  %.not.i1.i.i1435 = icmp eq i8 %i.bae, 0
  br i1 %.not.i1.i.i1435, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 89
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1434
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bac)
          to label %.noexc1442 unwind label %.loopexit2984

.noexc1442:                                       ; preds = %bb.la
  %i.bah = load ptr, ptr %i.bac, align 8, !tbaa !44
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  %i.baj = load ptr, ptr %i.bai, align 8
  %i.bak = invoke noundef signext i8 %i.baj(ptr noundef nonnull align 8 dereferenceable(570) %i.bac, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 unwind label %.loopexit2984, !inline_history !3510

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436: ; preds = %.noexc1442, %bb.kz
  %.0.i.i.i1437 = phi i8 [ %i.bag, %bb.kz ], [ %i.bak, %.noexc1442 ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 224
  store i8 %.0.i.i.i1437, ptr %i.bal, align 8, !tbaa !3484
  store i8 1, ptr %i.azy, align 1, !tbaa !3471
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436, %._crit_edge.i1438
  %i.bam = phi i8 [ %.pre.i1440, %._crit_edge.i1438 ], [ %.0.i.i.i1437, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1436 ]
  %i.ban = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azw, i8 %i.azx, ptr noundef nonnull align 8 dereferenceable(216) %i.azu, i8 noundef signext %i.bam, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lb unwind label %.loopexit2984 ; 0 uses

bb.lb:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

.loopexit2984:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1444, %bb.la, %.noexc1442
  %lpad.loopexit2986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.loopexit.split-lp2985:                           ; preds = %bb.ky
  %lpad.loopexit.split-lp2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.lc:                                            ; preds = %.loopexit.split-lp2985, %.loopexit2984
  %lpad.phi2988 = phi { ptr, i32 } [ %lpad.loopexit2986, %.loopexit2984 ], [ %lpad.loopexit.split-lp2987, %.loopexit.split-lp2985 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #28
  br label %bb.aix

bb.ld:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !55
  %i.bao = load ptr, ptr %0, align 8, !tbaa !44
  %i.bap = getelementptr i8, ptr %i.bao, i64 -24
  %i.baq = load i64, ptr %i.bap, align 8
  %i.bar = getelementptr inbounds i8, ptr %0, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !3486
  %.not.i1445 = icmp eq i64 %i.bat, 0
  br i1 %.not.i1445, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

bb.lf:                                            ; preds = %bb.ld
  %i.bav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1449: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1509

bb.lg:                                            ; preds = %bb.h
  br i1 %.not952, label %bb.mn, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.baw = icmp eq i8 %.0807, 0
  br i1 %i.baw, label %bb.li, label %bb.me

bb.li:                                            ; preds = %bb.lh
  %i.bax = load i16, ptr %2, align 8, !tbaa !3512 ; 9 uses
  %.not.i1450 = icmp eq i16 %i.bax, -32768
  br i1 %.not.i1450, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bay = load i8, ptr %i.iw, align 2, !tbaa !3513 ; 8 uses
  %i.baz = add i8 %i.bay, -1
  %spec.select.i.i1451 = icmp ult i8 %i.baz, 12
  br i1 %spec.select.i.i1451, label %bb.lk, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540

bb.lk:                                            ; preds = %bb.lj
  %i.bba = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 2 uses
  %.not8.i1453 = icmp eq i8 %i.bba, 0
  br i1 %.not8.i1453, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %.not.i.i1454 = icmp eq i8 %i.bay, 2
  %i.bbb = and i16 %i.bax, 3
  %i.bbc = icmp eq i16 %i.bbb, 0
  %or.cond.i1455 = and i1 %i.bbc, %.not.i.i1454
  br i1 %or.cond.i1455, label %bb.lm, label %.thread.i.i1456

bb.lm:                                            ; preds = %bb.ll
  %i.bbd = srem i16 %i.bax, 100
  %.not.i.i.i1459 = icmp ne i16 %i.bbd, 0
  %i.bbe = srem i16 %i.bax, 400
  %i.bbf = icmp eq i16 %i.bbe, 0
  %or.cond.i.i1460 = or i1 %.not.i.i.i1459, %i.bbf
  br i1 %or.cond.i.i1460, label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457, label %.thread.i.i1456

.thread.i.i1456:                                  ; preds = %bb.lm, %bb.ll
  %i.bbg = zext nneg i8 %i.bay to i64
  %i.bbh = add nuw nsw i64 %i.bbg, 4294967295
  %i.bbi = and i64 %i.bbh, 4294967295
  %i.bbj = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !55
  br label %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457

_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457: ; preds = %.thread.i.i1456, %bb.lm
  %.sroa.03.0.i.i1458 = phi i8 [ %i.bbk, %.thread.i.i1456 ], [ 29, %bb.lm ]
  %i.bbl = icmp uge i8 %.sroa.03.0.i.i1458, %i.bba
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461: ; preds = %bb.lk, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457
  %.0.i1452 = phi i1 [ %i.bbl, %_ZNK14arrow_vendored4date19year_month_day_last3dayEv.exit.i1457 ], [ false, %bb.lk ]
  %i.bbm = load i8, ptr %i.gw, align 8, !range !97
  %i.bbn = trunc nuw i8 %i.bbm to i1
  %or.cond961 = select i1 %.0.i1452, i1 true, i1 %i.bbn
  br i1 %or.cond961, label %bb.ln, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread3540: ; preds = %bb.lj
  %i.bbo = load i8, ptr %i.gw, align 8, !range !97
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461.thread: ; preds = %bb.li
  %i.bbq = load i8, ptr %i.gw, align 8, !range !97
  %i.bbr = trunc nuw i8 %i.bbq to i1
  br i1 %i.bbr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.md

bb.ln:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1461
  %i.bbs = load i8, ptr %i.ix, align 1, !tbaa !3514 ; 3 uses
  %.not8.i1465 = icmp eq i8 %i.bbs, 0
  br i1 %.not8.i1465, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473.thread, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.i.i1466 = icmp eq i8 %i.bay, 2
  %i.bbt = and i16 %i.bax, 3
  %i.bbu = icmp eq i16 %i.bbt, 0
  %or.cond.i1467 = and i1 %i.bbu, %.not.i.i1466
  br i1 %or.cond.i1467, label %bb.lp, label %.thread.i.i1468

bb.lp:                                            ; preds = %bb.lo
  %i.bbv = srem i16 %i.bax, 100
  %.not.i.i.i1471 = icmp ne i16 %i.bbv, 0
  %i.bbw = srem i16 %i.bax, 400
  %i.bbx = icmp eq i16 %i.bbw, 0
  %or.cond.i.i1472 = or i1 %.not.i.i.i1471, %i.bbx
  br i1 %or.cond.i.i1472, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1473, label %.thread.i.i1468

.thread.i.i1468:                                  ; preds = %bb.lp, %bb.lo
  %i.bby = zext nneg i8 %i.bay to i64
  %i.bbz = add nuw nsw i64 %i.bby, 4294967295
end_hunk_3
begin_hunk_4_@_ZN5arrow16ArraySpanVisitorINS_10BinaryTypeEE5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_:bb.a
  %.05321.i.i = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.preheader.i.i ], [ %i.ad, %_ZN5arrow6StatusD2Ev.exit79.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3808
  %i.v = sext i32 %.4.i to i64
  %i.w = getelementptr inbounds i8, ptr %storemerge.i, i64 %i.v
  %i.x = load i32, ptr %.426.i, align 4, !tbaa !3, !noalias !3809 ; 3 uses
  %i.y = sub nsw i32 %i.x, %.4.i
  %i.z = sext i32 %i.y to i64
  call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 %i.z, ptr nonnull readonly %i.w), !noalias !3808
  %i.aa = load ptr, ptr %3, align 8, !tbaa !83, !noalias !3808 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !83, !alias.scope !3808
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3808
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit79.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS3_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_ISC_EESD_SG_SI_EUlvE_EESD_SG_OSH_OT0_EUllE_ZNS5_ISN_SO_EESD_SG_SP_SR_EUlvE_EESD_PKhllSP_SR_.exit.i

_ZN5arrow6StatusD2Ev.exit79.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.426.i, i64 4 ; 2 uses
  %i.ad = add nuw nsw i64 %.05321.i.i, 1          ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %i.ad, %i.t
  br i1 %exitcond31.not.i.i, label %.critedge65.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !llvm.loop !3812

bb.d:                                             ; preds = %.lr.ph24.i.i
  %i.ae = icmp eq i32 %.sroa.9.0.extract.shift.i.i, 0
  %i.af = sext i16 %.sroa.0.0.extract.trunc.i.i to i64 ; 4 uses
  %.not6115.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i, 0 ; 2 uses
  br i1 %i.ae, label %.preheader5.i.i, label %.preheader7.i.i

.preheader7.i.i:                                  ; preds = %bb.d
  br i1 %.not6115.i.i, label %.lr.ph.preheader.i.i, label %.critedge65.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader7.i.i
  %i.ag = add i64 %.05423.i.i, %i.af
  br label %.lr.ph.i.i

.preheader5.i.i:                                  ; preds = %bb.d
  br i1 %.not6115.i.i, label %_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i, label %.critedge65.i.i

_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i:            ; preds = %.preheader5.i.i
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !3808
  %scevgep.i = getelementptr i8, ptr %.022.i, i64 -4
  %i.ah = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %scevgep39.i = getelementptr i8, ptr %scevgep.i, i64 %i.ah
  %scevgep40.i = getelementptr i8, ptr %.022.i, i64 %i.ah
  %i.ai = load i32, ptr %scevgep39.i, align 4, !tbaa !3, !noalias !3813
  %i.aj = add i64 %.05423.i.i, %i.af
  br label %.critedge65.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i, %.lr.ph.preheader.i.i
  %.224.i = phi ptr [ %.022.i, %.lr.ph.preheader.i.i ], [ %.325.i, %_ZN5arrow6StatusD2Ev.exit91.i.i ] ; 3 uses
  %.2.i = phi i32 [ %.0.i, %.lr.ph.preheader.i.i ], [ %.3.i, %_ZN5arrow6StatusD2Ev.exit91.i.i ] ; 2 uses
  %.04414.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ba, %_ZN5arrow6StatusD2Ev.exit91.i.i ]
  %.35713.i.i = phi i64 [ %.05423.i.i, %.lr.ph.preheader.i.i ], [ %i.bb, %_ZN5arrow6StatusD2Ev.exit91.i.i ] ; 2 uses
  %i.ak = add nsw i64 %.35713.i.i, %i.f           ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !55, !noalias !3808
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit87.i.i, label %_ZN5arrow6StatusD2Ev.exit93.i.i

_ZN5arrow6StatusD2Ev.exit87.i.i:                  ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3808
  %i.as = sext i32 %.2.i to i64
  %i.at = getelementptr inbounds i8, ptr %storemerge.i, i64 %i.as
  %i.au = load i32, ptr %.224.i, align 4, !tbaa !3, !noalias !3816 ; 2 uses
  %i.av = sub nsw i32 %i.au, %.2.i
  %i.aw = sext i32 %i.av to i64
  call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %4, i64 %i.aw, ptr nonnull readonly %i.at), !noalias !3808
  %i.ax = load ptr, ptr %4, align 8, !tbaa !83, !noalias !3808 ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !83, !alias.scope !3808
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3808
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN5arrow6StatusD2Ev.exit91.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS3_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_ISC_EESD_SG_SI_EUlvE_EESD_SG_OSH_OT0_EUllE_ZNS5_ISN_SO_EESD_SG_SP_SR_EUlvE_EESD_PKhllSP_SR_.exit.i

_ZN5arrow6StatusD2Ev.exit93.i.i:                  ; preds = %.lr.ph.i.i
  %i.az = load i32, ptr %.224.i, align 4, !tbaa !3, !noalias !3819
  br label %_ZN5arrow6StatusD2Ev.exit91.i.i

_ZN5arrow6StatusD2Ev.exit91.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i
  %.3.i = phi i32 [ %i.au, %_ZN5arrow6StatusD2Ev.exit87.i.i ], [ %i.az, %_ZN5arrow6StatusD2Ev.exit93.i.i ] ; 2 uses
  %.325.i = getelementptr inbounds nuw i8, ptr %.224.i, i64 4 ; 2 uses
  %i.ba = add nuw nsw i64 %.04414.i.i, 1          ; 2 uses
  %i.bb = add nsw i64 %.35713.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %.critedge65.i.i, label %.lr.ph.i.i, !llvm.loop !3822

.critedge65.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i, %_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i, %.preheader5.i.i, %.preheader7.i.i, %.preheader.i.i
  %.123.i = phi ptr [ %.022.i, %.preheader7.i.i ], [ %.022.i, %.preheader.i.i ], [ %scevgep40.i, %_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i ], [ %.022.i, %.preheader5.i.i ], [ %i.ac, %_ZN5arrow6StatusD2Ev.exit79.i.i ], [ %.325.i, %_ZN5arrow6StatusD2Ev.exit91.i.i ]
  %.1.i = phi i32 [ %.0.i, %.preheader7.i.i ], [ %.0.i, %.preheader.i.i ], [ %i.ai, %_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i ], [ %.0.i, %.preheader5.i.i ], [ %i.x, %_ZN5arrow6StatusD2Ev.exit79.i.i ], [ %.3.i, %_ZN5arrow6StatusD2Ev.exit91.i.i ]
  %.458.i.i = phi i64 [ %.05423.i.i, %.preheader7.i.i ], [ %.05423.i.i, %.preheader.i.i ], [ %i.aj, %_ZN5arrow6StatusD2Ev.exit81.lr.ph.i.i ], [ %.05423.i.i, %.preheader5.i.i ], [ %i.u, %_ZN5arrow6StatusD2Ev.exit79.i.i ], [ %i.ag, %_ZN5arrow6StatusD2Ev.exit91.i.i ] ; 2 uses
  %i.bc = icmp slt i64 %.458.i.i, %i.c
  br i1 %i.bc, label %.lr.ph24.i.i, label %._crit_edge.i.i, !llvm.loop !3823

._crit_edge.i.i:                                  ; preds = %.critedge65.i.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !3824
  br label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS3_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_ISC_EESD_SG_SI_EUlvE_EESD_SG_OSH_OT0_EUllE_ZNS5_ISN_SO_EESD_SG_SP_SR_EUlvE_EESD_PKhllSP_SR_.exit.i

_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS3_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_ISC_EESD_SG_SI_EUlvE_EESD_SG_OSH_OT0_EUllE_ZNS5_ISN_SO_EESD_SG_SP_SR_EUlvE_EESD_PKhllSP_SR_.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit87.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3808
  br label %_ZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS2_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_ISB_EESC_SF_SH_EUlvE_EESC_SF_OSG_OT0_.exit

_ZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS2_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS7_ISB_EESC_SF_SH_EUlvE_EESC_SF_OSG_OT0_.exit: ; preds = %bb.b, %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_16ArraySpanVisitorIS3_E5VisitINS_7compute8internal12_GLOBAL__N_113Utf8ValidatorEEENS_6StatusERKNS_9ArraySpanEPT_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_ISC_EESD_SG_SI_EUlvE_EESD_SG_OSH_OT0_EUllE_ZNS5_ISN_SO_EESD_SG_SP_SR_EUlvE_EESD_PKhllSP_SR_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3799
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113Utf8Validator10VisitValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr readonly captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 7
  br i1 %i.a, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %select.unfold.i.i
  %.07999.i.i = phi ptr [ %.281.i.i, %select.unfold.i.i ], [ %2, %bb.a ] ; 6 uses
  %.08298.i.i = phi i64 [ %.284.i.i, %select.unfold.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.b = load i64, ptr %.07999.i.i, align 1       ; 9 uses
  %i.c = and i64 %i.b, -9187201950435737472
  %i.d = icmp eq i64 %i.c, 0
  %i.e = lshr i64 %i.b, 40
  %i.f = lshr i64 %i.b, 48
  %i.g = lshr i64 %i.b, 56
  br i1 %i.d, label %bb.b, label %bb.c, !prof !86

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = add nsw i64 %.08298.i.i, -8
  %i.i = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 8
  br label %select.unfold.i.i, !llvm.loop !3827

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = lshr i64 %i.b, 32
  %i.k = lshr i64 %i.b, 24
  %i.l = lshr i64 %i.b, 16
  %i.m = lshr i64 %i.b, 8
  %i.n = and i64 %i.b, 255
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1599
  %i.q = zext i16 %i.p to i64
  %i.r = and i64 %i.m, 255
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.q
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.r
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1599
  %i.v = zext i16 %i.u to i64
  %i.w = and i64 %i.l, 255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.v
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.w
  %i.z = load i16, ptr %i.y, align 2, !tbaa !1599
  %i.aa = zext i16 %i.z to i64
  %i.ab = and i64 %i.k, 255
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !1599
  %i.af = zext i16 %i.ae to i64
  %i.ag = and i64 %i.j, 255
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.af
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !1599 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 5
  %i.am = add nsw i64 %.08298.i.i, -5
  br label %select.unfold.i.i, !llvm.loop !3827

bb.e:                                             ; preds = %bb.c
  %i.an = zext i16 %i.aj to i64
  %i.ao = and i64 %i.e, 255
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.an
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !1599 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 6
  %i.au = add nsw i64 %.08298.i.i, -6
  br label %select.unfold.i.i, !llvm.loop !3827

bb.g:                                             ; preds = %bb.e
  %i.av = zext i16 %i.ar to i64
  %i.aw = and i64 %i.f, 255
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.av
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !1599 ; 2 uses
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 7
  %i.bc = add nsw i64 %.08298.i.i, -7
  br label %select.unfold.i.i, !llvm.loop !3827

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.07999.i.i, i64 8
  %i.be = zext i16 %i.az to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.g
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !1599
  %i.bi = add nsw i64 %.08298.i.i, -8
  %.fr.i.i = freeze i16 %i.bh
  %i.bj = icmp eq i16 %.fr.i.i, 0
  br i1 %i.bj, label %select.unfold.i.i, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread2, !prof !3828, !llvm.loop !3827

select.unfold.i.i:                                ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.284.i.i = phi i64 [ %i.h, %bb.b ], [ %i.am, %bb.d ], [ %i.au, %bb.f ], [ %i.bc, %bb.h ], [ %i.bi, %bb.i ] ; 3 uses
  %.281.i.i = phi ptr [ %i.i, %bb.b ], [ %i.al, %bb.d ], [ %i.at, %bb.f ], [ %i.bb, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bk = icmp sgt i64 %.284.i.i, 7
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %select.unfold.i.i, %bb.a
  %.082.lcssa.i.i = phi i64 [ %1, %bb.a ], [ %.284.i.i, %select.unfold.i.i ] ; 10 uses
  %.079.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %.281.i.i, %select.unfold.i.i ] ; 9 uses
  %i.bl = icmp sgt i64 %.082.lcssa.i.i, 3
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 1            ; 3 uses
  %i.bp = load i32, ptr %.079.lcssa.i.i, align 1  ; 2 uses
  %i.bq = or i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, -2139062144
  %.not94.i.i = icmp eq i32 %i.br, 0
  %i.bs = zext i32 %i.bp to i64
  %i.bt = lshr i32 %i.bo, 16
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = lshr i32 %i.bo, 24
  %i.bw = trunc nuw i32 %i.bv to i8
  br i1 %.not94.i.i, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.o

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = icmp sgt i64 %.082.lcssa.i.i, 1
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -2
  %i.ca = load i16, ptr %i.bz, align 1            ; 3 uses
  %i.cb = load i16, ptr %.079.lcssa.i.i, align 1  ; 2 uses
  %i.cc = or i16 %i.cb, %i.ca
  %i.cd = and i16 %i.cc, -32640
  %.not.i.i = icmp eq i16 %i.cd, 0
  %i.ce = zext i16 %i.cb to i64
  %i.cf = zext i16 %i.ca to i64
  %i.cg = lshr i16 %i.ca, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  br i1 %.not.i.i, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp eq i64 %.082.lcssa.i.i, 1
  br i1 %i.ci, label %bb.n, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %.079.lcssa.i.i, align 1, !tbaa !55 ; 2 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !86

bb.o:                                             ; preds = %bb.l, %bb.j
  %i.cl = phi i8 [ %i.ch, %bb.l ], [ %i.bw, %bb.j ]
  %i.cm = phi i64 [ %i.cf, %bb.l ], [ %i.bu, %bb.j ]
  %i.cn = phi i64 [ %i.ce, %bb.l ], [ %i.bs, %bb.j ]
  switch i64 %.082.lcssa.i.i, label %default.unreachable.i.i [
    i64 7, label %bb.p
    i64 6, label %bb.q
    i64 5, label %bb.r
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 2, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.co = and i64 %i.cn, 255
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !1599
  %i.cr = zext i16 %i.cq to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.cr, %bb.p ], [ 0, %bb.o ]
  %i.cs = getelementptr i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 -6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !55
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.0.i.i
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !1599
  %i.cz = zext i16 %i.cy to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1.i.i = phi i64 [ %i.cz, %bb.q ], [ 0, %bb.o ]
  %i.da = getelementptr i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 -5
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !55
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.1.i.i
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !1599
  %i.dh = zext i16 %i.dg to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2.i.i = phi i64 [ %i.dh, %bb.r ], [ 0, %bb.o ]
  %i.di = getelementptr i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !55
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.2.i.i
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !1599
  %i.dp = zext i16 %i.do to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.3.i.i = phi i64 [ %i.dp, %bb.s ], [ 0, %bb.o ]
  %i.dq = getelementptr i8, ptr %.079.lcssa.i.i, i64 %.082.lcssa.i.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 -3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !55
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.3.i.i
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !1599
  %i.dx = zext i16 %i.dw to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.4.i.i = phi i64 [ %i.dx, %bb.t ], [ 0, %bb.o ]
  %i.dy = and i64 %i.cm, 255
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.4.i.i
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !1599
  %i.ec = zext i16 %i.eb to i64
  br label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit

default.unreachable.i.i:                          ; preds = %bb.o
  unreachable

_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.n, %bb.u
  %i.ed = phi i8 [ %i.cl, %bb.u ], [ %i.cj, %bb.n ]
  %.5.i.i = phi i64 [ %i.ec, %bb.u ], [ 0, %bb.n ]
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN5arrow4util8internal16utf8_large_tableE, i64 %.5.i.i
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !1599
  %i.ei = icmp eq i16 %i.eh, 0
  br i1 %i.ei, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread2, !prof !3829

_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread2: ; preds = %bb.i, %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str.58)
  br label %bb.v

_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.n, %bb.l, %bb.j, %bb.m, %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !3830
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN5arrow4utilL18ValidateUTF8InlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3833
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !3833
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712, !noalias !3833, !nonnull !98, !align !683
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #28, !noalias !3833
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !3833 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3833
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3833
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
end_hunk_4
