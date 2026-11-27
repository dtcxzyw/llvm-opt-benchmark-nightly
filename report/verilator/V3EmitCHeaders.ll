Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCHeaders?download=true
inline.NumInlined: 3018
inline.NumDeleted: 621
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN21EmitCBaseVisitorConst10forModCUseIZN11EmitCHeaderC1EPK13AstNodeModuleEUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_EEvS4_8VUseTypeT_:bb.a
  store i64 %i.bz, ptr %i.h, align 8, !tbaa !22, !alias.scope !294
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !21
  store i64 0, ptr %i.ca, align 8, !tbaa !22
  store i8 0, ptr %i.bs, align 8, !tbaa !23
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !22, !noalias !295
  %i.cc = and i64 %i.cb, -2
  %i.cd = icmp eq i64 %i.cc, 4611686018427387902
  br i1 %i.cd, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc59 unwind label %.loopexit.split-lp94.loopexit.split-lp.loopexit.split-lp, !noalias !295

.noexc59:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55: ; preds = %bb.o
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %.noexc60 unwind label %.loopexit.split-lp94.loopexit.split-lp.loopexit.split-lp, !noalias !295 ; 6 uses

.noexc60:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55
  store ptr %i.i, ptr %6, align 8, !tbaa !109, !alias.scope !295
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

bb.q:                                             ; preds = %.noexc60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !22 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.noexc60
  store ptr %i.cf, ptr %6, align 8, !tbaa !21, !alias.scope !295
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !23
  store i64 %i.cm, ptr %i.i, align 8, !tbaa !23, !alias.scope !295
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i58 = load i64, ptr %.phi.trans.insert.i57, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.q
  %i.cn = phi i64 [ %i.cj, %bb.q ], [ %.pre.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.cn, ptr %i.j, align 8, !tbaa !22, !alias.scope !295
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !21
  store i64 0, ptr %i.co, align 8, !tbaa !22
  store i8 0, ptr %i.cg, align 8, !tbaa !23
  %i.cp = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZZN11EmitCHeaderC1EPK13AstNodeModuleENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clES8_.exit63 unwind label %bb.t ; 0 uses

_ZZN11EmitCHeaderC1EPK13AstNodeModuleENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clES8_.exit63: ; preds = %bb.r
  %i.cq = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.i
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZZN11EmitCHeaderC1EPK13AstNodeModuleENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clES8_.exit63
  %i.cs = load i64, ptr %i.i, align 8, !tbaa !23
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZZN11EmitCHeaderC1EPK13AstNodeModuleENKUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clES8_.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.cu = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.g
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !23
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.cy = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.k
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.da = load i64, ptr %i.k, align 8, !tbaa !23
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.u

bb.s:                                             ; preds = %bb.m
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

.loopexit.split-lp94.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55, %bb.p
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.t:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.i
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.t
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.t, %.loopexit.split-lp94.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn = phi { ptr, i32 } [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp94.loopexit.split-lp.loopexit.split-lp ], [ %i.dd, %bb.t ] ; 2 uses
  %i.di = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.g
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.dk = load i64, ptr %i.g, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  %i.dm = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.k
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.do = load i64, ptr %i.k, align 8, !tbaa !23
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.v

bb.u:                                             ; preds = %_ZN7AstNode4castI7AstCUseS_EEPKT_PKT0_.exit, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dq = getelementptr inbounds nuw i8, ptr %.017115, i64 8
  %.017 = load ptr, ptr %i.dq, align 8, !tbaa !90 ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %._crit_edge, label %_ZN7AstNode4castI7AstCUseS_EEPKT_PKT0_.exit, !llvm.loop !289

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI15AstClassPackage13AstNodeModuleEEPKT_PKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !92
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 385
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15AstClassPackage6classpEv(ptr noundef nonnull align 8 dereferenceable(320) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11EmitCHeader7emitAllEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not.i = icmp eq ptr %1, null                  ; 3 uses
  br i1 %.not.i, label %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.c, align 8, !tbaa !92
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 384
  br i1 %i.d, label %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit, label %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit.thread

_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %.not58345 = icmp eq ptr %i.f, null
  br i1 %.not58345, label %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_.exit

_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_.exit: ; preds = %bb.h, %.lr.ph
  %.055346 = phi ptr [ %i.f, %.lr.ph ], [ %i.bd, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.m = call noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160) %.055346)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef 10)
          to label %.noexc unwind label %bb.j, !noalias !304 ; 6 uses

