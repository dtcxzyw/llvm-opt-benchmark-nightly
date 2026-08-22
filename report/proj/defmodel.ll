Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16DeformationModel10MasterFile5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::allocator", align 1   ; 5 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::allocator", align 1   ; 5 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(928) ptr @_Znwm(i64 noundef 928) #39 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(928) %i.a, i8 0, i64 928, i1 false)
  invoke void @_ZN16DeformationModel10MasterFileC2Ev(ptr noundef nonnull align 8 dereferenceable(928) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store i8 0, ptr %2, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store ptr null, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  invoke void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5parseIRKS8_EESC_OT_St8functionIFbiNS_6detail13parse_event_tERSC_EEbb(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %2, align 8, !tbaa !32      ; 2 uses
  %i.d = load i8, ptr %3, align 8, !tbaa !32
  store i8 %i.d, ptr %2, align 8, !tbaa !32
  store i8 %i.c, ptr %3, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.f, ptr %i.b, align 8, !tbaa !16
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 8, !tbaa !16
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext %i.c) #37, !inline_history !33
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.l = load i8, ptr %2, align 8, !tbaa !29
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.u, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 928) #38
  br label %bb.mw

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not.i151 = icmp eq ptr %i.r, null
  br i1 %.not.i151, label %_ZNSt14_Function_baseD2Ev.exit152, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit152 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit152:                ; preds = %bb.g, %bb.h
  %i.v = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.w = icmp eq i32 %i.p, %i.v
  br i1 %i.w, label %bb.j, label %bb.mv

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit152
  %i.x = extractvalue { ptr, i32 } %i.o, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #37 ; 2 uses
  %i.z = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.my unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.059 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.059, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.059, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn628 = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #37
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn627 = phi { ptr, i32 } [ %.pn628, %bb.n ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  invoke void @__cxa_end_catch()
          to label %bb.mv unwind label %bb.mx

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.my unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread: ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %.057 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.s
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.057, label %bb.t, label %bb.mv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.057, label %bb.t, label %bb.mv

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.pn99631 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ]
  call void @__cxa_free_exception(ptr %i.al) #37
  br label %bb.mv

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.20, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit unwind label %bb.br

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit: ; preds = %bb.u
  %i.at = load ptr, ptr %i.a, align 16, !tbaa !8  ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %9, align 8, !tbaa !8     ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ay, label %bb.v, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ay, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  switch i64 %i.ba, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !16
  store i8 %i.bc, ptr %i.at, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !17
  %i.bf = load ptr, ptr %i.a, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aw, ptr %i.a, align 16, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !16
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !16
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bk = load i64, ptr %i.au, align 16, !tbaa !16
  store ptr %i.aw, ptr %i.a, align 16, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !16
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !16
  %.not.i156 = icmp eq ptr %i.at, null
  br i1 %.not.i156, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %9, align 8, !tbaa !8
  store i64 %i.bk, ptr %i.ax, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %9, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.bo = phi ptr [ %i.at, %bb.y ], [ %i.ax, %bb.z ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !17
  store i8 0, ptr %i.bo, align 1, !tbaa !16
  %i.bq = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.21, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit160 unwind label %bb.bs

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.bv = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 5 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !8  ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = load ptr, ptr %10, align 8, !tbaa !8    ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb                ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i167: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit160
  br i1 %i.cc, label %bb.aa, label %.thread.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i161: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit160
  br i1 %i.cc, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i162

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i167
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !17 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %.not21.i164 = icmp eq ptr %10, %i.bw
  br i1 %.not21.i164, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169, label %bb.ab, !prof !38

bb.ab:                                            ; preds = %bb.aa
  switch i64 %i.ce, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !16
  store i8 %i.cg, ptr %i.bx, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.ca, i64 %i.ce, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !17
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !16
  %.pre.i166 = load ptr, ptr %10, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169

.thread.i168:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i167
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !tbaa !16
  store <2 x i64> %i.cn, ptr %i.cl, align 8, !tbaa !16
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i162: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i161
  %i.co = load i64, ptr %i.by, align 8, !tbaa !16
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !tbaa !16
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !tbaa !16
  %.not.i163 = icmp eq ptr %i.bx, null
  br i1 %.not.i163, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i162
  store ptr %i.bx, ptr %10, align 8, !tbaa !8
  store i64 %i.co, ptr %i.cb, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i162, %.thread.i168
  store ptr %i.cb, ptr %10, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165, %bb.ae, %bb.af
  %i.cs = phi ptr [ %i.bx, %bb.ae ], [ %i.cb, %bb.af ], [ %i.ca, %bb.aa ], [ %.pre.i166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i165 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !17
  store i8 0, ptr %i.cs, align 1, !tbaa !16
  %i.cu = load ptr, ptr %10, align 8, !tbaa !8    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !16
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.22, i1 noundef zeroext true)
          to label %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit unwind label %bb.bt

_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cz = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8  ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  %i.de = load ptr, ptr %11, align 8, !tbaa !8    ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.dg = icmp eq ptr %i.de, %i.df                ; 2 uses
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i179: ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.dg, label %bb.ag, label %.thread.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i173: ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.dg, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i174

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i179
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !17 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %.not21.i176 = icmp eq ptr %11, %i.da
  br i1 %.not21.i176, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit181, label %bb.ah, !prof !38

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.di, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i177
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !16
  store i8 %i.dk, ptr %i.db, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i177

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.de, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i177: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !17 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !17
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !16
  %.pre.i178 = load ptr, ptr %11, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit181

.thread.i180:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i179
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  store ptr %i.de, ptr %i.da, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !16
  store <2 x i64> %i.dr, ptr %i.dp, align 8, !tbaa !16
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i174: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i173
  %i.ds = load i64, ptr %i.dc, align 8, !tbaa !16
  store ptr %i.de, ptr %i.da, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
end_hunk_0
begin_hunk_1_@_ZN16DeformationModel9Component5parseERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEE:bb.a
.thread.i204:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i203
  store ptr %i.ho, ptr %i.u, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hz = load <2 x i64>, ptr %i.hy, align 8, !tbaa !16
  store <2 x i64> %i.hz, ptr %i.w, align 8, !tbaa !16
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i197
  %i.ia = load i64, ptr %i.v, align 8, !tbaa !16
  store ptr %i.ho, ptr %i.u, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ic = load <2 x i64>, ptr %i.ib, align 8, !tbaa !16
  store <2 x i64> %i.ic, ptr %i.w, align 8, !tbaa !16
  %.not.i199 = icmp eq ptr %i.hm, null
  br i1 %.not.i199, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198
  store ptr %i.hm, ptr %20, align 8, !tbaa !8
  store i64 %i.ia, ptr %i.hp, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198, %.thread.i204
  store ptr %i.hp, ptr %20, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205: ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201, %bb.bq, %bb.br
  %i.id = phi ptr [ %i.hm, %bb.bq ], [ %i.hp, %bb.br ], [ %i.ho, %bb.bm ], [ %.pre.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i201 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.ie, align 8, !tbaa !17
  store i8 0, ptr %i.id, align 1, !tbaa !16
  %i.if = load ptr, ptr %20, align 8, !tbaa !8    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !16
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.79, i1 noundef zeroext true)
          to label %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit209 unwind label %bb.cc

_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.ik = load ptr, ptr %i.x, align 8, !tbaa !8   ; 6 uses
  %i.il = icmp eq ptr %i.ik, %i.y
  %i.im = load ptr, ptr %21, align 8, !tbaa !8    ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.io = icmp eq ptr %i.im, %i.in                ; 2 uses
  br i1 %i.il, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216: ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit209
  br i1 %i.io, label %bb.bs, label %.thread.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i210: ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit209
  br i1 %i.io, label %bb.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i211

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216
  %i.ip = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !17 ; 3 uses
  %i.ir = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.ir)
  %.not21.i213 = icmp eq ptr %21, %i.x
  br i1 %.not21.i213, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218, label %bb.bt, !prof !38

bb.bt:                                            ; preds = %bb.bs
  switch i64 %i.iq, label %bb.bv [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214
    i64 1, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.is = load i8, ptr %i.im, align 1, !tbaa !16
  store i8 %i.is, ptr %i.ik, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.im, i64 %i.iq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.it = load i64, ptr %i.ip, align 8, !tbaa !17 ; 2 uses
  store i64 %i.it, ptr %i.z, align 8, !tbaa !17
  %i.iu = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.it
  store i8 0, ptr %i.iv, align 1, !tbaa !16
  %.pre.i215 = load ptr, ptr %21, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

.thread.i217:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216
  store ptr %i.im, ptr %i.x, align 8, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ix = load <2 x i64>, ptr %i.iw, align 8, !tbaa !16
  store <2 x i64> %i.ix, ptr %i.z, align 8, !tbaa !16
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i211: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i210
  %i.iy = load i64, ptr %i.y, align 8, !tbaa !16
  store ptr %i.im, ptr %i.x, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ja = load <2 x i64>, ptr %i.iz, align 8, !tbaa !16
  store <2 x i64> %i.ja, ptr %i.z, align 8, !tbaa !16
  %.not.i212 = icmp eq ptr %i.ik, null
  br i1 %.not.i212, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i211
  store ptr %i.ik, ptr %21, align 8, !tbaa !8
  store i64 %i.iy, ptr %i.in, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i211, %.thread.i217
  store ptr %i.in, ptr %21, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218: ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214, %bb.bw, %bb.bx
  %i.jb = phi ptr [ %i.ik, %bb.bw ], [ %i.in, %bb.bx ], [ %i.im, %bb.bs ], [ %.pre.i215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.jc, align 8, !tbaa !17
  store i8 0, ptr %i.jb, align 1, !tbaa !16
  %i.jd = load ptr, ptr %21, align 8, !tbaa !8    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !16
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke fastcc void @_ZN16DeformationModelL15getObjectMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.80)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.37, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit222 unwind label %bb.ce

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit222: ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  %i.ji = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 24 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jk = icmp eq i64 %i.jj, 8
  br i1 %i.jk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread577

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit222
  %i.jl = load ptr, ptr %23, align 8, !tbaa !8
  %i.jm = load i64, ptr %i.jl, align 1
  %i.jn = icmp ne i64 %i.jm, 8389750308618530659
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread577

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 0, ptr %24, align 8, !tbaa !29
  %i.jq = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.jq, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread577: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit222, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke fastcc void @_ZN16DeformationModelL15getObjectMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias writable align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.67)
          to label %bb.bz unwind label %bb.cf

