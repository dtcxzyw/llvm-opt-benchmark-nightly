Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverpackethandler?download=true
inline.NumInlined: 3042
inline.NumDeleted: 1149
begin_hunk_0_@_ZN6Server22handleCommand_InteractEP13NetworkPacket:bb.a

bb.av:                                            ; preds = %.noexc425, %bb.at
  %i.gj = phi i64 [ %.pre872, %.noexc425 ], [ %i.ge, %bb.at ]
  %i.gk = phi ptr [ %.pre.i424, %.noexc425 ], [ %i.gb, %bb.at ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 240
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i752 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i752, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i753

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i753: ; preds = %bb.av
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !81
  %.not.i1.i.i754 = icmp eq i8 %i.gp, 0
  br i1 %.not.i1.i.i754, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i753
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 67
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !82
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i755

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i753
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gn)
          to label %.noexc758 unwind label %bb.ay

.noexc758:                                        ; preds = %bb.ax
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = invoke noundef signext i8 %i.gu(ptr noundef nonnull align 8 dereferenceable(570) %i.gn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i755 unwind label %bb.ay, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i755: ; preds = %.noexc758, %bb.aw
  %.0.i.i.i756 = phi i8 [ %i.gr, %bb.aw ], [ %i.gv, %.noexc758 ]
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i8 noundef signext %.0.i.i.i756)
          to label %.noexc760 unwind label %bb.ay

.noexc760:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i755
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit408 unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %.invoke, %.noexc771, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i766, %.noexc769, %bb.bl, %.noexc760, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i755, %.noexc758, %bb.ax, %bb.bi, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.bf, %bb.be, %.noexc430, %_ZTW12actionstream.exit, %bb.au, %bb.ar, %.noexc418, %_ZTW13warningstream.exit416, %bb.bt
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.az:                                            ; preds = %bb.ao
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fs, i64 324
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !388
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %bb.ba, label %bb.bt

bb.ba:                                            ; preds = %bb.az
  %.not.i428 = icmp eq ptr @_ZTH12actionstream, null
  br i1 %.not.i428, label %_ZTW12actionstream.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit

_ZTW12actionstream.exit:                          ; preds = %bb.ba, %bb.bb
  %i.hc = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef zeroext i1 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
          to label %.noexc430 unwind label %bb.ay, !inline_history !6

.noexc430:                                        ; preds = %_ZTW12actionstream.exit
  %.v.i429 = select i1 %i.hg, i64 976, i64 984
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.v.i429 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @.str.11, ptr %i.ad, align 8, !tbaa !58
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.bc unwind label %bb.ay     ; 0 uses

bb.bc:                                            ; preds = %.noexc430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dv, i64 328
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !60 ; 5 uses
  %.not.i432 = icmp eq ptr %i.hk, null
  br i1 %.not.i432, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !57
  %i.hm = getelementptr i8, ptr %i.hl, i64 -24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !68
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hk)
          to label %.noexc434 unwind label %bb.ay

.noexc434:                                        ; preds = %bb.be
  %.pre.i433 = load ptr, ptr %i.hh, align 8, !tbaa !60
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc434, %bb.bd
  %i.hs = phi ptr [ %.pre.i433, %.noexc434 ], [ %i.hk, %bb.bd ]
  %i.ht = load ptr, ptr %i.hj, align 8, !tbaa !92
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dv, i64 336
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !87
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.ht, i64 noundef %i.hv)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.ay ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.bc, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @.str.88, ptr %i.ac, align 8, !tbaa !58
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.bg unwind label %bb.ay     ; 2 uses

bb.bg:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !60 ; 5 uses
  %.not.i438 = icmp eq ptr %i.hy, null
  br i1 %.not.i438, label %_ZN11StreamProxylsEPFRSoS0_E.exit442, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !57
  %i.ia = getelementptr i8, ptr %i.hz, i64 -24
  %i.ib = load i64, ptr %i.ia, align 8            ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.hy, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !68
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hy)
          to label %.noexc440 unwind label %bb.ay

.noexc440:                                        ; preds = %bb.bi
  %.pre.i439 = load ptr, ptr %i.hx, align 8, !tbaa !60 ; 2 uses
  %.pre867 = load ptr, ptr %.pre.i439, align 8, !tbaa !57
  %.phi.trans.insert868 = getelementptr i8, ptr %.pre867, i64 -24
  %.pre869 = load i64, ptr %.phi.trans.insert868, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc440, %bb.bh
  %i.ig = phi i64 [ %.pre869, %.noexc440 ], [ %i.ib, %bb.bh ]
  %i.ih = phi ptr [ %.pre.i439, %.noexc440 ], [ %i.hy, %bb.bh ] ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 240
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i763 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i763, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i764

