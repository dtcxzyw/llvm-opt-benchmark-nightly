Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server25SendActiveObjectRemoveAddEP12RemoteClientP9PlayerSAO:bb.a
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %.sink269 to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sink269, i64 noundef %i.lm) #37
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp, %bb.af
  %.pn79.pn = phi { ptr, i32 } [ %i.dx, %bb.af ], [ %.pn79, %.loopexit.split-lp ], [ %.pn79.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.ca

bb.ca:                                            ; preds = %.body, %bb.ab
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %.body ], [ %i.ct, %bb.ab ]
  %i.ln = load ptr, ptr %12, align 8, !tbaa !528  ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorItSaItEED2Ev.exit164, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lo = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !633
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.ls) #37
  br label %_ZNSt6vectorItSaItEED2Ev.exit164

_ZNSt6vectorItSaItEED2Ev.exit164:                 ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.lt = load ptr, ptr %11, align 8, !tbaa !1196 ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorISt4pairIbtESaIS1_EED2Ev.exit166, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit164
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !1198
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.ly) #37
  br label %_ZNSt6vectorISt4pairIbtESaIS1_EED2Ev.exit166

_ZNSt6vectorISt4pairIbtESaIS1_EED2Ev.exit166:     ; preds = %_ZNSt6vectorItSaItEED2Ev.exit164, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt4pairIbtESaIS1_EED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn, %_ZNSt6vectorISt4pairIbtESaIS1_EED2Ev.exit166 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn68.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ]
  resume { ptr, i32 } %.pn79.pn.pn.pn
}

declare noundef zeroext i1 @_ZN17ServerEnvironment22getActiveObjectMessageEP19ActiveObjectMessage(ptr noundef nonnull align 8 dereferenceable(3560), ptr noundef) local_unnamed_addr #8

declare void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server24SendActiveObjectMessagesEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.NetworkPacket, align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 32, i1 false)
  store i16 50, ptr %i.c, align 8, !tbaa !305
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 34 ; 2 uses
  store i16 %1, ptr %i.d, align 2, !tbaa !306
  %i.e = and i64 %i.b, 4294967295                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN13NetworkPacketC2Etjt.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 3 uses
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !146
  store ptr %i.h, ptr %4, align 8, !tbaa !307
  store ptr %i.h, ptr %i.g, align 8, !tbaa !731
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !308
  br label %_ZN13NetworkPacketC2Etjt.exit

_ZN13NetworkPacketC2Etjt.exit:                    ; preds = %bb.a, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.j = phi i64 [ %i.b, %bb.a ], [ %.pre.pre, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !140
  %i.l = trunc i64 %i.j to i32
  invoke void @_ZN13NetworkPacket12putRawStringEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %i.k, i32 noundef %i.l)
          to label %_ZN13NetworkPacket12putRawStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.f

_ZN13NetworkPacket12putRawStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN13NetworkPacketC2Etjt.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.n = load i16, ptr %i.d, align 2, !tbaa !306
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN13NetworkPacket12putRawStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = load i16, ptr %i.c, align 8, !tbaa !305
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @clientCommandFactoryTable, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1200
  br label %bb.c