bb.bz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread577
  %.pre = load i64, ptr %i.ji, align 8, !tbaa !17 ; 9 uses
  switch i64 %.pre, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224: ; preds = %.thread, %bb.bz
  %i.jr = load ptr, ptr %23, align 8, !tbaa !8    ; 6 uses
  %i.js = load i64, ptr %i.jr, align 1
  %i.jt = icmp ne i64 %i.js, 8389750308618530659
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224
  %i.jw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i231 unwind label %bb.cg ; 7 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i231: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224.thread
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.jx, i8 0, i64 24, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 4 uses
  store ptr %i.jz, ptr %i.jy, align 8, !tbaa !14
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  store i8 0, ptr %i.jz, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component20ConstantTimeFunctionE, i64 16), ptr %i.jw, align 16, !tbaa !36
  %i.kb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kc = icmp eq ptr %i.jr, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i229, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i229: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i231
  %i.kd = load i64, ptr %i.jr, align 1
  store i64 %i.kd, ptr %i.jz, align 8
  store i64 8, ptr %i.ka, align 16, !tbaa !17
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  store i8 0, ptr %i.ke, align 16, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit233

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i231
  store ptr %i.jr, ptr %i.jy, align 8, !tbaa !8
  store i64 8, ptr %i.ka, align 16, !tbaa !17
  %i.kf = load i64, ptr %i.kb, align 8, !tbaa !16
  store i64 %i.kf, ptr %i.jz, align 8, !tbaa !16
  store ptr %i.kb, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i229, %bb.ca
  %i.kg = phi ptr [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i229 ], [ %i.kb, %bb.ca ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.kg, align 1, !tbaa !16
  %i.kh = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.jw, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit233
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !36
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #37, !inline_history !165
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit

bb.cb:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit190.thread572
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.ig

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.ig

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ce:                                            ; preds = %bb.by
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

bb.cf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread577
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.cg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224.thread
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224
  %i.kr = load i64, ptr %i.jr, align 1
  %i.ks = icmp ne i64 %i.kr, 8751735851679769974
  %i.kt = zext i1 %i.ks to i32
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236
  %i.kv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.ch unwind label %bb.cv     ; 16 uses

bb.ch:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236.thread
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.kw, i8 0, i64 64, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 24 ; 6 uses
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !14
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 3 uses
  store i8 0, ptr %i.ky, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component20VelocityTimeFunctionE, i64 16), ptr %i.kv, align 16, !tbaa !36
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.lb, ptr %5, align 8, !tbaa !14
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.lc, align 8, !tbaa !17
  store i8 0, ptr %i.lb, align 8, !tbaa !16
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.la, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ld = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.lb
  br i1 %i.le, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ci
  %i.lf = load i64, ptr %i.lb, align 8, !tbaa !16
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.lb
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.cj
  %i.lk = load i64, ptr %i.lb, align 8, !tbaa !16
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component12TimeFunctionE, i64 16), ptr %i.kv, align 16, !tbaa !36
  %i.lm = load ptr, ptr %i.kx, align 8, !tbaa !8  ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.ky
  br i1 %i.ln, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %i.lo = load i64, ptr %i.ky, align 8, !tbaa !16
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #38, !inline_history !166
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.lq = load ptr, ptr %i.kx, align 8, !tbaa !8  ; 6 uses
  %i.lr = icmp eq ptr %i.lq, %i.ky
  %i.ls = load ptr, ptr %23, align 8, !tbaa !8    ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt                ; 2 uses
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i243: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.lu, label %bb.ck, label %.thread.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.lu, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237
  %i.lv = load i64, ptr %i.ji, align 8, !tbaa !17 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 16
  call void @llvm.assume(i1 %i.lw)
  switch i64 %i.lv, label %bb.cm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241
    i64 1, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.lx = load i8, ptr %i.ls, align 1, !tbaa !16
  store i8 %i.lx, ptr %i.lq, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr align 1 %i.ls, i64 %i.lv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.ly = load i64, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ly, ptr %i.kz, align 16, !tbaa !17
  %i.lz = load ptr, ptr %i.kx, align 8, !tbaa !8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  store i8 0, ptr %i.ma, align 1, !tbaa !16
  %.pre.i242 = load ptr, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245

.thread.i244:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i243
  store ptr %i.ls, ptr %i.kx, align 8, !tbaa !8
  %i.mb = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.mb, ptr %i.kz, align 16, !tbaa !16
  br label %bb.co

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237
  %i.mc = load i64, ptr %i.ky, align 8, !tbaa !16
  store ptr %i.ls, ptr %i.kx, align 8, !tbaa !8
  %i.md = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.md, ptr %i.kz, align 16, !tbaa !16
  %.not.i239 = icmp eq ptr %i.lq, null
  br i1 %.not.i239, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238
  store ptr %i.lq, ptr %23, align 8, !tbaa !8
  store i64 %i.mc, ptr %i.lt, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238, %.thread.i244
  store ptr %i.lt, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241, %bb.cn, %bb.co
  %i.me = phi ptr [ %i.lq, %bb.cn ], [ %i.lt, %bb.co ], [ %.pre.i242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i241 ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.me, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.43, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit246 unwind label %bb.cw

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.cp unwind label %bb.cx

bb.cp:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit246
  %i.mf = load ptr, ptr %i.la, align 8, !tbaa !8  ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kv, i64 56 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  %i.mi = load ptr, ptr %25, align 8, !tbaa !8    ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj                ; 2 uses
  br i1 %i.mh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.cp
  br i1 %i.mk, label %bb.cq, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i247: ; preds = %bb.cp
  br i1 %i.mk, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i247
  %i.ml = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !17 ; 3 uses
  %i.mn = icmp ult i64 %i.mm, 16
  call void @llvm.assume(i1 %i.mn)
  switch i64 %i.mm, label %bb.cs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.mo = load i8, ptr %i.mi, align 1, !tbaa !16
  store i8 %i.mo, ptr %i.mf, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mf, ptr align 1 %i.mi, i64 %i.mm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.mp = load i64, ptr %i.ml, align 8, !tbaa !17 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store i64 %i.mp, ptr %i.mq, align 16, !tbaa !17
  %i.mr = load ptr, ptr %i.la, align 8, !tbaa !8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mp
  store i8 0, ptr %i.ms, align 1, !tbaa !16
  %.pre.i.i = load ptr, ptr %25, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store ptr %i.mi, ptr %i.la, align 8, !tbaa !8
  %i.mu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mv = load <2 x i64>, ptr %i.mu, align 8, !tbaa !16
  store <2 x i64> %i.mv, ptr %i.mt, align 16, !tbaa !16
  br label %bb.cu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i247
  %i.mw = load i64, ptr %i.mg, align 8, !tbaa !16
  store ptr %i.mi, ptr %i.la, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.mz = load <2 x i64>, ptr %i.mx, align 8, !tbaa !16
  store <2 x i64> %i.mz, ptr %i.my, align 16, !tbaa !16
  %.not.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.mf, ptr %25, align 8, !tbaa !8
  store i64 %i.mw, ptr %i.mj, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.mj, ptr %25, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit

_ZN16DeformationModel5EpochaSEOS0_.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ct, %bb.cu
  %i.na = phi ptr [ %i.mf, %bb.ct ], [ %i.mj, %bb.cu ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.nb = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.nb, align 8, !tbaa !17
  store i8 0, ptr %i.na, align 1, !tbaa !16
  %i.nc = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !18
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 72
  store double %i.nd, ptr %i.ne, align 8, !tbaa !18
  %i.nf = load ptr, ptr %25, align 8, !tbaa !8    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZN16DeformationModel5EpochD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !16
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nj) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit

_ZN16DeformationModel5EpochD2Ev.exit:             ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249
  %i.nk = load ptr, ptr %26, align 8, !tbaa !8    ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !16
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %i.np = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.kv, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i254 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i254, label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i255

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !36
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(40) %i.np) #37, !inline_history !167
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit

bb.cv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236.thread
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef 80) #38
  br label %bb.id

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit245
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262

bb.cx:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit246
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nw = load ptr, ptr %26, align 8, !tbaa !8    ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.cx
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !16
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.oa) #38
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262

_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.cw
  %.pn110 = phi { ptr, i32 } [ %i.nu, %bb.cw ], [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %i.nv, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %i.ob = load ptr, ptr %i.kv, align 16, !tbaa !36
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(80) %i.kv) #37, !inline_history !168
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264: ; preds = %bb.bz
  %.pre617 = load ptr, ptr %23, align 8, !tbaa !8
  %bcmp.i263 = call i32 @bcmp(ptr %.pre617, ptr nonnull @.str.83, i64 %.pre)
  %i.oe = icmp eq i32 %bcmp.i263, 0
  br i1 %i.oe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264
  %i.of = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.cy unwind label %bb.dm     ; 16 uses

bb.cy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.og, i8 0, i64 64, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 6 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 6 uses
  store ptr %i.oi, ptr %i.oh, align 8, !tbaa !14
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 3 uses
  store i8 0, ptr %i.oi, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component16StepTimeFunctionE, i64 16), ptr %i.of, align 16, !tbaa !36
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ol, ptr %4, align 8, !tbaa !14
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.om, align 8, !tbaa !17
  store i8 0, ptr %i.ol, align 8, !tbaa !16
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ok, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.on = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.ol
  br i1 %i.oo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271: ; preds = %bb.cz
  %i.op = load i64, ptr %i.ol, align 8, !tbaa !16
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i272

bb.da:                                            ; preds = %bb.cy
  %i.or = landingpad { ptr, i32 }
          cleanup
  %i.os = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.ol
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i265: ; preds = %bb.da
  %i.ou = load i64, ptr %i.ol, align 8, !tbaa !16
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i266: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component12TimeFunctionE, i64 16), ptr %i.of, align 16, !tbaa !36
  %i.ow = load ptr, ptr %i.oh, align 8, !tbaa !8  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.oi
  br i1 %i.ox, label %.body273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i266
  %i.oy = load i64, ptr %i.oi, align 8, !tbaa !16
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #38, !inline_history !166
  br label %.body273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i272: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.pa = load ptr, ptr %i.oh, align 8, !tbaa !8  ; 6 uses
  %i.pb = icmp eq ptr %i.pa, %i.oi
  %i.pc = load ptr, ptr %23, align 8, !tbaa !8    ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd                ; 2 uses
  br i1 %i.pb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i281: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i272
  br i1 %i.pe, label %bb.db, label %.thread.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i275: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i272
  br i1 %i.pe, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i276

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i275
  %i.pf = load i64, ptr %i.ji, align 8, !tbaa !17 ; 3 uses
  %i.pg = icmp ult i64 %i.pf, 16
  call void @llvm.assume(i1 %i.pg)
  switch i64 %i.pf, label %bb.dd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279
    i64 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db
  %i.ph = load i8, ptr %i.pc, align 1, !tbaa !16
  store i8 %i.ph, ptr %i.pa, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pa, ptr align 1 %i.pc, i64 %i.pf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279: ; preds = %bb.dd, %bb.dc, %bb.db
  %i.pi = load i64, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  store i64 %i.pi, ptr %i.oj, align 16, !tbaa !17
  %i.pj = load ptr, ptr %i.oh, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  store i8 0, ptr %i.pk, align 1, !tbaa !16
  %.pre.i280 = load ptr, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283