.invoke:                                          ; preds = %bb.av, %bb.bj
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.cont unwind label %bb.ay

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i764: ; preds = %bb.bj
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i8, ptr %i.il, align 8, !tbaa !81
  %.not.i1.i.i765 = icmp eq i8 %i.im, 0
  br i1 %.not.i1.i.i765, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i764
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 67
  %i.io = load i8, ptr %i.in, align 1, !tbaa !82
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i766

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i764
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ik)
          to label %.noexc769 unwind label %bb.ay

.noexc769:                                        ; preds = %bb.bl
  %i.ip = load ptr, ptr %i.ik, align 8, !tbaa !57
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef signext i8 %i.ir(ptr noundef nonnull align 8 dereferenceable(570) %i.ik, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i766 unwind label %bb.ay, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i766: ; preds = %.noexc769, %bb.bk
  %.0.i.i.i767 = phi i8 [ %i.io, %bb.bk ], [ %i.is, %.noexc769 ]
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, i8 noundef signext %.0.i.i.i767)
          to label %.noexc771 unwind label %bb.ay

.noexc771:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i766
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.it)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit442 unwind label %bb.ay ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit442:             ; preds = %bb.bg, %.noexc771
  %i.iv = load i8, ptr %4, align 4, !tbaa !576
  %i.iw = icmp eq i8 %i.iv, 1
  br i1 %i.iw, label %bb.bm, label %.noexc.i

bb.bm:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit442
  %i.ix = invoke noundef ptr @_ZN6Server9getClientEt11ClientState(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %i.ds, i32 noundef 8)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 2
  %.sroa.0142.0.copyload = load i48, ptr %i.iy, align 2 ; 4 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.0142.0.copyload, 16
  %i.iz = trunc i48 %.sroa.0142.0.copyload to i16
  %i.ja = insertelement <2 x i16> poison, i16 %i.iz, i64 0
  %i.jb = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.jc = insertelement <2 x i16> %i.ja, i16 %i.jb, i64 1 ; 2 uses
  %i.jd = sext <2 x i16> %i.jc to <2 x i32>       ; 2 uses
  %i.je = add nsw <2 x i32> %i.jd, splat (i32 -15)
  %i.jf = icmp slt <2 x i16> %i.jc, zeroinitializer
  %i.jg = select <2 x i1> %i.jf, <2 x i32> %i.je, <2 x i32> %i.jd
  %i.jh = sdiv <2 x i32> %i.jg, splat (i32 16)    ; 2 uses
  %i.ji = ashr i48 %.sroa.0142.0.copyload, 32
  %i.jj = trunc nsw i48 %i.ji to i32              ; 2 uses
  %i.jk = add nsw i32 %i.jj, -15
  %i.jl = icmp slt i48 %.sroa.0142.0.copyload, 0
  %i.jm = select i1 %i.jl, i32 %i.jk, i32 %i.jj
  %i.jn = sdiv i32 %i.jm, 16
  %.mask.i.i = and i32 %i.jn, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.jo = extractelement <2 x i32> %i.jh, i64 1
  %i.jp = shl nsw i32 %i.jo, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.jp to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.jq = extractelement <2 x i32> %i.jh, i64 0
  %.mask5.i.i = and i32 %i.jq, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  invoke void @_ZN12RemoteClient15SetBlockNotSentEN4core8vector3dIsEEb(ptr noundef nonnull align 8 dereferenceable(568) %i.ix, i48 %.sroa.0.0.insert.insert.i.i, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.bp:                                            ; preds = %bb.bn
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

.noexc.i:                                         ; preds = %bb.bn, %_ZN11StreamProxylsEPFRSoS0_E.exit442
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.jv, ptr %6, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #27
  store i64 21, ptr %i.ab, align 8, !tbaa !298
  %i.jw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0)
          to label %.noexc443 unwind label %bb.br ; 2 uses

