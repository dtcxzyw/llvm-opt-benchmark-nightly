Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCModel?download=true
inline.NumInlined: 9919
inline.NumDeleted: 1292
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9EmitCFunc5visitEP13AstFinishFork:bb.a
  %i.dw = icmp eq ptr %i.dv, %i.cl
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.m
  %i.dx = load i64, ptr %i.cl, align 8, !tbaa !36
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.p

_ZNK8AstCFunc11isCoroutineEv.exit.thread:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNK8AstCFunc11isCoroutineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.dz, ptr %9, align 8, !tbaa !163
  store i64 737304401881097586, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.ea, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.eb, align 8, !tbaa !36
  %i.ec = load ptr, ptr %i.ad, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ec, ptr noundef nonnull %1, ptr noundef nonnull %i.dz)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit99 unwind label %bb.n

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit99: ; preds = %_ZNK8AstCFunc11isCoroutineEv.exit.thread
  %i.ed = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dz
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit99
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZNK8AstCFunc11isCoroutineEv.exit.thread
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dz
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.n
  %i.ek = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn25.pn = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn25.pn
}

declare void @_ZN14VNVisitorConst5visitEP12AstFireEvent(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFloorD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstForeach(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstForeachHeader(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstFork(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstFunc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstFuncRef(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFuture(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstGatePin(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstGenBlock(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstGenCase(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstGenCaseItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstGenFor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstGenIf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9EmitCFunc5visitEP23AstGetInitialRandomSeed(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 35, ptr %i.a, align 8, !tbaa !171
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !34
  %i.d = load i64, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.c, ptr noundef nonnull align 1 dereferenceable(35) @.str.941, i64 35, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = load ptr, ptr %2, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.h, ptr noundef %1, ptr noundef %i.i)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.a

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !36
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.a:                                             ; preds = %.noexc.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.a
  %i.q = load i64, ptr %i.b, align 8, !tbaa !36
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.n
}

declare void @_ZN14VNVisitorConst5visitEP8AstGetcN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstGetcRefN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP5AstGt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstGtD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstGtN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstGtS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstGte(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstGteD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstGteN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstGteS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstHypotD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstISToRD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstIToRD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP5AstIf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstIface(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP20AstIfaceGenericDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstIfaceRefDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstImplication(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstImplicit(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP18AstInferredDisable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14EmitCConstInit5visitEP12AstInitArray(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.e = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.d, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN12AstNodeDType8skipRefpEv.exit:                ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN12AstNodeDType8skipRefpEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !178
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 73
  br i1 %i.g, label %bb.b, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.b:                                             ; preds = %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !163
  store i8 123, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.l, ptr noundef null, ptr noundef nonnull %i.h)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = load i64, ptr %i.h, align 8, !tbaa !36
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !163
  store i8 123, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.t, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.u = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.c
  %i.w = load i64, ptr %i.r, align 8, !tbaa !36
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !163
  store i8 10, ptr %i.y, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !36
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, ptr noundef null, ptr noundef nonnull %i.y)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118 unwind label %bb.o

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111
  %i.ac = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.y
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !36
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !130 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %.not356 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not356, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 17 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 17 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_Z8cvtToStrImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.e unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.ay = load ptr, ptr %6, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ax, ptr noundef nonnull %1, ptr noundef %i.ay)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !36
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !635
  invoke void (ptr, ptr, ...) @_ZN14V3OutFormatter6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(132) %i.bd, ptr noundef nonnull @.str.943, i64 noundef %i.be)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.an, ptr %7, align 8, !tbaa !163
  store i8 58, ptr %i.an, align 8, !tbaa !36
  store i64 1, ptr %i.ao, align 8, !tbaa !35
  store i8 0, ptr %i.ap, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.an
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel: ; preds = %bb.g
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !36
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.aq, ptr %8, align 8, !tbaa !163
  store i8 123, ptr %i.aq, align 8, !tbaa !36
  store i64 1, ptr %i.ar, align 8, !tbaa !35
  store i8 0, ptr %i.as, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel: ; preds = %bb.i
  %i.bn = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !635
  %i.bq = invoke noundef ptr @_ZNK12AstInitArray14getIndexValuepEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.bp)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !137
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 312
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(152) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %i.at, ptr %9, align 8, !tbaa !163
  store i8 125, ptr %i.at, align 8, !tbaa !36
  store i64 1, ptr %i.au, align 8, !tbaa !35
  store i8 0, ptr %i.av, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.l unwind label %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.at
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel: ; preds = %bb.l
  %i.bx = load i64, ptr %i.at, align 8, !tbaa !36
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ah) #27 ; 2 uses
  %.not.peel = icmp eq ptr %i.bz, %i.ai
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

bb.m:                                             ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.h
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.m
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.r
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.n
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !36
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.y
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.o
  %i.cn = load i64, ptr %i.y, align 8, !tbaa !36
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %.sroa.0328.0357 = phi ptr [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0328.0357, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.aj, ptr %5, align 8, !tbaa !163
  store i16 2604, ptr %i.aj, align 8
  store i64 2, ptr %i.ak, align 8, !tbaa !35
  store i8 0, ptr %i.al, align 2, !tbaa !36
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  invoke void @_ZN14V3OutFormatter12putBreakExprEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cq)
          to label %.noexc139 unwind label %bb.p

.noexc139:                                        ; preds = %.peel.next
  %i.cr = load ptr, ptr %5, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.cq, ptr noundef null, ptr noundef %i.cr)
          to label %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.p

_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc139
  %i.cs = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.aj
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cu = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142

bb.p:                                             ; preds = %.noexc139, %.peel.next
  %lpad.loopexit367 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.cw = icmp eq ptr %.pre, %i.aj
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.p
  %i.cx = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142: ; preds = %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_Z8cvtToStrImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.q unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.da = load ptr, ptr %6, align 8, !tbaa !34
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.cz, ptr noundef nonnull %1, ptr noundef %i.da)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q
  %i.db = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.am
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dd = load i64, ptr %i.am, align 8, !tbaa !36
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.dg = load i64, ptr %i.cp, align 8, !tbaa !635
  invoke void (ptr, ptr, ...) @_ZN14V3OutFormatter6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(132) %i.df, ptr noundef nonnull @.str.943, i64 noundef %i.dg)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.an, ptr %7, align 8, !tbaa !163
  store i8 58, ptr %i.an, align 8, !tbaa !36
  store i64 1, ptr %i.ao, align 8, !tbaa !35
  store i8 0, ptr %i.ap, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.an
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.s
  %i.dk = load i64, ptr %i.an, align 8, !tbaa !36
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.aq, ptr %8, align 8, !tbaa !163
  store i8 123, ptr %i.aq, align 8, !tbaa !36
  store i64 1, ptr %i.ar, align 8, !tbaa !35
  store i8 0, ptr %i.as, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156
  %i.dn = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.aq
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.t
  %i.dp = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.dr = load i64, ptr %i.cp, align 8, !tbaa !635
  %i.ds = invoke noundef ptr @_ZNK12AstInitArray14getIndexValuepEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.dr)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !137
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(152) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %i.at, ptr %9, align 8, !tbaa !163
  store i8 125, ptr %i.at, align 8, !tbaa !36
  store i64 1, ptr %i.au, align 8, !tbaa !35
  store i8 0, ptr %i.av, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dx = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.at
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.w
  %i.dz = load i64, ptr %i.at, align 8, !tbaa !36
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.eb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0328.0357) #27 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.ai
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !629

.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142, %bb.d
  %lpad.loopexit.split-lp527 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.e
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.am
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp
  %i.ee = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %.pn94 = phi { ptr, i32 } [ %lpad.loopexit.split-lp530, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.loopexit.split-lp527, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp530, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.f
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.an
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp
  %i.ei = load i64, ptr %i.an, align 8, !tbaa !36
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.aq
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp
  %i.em = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.k
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.at
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp
  %i.eq = load i64, ptr %i.at, align 8, !tbaa !36
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.es, ptr %10, align 8, !tbaa !163
  store i8 10, ptr %i.es, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.et, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.eu, align 1, !tbaa !36
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ev, ptr noundef null, ptr noundef nonnull %i.es)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186 unwind label %bb.y

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186: ; preds = %._crit_edge
  %i.ew = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.es
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !36
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.fa, ptr %11, align 8, !tbaa !163
  store i8 125, ptr %i.fa, align 8, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fb, align 8, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.fc, align 1, !tbaa !36
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.fd, ptr noundef null, ptr noundef nonnull %i.fa)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195 unwind label %bb.z

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188
  %i.fe = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fa
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !36
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fi = load ptr, ptr %i.k, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fj, ptr %12, align 8, !tbaa !163
  store i8 125, ptr %i.fj, align 8, !tbaa !36
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.fk, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.fl, align 1, !tbaa !36
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197
  %i.fm = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fj
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.x
  %i.fo = load i64, ptr %i.fj, align 8, !tbaa !36
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bd

bb.y:                                             ; preds = %._crit_edge
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.es
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.y
  %i.ft = load i64, ptr %i.es, align 8, !tbaa !36
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fa
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.z
  %i.fy = load i64, ptr %i.fa, align 8, !tbaa !36
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fj
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.aa
  %i.gd = load i64, ptr %i.fj, align 8, !tbaa !36
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread: ; preds = %_ZN12AstNodeDType8skipRefpEv.exit, %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.gg = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.gf, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit216 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN12AstNodeDType8skipRefpEv.exit216:             ; preds = %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread
  %.not.i217 = icmp eq ptr %i.gg, null
  br i1 %.not.i217, label %bb.ba, label %bb.ab

bb.ab:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit216
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
end_hunk_0
begin_hunk_1_@_ZN7AstNode11foreachImplIKS_ZNKS_9nodeCountEvEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT0_b:bb.a
  %.11 = phi ptr [ %.10, %bb.u ], [ %i.bc, %bb.v ] ; 2 uses
  %i.bd = icmp ugt ptr %.11, %.135
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !prof !391

bb.w:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.not.i50 = icmp eq ptr %.sroa.062.081, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.062.081) #25
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.be