.thread.i282:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i281
  store ptr %i.pc, ptr %i.oh, align 8, !tbaa !8
  %i.pl = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.pl, ptr %i.oj, align 16, !tbaa !16
  br label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i276: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i275
  %i.pm = load i64, ptr %i.oi, align 8, !tbaa !16
  store ptr %i.pc, ptr %i.oh, align 8, !tbaa !8
  %i.pn = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.pn, ptr %i.oj, align 16, !tbaa !16
  %.not.i277 = icmp eq ptr %i.pa, null
  br i1 %.not.i277, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i276
  store ptr %i.pa, ptr %23, align 8, !tbaa !8
  store i64 %i.pm, ptr %i.pd, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i276, %.thread.i282
  store ptr %i.pd, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279, %bb.de, %bb.df
  %i.po = phi ptr [ %i.pa, %bb.de ], [ %i.pd, %bb.df ], [ %.pre.i280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i279 ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.po, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.84, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit284 unwind label %bb.dn

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.dg unwind label %bb.do

bb.dg:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit284
  %i.pp = load ptr, ptr %i.ok, align 8, !tbaa !8  ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.of, i64 56 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  %i.ps = load ptr, ptr %27, align 8, !tbaa !8    ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt                ; 2 uses
  br i1 %i.pr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.dg
  br i1 %i.pu, label %bb.dh, label %.thread.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i285: ; preds = %bb.dg
  br i1 %i.pu, label %bb.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i286

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i285
  %i.pv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !17 ; 3 uses
  %i.px = icmp ult i64 %i.pw, 16
  call void @llvm.assume(i1 %i.px)
  switch i64 %i.pw, label %bb.dj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289
    i64 1, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh
  %i.py = load i8, ptr %i.ps, align 1, !tbaa !16
  store i8 %i.py, ptr %i.pp, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pp, ptr align 1 %i.ps, i64 %i.pw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.pz = load i64, ptr %i.pv, align 8, !tbaa !17 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  store i64 %i.pz, ptr %i.qa, align 16, !tbaa !17
  %i.qb = load ptr, ptr %i.ok, align 8, !tbaa !8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pz
  store i8 0, ptr %i.qc, align 1, !tbaa !16
  %.pre.i.i290 = load ptr, ptr %27, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit293

.thread.i.i292:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  %i.qd = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  store ptr %i.ps, ptr %i.ok, align 8, !tbaa !8
  %i.qe = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.qf = load <2 x i64>, ptr %i.qe, align 8, !tbaa !16
  store <2 x i64> %i.qf, ptr %i.qd, align 16, !tbaa !16
  br label %bb.dl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i286: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i285
  %i.qg = load i64, ptr %i.pq, align 8, !tbaa !16
  store ptr %i.ps, ptr %i.ok, align 8, !tbaa !8
  %i.qh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.qj = load <2 x i64>, ptr %i.qh, align 8, !tbaa !16
  store <2 x i64> %i.qj, ptr %i.qi, align 16, !tbaa !16
  %.not.i.i287 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i287, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i286
  store ptr %i.pp, ptr %27, align 8, !tbaa !8
  store i64 %i.qg, ptr %i.pt, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit293

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i286, %.thread.i.i292
  store ptr %i.pt, ptr %27, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit293

_ZN16DeformationModel5EpochaSEOS0_.exit293:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289, %bb.dk, %bb.dl
  %i.qk = phi ptr [ %i.pp, %bb.dk ], [ %i.pt, %bb.dl ], [ %.pre.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i289 ]
  %i.ql = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.ql, align 8, !tbaa !17
  store i8 0, ptr %i.qk, align 1, !tbaa !16
  %i.qm = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  store double %i.qn, ptr %i.qo, align 8, !tbaa !18
  %i.qp = load ptr, ptr %27, align 8, !tbaa !8    ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZN16DeformationModel5EpochD2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit293
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !16
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit296

_ZN16DeformationModel5EpochD2Ev.exit296:          ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294
  %i.qu = load ptr, ptr %28, align 8, !tbaa !8    ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit296
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !16
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %i.qz = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.of, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i300 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i300, label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i301

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !36
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(40) %i.qz) #37, !inline_history !169
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit

bb.dm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

.body273:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i267
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef 80) #38
  br label %bb.id

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit283
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308

bb.do:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit284
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %28, align 8, !tbaa !8    ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.do
  %i.rj = load i64, ptr %i.rh, align 8, !tbaa !16
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rk) #38
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308

_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.dn
  %.pn107 = phi { ptr, i32 } [ %i.re, %bb.dn ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.rf, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %i.rl = load ptr, ptr %i.of, align 16, !tbaa !36
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(80) %i.of) #37, !inline_history !170
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310: ; preds = %bb.bz
  %.pre618 = load ptr, ptr %23, align 8, !tbaa !8
  %bcmp.i309 = call i32 @bcmp(ptr %.pre618, ptr nonnull @.str.85, i64 %.pre)
  %i.ro = icmp eq i32 %bcmp.i309, 0
  br i1 %i.ro, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310
  %i.rp = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.dp unwind label %bb.ed     ; 16 uses

bb.dp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.rq, i8 0, i64 64, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 6 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 24 ; 6 uses
  store ptr %i.rs, ptr %i.rr, align 8, !tbaa !14
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 3 uses
  store i8 0, ptr %i.rs, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component23ReverseStepTimeFunctionE, i64 16), ptr %i.rp, align 16, !tbaa !36
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.rv, ptr %3, align 8, !tbaa !14
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.rw, align 8, !tbaa !17
  store i8 0, ptr %i.rv, align 8, !tbaa !16
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.rx = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.rv
  br i1 %i.ry, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317: ; preds = %bb.dq
  %i.rz = load i64, ptr %i.rv, align 8, !tbaa !16
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318

