inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZN8facebook5velox4Type13registerSerDeEv:._crit_edge.i.i
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt14_Function_baseD2Ev.exit73
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !9
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt14_Function_baseD2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  ret void

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !307 ; 2 uses
  %.not.i77 = icmp eq ptr %i.cb, null
  br i1 %.not.i77, label %_ZNSt14_Function_baseD2Ev.exit78, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit78 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit78:                 ; preds = %bb.p, %bb.q
  %i.cf = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.b
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt14_Function_baseD2Ev.exit78
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !9
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt14_Function_baseD2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %bb.ag

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.t:                                             ; preds = %.noexc31
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.u, align 8, !tbaa !307 ; 2 uses
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt14_Function_baseD2Ev.exit83, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit83 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit83:                 ; preds = %bb.t, %bb.u
  %i.cp = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.q
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt14_Function_baseD2Ev.exit83
  %i.cr = load i64, ptr %i.q, align 8, !tbaa !9
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt14_Function_baseD2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.s
  %.pn13 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ck, %_ZNSt14_Function_baseD2Ev.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ag

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.x:                                             ; preds = %.noexc44
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !307 ; 2 uses
  %.not.i87 = icmp eq ptr %i.cv, null
  br i1 %.not.i87, label %_ZNSt14_Function_baseD2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit88 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit88:                 ; preds = %bb.x, %bb.y
  %i.cz = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ag
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt14_Function_baseD2Ev.exit88
  %i.db = load i64, ptr %i.ag, align 8, !tbaa !9
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt14_Function_baseD2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.w
  %.pn15 = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cu, %_ZNSt14_Function_baseD2Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ag

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !307 ; 2 uses
  %.not.i92 = icmp eq ptr %i.de, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = invoke noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit93 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit93:                 ; preds = %bb.aa, %bb.ab
  %i.di = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.aw
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt14_Function_baseD2Ev.exit93
  %i.dk = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt14_Function_baseD2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !307 ; 2 uses
  %.not.i97 = icmp eq ptr %i.dn, null
  br i1 %.not.i97, label %_ZNSt14_Function_baseD2Ev.exit98, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit98 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit98:                 ; preds = %bb.ad, %bb.ae
  %i.dr = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bl
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt14_Function_baseD2Ev.exit98
  %i.dt = load i64, ptr %i.bl, align 8, !tbaa !9
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt14_Function_baseD2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn19.pn = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %.pn19.pn
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11Ev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEE8RegisterERKS7_St8functionISG_ESt8optionalISt17basic_string_viewIcS5_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef byval(%"class.std::optional.186") align 8 %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"struct.std::pair.922", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.925", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.928", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #50
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !310
  store ptr %1, ptr %6, align 8, !tbaa !211, !alias.scope !313, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !310
  %i.c = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = lshr i64 %i.c, 56
  %i.e = or i64 %i.d, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESS_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSX_IST_SL_EEEEEbESX_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.922") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %i.c, i64 %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !310
  %.sroa.03.0.copyload.i.i = load ptr, ptr %5, align 8, !tbaa !316, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !310
  %i.f = load ptr, ptr %.sroa.03.0.copyload.i.i, align 8, !tbaa !318 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !307
  %.not.i.i.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i

_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.k, align 16, !tbaa !47
  store <2 x ptr> %i.i, ptr %i.l, align 8, !tbaa !47
  %.not.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i5, label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #53
  unreachable