bb.c:                                             ; preds = %_ZN13NetworkPacket12putRawStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.b
  %i.t = phi i8 [ %i.s, %bb.b ], [ 1, %_ZN13NetworkPacket12putRawStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  invoke void @_ZN15ClientInterface10sendCustomEthP13NetworkPacketb(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i16 noundef zeroext %i.n, i8 noundef zeroext %i.t, ptr noundef nonnull %4, i1 noundef zeroext %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i10, label %_ZN13NetworkPacketD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !308
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %_ZN13NetworkPacketC2Etjt.exit, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i12, label %_ZN13NetworkPacketD2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !308
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #37
  br label %_ZN13NetworkPacketD2Ev.exit14

_ZN13NetworkPacketD2Ev.exit14:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapItPSt6vectorI19ActiveObjectMessageSaIS1_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !496  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !439 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #37
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !488
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !487    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !488
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableItSt4pairIKtPSt6vectorI19ActiveObjectMessageSaIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare void @_ZN8ProfilerC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #8

declare void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server11sendAddNodeEN4core8vector3dIsEE7MapNodePSt13unordered_setItSt4hashItESt8equal_toItESaItEEfb(ptr noundef nonnull align 8 dereferenceable(1880) %0, i48 %1, i32 %2, ptr noundef %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
_ZN13NetworkPacketC2Etj.exit:
  %6 = alloca %class.NetworkPacket, align 8       ; 13 uses
  %.sroa.220.0.extract.shift = lshr i32 %2, 16
  %.sroa.220.0.extract.trunc = trunc i32 %.sroa.220.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 24
  %.sroa.3.0.extract.trunc = trunc nuw i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.shift.i = lshr i48 %1, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.a = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %.sroa.013.0.extract.trunc.i = trunc i48 %1 to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 2 uses
  %i.b = bitcast i48 %1 to <3 x i16>
  %i.c = shufflevector <3 x i16> %i.b, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.d = sitofp <2 x i16> %i.c to <2 x float>
  %i.e = fmul nnan nsz <2 x float> %i.d, splat (float 1.000000e+01)
  %i.f = fmul nnan nsz float %i.a, 1.000000e+01
  %i.g = sext i16 %.sroa.013.0.extract.trunc.i to i32 ; 2 uses
  %i.h = add nsw i32 %i.g, -15
  %i.i = icmp slt i16 %.sroa.013.0.extract.trunc.i, 0
  %i.j = select i1 %i.i, i32 %i.h, i32 %i.g
  %i.k = sdiv i32 %i.j, 16
  %i.l = sext i16 %.sroa.2.0.extract.trunc.i to i32 ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i16 %.sroa.2.0.extract.trunc.i, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16
  %i.q = ashr i48 %1, 32
  %i.r = trunc nsw i48 %i.q to i32                ; 2 uses
  %i.s = add nsw i32 %i.r, -15
  %i.t = icmp slt i48 %1, 0
  %i.u = select i1 %i.t, i32 %i.s, i32 %i.r
  %i.v = sdiv i32 %i.u, 16
  %.mask.i.i = and i32 %i.v, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.w = shl nsw i32 %i.p, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.w to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.mask5.i.i = and i32 %i.k, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.y, align 8
  store i16 33, ptr %i.x, align 8, !tbaa !305
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i16 0, ptr %i.z, align 2, !tbaa !306
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = tail call noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #38 ; 3 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !307
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !731
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !308
  %i.ae = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(36) %6, i48 %1)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN13NetworkPacketC2Etj.exit
  %.sroa.019.0.extract.trunc = trunc i32 %2 to i16
  %i.af = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEt(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, i16 noundef zeroext %.sroa.019.0.extract.trunc)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ag = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEh(ptr noundef nonnull align 8 dereferenceable(36) %i.af, i8 noundef zeroext %.sroa.220.0.extract.trunc)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEh(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i8 noundef zeroext %.sroa.3.0.extract.trunc)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %5, true
  %i.ai = zext i1 %not. to i8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEh(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, i8 noundef zeroext %i.ai)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6Server17sendNodeChangePktER13NetworkPacketN4core8vector3dIsEENS3_IfEEfPSt13unordered_setItSt4hashItESt8equal_toItESaItEE(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, i48 %.sroa.0.0.insert.insert.i.i, <2 x float> %i.e, float %i.f, float noundef %4, ptr noundef %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %6, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i24, label %_ZN13NetworkPacketD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !308
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZN13NetworkPacketC2Etj.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %6, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i26, label %_ZN13NetworkPacketD2Ev.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !308
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #37
  br label %_ZN13NetworkPacketD2Ev.exit28

_ZN13NetworkPacketD2Ev.exit28:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server14sendRemoveNodeEN4core8vector3dIsEEPSt13unordered_setItSt4hashItESt8equal_toItESaItEEf(ptr noundef nonnull align 8 dereferenceable(1880) %0, i48 %1, ptr noundef %2, float noundef %3) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
_ZN13NetworkPacketC2Etj.exit:
  %4 = alloca %class.NetworkPacket, align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.b, align 8
  store i16 34, ptr %i.a, align 8, !tbaa !305
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 0, ptr %i.c, align 2, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = tail call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #38 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !307
  store ptr %i.f, ptr %i.e, align 8, !tbaa !731
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store ptr %i.g, ptr %i.d, align 8, !tbaa !308
  %i.h = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(36) %4, i48 %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %_ZN13NetworkPacketC2Etj.exit
  %i.i = icmp slt i48 %1, 0
  %i.j = ashr i48 %1, 32
  %i.k = trunc nsw i48 %i.j to i32                ; 2 uses
  %i.l = add nsw i32 %i.k, -15
  %i.m = select i1 %i.i, i32 %i.l, i32 %i.k
  %i.n = sdiv i32 %i.m, 16
  %.mask.i.i = and i32 %i.n, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.extract.shift.i = lshr i48 %1, 16
  %i.o = trunc i48 %1 to i16
  %i.p = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.q = insertelement <2 x i16> poison, i16 %i.p, i64 0
  %i.r = insertelement <2 x i16> %i.q, i16 %i.o, i64 1
  %i.s = icmp slt <2 x i16> %i.r, zeroinitializer
  %i.t = bitcast i48 %1 to <3 x i16>              ; 2 uses
  %i.u = shufflevector <3 x i16> %i.t, <3 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.v = sext <2 x i16> %i.u to <2 x i32>         ; 2 uses
  %i.w = add nsw <2 x i32> %i.v, splat (i32 -15)
  %i.x = select <2 x i1> %i.s, <2 x i32> %i.w, <2 x i32> %i.v
  %i.y = sdiv <2 x i32> %i.x, splat (i32 16)      ; 2 uses
  %i.z = extractelement <2 x i32> %i.y, i64 0
  %i.aa = shl nsw i32 %i.z, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.aa to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.ab = extractelement <2 x i32> %i.y, i64 1
  %.mask5.i.i = and i32 %i.ab, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ac = shufflevector <3 x i16> %i.t, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ad = sitofp <2 x i16> %i.ac to <2 x float>
  %i.ae = fmul nnan nsz <2 x float> %i.ad, splat (float 1.000000e+01)
  %.sroa.3.0.extract.shift.i = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.af = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.ag = fmul nnan nsz float %i.af, 1.000000e+01
  invoke void @_ZN6Server17sendNodeChangePktER13NetworkPacketN4core8vector3dIsEENS3_IfEEfPSt13unordered_setItSt4hashItESt8equal_toItESaItEE(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, i48 %.sroa.0.0.insert.insert.i.i, <2 x float> %i.ae, float %i.ag, float noundef %3, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i21, label %_ZN13NetworkPacketD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN13NetworkPacketC2Etj.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i23, label %_ZN13NetworkPacketD2Ev.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #37
  br label %_ZN13NetworkPacketD2Ev.exit25

_ZN13NetworkPacketD2Ev.exit25:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.am
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #8

declare void @_ZN15ClientInterface17markBlocksNotSentERKSt6vectorIN4core8vector3dIsEESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN6Server9getClientEt11ClientState(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = tail call noundef ptr @_ZN15ClientInterface13getClientNoExEt11ClientState(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i16 noundef zeroext %1, i32 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  invoke void @_ZN23ClientNotFoundExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str.236)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI23ClientNotFoundException, ptr nonnull @_ZN13BaseExceptionD2Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  ret ptr %i.b
}

declare void @_ZN12RemoteClient16SetBlocksNotSentERKSt6vectorIN4core8vector3dIsEESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !531  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !439 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #37
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !518
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !519
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !518    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !519
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #37
  br label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare noundef i32 @_ZN8Profiler5printERSojj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server19sendMetadataChangedERKSt13unordered_setIN4core8vector3dIsEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EEf(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, float noundef %2) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.NodeMetadataList, align 8    ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::vector.735", align 8   ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %class.NetworkPacket, align 8       ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i8 0, ptr %3, align 8, !tbaa !1209
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !408
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef 4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  invoke void @_ZN15ClientInterface12getClientIDsE11ClientState(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.735") align 8 %5, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i32 noundef 8)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN15ClientInterface8AutoLockC2ERS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN15ClientInterface8AutoLockC2ERS_.exit:         ; preds = %bb.c
  %i.i = load ptr, ptr %5, align 8, !tbaa !632    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !632  ; 2 uses
  %.not182244 = icmp eq ptr %i.i, %i.k
  br i1 %.not182244, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 34 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.i

._crit_edge247:                                   ; preds = %bb.an, %_ZN15ClientInterface8AutoLockC2ERS_.exit
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #34 ; 0 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !528   ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge247
end_hunk_0
begin_hunk_1_@_ZN6Server15SendSetLightingEtRK8Lighting:_ZN13NetworkPacketC2Etjt.exit
bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !1440
  %i.ae = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %3, float noundef %i.ad)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.03.0.copyload = load i32, ptr %i.af, align 4, !tbaa !127
  %i.ag = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, i32 %.sroa.03.0.copyload)
          to label %bb.j unwind label %bb.r       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1441
  %i.aj = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %3, float noundef %i.ai)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1442
  %i.am = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, float noundef %i.al)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = load float, ptr %i.an, align 4, !tbaa !1443
  %i.ap = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.am, float noundef %i.ao)
          to label %bb.m unwind label %bb.r       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.aq, align 4, !tbaa !427
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !427
  %i.ar = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %3, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.as = load i16, ptr %i.c, align 2, !tbaa !306 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.6, i32 noundef 1461, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN6Server4SendEP13NetworkPacket) #35
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1032
  invoke void @_ZN15ClientInterface4sendEtP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(152) %i.au, i16 noundef zeroext %i.as, ptr noundef nonnull %3)
          to label %_ZN6Server4SendEP13NetworkPacket.exit unwind label %bb.r