bb.dr:                                            ; preds = %bb.dp
  %i.sb = landingpad { ptr, i32 }
          cleanup
  %i.sc = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.rv
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i311: ; preds = %bb.dr
  %i.se = load i64, ptr %i.rv, align 8, !tbaa !16
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i312: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component12TimeFunctionE, i64 16), ptr %i.rp, align 16, !tbaa !36
  %i.sg = load ptr, ptr %i.rr, align 8, !tbaa !8  ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.rs
  br i1 %i.sh, label %.body319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i312
  %i.si = load i64, ptr %i.rs, align 8, !tbaa !16
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #38, !inline_history !166
  br label %.body319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.sk = load ptr, ptr %i.rr, align 8, !tbaa !8  ; 6 uses
  %i.sl = icmp eq ptr %i.sk, %i.rs
  %i.sm = load ptr, ptr %23, align 8, !tbaa !8    ; 5 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.so = icmp eq ptr %i.sm, %i.sn                ; 2 uses
  br i1 %i.sl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i327: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318
  br i1 %i.so, label %bb.ds, label %.thread.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i321: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318
  br i1 %i.so, label %bb.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i322

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i321
  %i.sp = load i64, ptr %i.ji, align 8, !tbaa !17 ; 3 uses
  %i.sq = icmp ult i64 %i.sp, 16
  call void @llvm.assume(i1 %i.sq)
  switch i64 %i.sp, label %bb.du [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325
    i64 1, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.sr = load i8, ptr %i.sm, align 1, !tbaa !16
  store i8 %i.sr, ptr %i.sk, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325

bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sk, ptr align 1 %i.sm, i64 %i.sp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325: ; preds = %bb.du, %bb.dt, %bb.ds
  %i.ss = load i64, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ss, ptr %i.rt, align 16, !tbaa !17
  %i.st = load ptr, ptr %i.rr, align 8, !tbaa !8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.ss
  store i8 0, ptr %i.su, align 1, !tbaa !16
  %.pre.i326 = load ptr, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329

.thread.i328:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i327
  store ptr %i.sm, ptr %i.rr, align 8, !tbaa !8
  %i.sv = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.sv, ptr %i.rt, align 16, !tbaa !16
  br label %bb.dw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i322: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i321
  %i.sw = load i64, ptr %i.rs, align 8, !tbaa !16
  store ptr %i.sm, ptr %i.rr, align 8, !tbaa !8
  %i.sx = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.sx, ptr %i.rt, align 16, !tbaa !16
  %.not.i323 = icmp eq ptr %i.sk, null
  br i1 %.not.i323, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i322
  store ptr %i.sk, ptr %23, align 8, !tbaa !8
  store i64 %i.sw, ptr %i.sn, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329

bb.dw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i322, %.thread.i328
  store ptr %i.sn, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325, %bb.dv, %bb.dw
  %i.sy = phi ptr [ %i.sk, %bb.dv ], [ %i.sn, %bb.dw ], [ %.pre.i326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i325 ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.sy, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.84, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit330 unwind label %bb.ee

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.dx unwind label %bb.ef

bb.dx:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit330
  %i.sz = load ptr, ptr %i.ru, align 8, !tbaa !8  ; 6 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rp, i64 56 ; 2 uses
  %i.tb = icmp eq ptr %i.sz, %i.ta
  %i.tc = load ptr, ptr %29, align 8, !tbaa !8    ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.te = icmp eq ptr %i.tc, %i.td                ; 2 uses
  br i1 %i.tb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.dx
  br i1 %i.te, label %bb.dy, label %.thread.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i331: ; preds = %bb.dx
  br i1 %i.te, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i332

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i331
  %i.tf = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !17 ; 3 uses
  %i.th = icmp ult i64 %i.tg, 16
  call void @llvm.assume(i1 %i.th)
  switch i64 %i.tg, label %bb.ea [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335
    i64 1, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.ti = load i8, ptr %i.tc, align 1, !tbaa !16
  store i8 %i.ti, ptr %i.sz, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sz, ptr align 1 %i.tc, i64 %i.tg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335: ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.tj = load i64, ptr %i.tf, align 8, !tbaa !17 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.rp, i64 48
  store i64 %i.tj, ptr %i.tk, align 16, !tbaa !17
  %i.tl = load ptr, ptr %i.ru, align 8, !tbaa !8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tj
  store i8 0, ptr %i.tm, align 1, !tbaa !16
  %.pre.i.i336 = load ptr, ptr %29, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit339

.thread.i.i338:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rp, i64 48
  store ptr %i.tc, ptr %i.ru, align 8, !tbaa !8
  %i.to = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.tp = load <2 x i64>, ptr %i.to, align 8, !tbaa !16
  store <2 x i64> %i.tp, ptr %i.tn, align 16, !tbaa !16
  br label %bb.ec

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i332: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i331
  %i.tq = load i64, ptr %i.ta, align 8, !tbaa !16
  store ptr %i.tc, ptr %i.ru, align 8, !tbaa !8
  %i.tr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.rp, i64 48
  %i.tt = load <2 x i64>, ptr %i.tr, align 8, !tbaa !16
  store <2 x i64> %i.tt, ptr %i.ts, align 16, !tbaa !16
  %.not.i.i333 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i333, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i332
  store ptr %i.sz, ptr %29, align 8, !tbaa !8
  store i64 %i.tq, ptr %i.td, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit339

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i332, %.thread.i.i338
  store ptr %i.td, ptr %29, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit339

_ZN16DeformationModel5EpochaSEOS0_.exit339:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335, %bb.eb, %bb.ec
  %i.tu = phi ptr [ %i.sz, %bb.eb ], [ %i.td, %bb.ec ], [ %.pre.i.i336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i335 ]
  %i.tv = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.tv, align 8, !tbaa !17
  store i8 0, ptr %i.tu, align 1, !tbaa !16
  %i.tw = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !18
  %i.ty = getelementptr inbounds nuw i8, ptr %i.rp, i64 72
  store double %i.tx, ptr %i.ty, align 8, !tbaa !18
  %i.tz = load ptr, ptr %29, align 8, !tbaa !8    ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZN16DeformationModel5EpochD2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit339
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !16
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit342

_ZN16DeformationModel5EpochD2Ev.exit342:          ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340
  %i.ue = load ptr, ptr %30, align 8, !tbaa !8    ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit342
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !16
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.uj = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.rp, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i346 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i346, label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i347

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !36
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(40) %i.uj) #37, !inline_history !171
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit

bb.ed:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

.body319:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i313
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef 80) #38
  br label %bb.id

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit329
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354

bb.ef:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit330
  %i.up = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uq = load ptr, ptr %30, align 8, !tbaa !8    ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %bb.ef
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !16
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #38
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354

_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.ee
  %.pn104 = phi { ptr, i32 } [ %i.uo, %bb.ee ], [ %i.up, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.up, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.uv = load ptr, ptr %i.rp, align 16, !tbaa !36
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(80) %i.rp) #37, !inline_history !172
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356: ; preds = %bb.bz
  %.pre619 = load ptr, ptr %23, align 8, !tbaa !8 ; 5 uses
  %bcmp.i355 = call i32 @bcmp(ptr %.pre619, ptr nonnull @.str.86, i64 %.pre)
  %i.uy = icmp eq i32 %bcmp.i355, 0
  br i1 %i.uy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356
  %i.uz = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #39
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363 unwind label %bb.es ; 17 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356.thread
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.va, i8 0, i64 96, i1 false)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 24 ; 5 uses
  store ptr %i.vc, ptr %i.vb, align 8, !tbaa !14
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  store i8 0, ptr %i.vc, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16DeformationModel9Component21PiecewiseTimeFunctionE, i64 16), ptr %i.uz, align 16, !tbaa !36
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 40 ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uz, i64 56 ; 4 uses
  store ptr %i.vf, ptr %i.ve, align 8, !tbaa !14
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uz, i64 48 ; 4 uses
  store i8 0, ptr %i.vf, align 8, !tbaa !16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uz, i64 72 ; 8 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uz, i64 88 ; 4 uses
  store ptr %i.vi, ptr %i.vh, align 8, !tbaa !14
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uz, i64 80 ; 4 uses
  store i8 0, ptr %i.vi, align 8, !tbaa !16
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uz, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vk, i8 0, i64 24, i1 false)
  %i.vl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.vm = icmp eq ptr %.pre619, %i.vl
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361, label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vc, ptr align 1 %.pre619, i64 %.pre, i1 false)
  store i64 %.pre, ptr %i.vd, align 16, !tbaa !17
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.pre
  store i8 0, ptr %i.vn, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  store ptr %.pre619, ptr %i.vb, align 8, !tbaa !8
  store i64 %.pre, ptr %i.vd, align 16, !tbaa !17
  %i.vo = load i64, ptr %i.vl, align 8, !tbaa !16
  store i64 %i.vo, ptr %i.vc, align 8, !tbaa !16
  store ptr %i.vl, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361, %bb.eg
  %i.vp = phi ptr [ %.pre619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361 ], [ %i.vl, %bb.eg ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.vp, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.87, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit366 unwind label %bb.et

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365
  %i.vq = load ptr, ptr %i.ve, align 8, !tbaa !8  ; 6 uses
  %i.vr = icmp eq ptr %i.vq, %i.vf
  %i.vs = load ptr, ptr %31, align 8, !tbaa !8    ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt                ; 2 uses
  br i1 %i.vr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit366
  br i1 %i.vu, label %bb.eh, label %.thread.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit366
  br i1 %i.vu, label %bb.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367
  %i.vv = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !17 ; 3 uses
  %i.vx = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.vx)
  switch i64 %i.vw, label %bb.ej [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371
    i64 1, label %bb.ei
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.vy = load i8, ptr %i.vs, align 1, !tbaa !16
  store i8 %i.vy, ptr %i.vq, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr align 1 %i.vs, i64 %i.vw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371: ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.vz = load i64, ptr %i.vv, align 8, !tbaa !17 ; 2 uses
  store i64 %i.vz, ptr %i.vg, align 16, !tbaa !17
  %i.wa = load ptr, ptr %i.ve, align 8, !tbaa !8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vz
  store i8 0, ptr %i.wb, align 1, !tbaa !16
  %.pre.i372 = load ptr, ptr %31, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375

.thread.i374:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373
  store ptr %i.vs, ptr %i.ve, align 8, !tbaa !8
  %i.wc = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.wd = load <2 x i64>, ptr %i.wc, align 8, !tbaa !16
  store <2 x i64> %i.wd, ptr %i.vg, align 16, !tbaa !16
  br label %bb.el

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367
  %i.we = load i64, ptr %i.vf, align 8, !tbaa !16
  store ptr %i.vs, ptr %i.ve, align 8, !tbaa !8
  %i.wf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.wg = load <2 x i64>, ptr %i.wf, align 8, !tbaa !16
  store <2 x i64> %i.wg, ptr %i.vg, align 16, !tbaa !16
  %.not.i369 = icmp eq ptr %i.vq, null
  br i1 %.not.i369, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368
  store ptr %i.vq, ptr %31, align 8, !tbaa !8
  store i64 %i.we, ptr %i.vt, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368, %.thread.i374
  store ptr %i.vt, ptr %31, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371, %bb.ek, %bb.el
  %i.wh = phi ptr [ %i.vq, %bb.ek ], [ %i.vt, %bb.el ], [ %.pre.i372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371 ]
  %i.wi = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.wi, align 8, !tbaa !17
  store i8 0, ptr %i.wh, align 1, !tbaa !16
  %i.wj = load ptr, ptr %31, align 8, !tbaa !8    ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !16
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.wo = load i64, ptr %i.vg, align 16, !tbaa !17
  %i.wp = icmp eq i64 %i.wo, 4
  br i1 %i.wp, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.wq = load ptr, ptr %i.ve, align 8, !tbaa !8
  %i.wr = load i32, ptr %i.wq, align 1
  %i.ws = icmp ne i32 %i.wr, 1869768058
  %i.wt = zext i1 %i.ws to i32
  %.not608 = icmp eq i32 %i.wt, 0
  br i1 %.not608, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.wu = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull @.str.81)
          to label %bb.em unwind label %bb.eu

bb.em:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.wu, label %bb.en, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583

bb.en:                                            ; preds = %bb.em
  %i.wv = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull @.str.89)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  br i1 %i.wv, label %bb.ep, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583

bb.ep:                                            ; preds = %bb.eo
  %i.ww = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.eq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %bb.eq
  invoke void @__cxa_throw(ptr nonnull %i.ww, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ij unwind label %bb.ev

bb.es:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356.thread
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

bb.eu:                                            ; preds = %bb.fd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread, %bb.en, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread: ; preds = %bb.ep
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.ew

bb.ev:                                            ; preds = %bb.er, %bb.eq
  %.030 = phi i1 [ false, %bb.er ], [ true, %bb.eq ] ; 2 uses
  %i.xb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xc = load ptr, ptr %32, align 8, !tbaa !8    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.ev
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !16
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br i1 %.030, label %bb.ew, label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br i1 %.030, label %bb.ew, label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

bb.ew:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %.pn100586 = phi { ptr, i32 } [ %i.xa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread ], [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ]
  call void @__cxa_free_exception(ptr %i.ww) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583: ; preds = %bb.eo, %bb.em, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.91, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit383 unwind label %bb.fi

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit383: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583
  %i.xh = load ptr, ptr %i.vh, align 8, !tbaa !8  ; 6 uses
  %i.xi = icmp eq ptr %i.xh, %i.vi
  %i.xj = load ptr, ptr %34, align 8, !tbaa !8    ; 5 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.xl = icmp eq ptr %i.xj, %i.xk                ; 2 uses
  br i1 %i.xi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i390: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit383
  br i1 %i.xl, label %bb.ex, label %.thread.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i384: ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit383
  br i1 %i.xl, label %bb.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i385

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i384
  %i.xm = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !17 ; 3 uses
  %i.xo = icmp ult i64 %i.xn, 16
  call void @llvm.assume(i1 %i.xo)
  switch i64 %i.xn, label %bb.ez [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388
    i64 1, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.xp = load i8, ptr %i.xj, align 1, !tbaa !16
  store i8 %i.xp, ptr %i.xh, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xh, ptr align 1 %i.xj, i64 %i.xn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388: ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.xq = load i64, ptr %i.xm, align 8, !tbaa !17 ; 2 uses
  store i64 %i.xq, ptr %i.vj, align 16, !tbaa !17
  %i.xr = load ptr, ptr %i.vh, align 8, !tbaa !8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xq
  store i8 0, ptr %i.xs, align 1, !tbaa !16
  %.pre.i389 = load ptr, ptr %34, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392

.thread.i391:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i390
  store ptr %i.xj, ptr %i.vh, align 8, !tbaa !8
  %i.xt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.xu = load <2 x i64>, ptr %i.xt, align 8, !tbaa !16
  store <2 x i64> %i.xu, ptr %i.vj, align 16, !tbaa !16
  br label %bb.fb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i385: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i384
  %i.xv = load i64, ptr %i.vi, align 8, !tbaa !16
  store ptr %i.xj, ptr %i.vh, align 8, !tbaa !8
  %i.xw = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.xx = load <2 x i64>, ptr %i.xw, align 8, !tbaa !16
  store <2 x i64> %i.xx, ptr %i.vj, align 16, !tbaa !16
  %.not.i386 = icmp eq ptr %i.xh, null
  br i1 %.not.i386, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i385
  store ptr %i.xh, ptr %34, align 8, !tbaa !8
  store i64 %i.xv, ptr %i.xk, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i385, %.thread.i391
  store ptr %i.xk, ptr %34, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388, %bb.fa, %bb.fb
  %i.xy = phi ptr [ %i.xh, %bb.fa ], [ %i.xk, %bb.fb ], [ %.pre.i389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i388 ]
  %i.xz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.xz, align 8, !tbaa !17
  store i8 0, ptr %i.xy, align 1, !tbaa !16
  %i.ya = load ptr, ptr %34, align 8, !tbaa !8    ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392
  %i.yd = load i64, ptr %i.yb, align 8, !tbaa !16
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.ye) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit392, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  %i.yf = load i64, ptr %i.vj, align 16, !tbaa !17
  %i.yg = icmp eq i64 %i.yf, 4
  br i1 %i.yg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395
  %i.yh = load ptr, ptr %i.vh, align 8, !tbaa !8
  %i.yi = load i32, ptr %i.yh, align 1
  %i.yj = icmp ne i32 %i.yi, 1869768058
  %i.yk = zext i1 %i.yj to i32
  %.not609 = icmp eq i32 %i.yk, 0
  br i1 %.not609, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread587, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397
  %i.yl = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.vh, ptr noundef nonnull @.str.81)
          to label %bb.fc unwind label %bb.eu

