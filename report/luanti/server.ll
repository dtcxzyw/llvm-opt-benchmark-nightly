inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server15dynamicAddMediaERKNS_16DynamicMediaArgsE:bb.a
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !1567, !range !75, !noundef !24
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 105
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !941, !range !75, !noundef !24
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !80 ; 3 uses
  %i.hv = load i64, ptr %i.bq, align 8, !tbaa !80
  %i.hw = icmp eq i64 %i.hu, %i.hv
  br i1 %i.hw, label %bb.bi, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.hx = icmp eq i64 %i.hu, 0
  br i1 %i.hx, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread349, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bi
  %i.hy = load ptr, ptr %3, align 8, !tbaa !74
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !74
  %bcmp.i.i = call i32 @bcmp(ptr %i.hz, ptr %i.hy, i64 %i.hu)
  %.not351 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not351, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread349, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bh, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.bg, %bb.bf
  %.not.i144 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i144, label %_ZTW11errorstream.exit145, label %bb.bj

bb.bj:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit145

_ZTW11errorstream.exit145:                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.bj
  %i.ia = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !9, !nonnull !24, !align !25 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !26
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = invoke noundef zeroext i1 %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %.noexc147 unwind label %bb.be, !inline_history !89

.noexc147:                                        ; preds = %_ZTW11errorstream.exit145
  %.v.i146 = select i1 %i.ie, i64 976, i64 984
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.v.i146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.263, ptr %i.i, align 8, !tbaa !29
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.bk unwind label %bb.be     ; 0 uses

bb.bk:                                            ; preds = %.noexc147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !30 ; 5 uses
  %.not.i149 = icmp eq ptr %i.ih, null
  br i1 %.not.i149, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit153, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !26
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds i8, ptr %i.ih, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load i32, ptr %i.im, align 8, !tbaa !31
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ih)
          to label %.noexc151 unwind label %bb.be

.noexc151:                                        ; preds = %bb.bm
  %.pre.i150 = load ptr, ptr %i.if, align 8, !tbaa !30
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc151, %bb.bl
  %i.ip = phi ptr [ %.pre.i150, %.noexc151 ], [ %i.ih, %bb.bl ]
  %i.iq = load ptr, ptr %2, align 8, !tbaa !74
  %i.ir = load i64, ptr %i.bm, align 8, !tbaa !80
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef %i.iq, i64 noundef %i.ir)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit153 unwind label %bb.be ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit153: ; preds = %bb.bk, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.264, ptr %i.h, align 8, !tbaa !29
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bo unwind label %bb.be     ; 2 uses

bb.bo:                                            ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !30 ; 5 uses
  %.not.i156 = icmp eq ptr %i.iu, null
  br i1 %.not.i156, label %_ZN11StreamProxylsEPFRSoS0_E.exit121, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !26
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8            ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !31
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.iu)
          to label %.noexc158 unwind label %bb.be

.noexc158:                                        ; preds = %bb.bq
  %.pre.i157 = load ptr, ptr %i.it, align 8, !tbaa !30 ; 2 uses
  %.pre366 = load ptr, ptr %.pre.i157, align 8, !tbaa !26
  %.phi.trans.insert367 = getelementptr i8, ptr %.pre366, i64 -24
  %.pre368 = load i64, ptr %.phi.trans.insert367, align 8
  br label %bb.br

bb.br:                                            ; preds = %.noexc158, %bb.bp
  %i.jc = phi i64 [ %.pre368, %.noexc158 ], [ %i.ix, %bb.bp ]
  %i.jd = phi ptr [ %.pre.i157, %.noexc158 ], [ %i.iu, %bb.bp ] ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.jc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 240
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i308 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i308, label %bb.bs, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i309

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc313 unwind label %bb.be

.noexc313:                                        ; preds = %bb.bs
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i309: ; preds = %bb.br
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !46
  %.not.i1.i.i310 = icmp eq i8 %i.ji, 0
  br i1 %.not.i1.i.i310, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i309
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 67
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !52
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i311

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i309
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jg)
          to label %.noexc314 unwind label %bb.be

.noexc314:                                        ; preds = %bb.bu
  %i.jl = load ptr, ptr %i.jg, align 8, !tbaa !26
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = invoke noundef signext i8 %i.jn(ptr noundef nonnull align 8 dereferenceable(570) %i.jg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i311 unwind label %bb.be, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i311: ; preds = %.noexc314, %bb.bt
  %.0.i.i.i312 = phi i8 [ %i.jk, %bb.bt ], [ %i.jo, %.noexc314 ]
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, i8 noundef signext %.0.i.i.i312)
          to label %.noexc316 unwind label %bb.be

