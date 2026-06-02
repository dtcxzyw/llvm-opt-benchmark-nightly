inline.NumInlined: 29987
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb11IOExceptionC2IJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEEERKSt13unordered_mapIS8_S8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEERSH_DpOT_:bb.a
bb.e:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #60
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.r = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.r) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  ret void

bb.g:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEEES7_RKS7_DpRKT_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  %i.v = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.v) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -1) i64 @_ZN6duckdb15LocalFileSystem14GetFilePointerERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unordered_map.484", align 8 ; 5 uses
  %3 = alloca [1 x %"struct.std::pair.1640"], align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.std::hash.379", align 1    ; 3 uses
  %6 = alloca %"struct.std::equal_to.382", align 1 ; 3 uses
  %7 = alloca %"class.std::allocator.1642", align 1 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2664
  %i.d = tail call i64 @lseek(i32 noundef %i.c, i64 noundef 0, i32 noundef 1) #58 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.g = tail call ptr @__errno_location() #67    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.h) #58
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.207, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %3, ptr noundef nonnull %i.i, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit unwind label %bb.g

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.216, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.k = load i32, ptr %i.g, align 4, !tbaa !3
  %i.l = call ptr @strerror(i32 noundef %i.k) #58
  store ptr %i.l, ptr %i.a, align 8, !tbaa !32
  invoke void @_ZN6duckdb11IOExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEEERKSt13unordered_mapIS7_S7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.m unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.q = load ptr, ptr %8, align 8, !tbaa !16     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.q) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.i ]
  %.1 = phi i1 [ true, %bb.h ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #58
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.g ]
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #58
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn.pn, %.loopexit.loopexit ]
  %.3 = phi i1 [ true, %bb.f ], [ %.2, %.loopexit.loopexit ]
  %i.t = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.t) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @__cxa_free_exception(ptr %i.f) #58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  resume { ptr, i32 } %.pn.pn.pn

bb.l:                                             ; preds = %bb.a
  ret i64 %i.d

bb.m:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LocalFileSystem4ReadERNS_10FileHandleEPvlm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %5 = alloca %"class.std::unordered_map.484", align 8 ; 5 uses
  %6 = alloca [1 x %"struct.std::pair.1640"], align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.std::hash.379", align 1    ; 3 uses
  %9 = alloca %"struct.std::equal_to.382", align 1 ; 3 uses
  %10 = alloca %"class.std::allocator.1642", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2664
  %i.f = icmp sgt i64 %3, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.080 = phi ptr [ %i.ah, %bb.p ], [ %2, %bb.a ] ; 2 uses
  %i.g = phi i64 [ %i.aj, %bb.p ], [ %4, %bb.a ]  ; 3 uses
  %i.h = phi i64 [ %i.ai, %bb.p ], [ %3, %bb.a ]  ; 3 uses
  %i.i = tail call i64 @pread(i32 noundef %i.e, ptr noundef %.080, i64 noundef %i.h, i64 noundef %i.g) ; 4 uses
  switch i64 %i.i, label %bb.p [
    i64 -1, label %bb.b
    i64 0, label %bb.k
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.k = tail call ptr @__errno_location() #67    ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.l) #58
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(6) @.str.207, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %6, ptr noundef nonnull %i.m, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit unwind label %bb.g

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.217, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.o = load i32, ptr %i.k, align 4, !tbaa !3
  %i.p = call ptr @strerror(i32 noundef %i.o) #58
  store ptr %i.p, ptr %i.c, align 8, !tbaa !32
  invoke void @_ZN6duckdb11IOExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEEERKSt13unordered_mapIS7_S7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.x unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.e, %bb.d
  %.026 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %i.u = load ptr, ptr %11, align 8, !tbaa !16    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.u) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn47 = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %bb.i ]
  %.127 = phi i1 [ true, %bb.h ], [ %.026, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.026, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #58
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %bb.g ]
  %.2 = phi i1 [ %.127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #58
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn47.pn, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi i1 [ true, %bb.f ], [ %.2, %.loopexit.loopexit ]
  %i.x = load ptr, ptr %7, align 8, !tbaa !16     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.x) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.3, label %bb.j, label %bb.w

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  call void @__cxa_free_exception(ptr %i.j) #58
  br label %bb.w

bb.k:                                             ; preds = %.lr.ph
  store i64 %i.g, ptr %i.b, align 8
  store i64 %i.h, ptr %i.a, align 8
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.218, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6duckdb11IOExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERlRmEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.x unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.025 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ae) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br i1 %.025, label %bb.o, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br i1 %.025, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn4573 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  call void @__cxa_free_exception(ptr %i.aa) #58
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds i8, ptr %.080, i64 %i.i
  %i.ai = sub nsw i64 %i.h, %i.i                  ; 2 uses
  %i.aj = add i64 %i.g, %i.i                      ; 2 uses
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !2728

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.al = phi i64 [ %4, %bb.a ], [ %i.aj, %bb.p ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1206
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ao = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6Logger3GetERKNS_10shared_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %i.am) ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.172, i8 noundef zeroext 10)
  br i1 %i.as, label %._crit_edge.i.i, label %bb.v

._crit_edge.i.i:                                  ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.at, ptr %16, align 8, !tbaa !178
  store i32 1145128274, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.au, align 8, !tbaa !139
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.av, align 4, !tbaa !79
  %i.aw = sub i64 %i.al, %3
  invoke void @_ZN6duckdb17FileSystemLogType19ConstructLogMessageERKNS_10FileHandleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %3, i64 noundef %i.aw)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6duckdb6Logger8WriteLogEPKcNS_8LogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.172, i8 noundef zeroext 10, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
end_hunk_0
