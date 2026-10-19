Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/nodemetadata?download=true
inline.NumInlined: 938
inline.NumDeleted: 461
begin_hunk_0_@_ZNK12NodeMetadata9serializeERSohb:bb.a
bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.045, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  call void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.aa, ptr %i.y)
  %i.ab = load ptr, ptr %4, align 8, !tbaa !41
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.ae = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.037.045, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.037.045, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  call void @_Z17serializeString32B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.al, ptr %i.aj)
  %i.am = load ptr, ptr %5, align 8, !tbaa !41
  %i.an = load i64, ptr %i.r, align 8, !tbaa !46
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.am, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.s
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !42
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.at = zext i1 %.not.i.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 %i.at, ptr %i.a, align 1, !tbaa !42
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.h
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !42
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.i
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.g, %bb.e
  %.sroa.037.0 = load ptr, ptr %.sroa.037.045, align 8, !tbaa !37 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not40, label %._crit_edge, label %bb.e

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK12NodeMetadata15countNonPrivateEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.05.08 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %.not9 = icmp eq ptr %.sroa.05.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.05.011 = phi ptr [ %.sroa.05.08, %.lr.ph ], [ %.sroa.05.0, %bb.b ] ; 2 uses
  %.010 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.05.011, i64 8
  %i.d = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %.not.i.i.i.not = icmp eq ptr %i.d, null
  %i.e = zext i1 %.not.i.i.i.not to i32
  %spec.select = add nuw nsw i32 %.010, %i.e      ; 2 uses
  %.sroa.05.0 = load ptr, ptr %.sroa.05.011, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_Z17serializeString32B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #5

declare void @_ZNK9Inventory9serializeERSob(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12NodeMetadata11deSerializeERSih(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(136) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !14
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = and i32 %i.l, 2
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_Z7readU32RSi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z7readU32RSi.exit:                               ; preds = %bb.a
  %.0.copyload.i.i = load i32, ptr %i.b, align 4  ; 2 uses
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not = icmp eq i32 %.0.copyload.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_Z7readU32RSi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.r = icmp ugt i8 %2, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_Z7readU32RSi.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  call void @_ZN9Inventory11deSerializeERSi(ptr noundef nonnull align 8 dereferenceable(33) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.027 = phi i32 [ 0, %.lr.ph ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_Z19deSerializeString32B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit unwind label %bb.o ; 9 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %5, align 8, !tbaa !41    ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.p                 ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit
  br i1 %i.ab, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !46  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %.not21.i = icmp eq ptr %5, %i.w
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !56

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ac, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !42
  store i8 %i.ae, ptr %i.x, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.af = load i64, ptr %i.q, align 8, !tbaa !46  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !41
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !46
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !46
  %i.al = load i64, ptr %i.p, align 8, !tbaa !42
  store i64 %i.al, ptr %i.y, align 8, !tbaa !42
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.y, align 8, !tbaa !42
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !41
  %i.an = load i64, ptr %i.q, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !46
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !42
  store i64 %i.ap, ptr %i.y, align 8, !tbaa !42
  %.not.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %5, align 8, !tbaa !41
  store i64 %i.am, ptr %i.p, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %5, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aq = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.i ], [ %i.p, %bb.j ], [ %i.aa, %bb.e ]
  store i64 0, ptr %i.q, align 8, !tbaa !46
  store i8 0, ptr %i.aq, align 1, !tbaa !42
  br i1 %i.r, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %.noexc unwind label %bb.o     ; 0 uses

.noexc:                                           ; preds = %bb.k
  %i.as = load ptr, ptr %1, align 8, !tbaa !14
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  %i.ay = and i32 %i.ax, 2
  %.not.i15 = icmp eq i32 %i.ay, 0
  br i1 %.not.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.az = load i8, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.s, ptr %3, align 8, !tbaa !58
  %i.bb = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.o ; 0 uses

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.d, %bb.l
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.p
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.be = load i64, ptr %i.p, align 8, !tbaa !42
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bg = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.p
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bk = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.t
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !42
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bo = add nuw i32 %.027, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp45, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bp = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.t
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.t, align 8, !tbaa !42
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn
}

declare void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_Z19deSerializeString32B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN9Inventory11deSerializeERSi(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12NodeMetadata5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14SimpleMetadata5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !42
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  tail call void @_ZN9Inventory5clearEv(ptr noundef nonnull align 8 dereferenceable(33) %i.p)
  ret void
}

declare void @_ZN14SimpleMetadata5clearEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare void @_ZN9Inventory5clearEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZTv0_n32_N12NodeMetadata5clearEv(ptr noundef %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  tail call void @_ZN14SimpleMetadata5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i, label %_ZN12NodeMetadata5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.g, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.g = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !42
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #27
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN12NodeMetadata5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN12NodeMetadata5clearEv.exit:                   ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !35
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  tail call void @_ZN9Inventory5clearEv(ptr noundef nonnull align 8 dereferenceable(33) %i.t)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK12NodeMetadata5emptyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK14SimpleMetadata5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = icmp eq ptr %i.d, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %i.h
}

declare noundef zeroext i1 @_ZNK14SimpleMetadata5emptyEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12NodeMetadata11markPrivateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8, !tbaa !58
  %i.b = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.fca.1.extract = extractvalue { ptr, i8 } %i.b, 1
  %i.c = trunc i8 %.fca.1.extract to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = icmp ne i64 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK16NodeMetadataList9serializeERSohbbb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 8 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  br label %_ZNK16NodeMetadataList13countNonEmptyEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not8.i = icmp eq ptr %i.k, %i.l
  br i1 %.not8.i, label %_ZNK16NodeMetadataList13countNonEmptyEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.c ]
  %.sroa.05.09.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(136) %i.n), !inline_history !137
