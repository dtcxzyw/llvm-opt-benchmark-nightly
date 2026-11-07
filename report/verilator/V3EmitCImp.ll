Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCImp?download=true
inline.NumInlined: 9758
inline.NumDeleted: 1492
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8EmitCImp18emitStaticVarDefnsEPK13AstNodeModule:bb.a
  %.not42 = icmp eq ptr %.01441, null
  br i1 %.not42, label %._crit_edge, label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph

_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 18
  br label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit:       ; preds = %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph, %bb.h
  %.01443 = phi ptr [ %.01441, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph ], [ %.014, %bb.h ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01443, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.l, align 8, !tbaa !113
  %.not38 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %.not38, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.01443, i64 260
  %i.n = load i64, ptr %i.m, align 4
  %i.o = and i64 %i.n, 4294967296
  %.not39 = icmp eq i64 %i.o, 0
  br i1 %.not39, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK6AstVar9vlArgTypeEbbbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280) %.01443, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.q = load ptr, ptr %3, align 8, !tbaa !36
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.p, ptr noundef nonnull %.01443, ptr noundef %i.q)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load i64, ptr %i.c, align 8, !tbaa !38
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.d, ptr %4, align 8, !tbaa !142
  store i16 2619, ptr %i.d, align 8
  store i64 2, ptr %i.e, align 8, !tbaa !37
  store i8 0, ptr %i.f, align 2, !tbaa !38
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.v, ptr noundef null, ptr noundef nonnull %i.d)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.g

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.w = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.y = load i64, ptr %i.d, align 8, !tbaa !38
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.f
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !38
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.ab, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.g
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !38
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.01443, i64 8
  %.014 = load ptr, ptr %i.al, align 8, !tbaa !108 ; 2 uses
  %.not = icmp eq ptr %.014, null
  br i1 %.not, label %._crit_edge, label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit, !llvm.loop !1132

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn18.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !38
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8EmitCImp14emitParamDefnsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.037327 = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.not328 = icmp eq ptr %.037327, null
  br i1 %.not328, label %._crit_edge.thread, label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph

_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 19
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 18
  br label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit

._crit_edge.a:                                    ; preds = %bb.ag
  %14 = trunc nuw i8 %.240 to i1
  br i1 %14, label %._crit_edge.thread, label %._crit_edge.i.i166

_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit:       ; preds = %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph, %bb.ag
  %.037330 = phi ptr [ %.037327, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph ], [ %.037.a, %bb.ag ] ; 9 uses
  %.038329 = phi i8 [ 1, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit.lr.ph ], [ %.240, %bb.ag ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.037330, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.z, align 8, !tbaa !113
  %.not190 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %.not190, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.037330, i64 248
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aa, align 8, !tbaa !315
  %i.ab = add i8 %.sroa.0.0.copyload.i.i, -1
  %spec.select.i.i = icmp ult i8 %i.ab, 2
  br i1 %spec.select.i.i, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %15 = trunc nuw i8 %.038329 to i1
  br i1 %15, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.b, ptr %3, align 8, !tbaa !142
  store i8 10, ptr %i.b, align 8, !tbaa !38
  store i64 1, ptr %i.c, align 8, !tbaa !37
  store i8 0, ptr %i.w, align 1, !tbaa !38
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ac, ptr noundef null, ptr noundef nonnull %i.b)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !36, !noalias !1147
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !37, !noalias !1147 ; 3 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !142, !alias.scope !1148
  store i64 0, ptr %i.g, align 8, !tbaa !37, !alias.scope !1148
  store i8 0, ptr %i.f, align 8, !tbaa !38, !alias.scope !1148
  %i.aj = add i64 %i.ai, 29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !37, !alias.scope !1148
  %i.al = add i64 %i.ak, -4611686018427387875
  %i.am = icmp ult i64 %i.al, 29
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.827, i64 noundef 29)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !37, !alias.scope !1148
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.invoke.i.i
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !36, !alias.scope !1148 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.f
  br i1 %i.at, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.au = load i64, ptr %i.g, align 8, !tbaa !37, !noalias !1149
  %i.av = icmp eq i64 %i.au, 4611686018427387903
  br i1 %i.av, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
          to label %.noexc69 unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.515, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.h, ptr %4, align 8, !tbaa !142, !alias.scope !1149
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