_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit: ; preds = %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEC2EOSB_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !308, !range !53, !noundef !57
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.g:                                             ; preds = %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit unwind label %bb.h ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 0, i64 noundef %i.x, ptr noundef %.sroa.4.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit, %bb.g, %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 0 uses
  resume { ptr, i32 } %i.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit, %_ZNSt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEaSEOSB_.exit
  %i.ab = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !84
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #50
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !61

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #52 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.j, ptr %i.i, align 1, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox19IntervalDayTimeType11deserializeERKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox19IntervalDayTimeTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  store ptr @_ZZN8facebook5velox19IntervalDayTimeType3getEvE9kInstance, ptr %0, align 8, !tbaa !123
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox21IntervalYearMonthType11deserializeERKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  store ptr @_ZZN8facebook5velox21IntervalYearMonthType3getEvE9kInstance, ptr %0, align 8, !tbaa !123
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox8DateType11deserializeERKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  store ptr @_ZZN8facebook5velox8DateType3getEvE9kInstance, ptr %0, align 8, !tbaa !123
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox8TimeType11deserializeERKN5folly7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox8TimeTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  store ptr @_ZZN8facebook5velox8TimeType3getEvE9kInstance, ptr %0, align 8, !tbaa !123
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9ArrayType8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(18) %i.b)
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 6)
          to label %.noexc unwind label %bb.h     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !84, !alias.scope !321
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !29   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72   ; 5 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.p, align 8, !tbaa !72, !alias.scope !321
  store ptr %i.i, ptr %i.f, align 8, !tbaa !29
  store i64 0, ptr %i.o, align 8, !tbaa !72
  store i8 0, ptr %i.i, align 8, !tbaa !9
  %i.q = add nuw nsw i64 %i.l, 1
  br label %bb.d

bb.b:                                             ; preds = %.noexc
  store ptr %i.h, ptr %2, align 8, !tbaa !29, !alias.scope !321
  %i.r = load i64, ptr %i.i, align 8, !tbaa !9
  store i64 %i.r, ptr %i.g, align 8, !tbaa !9, !alias.scope !321
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !72 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.t, align 8, !tbaa !72, !alias.scope !321
  store ptr %i.i, ptr %i.f, align 8, !tbaa !29
  store i64 0, ptr %i.s, align 8, !tbaa !72
  store i8 0, ptr %i.i, align 8, !tbaa !9
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10OpaqueType23unregisterSerializationERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i
  %.120.i.i.i = phi ptr [ %i.af, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i ], [ %i.ba, %bb.l ] ; 9 uses
  %.018.i.i.i = phi i64 [ %i.ao, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i ], [ %i.ay, %bb.l ] ; 4 uses
  %.016.i.i.i = phi ptr [ %.0115.i.lcssa.i.i.i, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i ], [ %i.az, %bb.l ] ; 4 uses
  %i.bb = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.018.i.i.i ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !187
  %i.be = icmp eq ptr %.016.i.i.i, %i.bd
  %.val21.i.i.i.i = load ptr, ptr %.120.i.i.i, align 8, !tbaa !85 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %.val21.i.i.i.i, null ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i, i64 8
  %.val23.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !605
  %i.bg = getelementptr i8, ptr %.val23.i.i.i.i, i64 8
  %.val23.val.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !339 ; 2 uses
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  %i.bi = load i8, ptr %.val23.val.i.i.i.i, align 1, !tbaa !9
  %i.bj = icmp eq i8 %i.bi, 42
  %.idx.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.bj to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.val23.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #16
  %i.bm = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.bk, i64 noundef %i.bl, i64 noundef 3339675911)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #53
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bp = urem i64 %i.bm, %i.bh                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.bp, %.018.i.i.i
  br i1 %.not9.i.i.i.i.i, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pre.i.i.i.i.i = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %.018.i.i.i ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !187 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %i.bp
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.r, %bb.n
  %i.bt = phi ptr [ %i.br, %bb.r ], [ %.016.i.i.i, %bb.n ]
  %i.bu = phi ptr [ %i.bq, %bb.r ], [ %i.bc, %bb.n ]
  %i.bv = icmp eq ptr %i.bt, getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16)
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %.val21.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), align 8, !tbaa !626
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.bu, align 8, !tbaa !187
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i