.noexc316:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i311
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit121 unwind label %bb.be ; 0 uses

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread349: ; preds = %bb.bi, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE4findERSC_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.jr, ptr %5, align 8, !tbaa !78
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.js, align 8, !tbaa !80
  store i8 0, ptr %i.jr, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.jt, ptr %6, align 8, !tbaa !78
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ju, align 8, !tbaa !80
  store i8 0, ptr %i.jt, align 8, !tbaa !52
  %i.jv = invoke noundef zeroext i1 @_ZN6Server12addMediaFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PS5_S8_(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread349
  br i1 %i.jv, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !1580, !range !75, !noundef !24
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bx, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseERSC_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.jz = invoke noundef zeroext i1 @_ZN2fs32DeleteSingleFileOrEmptyDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseERSC_.exit unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bx, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread349
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.bz:                                            ; preds = %bb.bv
  %i.kb = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_9MediaInfoESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE4findERSC_.exit162 unwind label %bb.cq ; 5 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE4findERSC_.exit162: ; preds = %bb.bz
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !1567, !range !75, !noundef !24
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !1580, !range !75, !noundef !24
  %i.kh = trunc nuw i8 %i.kg to i1                ; 2 uses
  br i1 %i.ke, label %bb.ca, label %bb.dc

bb.ca:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE4findERSC_.exit162
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ki = load ptr, ptr %5, align 8, !tbaa !74
  %i.kj = load i64, ptr %i.js, align 8, !tbaa !80
  invoke fastcc void @_ZN12_GLOBAL__N_115writeToTempFileB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %7, i64 %i.kj, ptr %i.ki)
          to label %bb.cc unwind label %bb.cr

bb.cc:                                            ; preds = %bb.cb
  %i.kk = load ptr, ptr %3, align 8, !tbaa !74    ; 6 uses
  %i.kl = icmp eq ptr %i.kk, %i.bp
  %i.km = load ptr, ptr %7, align 8, !tbaa !74    ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ko = icmp eq ptr %i.km, %i.kn                ; 2 uses
  br i1 %i.kl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168: ; preds = %bb.cc
  br i1 %i.ko, label %bb.cd, label %.thread.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i163: ; preds = %bb.cc
  br i1 %i.ko, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i164

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168
  %i.kp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !80 ; 3 uses
  %i.kr = icmp ult i64 %i.kq, 16
  call void @llvm.assume(i1 %i.kr)
  switch i64 %i.kq, label %bb.cf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.ks = load i8, ptr %i.km, align 1, !tbaa !52
  store i8 %i.ks, ptr %i.kk, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.km, i64 %i.kq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.kt = load i64, ptr %i.kp, align 8, !tbaa !80 ; 2 uses
  store i64 %i.kt, ptr %i.bq, align 8, !tbaa !80
  %i.ku = load ptr, ptr %3, align 8, !tbaa !74
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kt
  store i8 0, ptr %i.kv, align 1, !tbaa !52
  %.pre.i167 = load ptr, ptr %7, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170

.thread.i169:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168
  store ptr %i.km, ptr %3, align 8, !tbaa !74
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kx = load <2 x i64>, ptr %i.kw, align 8, !tbaa !52
  store <2 x i64> %i.kx, ptr %i.bq, align 8, !tbaa !52
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i164: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i163
  %i.ky = load i64, ptr %i.bp, align 8, !tbaa !52
  store ptr %i.km, ptr %3, align 8, !tbaa !74
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.la = load <2 x i64>, ptr %i.kz, align 8, !tbaa !52
  store <2 x i64> %i.la, ptr %i.bq, align 8, !tbaa !52
  %.not.i165 = icmp eq ptr %i.kk, null
  br i1 %.not.i165, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i164
  store ptr %i.kk, ptr %7, align 8, !tbaa !74
  store i64 %i.ky, ptr %i.kn, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i164, %.thread.i169
  store ptr %i.kn, ptr %7, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166, %bb.cg, %bb.ch
  %i.lb = phi ptr [ %.pre.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166 ], [ %i.kk, %bb.cg ], [ %i.kn, %bb.ch ]
  %i.lc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.lc, align 8, !tbaa !80
  store i8 0, ptr %i.lb, align 1, !tbaa !52
  %i.ld = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !52
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.li = load i64, ptr %i.bq, align 8, !tbaa !80
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %bb.ci, label %bb.ct

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.not.i174 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i174, label %_ZTW11errorstream.exit175, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit175

_ZTW11errorstream.exit175:                        ; preds = %bb.ci, %bb.cj
  %i.lk = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !9, !nonnull !24, !align !25 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !26
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef zeroext i1 %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.ll)
          to label %.noexc177 unwind label %bb.cs, !inline_history !580

.noexc177:                                        ; preds = %_ZTW11errorstream.exit175
  %.v.i176 = select i1 %i.lo, i64 976, i64 984
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.v.i176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.265, ptr %i.g, align 8, !tbaa !29
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ck unwind label %bb.cs     ; 0 uses