bb.f:                                             ; preds = %.noexc70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !37 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.noexc70
  store ptr %i.ax, ptr %4, align 8, !tbaa !36, !alias.scope !1149
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !38
  store i64 %i.be, ptr %i.h, align 8, !tbaa !38, !alias.scope !1149
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.f
  %i.bf = phi i64 [ %i.bb, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bf, ptr %i.i, align 8, !tbaa !37, !alias.scope !1149
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !36
  store i64 0, ptr %i.bg, align 8, !tbaa !37
  store i8 0, ptr %i.ay, align 8, !tbaa !38
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !235, !range !110, !noundef !111
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.h, label %_ZN21EmitCBaseVisitorConst14putsDecorationEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.bk = load ptr, ptr %4, align 8, !tbaa !36
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.bj, ptr noundef nonnull %1, ptr noundef %i.bk)
          to label %_ZN21EmitCBaseVisitorConst14putsDecorationEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j

_ZN21EmitCBaseVisitorConst14putsDecorationEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %bb.h
  %i.bl = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.h
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZN21EmitCBaseVisitorConst14putsDecorationEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZN21EmitCBaseVisitorConst14putsDecorationEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.bp = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.br = load i64, ptr %i.f, align 8, !tbaa !38
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.b
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.i
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !38
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit.split-lp197

.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %lpad.loopexit.split-lp475 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.j:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.h
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.j
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !38
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.j, %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.pn46 = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %lpad.loopexit.split-lp475, %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ], [ %i.by, %bb.j ] ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.f
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.as, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %.pn46.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp473, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN8EmitCImp14emitParamDefnsEPK13AstNodeModule:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fa = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.l
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.fc = load i64, ptr %i.l, align 8, !tbaa !38
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.fe = load ptr, ptr %i.cm, align 8, !tbaa !226
  invoke void @_ZNK12AstNodeDType5cTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(162) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.fg = load ptr, ptr %10, align 8, !tbaa !36
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ff, ptr noundef nonnull %.037330, ptr noundef %i.fg)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit119 unwind label %bb.ab

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit119: ; preds = %bb.x
  %i.fh = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.r
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit119
  %i.fj = load i64, ptr %i.r, align 8, !tbaa !38
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %i.co, label %_ZN9EmitCFunc13emitConstInitEP7AstNode.exit, label %._crit_edge.i.i123

._crit_edge.i.i123:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.s, ptr %11, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @.str.596, i64 3, i1 false)
  store i64 3, ptr %i.t, align 8, !tbaa !37
  store i8 0, ptr %i.x, align 1, !tbaa !38
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.fl, ptr noundef null, ptr noundef nonnull %i.s)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128 unwind label %bb.ac

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128: ; preds = %._crit_edge.i.i123
  %i.fm = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.s
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128
  %i.fo = load i64, ptr %i.s, align 8, !tbaa !38
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fq = load ptr, ptr %i.ch, align 8, !tbaa !256 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !146
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 312
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(152) %i.fq, ptr noundef nonnull align 8 dereferenceable(392) %0)
          to label %_ZN9EmitCFunc13emitConstInitEP7AstNode.exit unwind label %bb.ad, !inline_history !1145

.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.n, %bb.l, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp197