.noexc:                                           ; preds = %_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_.exit
  store ptr %i.g, ptr %3, align 8, !tbaa !109, !alias.scope !304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.q, ptr %3, align 8, !tbaa !21, !alias.scope !304
  %i.x = load i64, ptr %i.r, align 8, !tbaa !23
  store i64 %i.x, ptr %i.g, align 8, !tbaa !23, !alias.scope !304
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.y, ptr %i.h, align 8, !tbaa !22, !alias.scope !304
  store ptr %i.r, ptr %i.p, align 8, !tbaa !21
  store i64 0, ptr %i.z, align 8, !tbaa !22
  store i8 0, ptr %i.r, align 8, !tbaa !23
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !22, !noalias !305
  %i.ab = and i64 %i.aa, -4
  %i.ac = icmp eq i64 %i.ab, 4611686018427387900
  br i1 %i.ac, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

.noexc96:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, i64 noundef 4)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305 ; 6 uses

.noexc97:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.i, ptr %2, align 8, !tbaa !109, !alias.scope !305
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

bb.f:                                             ; preds = %.noexc97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %.noexc97
  store ptr %i.ae, ptr %2, align 8, !tbaa !21, !alias.scope !305
  %i.al = load i64, ptr %i.af, align 8, !tbaa !23
  store i64 %i.al, ptr %i.i, align 8, !tbaa !23, !alias.scope !305
  %.phi.trans.insert.i94 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre.i95 = load i64, ptr %.phi.trans.insert.i94, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.am, ptr %i.j, align 8, !tbaa !22, !alias.scope !305
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !21
  store i64 0, ptr %i.an, align 8, !tbaa !22
  store i8 0, ptr %i.af, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.ap = load ptr, ptr %2, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ao, ptr noundef nonnull %.055346, ptr noundef %i.ap)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g
  %i.aq = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = load i64, ptr %i.i, align 8, !tbaa !23
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.au = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.g
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !23
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.ay = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.l
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %.055346, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 5 uses
  %cond = icmp eq ptr %i.bd, null
  br i1 %cond, label %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.sroa.0.0.copyload.i.i.i107 = load i16, ptr %i.be, align 8, !tbaa !92
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i107, 13
  br i1 %.not6.i, label %_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_.exit, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.48, i32 noundef 1063) ; 0 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.49)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.bf, align 8, !tbaa !92
  %i.bj = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !93
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bl)
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.50)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.bn) #24
  unreachable

bb.j:                                             ; preds = %_ZN7AstNode2asI15AstClassExtendsS_EEPT_PT0_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %lpad.loopexit.split-lp490 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.k:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN11EmitCHeader7emitAllEPK13AstNodeModule:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.eo, ptr noundef nonnull align 1 dereferenceable(29) @.str.39, i64 29, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !22
  %i.er = load ptr, ptr %10, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.et = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.eu = load ptr, ptr %10, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.et, ptr noundef null, ptr noundef %i.eu)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161 unwind label %bb.x

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161: ; preds = %bb.q
  %i.ev = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.en
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !23
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.y

bb.r:                                             ; preds = %_ZN7AstNode4castI8AstClass13AstNodeModuleEEPKT_PKT0_.exit.thread
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i122, %bb.n
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.t:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ct
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.t
  %i.fe = load i64, ptr %i.ct, align 8, !tbaa !23
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.s
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.s ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %i.fb, %bb.t ] ; 2 uses
  %i.fg = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.cd
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.fi = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ]
  %i.fk = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !23
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ao

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dv
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.u
  %i.fs = load i64, ptr %i.dv, align 8, !tbaa !23
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ao

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i143
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ed
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.v
  %i.fx = load i64, ptr %i.ed, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ao