._crit_edge:                                      ; preds = %_ZZN7AstNode11foreachImplIKS_ZNKS_9nodeCountEvEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT0_bENKUlS2_E_clES2_.exit49
  %.not.i51 = icmp eq ptr %.sroa.062.1, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit53, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i52

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i52: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.062.1) #25
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit53

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit53: ; preds = %_ZZN7AstNode11foreachImplIKS_ZNKS_9nodeCountEvEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT0_bENKUlS2_E_clES2_.exit, %._crit_edge, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op3pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI15AstClassExtendsS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

declare noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9EmitCFunc23constructorNeedsProcessEPK8AstClass(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.828, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = invoke noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !36
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %_ZN7AstNode4castI8AstCFuncS_EEPKT_PKT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !36
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.j

_ZN7AstNode4castI8AstCFuncS_EEPKT_PKT0_.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !178
  %.not21 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 5
  br i1 %.not21, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN7AstNode4castI8AstCFuncS_EEPKT_PKT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 313
  %i.q = load i16, ptr %i.p, align 1
  %i.r = and i16 %i.q, 128
  %.not22 = icmp eq i16 %i.r, 0
  br i1 %.not22, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.799, i32 noundef 141) ; 0 uses
  %i.t = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.829)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.u) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 315
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 8
  %i.y = icmp ne i8 %i.x, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN7AstNode4castI8AstCFuncS_EEPKT_PKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %bb.f ], [ false, %_ZN7AstNode4castI8AstCFuncS_EEPKT_PKT0_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9EmitCFunc23getSuperNewCallRecursepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not79 = icmp eq ptr %1, null
  br i1 %.not79, label %_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit, label %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit

_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit:        ; preds = %bb.a, %select.unfold57
  %.tr7280 = phi ptr [ %i.j, %select.unfold57 ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr7280, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !178
  switch i16 %.sroa.0.0.copyload.i.i.i, label %select.unfold57 [
    i16 289, label %_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit
    i16 455, label %bb.b
    i16 433, label %bb.d
  ]

bb.b:                                             ; preds = %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.tr7280, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %.not.i48 = icmp eq ptr %i.c, null
  br i1 %.not.i48, label %select.unfold57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.0.0.copyload.i.i.i49 = load i16, ptr %i.d, align 8, !tbaa !178
  %i.e = icmp eq i16 %.sroa.0.0.copyload.i.i.i49, 289
  br i1 %i.e, label %_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit, label %select.unfold57

bb.d:                                             ; preds = %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7280, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = tail call noundef ptr @_ZN9EmitCFunc23getSuperNewCallRecursepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.g) ; 2 uses
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %select.unfold57, label %_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit

select.unfold57:                                  ; preds = %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.tr7280, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !242  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit, label %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit

_ZN7AstNode4castI7AstCNew11AstNodeExprEEPT_PT0_.exit: ; preds = %select.unfold57, %bb.d, %bb.c, %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.c, %bb.c ], [ null, %select.unfold57 ], [ %.tr7280, %_ZN7AstNode4castI7AstCNewS_EEPT_PT0_.exit ]
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9EmitCFunc19putCommaIterateNextEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.a, ptr %3, align 8, !tbaa !163
  store i16 8236, ptr %i.a, align 8
  store i64 2, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.c, align 2, !tbaa !36
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.e, ptr noundef null, ptr noundef nonnull %i.a)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.h = load i64, ptr %i.a, align 8, !tbaa !36
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %.lr.ph
  %i.j = load ptr, ptr %1, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !242  ; 2 uses
  %.not.peel = icmp eq ptr %i.n, null
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.c, %bb.a
  ret void