bb.y:                                             ; preds = %._crit_edge.i.i88
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.j
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.y
  %i.fx = load i64, ptr %i.j, align 8, !tbaa !38
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit.split-lp197

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.critedge.i, %bb.v
  %lpad.loopexit.split-lp483 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.o
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp
  %i.gc = load i64, ptr %i.o, align 8, !tbaa !38
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.z
  %.pn52 = phi { ptr, i32 } [ %i.fz, %bb.z ], [ %lpad.loopexit.split-lp483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %lpad.loopexit.split-lp483, %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ge = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.l
  br i1 %i.gf, label %.body104, label %.body104.sink.split

.body104.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp
  %.sink470 = phi ptr [ %i.dh, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %.pn52.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp480, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %i.gg = load i64, ptr %i.l, align 8, !tbaa !38
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %.sink470, i64 noundef %i.gh) #25
  br label %.body104

.body104:                                         ; preds = %.body104.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp
  %.pn52.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp480, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn52.pn.ph, %.body104.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ab:                                            ; preds = %bb.x
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.r
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.ab
  %i.gm = load i64, ptr %i.r, align 8, !tbaa !38
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.aa
  %.pn55 = phi { ptr, i32 } [ %i.gi, %bb.aa ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.gj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.af

bb.ac:                                            ; preds = %._crit_edge.i.i123
  %i.go = landingpad { ptr, i32 }
          cleanup
  %i.gp = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.s
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.ac
  %i.gr = load i64, ptr %i.s, align 8, !tbaa !38
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZN9EmitCFunc13emitConstInitEP7AstNode.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %i.u, ptr %12, align 8, !tbaa !142
  store i16 2619, ptr %i.u, align 8
  store i64 2, ptr %i.v, align 8, !tbaa !37
  store i8 0, ptr %i.y, align 2, !tbaa !38
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.gu, ptr noundef null, ptr noundef nonnull %i.u)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit153 unwind label %bb.ae

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit153: ; preds = %_ZN9EmitCFunc13emitConstInitEP7AstNode.exit
  %i.gv = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.u
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit153
  %i.gx = load i64, ptr %i.u, align 8, !tbaa !38
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.gz = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.p
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.hb = load i64, ptr %i.p, align 8, !tbaa !38
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN9EmitCFunc13emitConstInitEP7AstNode.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.u
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ae
  %i.hg = load i64, ptr %i.u, align 8, !tbaa !38
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn59.pn = phi { ptr, i32 } [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.gt, %bb.ad ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %i.hi = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.p
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.af
  %i.hk = load i64, ptr %i.p, align 8, !tbaa !38
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %.body104
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %.body104 ], [ %.pn59.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.pn59.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit.split-lp197

bb.ag:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit
  %.240 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.038329, %bb.b ], [ %.038329, %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.037330, i64 8
  %.037.a = load ptr, ptr %i.hm, align 8, !tbaa !108 ; 2 uses
  %.not.a = icmp eq ptr %.037.a, null
  br i1 %.not.a, label %._crit_edge.a, label %_ZN7AstNode4castI6AstVarS_EEPKT_PKT0_.exit, !llvm.loop !1146

._crit_edge.i.i166:                               ; preds = %._crit_edge.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.hn, ptr %13, align 8, !tbaa !142
  store i8 10, ptr %i.hn, align 8, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.ho, align 8, !tbaa !37
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.hp, align 1, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.hr, ptr noundef null, ptr noundef nonnull %i.hn)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit171 unwind label %bb.ah

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit171: ; preds = %._crit_edge.i.i166
  %i.hs = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hn
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit171
  %i.hu = load i64, ptr %i.hn, align 8, !tbaa !38
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %._crit_edge.thread

bb.ah:                                            ; preds = %._crit_edge.i.i166
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hn
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ah
  %i.hz = load i64, ptr %i.hn, align 8, !tbaa !38
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.loopexit.split-lp197

._crit_edge.thread:                               ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %._crit_edge.a
  %i.ib = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %._crit_edge.thread
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !38
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

.loopexit.split-lp197:                            ; preds = %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %.pn64.pn = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn46.pn, %.body ], [ %.pn59.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ig = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %.loopexit.split-lp197
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !38
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %.loopexit.split-lp197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn64.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8EmitCImp11emitCtorImpEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !142
  store i8 10, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 26 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !204
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.m, ptr noundef null, ptr noundef nonnull %i.i)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.i
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.i, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 8
  %.not790 = icmp eq i16 %i.t, 0
  br i1 %.not790, label %._crit_edge.i.i243, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.v = load ptr, ptr %2, align 8, !tbaa !36, !noalias !1214
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37, !noalias !1214 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !142, !alias.scope !1215
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.z, align 8, !tbaa !37, !alias.scope !1215
  store i8 0, ptr %i.y, align 8, !tbaa !38, !alias.scope !1215
  %i.aa = add i64 %i.x, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aa)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !37, !alias.scope !1215
  %i.ac = add i64 %i.ab, -4611686018427387899
  %i.ad = icmp ult i64 %i.ac, 5
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.831, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !37, !alias.scope !1215
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.x
  br i1 %i.ah, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.v, i64 noundef %i.x)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !36, !alias.scope !1215 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.am = load i64, ptr %i.z, align 8, !tbaa !37, !noalias !1216
  %i.an = and i64 %i.am, -2
  %i.ao = icmp eq i64 %i.an, 4611686018427387902
  br i1 %i.ao, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
          to label %.noexc179 unwind label %bb.m

.noexc179:                                        ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.539, i64 noundef 2)
          to label %.noexc180 unwind label %bb.m  ; 6 uses

.noexc180:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !142, !alias.scope !1216
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
end_hunk_1