bb.fc:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread
  br i1 %i.yl, label %bb.fd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread587

bb.fd:                                            ; preds = %bb.fc
  %i.ym = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.vh, ptr noundef nonnull @.str.89)
          to label %bb.fe unwind label %bb.eu

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.ym, label %bb.ff, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread587

bb.ff:                                            ; preds = %bb.fe
  %i.yn = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.fg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400.thread

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.yn, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.fh unwind label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  invoke void @__cxa_throw(ptr nonnull %i.yn, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ij unwind label %bb.fj

bb.fi:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread583
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400.thread: ; preds = %bb.ff
  %i.yp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh, %bb.fg
  %.028 = phi i1 [ false, %bb.fh ], [ true, %bb.fg ] ; 2 uses
  %i.yq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.yr = load ptr, ptr %35, align 8, !tbaa !8    ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.yt = icmp eq ptr %i.yr, %i.ys
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.fj
  %i.yu = load i64, ptr %i.ys, align 8, !tbaa !16
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yv) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  br i1 %.028, label %bb.fk, label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  br i1 %.028, label %bb.fk, label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %.pn98590 = phi { ptr, i32 } [ %i.yp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400.thread ], [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %i.yq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ]
  call void @__cxa_free_exception(ptr %i.yn) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread587: ; preds = %bb.fe, %bb.fc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #37
  invoke fastcc void @_ZN16DeformationModelL14getArrayMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias writable align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.93)
          to label %bb.fl unwind label %bb.fp

bb.fl:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit397.thread587
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  store ptr %37, ptr %38, align 8, !tbaa !45, !alias.scope !179
  %i.yw = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false), !alias.scope !179
  store i64 -9223372036854775808, ptr %i.yx, align 8, !tbaa !54, !alias.scope !179
  %i.yy = load i8, ptr %37, align 8, !tbaa !29, !noalias !179
  switch i8 %i.yy, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit [
    i8 1, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread591
    i8 2, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread592
    i8 0, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread
  ]

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread591: ; preds = %bb.fl
  %i.yz = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !16, !noalias !179 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !74, !noalias !179
  store ptr %i.zc, ptr %i.yw, align 8, !tbaa !78, !alias.scope !179
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #37
  store ptr %37, ptr %39, align 8, !tbaa !45, !alias.scope !180
  %i.zd = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ze = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.zf = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.zf, align 8
  store i64 -9223372036854775808, ptr %i.ze, align 8, !tbaa !54, !alias.scope !180
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store ptr %i.zg, ptr %i.zd, align 8, !tbaa !78, !alias.scope !185
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread592: ; preds = %bb.fl
  %i.zh = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !16, !noalias !179 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !55, !noalias !179
  %i.zk = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !55, !alias.scope !179
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #37
  store ptr %37, ptr %39, align 8, !tbaa !45, !alias.scope !188
  %i.zl = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %39, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, i8 0, i64 16, i1 false), !alias.scope !188
  store i64 -9223372036854775808, ptr %i.zm, align 8, !tbaa !54, !alias.scope !188
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !55, !noalias !185
  %i.zp = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !55, !alias.scope !185
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread: ; preds = %bb.fl
  store i64 1, ptr %i.yx, align 8, !tbaa !54, !alias.scope !179
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #37
  br label %bb.fm

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit: ; preds = %bb.fl
  store i64 0, ptr %i.yx, align 8, !tbaa !54, !alias.scope !179
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread
  store ptr %37, ptr %39, align 8, !tbaa !45, !alias.scope !193
  %i.zq = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zr = getelementptr inbounds nuw i8, ptr %39, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zq, i8 0, i64 16, i1 false), !alias.scope !193
  store i64 1, ptr %i.zr, align 8, !tbaa !54, !alias.scope !185
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread591, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit.thread592, %bb.fm
  %i.zs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 11 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 5 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 6 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.aaa = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.uz, i64 112 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.uz, i64 120
  %i.aae = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  br label %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit

_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit: ; preds = %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit.backedge, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit
  %i.aaf = invoke noundef zeroext i1 @_ZNK13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEeqERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %bb.fn unwind label %bb.fq

bb.fn:                                            ; preds = %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit
  br i1 %i.aaf, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #37
  %i.aag = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.uz, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i401 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i401, label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i402

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i402: ; preds = %bb.fo
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !36
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8
  call void %i.aaj(ptr noundef nonnull align 8 dereferenceable(40) %i.aag) #37, !inline_history !196
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i402, %bb.fo
  %i.aak = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.aal = load i8, ptr %37, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aak, i8 noundef zeroext %i.aal) #37, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN16DeformationModel9Component5parseERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEE:bb.a
  %i.aar = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.fu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406.thread

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aar, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.fv unwind label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  invoke void @__cxa_throw(ptr nonnull %i.aar, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ij unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fr
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406.thread: ; preds = %bb.ft
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #37
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv, %bb.fu
  %.026 = phi i1 [ false, %bb.fv ], [ true, %bb.fu ] ; 2 uses
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aav = load ptr, ptr %40, align 8, !tbaa !8   ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.aax = icmp eq ptr %i.aav, %i.aaw
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.fx
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !16
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aaz) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #37
  br i1 %.026, label %bb.fy, label %bb.gr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #37
  br i1 %.026, label %bb.fy, label %bb.gr

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %.pn87595 = phi { ptr, i32 } [ %i.aat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406.thread ], [ %i.aau, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ], [ %i.aau, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ]
  call void @__cxa_free_exception(ptr %i.aar) #37
  br label %bb.gr

bb.fz:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.zs, ptr %2, align 8, !tbaa !14
  store i64 0, ptr %i.zt, align 8, !tbaa !17
  store i8 0, ptr %i.zs, align 8, !tbaa !16
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ga unwind label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.aba = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.abb = icmp eq ptr %i.aba, %i.zs
  br i1 %i.abb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i410: ; preds = %bb.ga
  %i.abc = load i64, ptr %i.zs, align 8, !tbaa !16
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abd) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i411

bb.gb:                                            ; preds = %bb.fz
  %i.abe = landingpad { ptr, i32 }
          cleanup
  %i.abf = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.abg = icmp eq ptr %i.abf, %i.zs
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i407: ; preds = %bb.gb
  %i.abh = load i64, ptr %i.zs, align 8, !tbaa !16
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abf, i64 noundef %i.abi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i408: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %.body412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i411: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  store double +qnan, ptr %i.zu, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %44, ptr noundef nonnull align 8 dereferenceable(16) %i.aao, ptr noundef nonnull @.str.95, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit414 unwind label %bb.gn

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit414: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i411
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.gc unwind label %bb.go

bb.gc:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit414
  %i.abj = load ptr, ptr %42, align 8, !tbaa !8   ; 6 uses
  %i.abk = icmp eq ptr %i.abj, %i.zv
  %i.abl = load ptr, ptr %43, align 8, !tbaa !8   ; 5 uses
  %i.abm = icmp eq ptr %i.abl, %i.zw              ; 2 uses
  br i1 %i.abk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.gc
  br i1 %i.abm, label %bb.gd, label %.thread.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i415: ; preds = %bb.gc
  br i1 %i.abm, label %bb.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i416

bb.gd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421
  %i.abn = load i64, ptr %i.zx, align 8, !tbaa !17 ; 3 uses
  %i.abo = icmp ult i64 %i.abn, 16
  call void @llvm.assume(i1 %i.abo)
  switch i64 %i.abn, label %bb.gf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419
    i64 1, label %bb.ge
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.abp = load i8, ptr %i.abl, align 1, !tbaa !16
  store i8 %i.abp, ptr %i.abj, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abj, ptr align 1 %i.abl, i64 %i.abn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419: ; preds = %bb.gf, %bb.ge, %bb.gd
  %i.abq = load i64, ptr %i.zx, align 8, !tbaa !17 ; 2 uses
  store i64 %i.abq, ptr %i.zy, align 8, !tbaa !17
  %i.abr = load ptr, ptr %42, align 8, !tbaa !8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abq
  store i8 0, ptr %i.abs, align 1, !tbaa !16
  %.pre.i.i420 = load ptr, ptr %43, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit423