.peel.next:                                       ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.0818 = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.a, ptr %3, align 8, !tbaa !163
  store i16 8236, ptr %i.a, align 8
  store i64 2, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.c, align 2, !tbaa !36
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !172
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.o, ptr noundef null, ptr noundef nonnull %i.a)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.peel.next
  %i.p = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !36
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.v = load i64, ptr %i.a, align 8, !tbaa !36
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %lpad.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = load ptr, ptr %.0818, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(152) %.0818, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.aa = getelementptr inbounds nuw i8, ptr %.0818, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !242 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !2236
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCNew5argspEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !178
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 13
  br i1 %.not6, label %.critedge, label %bb.c, !prof !179

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.13, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.14)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !178
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.15)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #28
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit

_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit: ; preds = %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !211
  %i.j = icmp ult ptr %1, %i.i
  br i1 %i.j, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15, !prof !241

_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.a, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit
  tail call void @_ZN10VMemberMap4scanEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not10.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i3, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread, %.lr.ph.i.i.i4
  %.012.i.i.i5 = phi ptr [ %.1.i.i.i10, %.lr.ph.i.i.i4 ], [ %i.k, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread ] ; 3 uses
  %.0811.i.i.i6 = phi ptr [ %.19.i.i.i7, %.lr.ph.i.i.i4 ], [ %i.c, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i5, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = icmp ult ptr %i.m, %1                    ; 2 uses
  %.19.i.i.i7 = select i1 %i.n, ptr %.0811.i.i.i6, ptr %.012.i.i.i5 ; 4 uses
  %.1.in.v.i.i.i8 = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i9 = getelementptr inbounds nuw i8, ptr %.012.i.i.i5, i64 %.1.in.v.i.i.i8
  %.1.i.i.i10 = load ptr, ptr %.1.in.i.i.i9, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %.1.i.i.i10, null
  br i1 %.not.i.i.i11, label %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i12, label %.lr.ph.i.i.i4, !llvm.loop !15

_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i12: ; preds = %.lr.ph.i.i.i4
  %i.o = icmp eq ptr %.19.i.i.i7, %i.c
  br i1 %i.o, label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i12
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i7, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  %i.r = icmp ult ptr %1, %i.q
  %spec.select.i.i13 = select i1 %i.r, ptr %i.c, ptr %.19.i.i.i7
  br label %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15

_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15: ; preds = %bb.b, %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i12, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit
  %.sroa.030.0 = phi ptr [ %.19.i.i.i, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit ], [ %i.c, %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit.thread ], [ %i.c, %_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE14_M_lower_boundEPSt13_Rb_tree_nodeISJ_EPSt18_Rb_tree_node_baseRS4_.exit.i.i12 ], [ %spec.select.i.i13, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i16, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNodeSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt3mapIPK7AstNodeS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessIS8_ESaISt4pairIKS8_S9_EEESA_IS2_ESaISC_IKS2_SG_EEE4findERSI_.exit15
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35   ; 4 uses
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.t, %.lr.ph.i.i.i17 ], [ %.1.i.i.i23, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %.19.i.i.i20, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.z) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.ae = sub i64 %i.z, %i.w
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
end_hunk_1