_ZN6Server4SendEP13NetworkPacket.exit:            ; preds = %bb.p
  %i.av = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i21, label %_ZN13NetworkPacketD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6Server4SendEP13NetworkPacket.exit
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %_ZN6Server4SendEP13NetworkPacket.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %_ZN13NetworkPacketC2Etjt.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i23, label %_ZN13NetworkPacketD2Ev.exit25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #37
  br label %_ZN13NetworkPacketD2Ev.exit25

_ZN13NetworkPacketD2Ev.exit25:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server10SendCameraEtP6Player(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZN13NetworkPacketC2Etjt.exit:
  %3 = alloca %class.NetworkPacket, align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.b, align 8
  store i16 72, ptr %i.a, align 8, !tbaa !305
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 2 uses
  store i16 %1, ptr %i.c, align 2, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #38 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1444
  store ptr %i.f, ptr %3, align 8, !tbaa !307
  store ptr %i.f, ptr %i.e, align 8, !tbaa !731
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.d, align 8, !tbaa !308
  %i.h = trunc i32 %.pre to i8
  %i.i = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEh(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 noundef zeroext %i.h)
          to label %bb.a unwind label %bb.e       ; 0 uses

bb.a:                                             ; preds = %_ZN13NetworkPacketC2Etjt.exit
  %i.j = load i16, ptr %i.c, align 2, !tbaa !306  ; 2 uses
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.6, i32 noundef 1461, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN6Server4SendEP13NetworkPacket) #35
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032
  invoke void @_ZN15ClientInterface4sendEtP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(152) %i.l, i16 noundef zeroext %i.j, ptr noundef nonnull %3)
          to label %_ZN6Server4SendEP13NetworkPacket.exit unwind label %bb.e