bb.ck:                                            ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.44, ptr %i.f, align 8, !tbaa !29
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.cm unwind label %bb.cs     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !30 ; 5 uses
  %.not.i181 = icmp eq ptr %i.lt, null
  br i1 %.not.i181, label %_ZN11StreamProxylsEPFRSoS0_E.exit185, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !26
  %i.lv = getelementptr i8, ptr %i.lu, i64 -24
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds i8, ptr %i.lt, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !31
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %.noexc183 unwind label %bb.cs

.noexc183:                                        ; preds = %bb.co
  %.pre.i182 = load ptr, ptr %i.ls, align 8, !tbaa !30
  br label %bb.cp

bb.cp:                                            ; preds = %.noexc183, %bb.cn
  %i.mb = phi ptr [ %.pre.i182, %.noexc183 ], [ %i.lt, %bb.cn ]
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.mb)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit185 unwind label %bb.cs, !inline_history !85 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit185:             ; preds = %bb.cm, %bb.cp
  %i.md = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_9MediaInfoESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseERSC_.exit unwind label %bb.cs ; 0 uses

bb.cq:                                            ; preds = %bb.bz
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.cr:                                            ; preds = %bb.cb
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.gb

bb.cs:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit199, %bb.db, %bb.da, %bb.cw, %.noexc190, %_ZTW13verbosestream.exit188, %_ZN11StreamProxylsEPFRSoS0_E.exit185, %bb.cp, %bb.co, %bb.cl, %.noexc177, %_ZTW11errorstream.exit175, %bb.cx, %bb.cv, %bb.ck
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.not.i187 = icmp eq ptr @_ZTH13verbosestream, null
  br i1 %.not.i187, label %_ZTW13verbosestream.exit188, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit188

_ZTW13verbosestream.exit188:                      ; preds = %bb.ct, %bb.cu
  %i.mh = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !9, !nonnull !24, !align !25 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !26
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = invoke noundef zeroext i1 %i.mk(ptr noundef nonnull align 8 dereferenceable(8) %i.mi)
          to label %.noexc190 unwind label %bb.cs, !inline_history !1581

.noexc190:                                        ; preds = %_ZTW13verbosestream.exit188
  %.v.i189 = select i1 %i.ml, i64 976, i64 984
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.v.i189 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.261, ptr %i.e, align 8, !tbaa !29
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.cv unwind label %bb.cs     ; 0 uses

bb.cv:                                            ; preds = %.noexc190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cw unwind label %bb.cs

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.266, ptr %i.d, align 8, !tbaa !29
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cx unwind label %bb.cs

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.mq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.cy unwind label %bb.cs     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !30 ; 5 uses
  %.not.i195 = icmp eq ptr %i.mr, null
  br i1 %.not.i195, label %_ZN11StreamProxylsEPFRSoS0_E.exit199, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !26
  %i.mt = getelementptr i8, ptr %i.ms, i64 -24
  %i.mu = load i64, ptr %i.mt, align 8
  %i.mv = getelementptr inbounds i8, ptr %i.mr, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !31
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %.noexc197 unwind label %bb.cs

.noexc197:                                        ; preds = %bb.da
  %.pre.i196 = load ptr, ptr %i.mq, align 8, !tbaa !30
  br label %bb.db

bb.db:                                            ; preds = %.noexc197, %bb.cz
  %i.mz = phi ptr [ %.pre.i196, %.noexc197 ], [ %i.mr, %bb.cz ]
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.mz)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit199 unwind label %bb.cs, !inline_history !85 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit199:             ; preds = %bb.cy, %bb.db
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201 unwind label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit199, %bb.ca
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  store i8 1, ptr %i.nc, align 8, !tbaa !1582
  %13 = getelementptr inbounds nuw i8, ptr %i.kb, i64 105
  store i8 1, ptr %13, align 1, !tbaa !941
  br label %bb.de

bb.dc:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE9MediaInfoSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE4findERSC_.exit162
  br i1 %i.kh, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kb, i64 106
  store i8 1, ptr %i.nd, align 2, !tbaa !730
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !80
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  store i8 1, ptr %i.ni, align 8, !tbaa !1582
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.nj, ptr %8, align 8, !tbaa !521
  %i.nk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.nk, align 8, !tbaa !523
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nm, align 8, !tbaa !477
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.no = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  store ptr %i.no, ptr %9, align 8, !tbaa !521
  %i.np = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 1, ptr %i.np, align 8, !tbaa !523
  %i.nq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nr, align 8, !tbaa !477
  %i.ns = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i8 0, i64 16, i1 false)
  %i.nt = load ptr, ptr %i.q, align 8, !tbaa !94
  %.not88 = icmp eq ptr %i.nt, null
  br i1 %.not88, label %._crit_edge361, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %10, i8 0, i64 32, i1 false)
  store i16 44, ptr %i.nu, align 8, !tbaa !240
  %i.nv = getelementptr inbounds nuw i8, ptr %10, i64 34
  store i16 0, ptr %i.nv, align 2, !tbaa !246
  %i.nw = load ptr, ptr %6, align 8, !tbaa !74
  %i.nx = load i64, ptr %i.ju, align 8, !tbaa !80
  %i.ny = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(36) %10, i64 %i.nx, ptr %i.nw)
          to label %bb.di unwind label %bb.dv