bb.w:                                             ; preds = %.noexc.i157
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.x:                                             ; preds = %bb.q
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.en
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.x
  %i.gd = load i64, ptr %i.en, align 8, !tbaa !23
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.w
  %.pn65 = phi { ptr, i32 } [ %i.fz, %bb.w ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.ga, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ao

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %1)
  %i.gf = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.gg = load ptr, ptr %11, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.gf, ptr noundef null, ptr noundef %i.gg)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit184 unwind label %bb.ac

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit184: ; preds = %bb.y
  %i.gh = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit184
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !23
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.not.i, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i189 = load i16, ptr %i.gm, align 8, !tbaa !92
  %i.gn = icmp eq i16 %.sroa.0.0.copyload.i.i.i189, 384
  br i1 %i.gn, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.go, ptr %12, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.go, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %i.gp, align 8, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 19
  store i8 0, ptr %i.gq, align 1, !tbaa !23
  %i.gr = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.gr, ptr noundef null, ptr noundef nonnull %i.go)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit197 unwind label %bb.ad

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit197: ; preds = %bb.aa
  %i.gs = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.go
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit197
  %i.gu = load i64, ptr %i.go, align 8, !tbaa !23
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !150 ; 5 uses
  %.not72 = icmp eq ptr %i.gx, null
  br i1 %.not72, label %.noexc.i245, label %._crit_edge.i.i219.peel

._crit_edge.i.i219.peel:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 18
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.he = call noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160) %i.gx)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 317
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !308, !range !98, !noundef !99
  %i.hh = trunc nuw i8 %i.hg to i1                ; 3 uses
  %i.hi = select i1 %i.hh, ptr @.str.42, ptr @.str.43
  store ptr %i.hb, ptr %14, align 8, !tbaa !109
  %i.hj = select i1 %i.hh, i64 15, i64 7          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.hb, ptr noundef nonnull align 1 dereferenceable(7) %i.hi, i64 %i.hj, i1 false)
  store i64 %i.hj, ptr %i.hc, align 8, !tbaa !22
  %.sroa.gep371 = getelementptr inbounds nuw i8, ptr %14, i64 31 ; 2 uses
  %.sroa.gep372 = getelementptr inbounds nuw i8, ptr %14, i64 23 ; 2 uses
  %.sroa.sel373 = select i1 %i.hh, ptr %.sroa.gep371, ptr %.sroa.gep372
  store i8 0, ptr %.sroa.sel373, align 1, !tbaa !23
  %i.hk = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.hk, ptr noundef null, ptr noundef nonnull %i.hb)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224.peel unwind label %.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224.peel: ; preds = %._crit_edge.i.i219.peel
  %i.hl = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.hb
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224.peel
  %i.hn = load i64, ptr %i.hb, align 8, !tbaa !23
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hp = call noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160) %i.gx)
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %i.hp)
  %i.hq = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.hr = load ptr, ptr %15, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.hq, ptr noundef nonnull %i.gx, ptr noundef %i.hr)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229.peel unwind label %.loopexit.split-lp365.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.peel
  %i.hs = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hd
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229.peel
  %i.hu = load i64, ptr %i.hd, align 8, !tbaa !23
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !108 ; 4 uses
  %cond351.peel = icmp eq ptr %i.hx, null
  br i1 %cond351.peel, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.peel
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %.sroa.0.0.copyload.i.i.i234.peel = load i16, ptr %i.hy, align 8, !tbaa !92
  %.not6.i235.peel = icmp eq i16 %.sroa.0.0.copyload.i.i.i234.peel, 13
  br i1 %.not6.i235.peel, label %.peel.next, label %.loopexit369, !prof !155

bb.ac:                                            ; preds = %bb.y
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.ac
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !23
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ao

bb.ad:                                            ; preds = %bb.aa
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.go
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.ad
  %i.ii = load i64, ptr %i.go, align 8, !tbaa !23
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ao

.peel.next:                                       ; preds = %bb.ab, %bb.af
  %.0349 = phi ptr [ %i.jl, %bb.af ], [ %i.hx, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.gy, ptr %13, align 8, !tbaa !109
  store i16 8236, ptr %i.gy, align 8
  store i64 2, ptr %i.gz, align 8, !tbaa !22
  store i8 0, ptr %i.ha, align 2, !tbaa !23
  %i.ik = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ik, ptr noundef null, ptr noundef nonnull %i.gy)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit212 unwind label %bb.ae

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit212: ; preds = %.peel.next
  %i.il = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.gy
  br i1 %i.im, label %._crit_edge.i.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit212
  %i.in = load i64, ptr %i.gy, align 8, !tbaa !23
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #23
  br label %._crit_edge.i.i219