_ZN6Server4SendEP13NetworkPacket.exit:            ; preds = %bb.c
  %i.m = load ptr, ptr %3, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i5, label %_ZN13NetworkPacketD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Server4SendEP13NetworkPacket.exit
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %_ZN6Server4SendEP13NetworkPacket.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %_ZN13NetworkPacketC2Etjt.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i7, label %_ZN13NetworkPacketD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #37
  br label %_ZN13NetworkPacketD2Ev.exit9

_ZN13NetworkPacketD2Ev.exit9:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.r
}

declare void @_ZN7UnitSAO16sendOutdatedDataEv(ptr noundef nonnull align 8 dereferenceable(954)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !427
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !427
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.339, i64 noundef 1) ; 0 uses
  %i.k = fpext <2 x float> %.sroa.01.0.copyload to <2 x double> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.340, i64 noundef 1) ; 0 uses
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.340, i64 noundef 1) ; 0 uses
  %i.r = fpext nsz float %.sroa.22.0.copyload to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server17SendMovePlayerRelEtRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.NetworkPacket, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 32, i1 false)
  store i16 93, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 2 uses
  store i16 %1, ptr %i.b, align 2, !tbaa !306
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 4, !tbaa !427
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !427
  %i.c = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(36) %3, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.b, align 2, !tbaa !306  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.6, i32 noundef 1461, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN6Server4SendEP13NetworkPacket) #35
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1032
  invoke void @_ZN15ClientInterface4sendEtP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(152) %i.f, i16 noundef zeroext %i.d, ptr noundef nonnull %3)
          to label %_ZN6Server4SendEP13NetworkPacket.exit unwind label %bb.f

