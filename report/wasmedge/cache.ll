Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/cache?download=true
inline.NumInlined: 165
inline.NumDeleted: 97
begin_hunk_0_@_ZN8WasmEdge3AOT5Cache7getPathB5cxx11EN5cxx204spanIKhLm18446744073709551615EEENS1_12StorageScopeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !17
  %i.q = load ptr, ptr %12, align 8, !tbaa !15    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store ptr %i.q, ptr %i.o, align 8, !tbaa !15
  %i.x = load i64, ptr %i.r, align 8, !tbaa !16
  store i64 %i.x, ptr %i.p, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.y = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.l ]
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.r, ptr %12, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !10
  store ptr null, ptr %i.ac, align 8, !tbaa !10
  store i64 0, ptr %i.z, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZN5cxx208expectedINSt10filesystem7__cxx114pathEN8WasmEdge7ErrCodeEEC2IS3_TnPNSt9enable_ifIXaasr6traitsE17enable_in_place_vIT_E16is_convertible_vIS9_S3_EEvE4typeELPv0ELb1EEEOS9_.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #13
  unreachable

_ZN5cxx208expectedINSt10filesystem7__cxx114pathEN8WasmEdge7ErrCodeEEC2IS3_TnPNSt9enable_ifIXaasr6traitsE17enable_in_place_vIT_E16is_convertible_vIS9_S3_EEvE4typeELPv0ELb1EEEOS9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i11, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i12, label %bb.n

bb.n:                                             ; preds = %_ZN5cxx208expectedINSt10filesystem7__cxx114pathEN8WasmEdge7ErrCodeEEC2IS3_TnPNSt9enable_ifIXaasr6traitsE17enable_in_place_vIT_E16is_convertible_vIS9_S3_EEvE4typeELPv0ELb1EEEOS9_.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ag) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i12

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i12: ; preds = %bb.n, %_ZN5cxx208expectedINSt10filesystem7__cxx114pathEN8WasmEdge7ErrCodeEEC2IS3_TnPNSt9enable_ifIXaasr6traitsE17enable_in_place_vIT_E16is_convertible_vIS9_S3_EEvE4typeELPv0ELb1EEEOS9_.exit
  %i.ah = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i12
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #12
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit15

_ZNSt10filesystem7__cxx114pathD2Ev.exit15:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i16, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i17, label %bb.o

bb.o:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit15
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.am) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i17

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i17: ; preds = %bb.o, %_ZNSt10filesystem7__cxx114pathD2Ev.exit15
  %i.an = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i17
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #12
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit20

_ZNSt10filesystem7__cxx114pathD2Ev.exit20:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.as = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.m
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit20
  %i.au = load i64, ptr %i.m, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i21, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i22, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.ax) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i22

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i22: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i22
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #12
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit25

_ZNSt10filesystem7__cxx114pathD2Ev.exit25:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

bb.q:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn7 = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %bb.t ], [ %i.bd, %bb.q ]
  %i.bg = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.m
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.u
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.g
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %bb.g ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %.pn7.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8WasmEdge3AOT12_GLOBAL__N_17getRootB5cxx11ENS0_5Cache12StorageScopeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8WasmEdgeL10kCacheRootE, i8 noundef zeroext 2)
  br label %_ZNSt10filesystem7__cxx114pathC2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZN8WasmEdge4Path4homeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2) #11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 5, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.e, align 8
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.f) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %6 = load ptr, ptr %3, align 8, !tbaa !15       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %6, %7
  br i1 %i.g, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.h = load i64, ptr %7, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %6, i64 noundef %i.i) #12
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.a

_ZNSt10filesystem7__cxx114pathD2Ev.exit.a:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.c, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i6, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i7, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.l) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i7

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i7: ; preds = %bb.l, %bb.k
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i7
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #12
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit10

_ZNSt10filesystem7__cxx114pathD2Ev.exit10:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %i.d, label %bb.m, label %_ZNSt10filesystem7__cxx114pathC2Ev.exit

bb.m:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSt10filesystem7__cxx114pathC2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZNSt10filesystem7__cxx114pathC2Ev.exit:          ; preds = %bb.m, %_ZNSt10filesystem7__cxx114pathD2Ev.exit10, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN8WasmEdge3AOT6Blake3C1Ev(ptr noundef nonnull align 8 dereferenceable(1912)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8WasmEdge3AOT6Blake36updateEN5cxx204spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(1912), ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8WasmEdge3AOT6Blake38finalizeEN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(1912), ptr, i64) local_unnamed_addr #4

declare void @_ZN8WasmEdge20convertBytesToHexStrEN5cxx204spanIKhLm18446744073709551615EEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb(ptr, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #12
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #11
  br label %common.resume

bb.f:                                             ; preds = %_ZNSt10filesystem7__cxx114pathC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !15
end_hunk_0