.thread.i.i422:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421
  store ptr %i.abl, ptr %42, align 8, !tbaa !8
  %i.abt = load <2 x i64>, ptr %i.zx, align 8, !tbaa !16
  store <2 x i64> %i.abt, ptr %i.zy, align 8, !tbaa !16
  br label %bb.gh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i416: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i415
  %i.abu = load i64, ptr %i.zv, align 8, !tbaa !16
  store ptr %i.abl, ptr %42, align 8, !tbaa !8
  %i.abv = load <2 x i64>, ptr %i.zx, align 8, !tbaa !16
  store <2 x i64> %i.abv, ptr %i.zy, align 8, !tbaa !16
  %.not.i.i417 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i417, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i416
  store ptr %i.abj, ptr %43, align 8, !tbaa !8
  store i64 %i.abu, ptr %i.zw, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit423

bb.gh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i416, %.thread.i.i422
  store ptr %i.zw, ptr %43, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit423

_ZN16DeformationModel5EpochaSEOS0_.exit423:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419, %bb.gg, %bb.gh
  %i.abw = phi ptr [ %i.abj, %bb.gg ], [ %i.zw, %bb.gh ], [ %.pre.i.i420, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i419 ]
  store i64 0, ptr %i.zx, align 8, !tbaa !17
  store i8 0, ptr %i.abw, align 1, !tbaa !16
  %i.abx = load double, ptr %i.zz, align 8, !tbaa !18
  store double %i.abx, ptr %i.aaa, align 8, !tbaa !18
  %i.aby = load ptr, ptr %43, align 8, !tbaa !8   ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.zw
  br i1 %i.abz, label %_ZN16DeformationModel5EpochD2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit423
  %i.aca = load i64, ptr %i.zw, align 8, !tbaa !16
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit426

_ZN16DeformationModel5EpochD2Ev.exit426:          ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i424
  %i.acc = load ptr, ptr %44, align 8, !tbaa !8   ; 2 uses
  %i.acd = icmp eq ptr %i.acc, %i.aab
  br i1 %i.acd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit426
  %i.ace = load i64, ptr %i.aab, align 8, !tbaa !16
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #37
  %i.acg = invoke fastcc noundef double @_ZN16DeformationModelL9getDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr noundef nonnull align 8 dereferenceable(16) %i.aao, ptr noundef nonnull @.str.96, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit unwind label %bb.gp

_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  store double %i.acg, ptr %i.zu, align 8, !tbaa !197
  %i.ach = load ptr, ptr %i.aac, align 16, !tbaa !199 ; 7 uses
  %i.aci = load ptr, ptr %i.aad, align 8, !tbaa !202
  %.not.i430 = icmp eq ptr %i.ach, %i.aci
  br i1 %.not.i430, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 16 ; 3 uses
  store ptr %i.acj, ptr %i.ach, align 8, !tbaa !14
  %i.ack = load ptr, ptr %42, align 8, !tbaa !8   ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.zv
  br i1 %i.acl, label %bb.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431

bb.gj:                                            ; preds = %bb.gi
  %i.acm = load i64, ptr %i.zy, align 8, !tbaa !17 ; 3 uses
  %i.acn = icmp ult i64 %i.acm, 16
  call void @llvm.assume(i1 %i.acn)
  %i.aco = add nuw nsw i64 %i.acm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acj, ptr noundef nonnull align 8 dereferenceable(1) %i.zv, i64 %i.aco, i1 false)
  br label %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431: ; preds = %bb.gi
  store ptr %i.ack, ptr %i.ach, align 8, !tbaa !8
  %i.acp = load i64, ptr %i.zv, align 8, !tbaa !16
  store i64 %i.acp, ptr %i.acj, align 8, !tbaa !16
  %.pre621 = load i64, ptr %i.zy, align 8, !tbaa !17
  br label %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread

_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431
  %i.acq = phi i64 [ %.pre621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431 ], [ %i.acm, %bb.gj ]
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store i64 %i.acq, ptr %i.acr, align 8, !tbaa !17
  store ptr %i.zv, ptr %42, align 8, !tbaa !8
  store i64 0, ptr %i.zy, align 8, !tbaa !17
  store i8 0, ptr %i.zv, align 8, !tbaa !16
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  %i.act = load <2 x double>, ptr %i.aaa, align 8, !tbaa !66
  store <2 x double> %i.act, ptr %i.acs, align 8, !tbaa !66
  %i.acu = load ptr, ptr %i.aac, align 16, !tbaa !199
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 48
  store ptr %i.acv, ptr %i.aac, align 16, !tbaa !199
  br label %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit

bb.gk:                                            ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  invoke void @_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.vk, ptr %i.ach, ptr noundef nonnull align 8 dereferenceable(48) %42)
          to label %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.gp

_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.gk
  %.pre622 = load ptr, ptr %42, align 8, !tbaa !8 ; 2 uses
  %i.acw = icmp eq ptr %.pre622, %i.zv
  br i1 %i.acw, label %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i433: ; preds = %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.acx = load i64, ptr %i.zv, align 8, !tbaa !16
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %.pre622, i64 noundef %i.acy) #38
  br label %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit

_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit: ; preds = %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNSt6vectorIN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i433
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #37
  %i.acz = load ptr, ptr %38, align 8, !tbaa !45
  %i.ada = load i8, ptr %i.acz, align 8, !tbaa !29
  switch i8 %i.ada, label %bb.gm [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.gl
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit
  %.promoted11.i.i = load ptr, ptr %i.yw, align 8, !tbaa !63
  %i.adb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #40
  store ptr %i.adb, ptr %i.yw, align 8, !tbaa !63
  br label %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit.backedge

_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.gl, %bb.gm
  br label %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit

bb.gl:                                            ; preds = %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit
  %i.adc = load ptr, ptr %i.aae, align 8, !tbaa !64
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store ptr %i.add, ptr %i.aae, align 8, !tbaa !64
  br label %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit.backedge

bb.gm:                                            ; preds = %_ZN16DeformationModel9Component21PiecewiseTimeFunction21EpochScaleFactorTupleD2Ev.exit
  %i.ade = load i64, ptr %i.yx, align 8, !tbaa !54
  %i.adf = add nsw i64 %i.ade, 1
  store i64 %i.adf, ptr %i.yx, align 8, !tbaa !54
  br label %_ZN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEppEv.exit.backedge

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i411
  %i.adg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

bb.go:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit414
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %44, align 8, !tbaa !8   ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.aab
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.go
  %i.adk = load i64, ptr %i.aab, align 8, !tbaa !16
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435, %bb.gn
  %.pn89 = phi { ptr, i32 } [ %i.adg, %bb.gn ], [ %i.adh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ], [ %i.adh, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #37
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %.pn91 = phi { ptr, i32 } [ %i.adm, %bb.gp ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ] ; 2 uses
  %i.adn = load ptr, ptr %42, align 8, !tbaa !8   ; 2 uses
  %i.ado = icmp eq ptr %i.adn, %i.zv
  br i1 %i.ado, label %.body412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438: ; preds = %bb.gq
  %i.adp = load i64, ptr %i.zv, align 8, !tbaa !16
  %i.adq = add i64 %i.adp, 1
  call void @_ZdlPvm(ptr noundef %i.adn, i64 noundef %i.adq) #38
  br label %.body412

.body412:                                         ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i408
  %.pn91.pn = phi { ptr, i32 } [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i408 ], [ %.pn91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438 ], [ %.pn91, %bb.gq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #37
  br label %bb.gr

bb.gr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.fw, %.body412, %bb.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %bb.fq
  %.pn95 = phi { ptr, i32 } [ %i.aan, %bb.fq ], [ %.pn91.pn, %.body412 ], [ %.pn87595, %bb.fy ], [ %i.aau, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ], [ %i.aas, %bb.fw ], [ %i.aau, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #37
  %i.adr = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ads = load i8, ptr %37, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.adr, i8 noundef zeroext %i.ads) #37, !inline_history !33
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.fp
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.gr ], [ %i.aam, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443

_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %bb.ew, %bb.gs, %bb.fi, %bb.eu, %bb.et
  %.pn100.pn = phi { ptr, i32 } [ %.pn100586, %bb.ew ], [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %.pn98590, %bb.fk ], [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %.pn95.pn, %bb.gs ], [ %i.wz, %bb.eu ], [ %i.yo, %bb.fi ], [ %i.wy, %bb.et ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ], [ %i.yq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ]
  %i.adt = load ptr, ptr %i.uz, align 16, !tbaa !36
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.adv = load ptr, ptr %i.adu, align 8
  call void %i.adv(ptr noundef nonnull align 8 dereferenceable(128) %i.uz) #37, !inline_history !203
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445: ; preds = %bb.bz
  %.pre620 = load ptr, ptr %23, align 8, !tbaa !8
  %bcmp.i444 = call i32 @bcmp(ptr %.pre620, ptr nonnull @.str.97, i64 %.pre)
  %i.adw = icmp eq i32 %bcmp.i444, 0
  br i1 %i.adw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445
  %i.adx = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #39
          to label %bb.gt unwind label %bb.hp     ; 27 uses

bb.gt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.adx, i8 0, i64 152, i1 false)
  invoke void @_ZN16DeformationModel9Component23ExponentialTimeFunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.adx)
          to label %bb.gu unwind label %bb.hq

bb.gu:                                            ; preds = %bb.gt
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 4 uses
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !8 ; 6 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 24 ; 2 uses
  %i.aeb = icmp eq ptr %i.adz, %i.aea
  %i.aec = load ptr, ptr %23, align 8, !tbaa !8   ; 5 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed             ; 2 uses
  br i1 %i.aeb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452: ; preds = %bb.gu
  br i1 %i.aee, label %bb.gv, label %.thread.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446: ; preds = %bb.gu
  br i1 %i.aee, label %bb.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447

bb.gv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446
  %i.aef = load i64, ptr %i.ji, align 8, !tbaa !17 ; 3 uses
  %i.aeg = icmp ult i64 %i.aef, 16
  call void @llvm.assume(i1 %i.aeg)
  switch i64 %i.aef, label %bb.gx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450
    i64 1, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.aeh = load i8, ptr %i.aec, align 1, !tbaa !16
  store i8 %i.aeh, ptr %i.adz, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adz, ptr align 1 %i.aec, i64 %i.aef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450: ; preds = %bb.gx, %bb.gw, %bb.gv
  %i.aei = load i64, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  store i64 %i.aei, ptr %i.aej, align 16, !tbaa !17
  %i.aek = load ptr, ptr %i.ady, align 8, !tbaa !8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aei
  store i8 0, ptr %i.ael, align 1, !tbaa !16
  %.pre.i451 = load ptr, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

.thread.i453:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  store ptr %i.aec, ptr %i.ady, align 8, !tbaa !8
  %i.aen = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.aen, ptr %i.aem, align 16, !tbaa !16
  br label %bb.gz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446
  %i.aeo = load i64, ptr %i.aea, align 8, !tbaa !16
  store ptr %i.aec, ptr %i.ady, align 8, !tbaa !8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aeq = load <2 x i64>, ptr %i.ji, align 8, !tbaa !16
  store <2 x i64> %i.aeq, ptr %i.aep, align 16, !tbaa !16
  %.not.i448 = icmp eq ptr %i.adz, null
  br i1 %.not.i448, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447
  store ptr %i.adz, ptr %23, align 8, !tbaa !8
  store i64 %i.aeo, ptr %i.aed, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

bb.gz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447, %.thread.i453
  store ptr %i.aed, ptr %23, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450, %bb.gy, %bb.gz
  %i.aer = phi ptr [ %i.adz, %bb.gy ], [ %i.aed, %bb.gz ], [ %.pre.i451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450 ]
  store i64 0, ptr %i.ji, align 8, !tbaa !17
  store i8 0, ptr %i.aer, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %46, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.43, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit456 unwind label %bb.hr

_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.ha unwind label %bb.hs

bb.ha:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit456
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adx, i64 40 ; 4 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !8 ; 6 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adx, i64 56 ; 2 uses
  %i.aev = icmp eq ptr %i.aet, %i.aeu
  %i.aew = load ptr, ptr %45, align 8, !tbaa !8   ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex             ; 2 uses
  br i1 %i.aev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.ha
  br i1 %i.aey, label %bb.hb, label %.thread.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i457: ; preds = %bb.ha
  br i1 %i.aey, label %bb.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i458

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i457
  %i.aez = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !17 ; 3 uses
  %i.afb = icmp ult i64 %i.afa, 16
  call void @llvm.assume(i1 %i.afb)
  switch i64 %i.afa, label %bb.hd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461
    i64 1, label %bb.hc
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.afc = load i8, ptr %i.aew, align 1, !tbaa !16
  store i8 %i.afc, ptr %i.aet, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aet, ptr align 1 %i.aew, i64 %i.afa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461: ; preds = %bb.hd, %bb.hc, %bb.hb
  %i.afd = load i64, ptr %i.aez, align 8, !tbaa !17 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  store i64 %i.afd, ptr %i.afe, align 16, !tbaa !17
  %i.aff = load ptr, ptr %i.aes, align 8, !tbaa !8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afd
  store i8 0, ptr %i.afg, align 1, !tbaa !16
  %.pre.i.i462 = load ptr, ptr %45, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit465

.thread.i.i464:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  store ptr %i.aew, ptr %i.aes, align 8, !tbaa !8
  %i.afi = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.afj = load <2 x i64>, ptr %i.afi, align 8, !tbaa !16
  store <2 x i64> %i.afj, ptr %i.afh, align 16, !tbaa !16
  br label %bb.hf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i458: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i457
  %i.afk = load i64, ptr %i.aeu, align 8, !tbaa !16
  store ptr %i.aew, ptr %i.aes, align 8, !tbaa !8
  %i.afl = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.afn = load <2 x i64>, ptr %i.afl, align 8, !tbaa !16
  store <2 x i64> %i.afn, ptr %i.afm, align 16, !tbaa !16
  %.not.i.i459 = icmp eq ptr %i.aet, null
  br i1 %.not.i.i459, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i458
  store ptr %i.aet, ptr %45, align 8, !tbaa !8
  store i64 %i.afk, ptr %i.aex, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit465

bb.hf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i458, %.thread.i.i464
  store ptr %i.aex, ptr %45, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit465

_ZN16DeformationModel5EpochaSEOS0_.exit465:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461, %bb.he, %bb.hf
  %i.afo = phi ptr [ %i.aet, %bb.he ], [ %i.aex, %bb.hf ], [ %.pre.i.i462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i461 ]
  %i.afp = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.afp, align 8, !tbaa !17
  store i8 0, ptr %i.afo, align 1, !tbaa !16
  %i.afq = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !18
  %i.afs = getelementptr inbounds nuw i8, ptr %i.adx, i64 72
  store double %i.afr, ptr %i.afs, align 8, !tbaa !18
  %i.aft = load ptr, ptr %45, align 8, !tbaa !8   ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.afv = icmp eq ptr %i.aft, %i.afu
  br i1 %i.afv, label %_ZN16DeformationModel5EpochD2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i466: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit465
  %i.afw = load i64, ptr %i.afu, align 8, !tbaa !16
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afx) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit468