_ZN6Server4SendEP13NetworkPacket.exit:            ; preds = %bb.d
  %i.g = load ptr, ptr %3, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Server4SendEP13NetworkPacket.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %_ZN6Server4SendEP13NetworkPacket.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i7, label %_ZN13NetworkPacketD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !308
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #37
  br label %_ZN13NetworkPacketD2Ev.exit8

_ZN13NetworkPacketD2Ev.exit8:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server13SendPlayerFovEt(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.NetworkPacket, align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297
  %i.c = tail call noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %i.b, i16 noundef zeroext %1) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %_ZN13NetworkPacketC2Etjt.exit

_ZN13NetworkPacketC2Etjt.exit:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.e, align 8
  store i16 54, ptr %i.d, align 8, !tbaa !305
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 2 uses
  store i16 %1, ptr %i.f, align 2, !tbaa !306
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = tail call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #38 ; 3 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %.sroa.5.0.copyload.pre = load i8, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 4, !tbaa !538
  %.sroa.61.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %.sroa.61.0.copyload.pre = load float, ptr %.sroa.61.0..sroa_idx.phi.trans.insert, align 4, !tbaa !427
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %.sroa.0.0.copyload.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !427
  store ptr %i.i, ptr %2, align 8, !tbaa !307
  store ptr %i.i, ptr %i.h, align 8, !tbaa !731
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store ptr %i.j, ptr %i.g, align 8, !tbaa !308
  %i.k = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %2, float noundef %.sroa.0.0.copyload.pre)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN13NetworkPacketC2Etjt.exit
  %i.l = trunc i8 %.sroa.5.0.copyload.pre to i1
  %i.m = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEb(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i1 noundef zeroext %i.l)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEf(ptr noundef nonnull align 8 dereferenceable(36) %i.m, float noundef %.sroa.61.0.copyload.pre)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = load i16, ptr %i.f, align 2, !tbaa !306  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.6, i32 noundef 1461, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN6Server4SendEP13NetworkPacket) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1032
  invoke void @_ZN15ClientInterface4sendEtP13NetworkPacket(ptr noundef nonnull align 8 dereferenceable(152) %i.q, i16 noundef zeroext %i.o, ptr noundef nonnull %2)
          to label %_ZN6Server4SendEP13NetworkPacket.exit unwind label %bb.i

_ZN6Server4SendEP13NetworkPacket.exit:            ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i8, label %_ZN13NetworkPacketD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6Server4SendEP13NetworkPacket.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !308
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #37
  br label %_ZN13NetworkPacketD2Ev.exit

_ZN13NetworkPacketD2Ev.exit:                      ; preds = %_ZN6Server4SendEP13NetworkPacket.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN13NetworkPacketD2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %_ZN13NetworkPacketC2Etjt.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i10, label %_ZN13NetworkPacketD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !308
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #37
  br label %_ZN13NetworkPacketD2Ev.exit12