bb.ae:                                            ; preds = %.peel.next
  %lpad.loopexit357 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.ip = icmp eq ptr %.pre, %i.gy
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ae
  %i.iq = load i64, ptr %i.gy, align 8, !tbaa !23
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ir) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ao

._crit_edge.i.i219:                               ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.is = call noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160) %.0349)
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 317
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !308, !range !98, !noundef !99
  %i.iv = trunc nuw i8 %i.iu to i1                ; 3 uses
  %i.iw = select i1 %i.iv, ptr @.str.42, ptr @.str.43
  store ptr %i.hb, ptr %14, align 8, !tbaa !109
  %i.ix = select i1 %i.iv, i64 15, i64 7          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.hb, ptr noundef nonnull align 1 dereferenceable(7) %i.iw, i64 %i.ix, i1 false)
  store i64 %i.ix, ptr %i.hc, align 8, !tbaa !22
  %.sroa.sel = select i1 %i.iv, ptr %.sroa.gep371, ptr %.sroa.gep372
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !23
  %i.iy = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.iy, ptr noundef null, ptr noundef nonnull %i.hb)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224 unwind label %.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224: ; preds = %._crit_edge.i.i219
  %i.iz = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.hb
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224
  %i.jb = load i64, ptr %i.hb, align 8, !tbaa !23
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jd = call noundef ptr @_ZNK15AstClassExtends6classpEv(ptr noundef nonnull align 8 dereferenceable(160) %.0349)
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %i.jd)
  %i.je = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.jf = load ptr, ptr %15, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.je, ptr noundef nonnull %.0349, ptr noundef %i.jf)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229 unwind label %.loopexit.split-lp365.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.jg = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.hd
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229
  %i.ji = load i64, ptr %i.hd, align 8, !tbaa !23
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jk = getelementptr inbounds nuw i8, ptr %.0349, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !108 ; 4 uses
  %cond351 = icmp eq ptr %i.jl, null
  br i1 %cond351, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %.sroa.0.0.copyload.i.i.i234 = load i16, ptr %i.jm, align 8, !tbaa !92
  %.not6.i235 = icmp eq i16 %.sroa.0.0.copyload.i.i.i234, 13
  br i1 %.not6.i235, label %.peel.next, label %.loopexit369, !prof !155

.loopexit369:                                     ; preds = %bb.af, %bb.ab
  %.lcssa352 = phi ptr [ %i.hx, %bb.ab ], [ %i.jl, %bb.af ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.lcssa352, i64 64
  %i.jo = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.48, i32 noundef 1063) ; 0 uses
  %i.jp = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.jq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull @.str.49)
  %.sroa.0.0.copyload.i.i5.i236 = load i16, ptr %i.jn, align 8, !tbaa !92
  %i.jr = zext i16 %.sroa.0.0.copyload.i.i5.i236 to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !93
  %i.ju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef %i.jt)
  %i.jv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.50)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.lcssa352, ptr noundef nonnull align 8 dereferenceable(112) %i.jv) #24
  unreachable

.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i.i219, %._crit_edge.i.i219.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.hb
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp
  %i.jy = load i64, ptr %i.hb, align 8, !tbaa !23
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ao

.loopexit.split-lp365.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.peel
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup
  %i.ka = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.hd
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %.loopexit.split-lp365.loopexit.split-lp.loopexit.split-lp
  %i.kc = load i64, ptr %i.hd, align 8, !tbaa !23
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %.loopexit.split-lp365.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ao

.noexc.i245:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ke, ptr %16, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 22, ptr %i.a, align 8, !tbaa !110
  %i.kf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.ag unwind label %bb.ah     ; 2 uses

bb.ag:                                            ; preds = %.noexc.i245
  store ptr %i.kf, ptr %16, align 8, !tbaa !21
  %i.kg = load i64, ptr %i.a, align 8, !tbaa !110 ; 3 uses
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.kf, ptr noundef nonnull align 1 dereferenceable(22) @.str.44, i64 22, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !22
  %i.ki = load ptr, ptr %16, align 8, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 0, ptr %i.kj, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.kk = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.kl = load ptr, ptr %16, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.kk, ptr noundef null, ptr noundef %i.kl)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit249 unwind label %bb.ai

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit249: ; preds = %bb.ag
  %i.km = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ke
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit249
  %i.ko = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.loopexit