bb.u:                                             ; preds = %bb.m
  br i1 %.not18.i.i.i.i, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i, i64 8
  %.val22.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !605
  %i.bx = getelementptr i8, ptr %.val22.i.i.i.i, i64 8
  %.val22.val.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !339 ; 2 uses
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  %i.bz = load i8, ptr %.val22.val.i.i.i.i, align 1, !tbaa !9
  %i.ca = icmp eq i8 %i.bz, 42
  %.idx.i.i.i.i.i.i.i24.i.i.i.i = zext i1 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.val22.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i24.i.i.i.i ; 2 uses
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #16
  %i.cd = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.cb, i64 noundef %i.cc, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit25.i.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #53
  unreachable

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit25.i.i.i.i: ; preds = %bb.v
  %i.cg = urem i64 %i.cd, %i.by                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.cg, %.018.i.i.i
  br i1 %.not17.i.i.i.i, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit25.i.i.i.i
  %i.ch = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %.016.i.i.i, ptr %i.ci, align 8, !tbaa !187
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i: ; preds = %bb.x, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit25.i.i.i.i, %bb.u, %bb.t, %bb.q
  %i.cj = load ptr, ptr %.120.i.i.i, align 8, !tbaa !85
  store ptr %i.cj, ptr %.016.i.i.i, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !307 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 80 ; 2 uses
  %i.co = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  tail call void @__clang_call_terminate(ptr %i.cq) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i:   ; preds = %bb.y, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !307 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 48 ; 2 uses
  %i.cu = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i.i.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i.i.i:  ; preds = %bb.aa, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !29 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.120.i.i.i, i64 32 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i.i.i
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !9
  %i.db = add i64 %i.da, 1
  tail call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #51
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit.i.i.i

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.120.i.i.i, i64 noundef 112) #51
  %i.dc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 24), align 8, !tbaa !624
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 24), align 8, !tbaa !624
  br label %_ZNSt13unordered_mapISt10type_indexN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S5_EEE5eraseERSB_.exit

_ZNSt13unordered_mapISt10type_indexN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S5_EEE5eraseERSB_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS9_Lb0EEE.exit.thread3.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS9_Lb0EEE.exit.thread3.i.us.i.i.i, %bb.f, %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit.i.i.i, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit.i.i.i
  %i.de = phi i1 [ true, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit.i.i.i ], [ false, %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit.i.i.i ], [ false, %bb.f ], [ false, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS9_Lb0EEE.exit.thread3.i.us.i.i.i ], [ false, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS9_Lb0EEE.exit.thread3.i.i.i.i ]
  ret i1 %i.de
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox10OpaqueType26clearSerializationRegistryEv() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 48), ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 32), align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 40), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56), align 8, !tbaa !228
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 64), align 8, !tbaa !230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 72), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 88), align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 96), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistryD2Ev, ptr nonnull @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance) #16
  br label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit

_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance) #16
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox10OpaqueTypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56)) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.311", align 16 ; 9 uses
  %5 = alloca %"class.std::function.308", align 16 ; 9 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.996", align 16 ; 9 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.820", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.facebook::velox::(anonymous namespace)::OpaqueSerdeRegistry::Entry", align 8 ; 19 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 48), ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 32), align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 40), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56), align 8, !tbaa !228
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 64), align 8, !tbaa !230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 72), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 88), align 8, !tbaa !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 96), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistryD2Ev, ptr nonnull @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance) #16
  br label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit

_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = tail call fastcc ptr @_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_(ptr noundef nonnull readonly align 8 dereferenceable(8) %i.f)
  %.not.i.i.not = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not, label %bb.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.h = load ptr, ptr %0, align 8, !tbaa !234    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !627
  %i.l = load ptr, ptr %9, align 8, !tbaa !29, !noalias !627
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72, !noalias !627
  %i.o = ptrtoint ptr %i.l to i64
  store i64 %i.o, ptr %7, align 16, !noalias !627
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %.sroa_idx3.i, align 8, !noalias !627
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.80, i64 67, i64 13, ptr nonnull %7)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !627
  %i.p = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !9
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.80) #50
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !9
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.h
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn30 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ci

