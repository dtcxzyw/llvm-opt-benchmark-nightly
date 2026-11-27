Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_cpp?download=true
inline.NumInlined: 10427
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11flatbuffers3cpp12CppGenerator27GenFullyQualifiedNameGetterERKNS_9StructDefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bc, ptr %9, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bc, ptr noundef nonnull align 1 dereferenceable(3) @.str.267, i64 3, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.bd, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.be, align 1, !tbaa !32
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.i, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53
  %i.bf = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.h
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !32
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bj = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  ret void

bb.j:                                             ; preds = %.noexc22, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.j
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.j
  %i.br = load i64, ptr %i.j, align 8, !tbaa !32
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.k:                                             ; preds = %.noexc.i29
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.l:                                             ; preds = %.noexc32, %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.u
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.l
  %i.bx = load i64, ptr %i.u, align 8, !tbaa !32
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.k
  %.pn12 = phi { ptr, i32 } [ %i.bt, %bb.k ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.bu, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bz = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.r
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !32
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.m:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aj
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.m
  %i.cg = load i64, ptr %i.aj, align 8, !tbaa !32
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.n:                                             ; preds = %.noexc.i42, %.noexc.i49
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.o:                                             ; preds = %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.as
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.o
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !32
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bc
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.p
  %i.cr = load i64, ptr %i.bc, align 8, !tbaa !32
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.p, %bb.o, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn19.pn = phi { ptr, i32 } [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.cj, %bb.o ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.ci, %bb.n ], [ %i.cd, %bb.m ], [ %i.co, %bb.p ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers3cpp12CppGenerator27GenStructDefaultConstructorERKNS_9StructDefE(ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::function", align 8     ; 18 uses
  %7 = alloca %"class.std::function", align 8     ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i64 0, ptr %i.h, align 8, !tbaa !53
  store i8 0, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !53
  store i8 0, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i32 0, ptr %i.e, align 4, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 0, ptr %i.f, align 4, !tbaa !304
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110  ; 3 uses
  %.not164207 = icmp eq ptr %i.l, %i.n
  br i1 %.not164207, label %.noexc.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !112
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator4NameB5cxx11ERKNS_8FieldDefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(312) %i.y)
          to label %bb.b unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.z = load i64, ptr %i.o, align 8, !tbaa !53, !noalias !1352
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %.loopexit216, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %bb.b
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.181, i64 noundef 1)
          to label %.noexc41.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1352 ; 6 uses

.noexc41.peel:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  store ptr %i.p, ptr %4, align 8, !tbaa !31, !alias.scope !1352
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %.noexc41.peel
  store ptr %i.ac, ptr %4, align 8, !tbaa !37, !alias.scope !1352
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !32
  store i64 %i.af, ptr %i.p, align 8, !tbaa !32, !alias.scope !1352
  %.phi.trans.insert.i.peel = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i.peel = load i64, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !53
  br label %bb.d

bb.c:                                             ; preds = %.noexc41.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.aj, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.ak = phi i64 [ %i.ah, %bb.c ], [ %.pre.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ak, ptr %i.q, align 8, !tbaa !53, !alias.scope !1352
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !37
  store i64 0, ptr %i.al, align 8, !tbaa !53
  store i8 0, ptr %i.ad, align 8, !tbaa !32
  %i.am = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel: ; preds = %bb.d
  %i.ao = load i64, ptr %i.r, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pre = load i64, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %.pre248 = load i64, ptr %i.h, align 8, !tbaa !53
  %i.aq = sub i64 4611686018427387903, %.pre248
  %i.ar = icmp ult i64 %i.aq, %.pre
  br i1 %i.ar, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel
  %i.as = load ptr, ptr %4, align 8, !tbaa !37
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.as, i64 noundef %.pre)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !112 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !305
  switch i32 %i.aw, label %.thread.peel [
    i32 15, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.peel
    i32 17, label %bb.e
  ]

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.peel:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !321
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !247, !range !58, !noundef !59
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %.thread.peel

bb.e:                                             ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !53
  %i.bd = and i64 %i.bc, -2
  %i.be = icmp eq i64 %i.bd, 4611686018427387902
  br i1 %i.be, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55.peel.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55.peel.invoke: ; preds = %.thread.peel, %bb.e
  %i.bf = phi ptr [ @.str.359, %bb.e ], [ @.str.378, %.thread.peel ]
  %i.bg = phi i64 [ 2, %bb.e ], [ 3, %.thread.peel ]
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.bf, i64 noundef %i.bg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58.peel unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread.peel:                                     ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !53
  %i.bj = add i64 %i.bi, -4611686018427387901
  %i.bk = icmp ult i64 %i.bj, 3
  br i1 %i.bk, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55.peel.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55.peel.invoke
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !112 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 296
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !307
  %.not.peel = icmp eq i64 %i.bn, 0
  br i1 %.not.peel, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 0, ptr %i.u, align 8
  store ptr @_ZN11flatbuffers3cpp12CppGenerator18PaddingInitializerEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi, ptr %6, align 8, !tbaa !308
  store ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E9_M_invokeERKSt9_Any_dataOiOS6_OS7_, ptr %i.t, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.s, align 8, !tbaa !310
  invoke void @_ZN11flatbuffers3cpp12CppGenerator10GenPaddingERKNS_8FieldDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiRKSt8functionIFviSB_SC_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.bl, ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !310 ; 2 uses
  %.not.i.peel = icmp eq ptr %i.bo, null
  br i1 %.not.i.peel, label %_ZNSt14_Function_baseD2Ev.exit.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.peel unwind label %.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt14_Function_baseD2Ev.exit.peel:              ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i64 0, ptr %i.x, align 8
  store ptr @_ZN11flatbuffers3cpp12CppGenerator11PaddingNoopEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi, ptr %7, align 8, !tbaa !308
  store ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E9_M_invokeERKSt9_Any_dataOiOS6_OS7_, ptr %i.w, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.v, align 8, !tbaa !310
  invoke void @_ZN11flatbuffers3cpp12CppGenerator10GenPaddingERKNS_8FieldDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiRKSt8functionIFviSB_SC_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.bq, ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.peel
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !310 ; 2 uses
  %.not.i63.peel = icmp eq ptr %i.br, null
  br i1 %.not.i63.peel, label %_ZNSt14_Function_baseD2Ev.exit64.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit64.peel unwind label %.loopexit.split-lp243.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt14_Function_baseD2Ev.exit64.peel:            ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit64.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58.peel
  %i.bt = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.p
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %bb.k
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !32
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.not164.peel = icmp eq ptr %i.bx, %i.n
  br i1 %.not164.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %.pre249 = load i64, ptr %i.h, align 8, !tbaa !53
  %i.by = icmp eq i64 %.pre249, 0
  br i1 %i.by, label %.noexc.i, label %bb.ae

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.sroa.0161.0208 = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bz = load ptr, ptr %.sroa.0161.0208, align 8, !tbaa !112
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator4NameB5cxx11ERKNS_8FieldDefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(312) %i.bz)
          to label %bb.l unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.peel.next
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !53, !noalias !1353
  %i.cb = icmp eq i64 %i.ca, 4611686018427387903
  br i1 %i.cb, label %.loopexit216, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit216:                                     ; preds = %bb.l, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1353