.noexc443:                                        ; preds = %.noexc.i
  store ptr %i.jw, ptr %6, align 8, !tbaa !92
  %i.jx = load i64, ptr %i.ab, align 8, !tbaa !298 ; 3 uses
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.jw, ptr noundef nonnull align 1 dereferenceable(21) @.str.89, i64 21, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.jx, ptr %i.jy, align 8, !tbaa !87
  %i.jz = load ptr, ptr %6, align 8, !tbaa !92
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jx
  store i8 0, ptr %i.ka, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #27
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 576
  invoke void @_ZN15ScriptApiPlayer8on_cheatEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef nonnull %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %.noexc443
  %i.kc = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jv
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.bq
  %i.ke = load i64, ptr %i.jv, align 8, !tbaa !82
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit408

bb.br:                                            ; preds = %.noexc.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

bb.bs:                                            ; preds = %.noexc443
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.jv
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.bs
  %i.kk = load i64, ptr %i.jv, align 8, !tbaa !82
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447, %bb.br
  %.pn366 = phi { ptr, i32 } [ %i.kg, %bb.br ], [ %i.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447 ], [ %i.kh, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.pf

bb.bt:                                            ; preds = %bb.az
  invoke void @_ZN6Server17process_PlayerPosEP12RemotePlayerP9PlayerSAOP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.fs, ptr noundef nonnull %1)
          to label %bb.bu unwind label %bb.ay

bb.bu:                                            ; preds = %bb.bt
  %i.km = getelementptr inbounds nuw i8, ptr %i.fs, i64 1020
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.km, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 1028
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !386
  %i.kn = invoke noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416) %i.dv)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ko = icmp eq i16 %i.kn, 0
  br i1 %i.ko, label %_ZN11StreamProxylsEPFRSoS0_E.exit408, label %bb.bx

bb.bw:                                            ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit466, %bb.ci, %bb.ch, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit459, %bb.ce, %bb.cd, %.noexc453, %_ZTW12actionstream.exit451, %bb.cw, %bb.bx, %bb.bu
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.bx:                                            ; preds = %bb.bv
  %i.kq = load i16, ptr %i.am, align 2, !tbaa !83
  %i.kr = invoke noundef zeroext i16 @_ZN6Player21getMaxHotbarItemcountEv(ptr noundef nonnull align 8 dereferenceable(416) %i.dv)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  %.not292 = icmp ult i16 %i.kq, %i.kr
  br i1 %.not292, label %bb.cw, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not.i450 = icmp eq ptr @_ZTH12actionstream, null
  br i1 %.not.i450, label %_ZTW12actionstream.exit451, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit451

_ZTW12actionstream.exit451:                       ; preds = %bb.bz, %bb.ca
  %i.ks = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !57
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %.noexc453 unwind label %bb.bw, !inline_history !13

.noexc453:                                        ; preds = %_ZTW12actionstream.exit451
  %.v.i452 = select i1 %i.kw, i64 976, i64 984
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.v.i452 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @.str.76, ptr %i.aa, align 8, !tbaa !58
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.cb unwind label %bb.bw     ; 0 uses

bb.cb:                                            ; preds = %.noexc453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dv, i64 328
  %i.la = load ptr, ptr %i.kx, align 8, !tbaa !60 ; 5 uses
  %.not.i455 = icmp eq ptr %i.la, null
  br i1 %.not.i455, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit459, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !57
  %i.lc = getelementptr i8, ptr %i.lb, i64 -24
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr inbounds i8, ptr %i.la, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !68
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.la)
          to label %.noexc457 unwind label %bb.bw

.noexc457:                                        ; preds = %bb.cd
  %.pre.i456 = load ptr, ptr %i.kx, align 8, !tbaa !60
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc457, %bb.cc
  %i.li = phi ptr [ %.pre.i456, %.noexc457 ], [ %i.la, %bb.cc ]
  %i.lj = load ptr, ptr %i.kz, align 8, !tbaa !92
  %i.lk = getelementptr inbounds nuw i8, ptr %i.dv, i64 336
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !87
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lj, i64 noundef %i.ll)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit459 unwind label %bb.bw ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit459: ; preds = %bb.cb, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @.str.77, ptr %i.z, align 8, !tbaa !58
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.cf unwind label %bb.bw     ; 3 uses

bb.cf:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !60 ; 5 uses
  %.not.i462 = icmp eq ptr %i.lo, null
  br i1 %.not.i462, label %_ZN11StreamProxylsIRtEERS_OT_.exit466, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !57
  %i.lq = getelementptr i8, ptr %i.lp, i64 -24
end_hunk_0