_ZN13NetworkPacketD2Ev.exit12:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Server25SendLocalPlayerAnimationsEtPN4core8vector2dIfEEf(ptr noundef nonnull align 8 dereferenceable(1880) %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.NetworkPacket, align 8       ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 32, i1 false)
  store i16 81, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 34 ; 2 uses
  store i16 %1, ptr %i.b, align 2, !tbaa !306
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 5 uses
  %i.d = invoke noundef zeroext i16 @_ZN15ClientInterface18getProtocolVersionEt(ptr noundef nonnull align 8 dereferenceable(152) %i.c, i16 noundef zeroext %1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_1
begin_hunk_2_@_ZN6Server12findSpawnPosEv:.noexc.i
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !140
  %i.i = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull align 1 dereferenceable(17) @.str.284, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !146
  %i.k = load ptr, ptr %2, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.m = invoke noundef zeroext i1 @_ZNK8Settings10getV3FNoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIN4core8vector3dIfEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc.i
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.e, align 4, !tbaa !1704, !range !141, !noundef !93
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.g, align 8, !tbaa !120
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load <2 x float>, ptr %1, align 8, !tbaa !427
  %i.u = fmul nsz <2 x float> %i.t, splat (float 1.000000e+01)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !782
  %i.x = fmul nsz float %i.w, 1.000000e+01
  br label %bb.p

bb.d:                                             ; preds = %.noexc.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.d
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !120
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.y

.critedge:                                        ; preds = %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !140   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.critedge
  %i.af = load i64, ptr %i.g, align 8, !tbaa !120
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = call noundef ptr @_ZN9ServerMap15getMapgenParamsEv(ptr noundef nonnull align 8 dereferenceable(608) %i.d)
  %i.ai = call noundef i32 @_ZN12MapgenParams16getSpawnRangeMaxEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  br i1 %.4, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.e, %.loopexit
  %.056125 = phi i32 [ 0, %bb.e ], [ %i.al, %.loopexit ] ; 2 uses
  %.sroa.096.0124 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %.sroa.096.4, %.loopexit ] ; 2 uses
  %.sroa.697.0123 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.697.4, %.loopexit ] ; 2 uses
  %i.al = add nuw nsw i32 %.056125, 1             ; 2 uses
  %i.am = call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ai) ; 3 uses
  %i.an = shl nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = call noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef %i.an)
  %i.ap = sub nsw i32 %i.ao, %i.am                ; 4 uses
  %i.aq = call noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef %i.an)
  %i.ar = sub nsw i32 %i.aq, %i.am                ; 3 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !430
  %.sroa.5.0.insert.ext = shl i32 %i.ar, 16
  %.sroa.095.0.insert.ext = and i32 %i.ap, 65535  ; 2 uses
  %.sroa.095.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.095.0.insert.ext
  %i.at = call noundef i32 @_ZN13EmergeManager20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %i.as, i32 %.sroa.095.0.insert.insert) ; 2 uses
  %sext = shl i32 %i.at, 16
  %i.au = ashr exact i32 %sext, 16
  %i.av = add nsw i32 %i.au, -31007
  %or.cond = icmp ult i32 %i.av, -62013
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = trunc i32 %i.at to i16
  %.mask = and i32 %i.ar, 65535
  %.sroa.11.0.insert.ext91 = zext nneg i32 %.mask to i48
  %.sroa.11.0.insert.shift92 = shl nuw i48 %.sroa.11.0.insert.ext91, 32 ; 3 uses
  %.sroa.071.0.insert.ext75 = zext nneg i32 %.sroa.095.0.insert.ext to i48
  %sext117 = shl i32 %i.ap, 16
  %i.ax = ashr exact i32 %sext117, 16             ; 2 uses
  %i.ay = add nsw i32 %i.ax, -15
  %i.az = and i32 %i.ap, 32768
  %.not = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not, i32 %i.ax, i32 %i.ay
  %i.bb = sdiv i32 %i.ba, 16
  %i.bc = ashr exact i48 %.sroa.11.0.insert.shift92, 32
  %i.bd = trunc nsw i48 %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, -15
  %i.bf = icmp slt i48 %.sroa.11.0.insert.shift92, 0
  %i.bg = select i1 %i.bf, i32 %i.be, i32 %i.bd
  %i.bh = sdiv i32 %i.bg, 16
  %.mask.i.i = and i32 %i.bh, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.mask5.i.i = and i32 %i.bb, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %invariant.op119 = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %invariant.op = or disjoint i48 %.sroa.071.0.insert.ext75, %.sroa.11.0.insert.shift92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.057122 = phi i32 [ 0, %bb.h ], [ %.158, %bb.n ] ; 2 uses
  %.060121 = phi i32 [ 0, %bb.h ], [ %i.dd, %bb.n ]
  %.sroa.6.0120 = phi i16 [ %i.aw, %bb.h ], [ %i.dc, %bb.n ] ; 5 uses
  %.sroa.6.0.insert.ext82 = zext i16 %.sroa.6.0120 to i48
  %.sroa.6.0.insert.shift83 = shl nuw nsw i48 %.sroa.6.0.insert.ext82, 16
  %.sroa.071.0.insert.insert77.reass.reass.reass = or disjoint i48 %.sroa.6.0.insert.shift83, %invariant.op
  %i.bi = sext i16 %.sroa.6.0120 to i32           ; 2 uses
  %i.bj = add nsw i32 %i.bi, -15
  %i.bk = icmp slt i16 %.sroa.6.0120, 0
  %i.bl = select i1 %i.bk, i32 %i.bj, i32 %i.bi
  %i.bm = sdiv i32 %i.bl, 16
  %i.bn = shl nsw i32 %i.bm, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.bn to i48
  %.sroa.0.0.insert.insert.i.i.reass = or disjoint i48 %invariant.op119, %.sroa.2.0.insert.shift.i.i
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(608) %i.d, i48 %.sroa.0.0.insert.insert.i.i.reass, i1 noundef zeroext true) ; 0 uses
  %i.bs = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i48 %.sroa.071.0.insert.insert77.reass.reass.reass, ptr noundef null)
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !572 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %i.bs, 65535 ; 2 uses
  %i.bu = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !644
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !643 ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 2072
  %i.cc = icmp ugt i64 %i.cb, %i.bu
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2072 x i8], ptr %i.bx, i64 %i.bu ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !146
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.k, label %_ZNK14NodeDefManager3getEt.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.j, %bb.k
  %i.ci = phi ptr [ %i.ch, %bb.k ], [ %i.cd, %bb.j ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 98
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !1721
  %i.cl = icmp eq i8 %i.ck, 1
  %i.cm = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 127
  %or.cond5 = or i1 %i.cm, %i.cl
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.cn = add nsw i32 %.057122, 1
  %i.co = icmp sgt i32 %.057122, 0
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = add i16 %.sroa.6.0120, -1
  %.sroa.013.0.extract.trunc.i = trunc i32 %i.ap to i16
  %.sroa.3.0.extract.trunc.i = trunc i32 %i.ar to i16
  %i.cq = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.cr = insertelement <2 x i16> poison, i16 %.sroa.013.0.extract.trunc.i, i64 0
  %i.cs = insertelement <2 x i16> %i.cr, i16 %i.cp, i64 1
  %i.ct = sitofp <2 x i16> %i.cs to <2 x float>
  %i.cu = fmul nnan nsz <2 x float> %i.ct, splat (float 1.000000e+01) ; 2 uses
  %i.cv = fmul nnan nsz float %i.cq, 1.000000e+01 ; 2 uses
  %i.cw = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cu)
  %i.cx = fcmp nsz ule <2 x float> %i.cw, splat (float 3.100750e+05) ; 2 uses
  %i.cy = extractelement <2 x i1> %i.cx, i64 0
  %i.cz = extractelement <2 x i1> %i.cx, i64 1
  %or.cond8.i.not115 = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = call nsz float @llvm.fabs.f32(float %i.cv)
  %i.db = fcmp nsz ule float %i.da, 3.100750e+05
  %.not113 = select i1 %or.cond8.i.not115, i1 %i.db, i1 false
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %_ZNK14NodeDefManager3getEt.exit
  %.158 = phi i32 [ %i.cn, %bb.l ], [ 0, %_ZNK14NodeDefManager3getEt.exit ]
  %i.dc = add i16 %.sroa.6.0120, 1
  %i.dd = add nuw nsw i32 %.060121, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1701

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.g
  %.sroa.697.4 = phi nsz float [ %.sroa.697.0123, %bb.g ], [ %i.cv, %bb.m ], [ %.sroa.697.0123, %bb.n ] ; 2 uses
  %.sroa.096.4 = phi nsz <2 x float> [ %.sroa.096.0124, %bb.g ], [ %i.cu, %bb.m ], [ %.sroa.096.0124, %bb.n ] ; 2 uses
  %.4 = phi i1 [ false, %bb.g ], [ %.not113, %bb.m ], [ false, %bb.n ] ; 2 uses
  %i.de = icmp samesign ugt i32 %.056125, 3998
  %.not64 = select i1 %i.de, i1 true, i1 %.4
  br i1 %.not64, label %bb.f, label %bb.g, !llvm.loop !1702