_ZN16DeformationModel5EpochD2Ev.exit468:          ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i466
  %i.afy = load ptr, ptr %46, align 8, !tbaa !8   ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.aga = icmp eq ptr %i.afy, %i.afz
  br i1 %i.aga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit468
  %i.agb = load i64, ptr %i.afz, align 8, !tbaa !16
  %i.agc = add i64 %i.agb, 1
  call void @_ZdlPvm(ptr noundef %i.afy, i64 noundef %i.agc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #37
  invoke fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %48, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.98, i1 noundef zeroext true)
          to label %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit473 unwind label %bb.ht

_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit473: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471
  invoke void @_ZN16DeformationModel5EpochC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.hg unwind label %bb.hu

bb.hg:                                            ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit473
  %i.agd = getelementptr inbounds nuw i8, ptr %i.adx, i64 80 ; 4 uses
  %i.age = load ptr, ptr %i.agd, align 16, !tbaa !8 ; 6 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.adx, i64 96 ; 2 uses
  %i.agg = icmp eq ptr %i.age, %i.agf
  %i.agh = load ptr, ptr %47, align 8, !tbaa !8   ; 5 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.agj = icmp eq ptr %i.agh, %i.agi             ; 2 uses
  br i1 %i.agg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480: ; preds = %bb.hg
  br i1 %i.agj, label %bb.hh, label %.thread.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i474: ; preds = %bb.hg
  br i1 %i.agj, label %bb.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i475

bb.hh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i474
  %i.agk = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !17 ; 3 uses
  %i.agm = icmp ult i64 %i.agl, 16
  call void @llvm.assume(i1 %i.agm)
  switch i64 %i.agl, label %bb.hj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478
    i64 1, label %bb.hi
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.agn = load i8, ptr %i.agh, align 1, !tbaa !16
  store i8 %i.agn, ptr %i.age, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.age, ptr align 1 %i.agh, i64 %i.agl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478: ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.ago = load i64, ptr %i.agk, align 8, !tbaa !17 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.adx, i64 88
  store i64 %i.ago, ptr %i.agp, align 8, !tbaa !17
  %i.agq = load ptr, ptr %i.agd, align 16, !tbaa !8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.ago
  store i8 0, ptr %i.agr, align 1, !tbaa !16
  %.pre.i.i479 = load ptr, ptr %47, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit482

.thread.i.i481:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480
  %i.ags = getelementptr inbounds nuw i8, ptr %i.adx, i64 88
  store ptr %i.agh, ptr %i.agd, align 16, !tbaa !8
  %i.agt = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.agu = load <2 x i64>, ptr %i.agt, align 8, !tbaa !16
  store <2 x i64> %i.agu, ptr %i.ags, align 8, !tbaa !16
  br label %bb.hl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i475: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i474
  %i.agv = load i64, ptr %i.agf, align 16, !tbaa !16
  store ptr %i.agh, ptr %i.agd, align 16, !tbaa !8
  %i.agw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.agx = getelementptr inbounds nuw i8, ptr %i.adx, i64 88
  %i.agy = load <2 x i64>, ptr %i.agw, align 8, !tbaa !16
  store <2 x i64> %i.agy, ptr %i.agx, align 8, !tbaa !16
  %.not.i.i476 = icmp eq ptr %i.age, null
  br i1 %.not.i.i476, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i475
  store ptr %i.age, ptr %47, align 8, !tbaa !8
  store i64 %i.agv, ptr %i.agi, align 8, !tbaa !16
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit482

bb.hl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i475, %.thread.i.i481
  store ptr %i.agi, ptr %47, align 8, !tbaa !8
  br label %_ZN16DeformationModel5EpochaSEOS0_.exit482

_ZN16DeformationModel5EpochaSEOS0_.exit482:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478, %bb.hk, %bb.hl
  %i.agz = phi ptr [ %i.age, %bb.hk ], [ %i.agi, %bb.hl ], [ %.pre.i.i479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i478 ]
  %i.aha = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 0, ptr %i.aha, align 8, !tbaa !17
  store i8 0, ptr %i.agz, align 1, !tbaa !16
  %i.ahb = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !18
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.adx, i64 112
  store double %i.ahc, ptr %i.ahd, align 16, !tbaa !18
  %i.ahe = load ptr, ptr %47, align 8, !tbaa !8   ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.ahg = icmp eq ptr %i.ahe, %i.ahf
  br i1 %i.ahg, label %_ZN16DeformationModel5EpochD2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i483: ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit482
  %i.ahh = load i64, ptr %i.ahf, align 8, !tbaa !16
  %i.ahi = add i64 %i.ahh, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahi) #38
  br label %_ZN16DeformationModel5EpochD2Ev.exit485

_ZN16DeformationModel5EpochD2Ev.exit485:          ; preds = %_ZN16DeformationModel5EpochaSEOS0_.exit482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i483
  %i.ahj = load ptr, ptr %48, align 8, !tbaa !8   ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ahl = icmp eq ptr %i.ahj, %i.ahk
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit485
  %i.ahm = load i64, ptr %i.ahk, align 8, !tbaa !16
  %i.ahn = add i64 %i.ahm, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.ahn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %_ZN16DeformationModel5EpochD2Ev.exit485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #37
  %i.aho = invoke fastcc noundef double @_ZN16DeformationModelL9getDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.99, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit490 unwind label %bb.hv ; 2 uses

_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit490: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.adx, i64 120
  store double %i.aho, ptr %i.ahp, align 8, !tbaa !204
  %i.ahq = fcmp ugt double %i.aho, 0.000000e+00
  br i1 %i.ahq, label %bb.hy, label %bb.hm

bb.hm:                                            ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit490
  %i.ahr = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.hn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ahr, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %bb.ho unwind label %bb.hw

bb.ho:                                            ; preds = %bb.hn
  invoke void @__cxa_throw(ptr nonnull %i.ahr, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ij unwind label %bb.hw

bb.hp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.hq:                                            ; preds = %bb.gt
  %i.aht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adx, i64 noundef 152) #38
  br label %bb.id

bb.hr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493