.noexc:                                           ; preds = %.loopexit216
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.181, i64 noundef 1)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1353 ; 6 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.p, ptr %4, align 8, !tbaa !31, !alias.scope !1353
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc41
  store ptr %i.cd, ptr %4, align 8, !tbaa !37, !alias.scope !1353
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !32
  store i64 %i.ck, ptr %i.p, align 8, !tbaa !32, !alias.scope !1353
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.cl = phi i64 [ %i.ch, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cl, ptr %i.q, align 8, !tbaa !53, !alias.scope !1353
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !37
  store i64 0, ptr %i.cm, align 8, !tbaa !53
  store i8 0, ptr %i.ce, align 8, !tbaa !32
  %i.cn = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.r
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.n
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !32
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel, %.loopexit216
  %lpad.loopexit.split-lp337 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.r
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !32
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %.pn35 = phi { ptr, i32 } [ %lpad.loopexit.split-lp337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp337, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !53
  %i.cw = icmp eq i64 %i.cv, 4611686018427387903
  br i1 %i.cw, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46

.loopexit220.invoke:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52, %.thread.peel, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.loopexit220.cont unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp

.loopexit220.cont:                                ; preds = %.loopexit220.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.189, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46
  %i.cy = load i64, ptr %i.h, align 8, !tbaa !53
  %i.cz = add i64 %i.cy, -4611686018427387895
  %i.da = icmp ult i64 %i.cz, 9
  br i1 %i.da, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.377, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52 unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55.peel.invoke, %.loopexit220.invoke
  %lpad.loopexit.split-lp340 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  %i.dc = load i64, ptr %i.q, align 8, !tbaa !53  ; 2 uses
  %i.dd = load i64, ptr %i.h, align 8, !tbaa !53
  %i.de = sub i64 4611686018427387903, %i.dd
  %i.df = icmp ult i64 %i.de, %i.dc
  br i1 %i.df, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52
  %i.dg = load ptr, ptr %4, align 8, !tbaa !37
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.dg, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.di = load ptr, ptr %.sroa.0161.0208, align 8, !tbaa !112 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 200
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !305
  switch i32 %i.dk, label %.thread [
    i32 15, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit
    i32 17, label %bb.o
  ]

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 208
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !321
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 272
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !247, !range !58, !noundef !59
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !53
  %i.dr = and i64 %i.dq, -2
  %i.ds = icmp eq i64 %i.dr, 4611686018427387902
  br i1 %i.ds, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.invoke

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit
  %i.dt = load i64, ptr %i.h, align 8, !tbaa !53
  %i.du = add i64 %i.dt, -4611686018427387901
  %i.dv = icmp ult i64 %i.du, 3
  br i1 %i.dv, label %.loopexit220.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.invoke: ; preds = %.thread, %bb.o
  %i.dw = phi ptr [ @.str.359, %bb.o ], [ @.str.378, %.thread ]
  %i.dx = phi i64 [ 2, %bb.o ], [ 3, %.thread ]
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.dw, i64 noundef %i.dx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58 unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59.invoke
  %i.dz = load ptr, ptr %.sroa.0161.0208, align 8, !tbaa !112 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 296
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !307
  %.not = icmp eq i64 %i.eb, 0
  br i1 %.not, label %bb.y, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 0, ptr %i.u, align 8
  store ptr @_ZN11flatbuffers3cpp12CppGenerator18PaddingInitializerEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi, ptr %6, align 8, !tbaa !308
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFviPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiEPS8_E9_M_invokeERKSt9_Any_dataOiOS6_OS7_>, ptr %i.s, align 8, !tbaa !308
  invoke void @_ZN11flatbuffers3cpp12CppGenerator10GenPaddingERKNS_8FieldDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiRKSt8functionIFviSB_SC_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.dz, ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %i.s, align 8, !tbaa !310 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
end_hunk_0
