Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rbac_filter?download=true
inline.NumInlined: 849
inline.NumDeleted: 640
begin_hunk_0_@_ZN9grpc_core10RbacFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE:bb.a
bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !125
  %i.be = load ptr, ptr %2, align 8, !tbaa !126
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !127
  %i.bh = tail call noundef i64 %i.bd(ptr noundef %i.be, ptr noundef %i.bg), !inline_history !123
  br label %_ZNK9grpc_core10FilterArgs11instance_idEv.exit

bb.y:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %2, align 8, !tbaa !129
  br label %_ZNK9grpc_core10FilterArgs11instance_idEv.exit

_ZNK9grpc_core10FilterArgs11instance_idEv.exit:   ; preds = %bb.x, %bb.y
  %.0.i.i.i.i = phi i64 [ %i.bh, %bb.x ], [ %i.bi, %bb.y ]
  store i64 %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @_ZN9grpc_core12EvaluateArgs14PerChannelArgsC1EP17grpc_auth_contextRKNS_11ChannelArgsE(ptr noundef nonnull align 8 dereferenceable(464) %10, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZSt11make_uniqueIN9grpc_core10RbacFilterEJmNS0_12EvaluateArgs14PerChannelArgsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(464) %10)
          to label %_ZNSt10unique_ptrIN9grpc_core10RbacFilterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ab

_ZNSt10unique_ptrIN9grpc_core10RbacFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK9grpc_core10FilterArgs11instance_idEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %9, align 8, !tbaa !84
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !84
  store ptr null, ptr %9, align 8, !tbaa !84
  store i64 1, ptr %0, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 424
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 440 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core10RbacFilterESt14default_deleteIS1_EED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core10RbacFilterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 248
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !60 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 264 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !65
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #27
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.z, %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i4.i, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !65
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit

_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK9grpc_core10FilterArgs11instance_idEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit33, %_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit, %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.v, %bb.ab, %bb.k
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.k ], [ %.pn14, %bb.v ], [ %i.cl, %bb.ab ]
  resume { ptr, i32 } %.pn17.pn
}

declare void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i32 noundef, i64, ptr, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load i64, ptr %.05.i.i, align 8, !tbaa !63 ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN9grpc_core10RbacFilterEJmNS0_12EvaluateArgs14PerChannelArgsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(464) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.grpc_core::EvaluateArgs::PerChannelArgs", align 8 ; 18 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #29 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %3, ptr noundef nonnull align 8 dereferenceable(464) %2, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !64
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load ptr, ptr %i.g, align 8, !tbaa !65
  store ptr %4, ptr %i.f, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = load <2 x ptr>, ptr %5, align 8, !tbaa !64
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  store ptr %8, ptr %6, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.l, ptr noundef nonnull align 8 dereferenceable(172) %i.m, i64 132, i1 false), !tbaa.struct !67
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 5 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !68
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.u = load i64, ptr %i.t, align 8, !tbaa !69   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.q, ptr %i.n, align 8, !tbaa !60
  %i.x = load i64, ptr %i.r, align 8, !tbaa !61
  store i64 %i.x, ptr %i.p, align 8, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 256
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressC2EOS2_.exit.i

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.y = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.u, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !69
  store ptr %i.r, ptr %i.o, align 8, !tbaa !60
  store i64 0, ptr %i.z, align 8, !tbaa !69
  store i8 0, ptr %i.r, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !70
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.ae, ptr noundef nonnull align 8 dereferenceable(172) %i.af, i64 132, i1 false), !tbaa.struct !67
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 5 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !68
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

bb.c:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressC2EOS2_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.an = load i64, ptr %i.am, align 8, !tbaa !69 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressC2EOS2_.exit.i
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !60
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !61
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !61
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %2, i64 432
  %.pre5 = load i64, ptr %.phi.trans.insert4, align 8, !tbaa !69
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsC2EOS1_.exit

_ZN9grpc_core12EvaluateArgs14PerChannelArgsC2EOS1_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.ar = phi i64 [ %i.an, %bb.c ], [ %.pre5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 432
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !69
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !60
  store i64 0, ptr %i.as, align 8, !tbaa !69
  store i8 0, ptr %i.ak, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !70
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !70
  invoke void @_ZN9grpc_core10RbacFilterC1EmNS_12EvaluateArgs14PerChannelArgsE(ptr noundef nonnull align 8 dereferenceable(488) %i.a, i64 noundef %i.b, ptr noundef nonnull align 8 %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgsC2EOS1_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !84
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ai
  br i1 %i.ay, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !61
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !60  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !61
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i
  %i.bg = load ptr, ptr %6, align 8, !tbaa !65
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3.i
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i4.i, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit

_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %bb.f
  ret void

bb.g:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgsC2EOS1_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %3) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 488) #27
  resume { ptr, i32 } %i.bp
}

declare void @_ZN9grpc_core12EvaluateArgs14PerChannelArgsC1EP17grpc_auth_contextRKNS_11ChannelArgsE(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core12EvaluateArgs14PerChannelArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !61
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !61
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3

_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZN9grpc_core12EvaluateArgs14PerChannelArgs7AddressD2Ev.exit3, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #27
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core18RbacFilterRegisterEPNS_17CoreConfiguration7BuilderE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN9grpc_core23RbacServiceConfigParser8RegisterEPNS_17CoreConfiguration7BuilderE(ptr noundef %0)
  ret void
}

declare void @_ZN9grpc_core23RbacServiceConfigParser8RegisterEPNS_17CoreConfiguration7BuilderE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.5() #7 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core14promise_detail10UnwakeableE, i64 16), ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.6() #8 section ".text.startup" comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.c = tail call noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef nonnull @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv)
  store i16 %i.c, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 2, !tbaa !15
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i8 0, i64 24, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #26
  br label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit

_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !132 ; 3 uses
  %i.e = load ptr, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !133 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !134
  %.not.i2 = icmp eq ptr %i.d, %i.j
  br i1 %.not.i2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  store ptr %0, ptr %i.d, align 8, !tbaa !16
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !132
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #30
  unreachable

_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !16
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