bb.ah:                                            ; preds = %.noexc.i245
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.ai:                                            ; preds = %bb.ag
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.ke
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.ai
  %i.ku = load i64, ptr %i.ke, align 8, !tbaa !23
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253, %bb.ah
  %.pn73 = phi { ptr, i32 } [ %i.kq, %bb.ah ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %i.kr, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ao

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.kw, ptr %17, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kw, ptr noundef nonnull align 1 dereferenceable(6) @.str.45, i64 6, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.kx, align 8, !tbaa !22
  %i.ky = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.ky, align 2, !tbaa !23
  %i.kz = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.kz, ptr noundef null, ptr noundef nonnull %i.kw)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit261 unwind label %bb.ak

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit261: ; preds = %bb.aj
  %i.la = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.kw
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit261
  %i.lc = load i64, ptr %i.kw, align 8, !tbaa !23
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.kw
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.ak
  %i.lh = load i64, ptr %i.kw, align 8, !tbaa !23
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.lj, ptr %18, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.lj, ptr noundef nonnull align 1 dereferenceable(3) @.str.46, i64 3, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 3, ptr %i.lk, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %18, i64 19
  store i8 0, ptr %i.ll, align 1, !tbaa !23
  %i.lm = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.lm, ptr noundef null, ptr noundef nonnull %i.lj)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit273 unwind label %bb.al

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit273: ; preds = %.loopexit
  %i.ln = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.lj
  br i1 %i.lo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit273
  %i.lp = load i64, ptr %i.lj, align 8, !tbaa !23
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i275: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.lr = load ptr, ptr %i.df, align 8, !tbaa !133 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 204 ; 2 uses
  store i32 0, ptr %i.ls, align 4, !tbaa !176
  call void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(208) %i.lr, ptr noundef null, ptr noundef nonnull @.str.609)
  store i32 2, ptr %i.ls, align 4, !tbaa !176
  call void @_ZN11EmitCHeader13emitCellDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader9emitEnumsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader18emitDesignVarDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader20emitInternalVarDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader14emitParamDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader17emitCtorDtorDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader23emitInternalMethodDeclsEPK13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1)
  call void @_ZN11EmitCHeader13emitFuncDeclsEPK13AstNodeModuleb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i1 noundef zeroext true)
  call void @_ZN21EmitCBaseVisitorConst18emitSystemCSectionEPK13AstNodeModule19VSystemCSectionType(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i8 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.lt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.lt, ptr %19, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.lt, ptr noundef nonnull align 1 dereferenceable(3) @.str.47, i64 3, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %i.lu, align 8, !tbaa !22
  %i.lv = getelementptr inbounds nuw i8, ptr %19, i64 19
  store i8 0, ptr %i.lv, align 1, !tbaa !23
  %i.lw = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.lw, ptr noundef null, ptr noundef nonnull %i.lt)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit282 unwind label %bb.am

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit282: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i275
  %i.lx = load ptr, ptr %19, align 8, !tbaa !21   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.lt
  br i1 %i.ly, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit282
  %i.lz = load i64, ptr %i.lt, align 8, !tbaa !23
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i284: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.mb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.mb, ptr %20, align 8, !tbaa !109
  store i8 10, ptr %i.mb, align 8, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.mc, align 8, !tbaa !22
  %i.md = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.md, align 1, !tbaa !23
  %i.me = load ptr, ptr %i.df, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.me, ptr noundef null, ptr noundef nonnull %i.mb)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291 unwind label %bb.an

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i284
  %i.mf = load ptr, ptr %20, align 8, !tbaa !21   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.mb
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291
  %i.mh = load i64, ptr %i.mb, align 8, !tbaa !23
end_hunk_1
begin_hunk_2_@_ZN14VNVisitorConst5visitEP11AstDeassign