bb.i:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEv.exit
  %i.ag = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox10OpaqueTypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56), ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not.i.i39.not = icmp eq ptr %i.ag, null
  br i1 %.not.i.i39.not, label %bb.r, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ah = load ptr, ptr %0, align 8, !tbaa !234   ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN8facebook5velox10OpaqueTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56), ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !234 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !630
  %i.aq = load ptr, ptr %1, align 8, !tbaa !29, !noalias !630
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72, !noalias !630
  store ptr %i.aq, ptr %6, align 16, !tbaa !9, !noalias !630
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !9, !noalias !630
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load ptr, ptr %11, align 8, !tbaa !29, !noalias !630
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !72, !noalias !630
  store ptr %i.av, ptr %i.au, align 16, !tbaa !9, !noalias !630
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !9, !noalias !630
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = load ptr, ptr %12, align 8, !tbaa !29, !noalias !630
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72, !noalias !630
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !9, !noalias !630
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !9, !noalias !630
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.82, i64 98, i64 3549, ptr nonnull %6)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !630
  %i.be = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.m
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !9
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.bj = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.82) #50
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  unreachable

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10OpaqueType31registerSerializationTypeErasedERKSt10shared_ptrIKS1_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSC_RKS2_IvEEESF_IFSG_SE_EE:bb.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.1.i.i.i.i.i = phi i64 [ %.0252.i.i.i.i.i, %bb.aq ], [ %i.fe, %bb.ap ], [ %i.fe, %bb.ao ]
  %.not.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !635

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ar, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i
  %i.fm = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 48)
  br i1 %i.fn, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  %i.fp = shl i64 %i.fo, 3
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #51
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i

bb.at:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10type_indexN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i, %bb.am, %bb.al
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  %i.fs = call ptr @__cxa_begin_catch(ptr %i.fr) #16 ; 0 uses
  store i64 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 40), align 8, !tbaa !188
  invoke void @__cxa_rethrow() #50
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #53
  unreachable

bb.aw:                                            ; preds = %bb.at
  unreachable

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.as, %._crit_edge.i.i.i.i.i
  store i64 %i.ep, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  store ptr %.0.i.i.i.i.i.i, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  %i.fw = urem i64 %i.dw, %i.ep
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %._crit_edge.i.i.i
  %i.fx = phi ptr [ %.0.i.i.i.i.i.i, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.0.i24.i.i = phi i64 [ %i.fw, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.ea, %._crit_edge.i.i.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.0.i24.i.i ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !85
  store ptr %i.ga, ptr %i.ed, align 8, !tbaa !85
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !187
  store ptr %i.ed, ptr %i.gb, align 8, !tbaa !85
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), align 8, !tbaa !626 ; 3 uses
  store ptr %i.gc, ptr %i.ed, align 8, !tbaa !85
  store ptr %i.ed, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), align 8, !tbaa !626
  %.not11.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not11.i.i.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.val12.i.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !605
  %i.ge = getelementptr i8, ptr %.val12.i.i.i.i, i64 8
  %.val12.val.i.i.i.i = load ptr, ptr %i.ge, align 8, !tbaa !339 ; 2 uses
  %i.gf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 8), align 8, !tbaa !227
  %i.gg = load i8, ptr %.val12.val.i.i.i.i, align 1, !tbaa !9
  %i.gh = icmp eq i8 %i.gg, 42
  %.idx.i.i.i.i.i.i.i.i9.i.i.i = zext i1 %i.gh to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.val12.val.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i9.i.i.i ; 2 uses
  %i.gj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gi) #16
  %i.gk = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.gi, i64 noundef %i.gj, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #53
  unreachable

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i.i: ; preds = %bb.ba
  %i.gn = urem i64 %i.gk, %i.gf
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gn
  store ptr %i.ed, ptr %i.go, align 8, !tbaa !187
  %.pre.i.i.i.i = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, align 8, !tbaa !225
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i.i, %bb.az
  %i.gp = phi ptr [ %.pre.i.i.i.i, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNSA_16_Hash_node_valueIS8_Lb0EEE.exit.i.i.i.i ], [ %i.fx, %bb.az ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.0.i24.i.i
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 16), ptr %i.gq, align 8, !tbaa !187
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %bb.bc, %bb.ay
  %i.gr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 24), align 8, !tbaa !624
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 24), align 8, !tbaa !624
  br label %bb.be