bb.hs:                                            ; preds = %_ZN16DeformationModelL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit456
  %i.ahv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahw = load ptr, ptr %46, align 8, !tbaa !8   ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.ahy = icmp eq ptr %i.ahw, %i.ahx
  br i1 %i.ahy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491: ; preds = %bb.hs
  %i.ahz = load i64, ptr %i.ahx, align 8, !tbaa !16
  %i.aia = add i64 %i.ahz, 1
  call void @_ZdlPvm(ptr noundef %i.ahw, i64 noundef %i.aia) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491, %bb.hr
  %.pn79 = phi { ptr, i32 } [ %i.ahu, %bb.hr ], [ %i.ahv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491 ], [ %i.ahv, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496

bb.hu:                                            ; preds = %_ZN16DeformationModelL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit473
  %i.aic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aid = load ptr, ptr %48, align 8, !tbaa !8   ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.aif = icmp eq ptr %i.aid, %i.aie
  br i1 %i.aif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494: ; preds = %bb.hu
  %i.aig = load i64, ptr %i.aie, align 8, !tbaa !16
  %i.aih = add i64 %i.aig, 1
  call void @_ZdlPvm(ptr noundef %i.aid, i64 noundef %i.aih) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496: ; preds = %bb.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494, %bb.ht
  %.pn81 = phi { ptr, i32 } [ %i.aib, %bb.ht ], [ %i.aic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494 ], [ %i.aic, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

bb.hv:                                            ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit503, %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit501, %bb.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread: ; preds = %bb.hm
  %i.aij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37
  br label %bb.hx

bb.hw:                                            ; preds = %bb.ho, %bb.hn
  %.024 = phi i1 [ false, %bb.ho ], [ true, %bb.hn ] ; 2 uses
  %i.aik = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ail = load ptr, ptr %49, align 8, !tbaa !8   ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.ain = icmp eq ptr %i.ail, %i.aim
  br i1 %i.ain, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497: ; preds = %bb.hw
  %i.aio = load i64, ptr %i.aim, align 8, !tbaa !16
  %i.aip = add i64 %i.aio, 1
  call void @_ZdlPvm(ptr noundef %i.ail, i64 noundef %i.aip) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37
  br i1 %.024, label %bb.hx, label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37
  br i1 %.024, label %bb.hx, label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

bb.hx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  %.pn83599 = phi { ptr, i32 } [ %i.aij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread ], [ %i.aik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499 ], [ %i.aik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497 ]
  call void @__cxa_free_exception(ptr %i.ahr) #37
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511

bb.hy:                                            ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit490
  %i.aiq = invoke fastcc noundef double @_ZN16DeformationModelL9getDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.101, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit501 unwind label %bb.hv

_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit501: ; preds = %bb.hy
  %i.air = getelementptr inbounds nuw i8, ptr %i.adx, i64 128
  store double %i.aiq, ptr %i.air, align 16, !tbaa !207
  %i.ais = invoke fastcc noundef double @_ZN16DeformationModelL9getDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.102, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit503 unwind label %bb.hv

_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit503: ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit501
  %i.ait = getelementptr inbounds nuw i8, ptr %i.adx, i64 136
  store double %i.ais, ptr %i.ait, align 8, !tbaa !208
  %i.aiu = invoke fastcc noundef double @_ZN16DeformationModelL9getDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.103, i1 noundef zeroext false)
          to label %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit505 unwind label %bb.hv

_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit505: ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit503
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.adx, i64 144
  store double %i.aiu, ptr %i.aiv, align 16, !tbaa !209
  %i.aiw = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  store ptr %i.adx, ptr %i.aa, align 8, !tbaa !99
  %.not.i.i.i506 = icmp eq ptr %i.aiw, null
  br i1 %.not.i.i.i506, label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i507

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i507: ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit505
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !36
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.aiz = load ptr, ptr %i.aiy, align 8
  call void %i.aiz(ptr noundef nonnull align 8 dereferenceable(40) %i.aiw) #37, !inline_history !210
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, %bb.hx, %bb.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
  %.pn83.pn = phi { ptr, i32 } [ %.pn83599, %bb.hx ], [ %i.aik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499 ], [ %i.aii, %bb.hv ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %i.aik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497 ]
  %i.aja = load ptr, ptr %i.adx, align 16, !tbaa !36
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajc = load ptr, ptr %i.ajb, align 8
  call void %i.ajc(ptr noundef nonnull align 8 dereferenceable(152) %i.adx) #37, !inline_history !211
  br label %bb.id

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit356, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236, %bb.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445
  %i.ajd = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #37
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull @.str.104, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.hz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514.thread

bb.hz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ajd, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.ia unwind label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  invoke void @__cxa_throw(ptr nonnull %i.ajd, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.ij unwind label %bb.ib

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread596
  %i.aje = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.ic

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.0 = phi i1 [ false, %bb.ia ], [ true, %bb.hz ] ; 2 uses
  %i.ajf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ajg = load ptr, ptr %51, align 8, !tbaa !8   ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.aji = icmp eq ptr %i.ajg, %i.ajh
  br i1 %i.aji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %bb.ib
  %i.ajj = load i64, ptr %i.ajh, align 8, !tbaa !16
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajg, i64 noundef %i.ajk) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br i1 %.0, label %bb.ic, label %bb.id

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br i1 %.0, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
  %.pn77602 = phi { ptr, i32 } [ %i.aje, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514.thread ], [ %i.ajf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %i.ajf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512 ]
  call void @__cxa_free_exception(ptr %i.ajd) #37
  br label %bb.id

_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN16DeformationModelL12getReqDoubleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit505, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit233, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i.i.i, %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit
  %i.ajl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ajm = load i8, ptr %24, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ajl, i8 noundef zeroext %i.ajm) #37, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  %i.ajn = load ptr, ptr %23, align 8, !tbaa !8   ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ajp = icmp eq ptr %i.ajn, %i.ajo
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit
  %i.ajq = load i64, ptr %i.ajo, align 8, !tbaa !16
  %i.ajr = add i64 %i.ajq, 1
  call void @_ZdlPvm(ptr noundef %i.ajn, i64 noundef %i.ajr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %_ZNSt10unique_ptrIN16DeformationModel9Component20ConstantTimeFunctionESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.ajs = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ajt = load i8, ptr %22, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ajs, i8 noundef zeroext %i.ajt) #37, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  %i.aju = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ajv = load i8, ptr %15, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aju, i8 noundef zeroext %i.ajv) #37, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  ret void

bb.id:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512, %bb.hp, %bb.hq, %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511, %bb.es, %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443, %bb.ed, %.body319, %_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354, %bb.dm, %.body273, %_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308, %bb.cv, %.body, %_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %bb.ic, %bb.cg
  %.pn113 = phi { ptr, i32 } [ %i.kq, %bb.cg ], [ %i.ajf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %i.nt, %bb.cv ], [ %i.rd, %bb.dm ], [ %i.un, %bb.ed ], [ %i.wx, %bb.es ], [ %.pn77602, %bb.ic ], [ %.pn110, %_ZNSt10unique_ptrIN16DeformationModel9Component20VelocityTimeFunctionESt14default_deleteIS2_EED2Ev.exit262 ], [ %i.lh, %.body ], [ %.pn107, %_ZNSt10unique_ptrIN16DeformationModel9Component16StepTimeFunctionESt14default_deleteIS2_EED2Ev.exit308 ], [ %i.or, %.body273 ], [ %.pn104, %_ZNSt10unique_ptrIN16DeformationModel9Component23ReverseStepTimeFunctionESt14default_deleteIS2_EED2Ev.exit354 ], [ %i.sb, %.body319 ], [ %.pn100.pn, %_ZNSt10unique_ptrIN16DeformationModel9Component21PiecewiseTimeFunctionESt14default_deleteIS2_EED2Ev.exit443 ], [ %.pn83.pn, %_ZNSt10unique_ptrIN16DeformationModel9Component23ExponentialTimeFunctionESt14default_deleteIS2_EED2Ev.exit511 ], [ %i.aht, %bb.hq ], [ %i.ahs, %bb.hp ], [ %i.ajf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512 ]
  %i.ajw = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ajx = load i8, ptr %24, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ajw, i8 noundef zeroext %i.ajx) #37, !inline_history !33
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.cf
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.id ], [ %i.kp, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  %i.ajy = load ptr, ptr %23, align 8, !tbaa !8   ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aka = icmp eq ptr %i.ajy, %i.ajz
  br i1 %i.aka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518: ; preds = %bb.ie
  %i.akb = load i64, ptr %i.ajz, align 8, !tbaa !16
  %i.akc = add i64 %i.akb, 1
  call void @_ZdlPvm(ptr noundef %i.ajy, i64 noundef %i.akc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520: ; preds = %bb.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518, %bb.ce
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.ko, %bb.ce ], [ %.pn113.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518 ], [ %.pn113.pn, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.akd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ake = load i8, ptr %22, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.akd, i8 noundef zeroext %i.ake) #37, !inline_history !33
  br label %bb.if

bb.if:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520, %bb.cd
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520 ], [ %i.kn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.ig

bb.ig:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %bb.bl, %bb.if, %bb.cc, %bb.cb, %bb.bj, %bb.bi
  %.pn118.pn = phi { ptr, i32 } [ %.pn118576, %bb.bl ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %.pn113.pn.pn.pn, %bb.if ], [ %i.km, %bb.cc ], [ %i.kl, %bb.cb ], [ %i.he, %bb.bj ], [ %i.hd, %bb.bi ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ]
  %i.akf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.akg = load i8, ptr %15, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.akf, i8 noundef zeroext %i.akg) #37, !inline_history !33
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.bh
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn118.pn, %bb.ig ], [ %i.hc, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.ii

bb.ii:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.ih, %bb.bg, %bb.bf, %bb.af, %bb.ae, %bb.ab
  %.pn122.pn = phi { ptr, i32 } [ %.pn122571, %bb.ah ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn118.pn.pn, %bb.ih ], [ %i.hb, %bb.bg ], [ %i.ha, %bb.bf ], [ %i.dk, %bb.af ], [ %.pn75, %bb.ae ], [ %i.df, %bb.ab ], [ %.pn564, %bb.f ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ]
  call void @_ZN16DeformationModel9ComponentD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) #37
  resume { ptr, i32 } %.pn122.pn

bb.ij:                                            ; preds = %bb.ia, %bb.ho, %bb.fv, %bb.fh, %bb.er, %bb.be, %bb.aa, %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16DeformationModel9ComponentD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i

_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #37, !inline_history !212
  br label %_ZNSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN16DeformationModel9Component12TimeFunctionEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN16DeformationModel9Component12SpatialModelD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #38
  br label %_ZN16DeformationModel9Component12SpatialModelD2Ev.exit

end_hunk_2