end_hunk_0
begin_hunk_1_@_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.h, ptr %i.b, align 8, !tbaa !41
  %i.i = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.i, ptr %i.c, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !42
  store i8 %i.k, ptr %i.j, align 1, !tbaa !42
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #30
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SerializationError, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !85
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !70 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16NodeMetadataListD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !77, !range !78, !noundef !79
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not4.i = icmp eq ptr %i.d, %i.e
  br i1 %.not4.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.01.05.i = phi ptr [ %i.l, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(136) %i.g) #28, !inline_history !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.d, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZN16NodeMetadataList5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

_ZN16NodeMetadataList5clearEv.exit:               ; preds = %.loopexit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.t, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.u, align 8, !tbaa !63
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef null)
          to label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN16NodeMetadataList5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #30
  unreachable

_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit: ; preds = %_ZN16NodeMetadataList5clearEv.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16NodeMetadataList10getAllKeysEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.31") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 1537228672809129301
  br i1 %i.c, label %2, label %bb.b

2:                                                ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %2
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not44 = icmp eq i64 %i.b, 0
  br i1 %.not44, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %3 = mul nuw nsw i64 %i.b, 6
  %4 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #26
          to label %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i.a unwind label %.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i.a: ; preds = %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %0, align 8, !tbaa !167
  store ptr %4, ptr %i.e, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw [6 x i8], ptr %4, i64 %i.b ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !169
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i.a, %bb.b
  %.promoted18 = phi ptr [ %4, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not22 = icmp eq ptr %i.h, %i.i
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit
  %.lcssa19 = phi ptr [ %.promoted18, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit ], [ %i.ag, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa15 = phi ptr [ %.promoted, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE7reserveEm.exit ], [ %i.ah, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa15, ptr %i.d, align 8
  store ptr %.lcssa19, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.k = phi ptr [ %.promoted18, %.lr.ph ], [ %i.af, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.012.023 = phi ptr [ %i.h, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.m = phi ptr [ %.promoted18, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.k, ptr noundef nonnull align 2 dereferenceable(6) %i.n, i64 6, i1 false), !tbaa.struct !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !168
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775806
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = sdiv exact i64 %i.r, 6                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1537228672809129301)
  %i.x = select i1 %i.v, i64 1537228672809129301, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = mul nuw nsw i64 %i.x, 6
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc10 unwind label %.loopexit ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.aa, ptr noundef nonnull align 2 dereferenceable(6) %i.n, i64 6, i1 false), !tbaa.struct !106
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !106, !alias.scope !170
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !165

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc10 ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !168
  %i.ae = getelementptr inbounds nuw [6 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.af = phi ptr [ %i.ad, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.o, %bb.d ]
  %i.ag = phi ptr [ %i.z, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.ah = phi ptr [ %i.ae, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.ai = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.023) #29 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.i
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.m, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i, %2
  %5 = phi ptr [ %i.k, %bb.f ], [ null, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %2 ]
  %6 = phi ptr [ %i.m, %bb.f ], [ null, %_ZNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %2 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %7 = phi ptr [ %i.k, %.loopexit ], [ %5, %.loopexit.split-lp ]
  %8 = phi ptr [ %i.m, %.loopexit ], [ %6, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i11 = icmp eq ptr %8, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = ptrtoint ptr %7 to i64
  %i.ak = ptrtoint ptr %8 to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.al) #27
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN16NodeMetadataList3getEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0, i48 %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.extract.trunc = trunc i48 %1 to i16 ; 4 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !86   ; 2 uses
  %i.f = icmp slt i16 %i.e, %.sroa.06.0.extract.trunc
  br i1 %i.f, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq i16 %i.e, %.sroa.06.0.extract.trunc
  br i1 %i.g, label %bb.c, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.i = load i16, ptr %i.h, align 2, !tbaa !87   ; 2 uses
  %i.j = icmp slt i16 %i.i, %.sroa.2.0.extract.trunc
  br i1 %i.j, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i16 %i.i, %.sroa.2.0.extract.trunc
  br i1 %i.k, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.m = load i16, ptr %i.l, align 2, !tbaa !88
  %i.n = icmp slt i16 %i.m, %.sroa.3.0.extract.trunc
  br i1 %i.n, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.c, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.d ], [ %.014.i.i.i, %bb.b ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.p, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2, !tbaa !86   ; 2 uses
  %i.s = icmp sgt i16 %i.r, %.sroa.06.0.extract.trunc
  br i1 %i.s, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i16 %i.r, %.sroa.06.0.extract.trunc
  br i1 %i.t, label %bb.g, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.v = load i16, ptr %i.u, align 2, !tbaa !87   ; 2 uses
  %i.w = icmp sgt i16 %i.v, %.sroa.2.0.extract.trunc
  br i1 %i.w, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i16 %i.v, %.sroa.2.0.extract.trunc
  br i1 %i.x, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.z = load i16, ptr %i.y, align 2, !tbaa !88
  %i.aa = icmp sgt i16 %i.z, %.sroa.3.0.extract.trunc
  br i1 %i.aa, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69
  br label %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %bb.e, %bb.g, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.a, %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  %.0 = phi ptr [ %i.ac, %_ZNSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit ], [ null, %bb.e ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16NodeMetadataList6removeEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i48 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 2 uses
  store i48 %1, ptr %2, align 8
  %.sroa.06.0.extract.trunc.i = trunc i48 %1 to i16 ; 4 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 4 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not12.i.i.i.i, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !86   ; 2 uses
  %i.f = icmp slt i16 %i.e, %.sroa.06.0.extract.trunc.i
  br i1 %i.f, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq i16 %i.e, %.sroa.06.0.extract.trunc.i
  br i1 %i.g, label %bb.c, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.i = load i16, ptr %i.h, align 2, !tbaa !87   ; 2 uses
  %i.j = icmp slt i16 %i.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.j, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i16 %i.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.k, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.m = load i16, ptr %i.l, align 2, !tbaa !88
  %i.n = icmp slt i16 %i.m, %.sroa.3.0.extract.trunc.i
  br i1 %i.n, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.p, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2, !tbaa !86   ; 2 uses
  %i.s = icmp sgt i16 %i.r, %.sroa.06.0.extract.trunc.i
  br i1 %i.s, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i16 %i.r, %.sroa.06.0.extract.trunc.i
  br i1 %i.t, label %bb.g, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.v = load i16, ptr %i.u, align 2, !tbaa !87   ; 2 uses
  %i.w = icmp sgt i16 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %i.w, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i16 %i.v, %.sroa.2.0.extract.trunc.i
  br i1 %i.x, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.z = load i16, ptr %i.y, align 2, !tbaa !88
  %i.aa = icmp sgt i16 %i.z, %.sroa.3.0.extract.trunc.i
  br i1 %i.aa, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit

_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit: ; preds = %bb.f, %bb.h, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 5 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN16NodeMetadataList3getEN4core8vector3dIsEE.exit
  %i.ad = load i8, ptr %0, align 8, !tbaa !77, !range !78, !noundef !79
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(136) %i.ac)
end_hunk_1