bb.bd:                                            ; preds = %.noexc
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bd, %bb.au
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gt, %bb.bd ], [ %i.ft, %bb.au ]
  call fastcc void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr nonnull %i.ed) #16
  br label %.body63

bb.be:                                            ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i
  %.pn.i.i = phi ptr [ %i.ed, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.ec, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i ] ; 9 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 5 uses
  %i.gu = load ptr, ptr %.1.i.i, align 8, !tbaa !29 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  %i.gx = load ptr, ptr %13, align 8, !tbaa !29   ; 6 uses
  %i.gy = icmp eq ptr %i.gx, %i.cg                ; 2 uses
  br i1 %i.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.be
  br i1 %i.gy, label %bb.bf, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %bb.be
  br i1 %i.gy, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.gz = load i64, ptr %i.cr, align 8, !tbaa !72 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  %.not21.i.i = icmp eq ptr %13, %.1.i.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.bg, !prof !61

bb.bg:                                            ; preds = %bb.bf
  switch i64 %i.gz, label %bb.bi [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !9
  store i8 %i.hb, ptr %i.gu, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.gx, i64 %i.gz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.hc = load i64, ptr %i.cr, align 8, !tbaa !72 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !72
  %i.he = load ptr, ptr %.1.i.i, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store i8 0, ptr %i.hf, align 1, !tbaa !9
  %.pre.i.i = load ptr, ptr %13, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  store ptr %i.gx, ptr %.1.i.i, align 8, !tbaa !29
  %i.hh = load <2 x i64>, ptr %i.cr, align 8, !tbaa !9
  store <2 x i64> %i.hh, ptr %i.hg, align 8, !tbaa !9
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65
  %i.hi = load i64, ptr %i.gv, align 8, !tbaa !9
  store ptr %i.gx, ptr %.1.i.i, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.hk = load <2 x i64>, ptr %i.cr, align 8, !tbaa !9
  store <2 x i64> %i.hk, ptr %i.hj, align 8, !tbaa !9
  %.not.i.i66 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i66, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.gu, ptr %13, align 8, !tbaa !29
  store i64 %i.hi, ptr %i.cg, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cg, ptr %13, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.bk, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.bf
  %i.hl = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.gu, %bb.bj ], [ %i.cg, %bb.bk ], [ %i.gx, %bb.bf ]
  store i64 0, ptr %i.cr, align 8, !tbaa !72
  store i8 0, ptr %i.hl, align 1, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.hn = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !47
  %i.ho = load ptr, ptr %i.cu, align 8, !tbaa !307
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i: ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.hm, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.hm, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64 ; 3 uses
  %i.hr = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !47
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !47 ; 2 uses
  store <2 x ptr> %i.hr, ptr %i.hp, align 16, !tbaa !47
  store <2 x ptr> %i.hn, ptr %i.hq, align 8, !tbaa !47
  %.not.i.i.i67 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i67, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #53
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i: ; preds = %bb.bm, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEC2EOSB_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.hx = load <2 x ptr>, ptr %i.df, align 8, !tbaa !47
  %i.hy = load ptr, ptr %i.df, align 8, !tbaa !307
  %.not.i.i.not.i.i5.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.not.i.i5.i, label %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i