bb.di:                                            ; preds = %bb.dh
  %i.nz = load ptr, ptr %2, align 8, !tbaa !74
  %i.oa = load i64, ptr %i.bm, align 8, !tbaa !80
  %i.ob = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(36) %i.ny, i64 %i.oa, ptr %i.nz)
          to label %bb.dj unwind label %bb.dv     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !1583, !range !75, !noundef !24
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEb(ptr noundef nonnull align 8 dereferenceable(36) %10, i1 noundef zeroext %i.oe)
          to label %bb.dk unwind label %bb.dv     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.og = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !994 ; 2 uses
  %i.oi = load ptr, ptr %10, align 8, !tbaa !247  ; 4 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.oh, %i.oi
  br i1 %.not.i.i.i.i.i, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.om = icmp slt i64 %i.ol, 0
  br i1 %i.om, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, !prof !62

.noexc.i.i.i:                                     ; preds = %bb.dl
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc206 unwind label %bb.dw

.noexc206:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.dl
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #38
          to label %.noexc207 unwind label %bb.dw ; 5 uses

.noexc207:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.on, ptr %11, align 8, !tbaa !247
  %i.oo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !994
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ol ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !248
  %i.or = icmp samesign ugt i64 %i.ol, 1
  br i1 %i.or, label %bb.dm, label %bb.do, !prof !948

bb.dm:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.on, ptr align 1 %i.oi, i64 %i.ol, i1 false)
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dk
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ot = getelementptr inbounds i8, ptr null, i64 %i.ol ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !248
  br label %bb.dp

bb.do:                                            ; preds = %.noexc207
  %i.ov = load i8, ptr %i.oi, align 1, !tbaa !52
  store i8 %i.ov, ptr %i.on, align 1, !tbaa !52
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm, %bb.dn
  %i.ow = phi ptr [ %i.oq, %bb.dm ], [ %i.ou, %bb.dn ], [ %i.oq, %bb.do ] ; 2 uses
  %i.ox = phi ptr [ %i.op, %bb.dm ], [ %i.ot, %bb.dn ], [ %i.op, %bb.do ]
  %i.oy = phi ptr [ %i.oo, %bb.dm ], [ %i.os, %bb.dn ], [ %i.oo, %bb.do ]
  store ptr %i.ox, ptr %i.oy, align 8, !tbaa !994
  %i.oz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.pa = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.oz, ptr noundef nonnull align 8 dereferenceable(12) %i.pa, i64 12, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !1584
  %i.pd = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEj(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %i.pc)
          to label %bb.dq unwind label %bb.dx     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.pe = load ptr, ptr %5, align 8, !tbaa !74
  %i.pf = load i64, ptr %i.js, align 8, !tbaa !80
  invoke void @_ZN13NetworkPacket13putLongStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(36) %11, i64 %i.pf, ptr %i.pe)
          to label %bb.dr unwind label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  %i.pi = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ph) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i.i, label %_ZN15ClientInterface8AutoLockC2ERS_.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.pi) #35
          to label %.noexc210 unwind label %bb.dy

.noexc210:                                        ; preds = %bb.ds
  unreachable

_ZN15ClientInterface8AutoLockC2ERS_.exit:         ; preds = %bb.dr
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.sroa.0334.0354 = load ptr, ptr %i.pj, align 8, !tbaa !427 ; 2 uses
  %.not352355 = icmp eq ptr %.sroa.0334.0354, null
  br i1 %.not352355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %i.pk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.not.i213 = icmp eq ptr @_ZTH13warningstream, null
  %i.pm = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  br label %bb.dz

._crit_edge:                                      ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit234, %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %i.pn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ph) #34 ; 0 uses
  %i.po = load ptr, ptr %11, align 8, !tbaa !247  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketD2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge
  %i.pp = load ptr, ptr %i.ow, align 8, !tbaa !248
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.po to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.ps) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %._crit_edge, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.pt = load ptr, ptr %10, align 8, !tbaa !247  ; 3 uses
  %.not.i.i.i.i211 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i211, label %bb.fl, label %bb.du

bb.du:                                            ; preds = %_ZN13NetworkPacketD2Ev.exit
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !248
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.py) #37
  br label %bb.fl

bb.dv:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.dw:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
end_hunk_0