bb.o:                                             ; preds = %bb.f
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.c
  %.sroa.099.1 = phi nsz <2 x float> [ %i.u, %bb.c ], [ zeroinitializer, %bb.o ], [ %.sroa.096.4, %bb.f ]
  %.sroa.5101.1 = phi nsz float [ %i.x, %bb.c ], [ 0.000000e+00, %bb.o ], [ %.sroa.697.4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.099.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5101.1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK8Settings10getV3FNoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIN4core8vector3dIfEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef i32 @_ZN12MapgenParams16getSpawnRangeMaxEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare noundef i32 @_Z12myrand_rangeii(i32 noundef, i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZN13EmergeManager20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(480), i32) local_unnamed_addr #8

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define dso_local void @_ZN6Server15requestShutdownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbf(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, float noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.ChatMessage, align 8        ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string.390", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %struct.ChatMessage, align 8        ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string.390", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = fcmp nsz oeq float %3, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i8 1, ptr %i.f, align 8, !tbaa !627
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !34
  %.v.i = select i1 %i.k, i64 976, i64 984
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.285, ptr %i.d, align 8, !tbaa !97
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !98   ; 5 uses
  %.not.i29 = icmp eq ptr %i.n, null
  br i1 %.not.i29, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW10infostream.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !98 ; 2 uses
  %.pre120 = load ptr, ptr %.pre.i, align 8, !tbaa !96
  %.phi.trans.insert121 = getelementptr i8, ptr %.pre120, i64 -24
  %.pre122 = load i64, ptr %.phi.trans.insert121, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %.pre122, %bb.e ], [ %i.q, %bb.d ]
  %i.w = phi ptr [ %.pre.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !120
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10), !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i)
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.j:                                             ; preds = %bb.a
  %i.ak = fcmp nsz olt float %3, 0.000000e+00     ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !545
  %i.an = fcmp nsz ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store float 0.000000e+00, ptr %i.al, align 8, !tbaa !545
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i64 0, ptr %i.aq, align 8, !tbaa !146
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !140
  store i8 0, ptr %i.ar, align 1, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1241
  store i8 0, ptr %i.as, align 1, !tbaa !546
  store i8 0, ptr %i.ao, align 8, !tbaa !547
  %.not.i30 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i30, label %_ZTW10infostream.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit31

_ZTW10infostream.exit31:                          ; preds = %bb.l, %bb.m
  %i.at = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !1722
  %.v.i32 = select i1 %i.ax, i64 976, i64 984
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.v.i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.286, ptr %i.c, align 8, !tbaa !97
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !98 ; 5 uses
  %.not.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.i33, label %_ZN11StreamProxylsEPFRSoS0_E.exit35, label %bb.n

bb.n:                                             ; preds = %_ZTW10infostream.exit31
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !106
end_hunk_2