_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i: ; preds = %bb.bo, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIvEEEaSEOSB_.exit.i
  %.sroa.0.i.i.i4.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i4.i.sroa.0.0.copyload, ptr %i.hw, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 96 ; 3 uses
  %i.ib = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !47
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !47 ; 2 uses
  store <2 x ptr> %i.ib, ptr %i.hz, align 16, !tbaa !47
  store <2 x ptr> %i.hx, ptr %i.ia, align 8, !tbaa !47
  %.not.i.i6.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i6.i, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #53
  unreachable

_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit: ; preds = %_ZNSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ig = load ptr, ptr %i.df, align 8, !tbaa !307 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i69, label %_ZNSt14_Function_baseD2Ev.exit.i70, label %bb.br

bb.br:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit
  %i.ih = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i70 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i70:               ; preds = %bb.br, %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryaSEOS3_.exit
  %i.ik = load ptr, ptr %i.cu, align 8, !tbaa !307 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ik, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i70
  %i.il = invoke noundef zeroext i1 %i.ik(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.bu ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.bt, %_ZNSt14_Function_baseD2Ev.exit.i70
  %i.io = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.cg
  br i1 %i.ip, label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.iq = load i64, ptr %i.cg, align 8, !tbaa !9
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #51
  br label %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev.exit

_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.is = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox10OpaqueTypeEEESaISF_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry3getEvE8instance, i64 56), ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !234
  store ptr %i.it, ptr %i.is, align 8, !tbaa !234
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !99 ; 4 uses
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i71, label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEaSERKS4_.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev.exit
  %.not7.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i.i72 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i72, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iy, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.jc = atomicrmw volatile add ptr %i.iy, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.iu, align 8, !tbaa !99
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.jd = phi ptr [ %i.ix, %bb.bv ], [ %i.ix, %bb.bx ], [ %.pr.pre.i.i.i, %bb.by ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 4 uses
  %i.jf = load atomic i64, ptr %i.je acquire, align 8 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 4294967297
  %i.jh = trunc i64 %i.jf to i32                  ; 2 uses
  br i1 %i.jg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.je, align 8, !tbaa !108
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 0, ptr %i.ji, align 4, !tbaa !110
  %i.jj = load ptr, ptr %i.jd, align 8, !tbaa !68
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #16, !inline_history !636
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !68
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #16, !inline_history !636
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i9.i.i.i = icmp eq i8 %i.jp, 0
  br i1 %.not.i9.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jq = add nsw i32 %i.jh, -1
  store i32 %i.jq, ptr %i.je, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.jr = atomicrmw volatile add ptr %i.je, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i = phi i32 [ %i.jh, %bb.cc ], [ %i.jr, %bb.cd ]
  %i.js = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.js, label %bb.ce, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !61

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ca, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.iw, ptr %i.iu, align 8, !tbaa !99
  br label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEaSERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEaSERKS4_.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret void

.body60:                                          ; preds = %bb.ad, %bb.ae
  %i.jt = load ptr, ptr %i.cu, align 8, !tbaa !307 ; 2 uses
  %.not.i73 = icmp eq ptr %i.jt, null
  br i1 %.not.i73, label %.body, label %bb.cf

bb.cf:                                            ; preds = %.body60
  %i.ju = invoke noundef zeroext i1 %i.jt(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %.body unwind label %bb.cg     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #53
  unreachable

.body:                                            ; preds = %bb.cf, %.body60, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.y ], [ %i.dk, %bb.cf ], [ %i.cz, %bb.z ], [ %i.dk, %.body60 ] ; 2 uses
  %i.jx = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.cg
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.body
  %i.jz = load i64, ptr %i.cg, align 8, !tbaa !9
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ch:                                            ; preds = %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %.body.i.i, %bb.ch
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.kb, %bb.ch ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_119OpaqueSerdeRegistry5EntryD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %.body63
  %.pn24 = phi { ptr, i32 } [ %eh.lpad-body64, %.body63 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN8facebook5velox10OpaqueTypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox10OpaqueTypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
end_hunk_2