declare void @_ZN14VNVisitorConst5visitEP19AstDefImplicitDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstDefParam(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP17AstDefaultDisable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstDelay(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstDisable(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstDisableFork(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstDisplay(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstDist(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstDistChiSquare(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstDistErlang(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP18AstDistExponential(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstDistItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstDistNormal(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstDistPoisson(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstDistT(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstDistUniform(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstDiv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstDivD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstDivS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstDot(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstDpiExport(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstDumpCtl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP16AstDynArrayDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstElabDisplay(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstEmpty(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstEmptyQueue(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP18AstEmptyQueueDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstEnumDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstEnumItem(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstEnumItemRef(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP5AstEq(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstEqCase(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstEqD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstEqN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstEqT(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstEqWild(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP15AstEventControl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstExecGraph(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstExpD(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstExprStmt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstExtend(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstExtendS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFClose(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstFEof(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFError(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFFlush(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFGetC(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFGetS(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFOpen(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstFOpenMcd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFRead(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstFRewind(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFScanF(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFSeek(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFTell(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstFUngetC(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstFalling(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstFell(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstFinal(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstFinish(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstFinishFork(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

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

declare void @_ZN14VNVisitorConst5visitEP23AstGetInitialRandomSeed(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.e = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.d, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN12AstNodeDType8skipRefpEv.exit:                ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN12AstNodeDType8skipRefpEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !92
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 73
  br i1 %i.g, label %bb.b, label %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread

bb.b:                                             ; preds = %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !109
  store i8 123, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.l, ptr noundef null, ptr noundef nonnull %i.h)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = load i64, ptr %i.h, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !109
  store i8 123, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.t, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.u = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.c
  %i.w = load i64, ptr %i.r, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !109
  store i8 10, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, ptr noundef null, ptr noundef nonnull %i.y)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118 unwind label %bb.o

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111
  %i.ac = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.y
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z8cvtToStrImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.e unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.ay = load ptr, ptr %6, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ax, ptr noundef nonnull %1, ptr noundef %i.ay)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !23
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !315
  invoke void (ptr, ptr, ...) @_ZN14V3OutFormatter6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(132) %i.bd, ptr noundef nonnull @.str.665, i64 noundef %i.be)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.peel
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.an, ptr %7, align 8, !tbaa !109
  store i8 58, ptr %i.an, align 8, !tbaa !23
  store i64 1, ptr %i.ao, align 8, !tbaa !22
  store i8 0, ptr %i.ap, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.an
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel: ; preds = %bb.g
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !23
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.aq, ptr %8, align 8, !tbaa !109
  store i8 123, ptr %i.aq, align 8, !tbaa !23
  store i64 1, ptr %i.ar, align 8, !tbaa !22
  store i8 0, ptr %i.as, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel: ; preds = %bb.i
  %i.bn = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !315
  %i.bq = invoke noundef ptr @_ZNK12AstInitArray14getIndexValuepEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.bp)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !123
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 312
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(152) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.at, ptr %9, align 8, !tbaa !109
  store i8 125, ptr %i.at, align 8, !tbaa !23
  store i64 1, ptr %i.au, align 8, !tbaa !22
  store i8 0, ptr %i.av, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.l unwind label %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.at
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel: ; preds = %bb.l
  %i.bx = load i64, ptr %i.at, align 8, !tbaa !23
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ah) #26 ; 2 uses
  %.not.peel = icmp eq ptr %i.bz, %i.ai
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

bb.m:                                             ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.h
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.m
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !23
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.r
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.n
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !23
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.y
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.o
  %i.cn = load i64, ptr %i.y, align 8, !tbaa !23
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %.sroa.0328.0357 = phi ptr [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0328.0357, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.aj, ptr %5, align 8, !tbaa !109
  store i16 2604, ptr %i.aj, align 8
  store i64 2, ptr %i.ak, align 8, !tbaa !22
  store i8 0, ptr %i.al, align 2, !tbaa !23
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN14V3OutFormatter12putBreakExprEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cq)
          to label %.noexc139 unwind label %bb.p

.noexc139:                                        ; preds = %.peel.next
  %i.cr = load ptr, ptr %5, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.cq, ptr noundef null, ptr noundef %i.cr)
          to label %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.p

_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc139
  %i.cs = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.aj
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cu = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142

bb.p:                                             ; preds = %.noexc139, %.peel.next
  %lpad.loopexit367 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cw = icmp eq ptr %.pre, %i.aj
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.p
  %i.cx = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142: ; preds = %_ZN21EmitCBaseVisitorConst5putbsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z8cvtToStrImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.q unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.da = load ptr, ptr %6, align 8, !tbaa !21
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.cz, ptr noundef nonnull %1, ptr noundef %i.da)
          to label %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q
  %i.db = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.am
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dd = load i64, ptr %i.am, align 8, !tbaa !23
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN21EmitCBaseVisitorConst5putnsEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.dg = load i64, ptr %i.cp, align 8, !tbaa !315
  invoke void (ptr, ptr, ...) @_ZN14V3OutFormatter6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(132) %i.df, ptr noundef nonnull @.str.665, i64 noundef %i.dg)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.an, ptr %7, align 8, !tbaa !109
  store i8 58, ptr %i.an, align 8, !tbaa !23
  store i64 1, ptr %i.ao, align 8, !tbaa !22
  store i8 0, ptr %i.ap, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.an
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.s
  %i.dk = load i64, ptr %i.an, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.aq, ptr %8, align 8, !tbaa !109
  store i8 123, ptr %i.aq, align 8, !tbaa !23
  store i64 1, ptr %i.ar, align 8, !tbaa !22
  store i8 0, ptr %i.as, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156
  %i.dn = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.aq
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.t
  %i.dp = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dr = load i64, ptr %i.cp, align 8, !tbaa !315
  %i.ds = invoke noundef ptr @_ZNK12AstInitArray14getIndexValuepEm(ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.dr)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !123
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(152) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.at, ptr %9, align 8, !tbaa !109
  store i8 125, ptr %i.at, align 8, !tbaa !23
  store i64 1, ptr %i.au, align 8, !tbaa !22
  store i8 0, ptr %i.av, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.dx = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.at
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.w
  %i.dz = load i64, ptr %i.at, align 8, !tbaa !23
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.eb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0328.0357) #26 ; 2 uses
  %.not = icmp eq ptr %i.eb, %i.ai
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !309

.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142, %bb.d
  %lpad.loopexit.split-lp527 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.e
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.am
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp
  %i.ee = load i64, ptr %i.am, align 8, !tbaa !23
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %.pn94 = phi { ptr, i32 } [ %lpad.loopexit.split-lp530, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.loopexit.split-lp527, %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp530, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.f
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.an
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp
  %i.ei = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %.loopexit.split-lp383.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i156, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.aq
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp
  %i.em = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.k
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.at
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp
  %i.eq = load i64, ptr %i.at, align 8, !tbaa !23
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %.loopexit.split-lp393.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.es, ptr %10, align 8, !tbaa !109
  store i8 10, ptr %i.es, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.et, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.eu, align 1, !tbaa !23
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.ev, ptr noundef null, ptr noundef nonnull %i.es)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186 unwind label %bb.y

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186: ; preds = %._crit_edge
  %i.ew = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.es
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !23
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.fa, ptr %11, align 8, !tbaa !109
  store i8 125, ptr %i.fa, align 8, !tbaa !23
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fb, align 8, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.fc, align 1, !tbaa !23
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !133
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.fd, ptr noundef null, ptr noundef nonnull %i.fa)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195 unwind label %bb.z

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188
  %i.fe = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fa
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !23
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fi = load ptr, ptr %i.k, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fj, ptr %12, align 8, !tbaa !109
  store i8 125, ptr %i.fj, align 8, !tbaa !23
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.fk, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.fl, align 1, !tbaa !23
  invoke void @_ZN14V3OutFormatter14putsNoTrackingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(132) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197
  %i.fm = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fj
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.x
  %i.fo = load i64, ptr %i.fj, align 8, !tbaa !23
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bd

bb.y:                                             ; preds = %._crit_edge
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.es
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.y
  %i.ft = load i64, ptr %i.es, align 8, !tbaa !23
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i188
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fa
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.z
  %i.fy = load i64, ptr %i.fa, align 8, !tbaa !23
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fj
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.aa
  %i.gd = load i64, ptr %i.fj, align 8, !tbaa !23
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread: ; preds = %_ZN12AstNodeDType8skipRefpEv.exit, %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.gg = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.gf, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit216 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN12AstNodeDType8skipRefpEv.exit216:             ; preds = %_ZN7AstNode2isI18AstAssocArrayDType12AstNodeDTypeEEbPKT0_.exit.thread
  %.not.i217 = icmp eq ptr %i.gg, null
  br i1 %.not.i217, label %bb.ba, label %bb.ab

bb.ab:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit216
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
end_hunk_2
