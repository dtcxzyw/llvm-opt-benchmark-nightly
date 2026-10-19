Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/datatype_decl_plugin?download=true
inline.NumInlined: 4134
inline.NumDeleted: 1743
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN8datatype4decl6plugin15mk_update_fieldEjPK9parameterjPKP4sortS6_:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = load ptr, ptr %11, align 8, !tbaa !406, !noalias !653
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !407, !noalias !653
  %i.ba = ptrtoint ptr %i.ax to i64
  store i64 %i.az, ptr %i.aw, align 16, !noalias !653
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ba, ptr %i.bb, align 8, !noalias !653
  invoke void @_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 58, ptr nonnull @.str.5, i64 5810, ptr nonnull %6)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !653
  invoke void @_ZN11ast_manager15raise_exceptionEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %8) #32
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.u:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.w:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %8, align 8, !tbaa !406   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !408
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.w ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bg, %bb.x ] ; 2 uses
  %i.bm = load ptr, ptr %11, align 8, !tbaa !406  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !408
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #30
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.bd, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.bs = load ptr, ptr %9, align 8, !tbaa !406   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.y
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !408
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.t ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn, %bb.y ]
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.af

bb.z:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !409
  call void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %13, i32 noundef %i.bz, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.6)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i32, ptr %13, align 8, !tbaa !401
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %bb.ab, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.cd = load i16, ptr %i.cc, align 1
  %i.ce = and i16 %i.cd, 507
  %or.cond.i = icmp eq i16 %i.ce, 0
  br i1 %or.cond.i, label %bb.ac, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.ab, %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.ab
  %.sink.i = phi ptr [ %13, %_ZNK14func_decl_info7is_nullEv.exit.thread.i ], [ null, %bb.ab ]
  %i.cf = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %i.an, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.ae

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !86 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cj, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ch, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #30
  %i.ck = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.cl = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !129
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.cm = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.ch, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cn)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #31
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  ret ptr %i.cf

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.cq, %bb.ae ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN11ast_manager15raise_exceptionEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z9to_stringI11mk_ismt2_ppENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !421, !noalias !660 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !661, !noalias !660 ; 2 uses
  %5 = icmp ugt ptr %i.d, %4
  %.08.i9.i.i = select i1 %5, ptr %i.d, ptr %4    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !422, !noalias !660
  %i.h = ptrtoint ptr %.08.i9.i.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.j, ptr %i.k, align 8, !tbaa !407, !noalias !660
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !406, !noalias !660
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !408, !noalias !660
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !404, !alias.scope !660
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !406, !noalias !660 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !407, !noalias !660 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !406, !alias.scope !660
  %i.w = load i64, ptr %i.q, align 8, !tbaa !408, !noalias !660
  store i64 %i.w, ptr %i.o, align 8, !tbaa !408, !alias.scope !660
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !407, !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !407, !alias.scope !660
  store ptr %i.q, ptr %i.n, align 8, !tbaa !406, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false), !noalias !660
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull %i.q, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !406, !alias.scope !660 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !408, !alias.scope !660
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #33
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !139
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.b, align 8, !tbaa !139
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !406 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.q, align 8, !tbaa !408
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19), i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86   ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #30
  %i.e = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.f = add i32 %.07.i.i.i.i.i.i, -1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !129
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.g = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %bb.a, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8datatype4decl6plugin14mk_constructorEjPK9parameterjPKP4sortS6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.symbol, align 8              ; 4 uses
  %7 = alloca %class.symbol, align 8              ; 5 uses
  %8 = alloca %struct.func_decl_info, align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %bb.b, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !97
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp ne ptr %5, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.c, label %_ZNK8datatype4util11is_datatypeEPK4sort.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZNK8datatype4decl6plugin1uEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 6 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !379
  store ptr %i.l, ptr %i.k, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 -1, ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !380
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !305  ; 4 uses
  %.not.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not.i.i, label %_ZNK8datatype4decl6plugin1uEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_Z7deallocIN8datatype4utilEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
  br label %_Z7deallocIN8datatype4utilEEvPT_.exit.i.i

_Z7deallocIN8datatype4utilEEvPT_.exit.i.i:        ; preds = %bb.f, %bb.e
  store ptr %i.k, ptr %i.h, align 8, !tbaa !305
  br label %_ZNK8datatype4decl6plugin1uEv.exit

_ZNK8datatype4decl6plugin1uEv.exit:               ; preds = %bb.c, %bb.d, %_Z7deallocIN8datatype4utilEEvPT_.exit.i.i
  %i.q = phi ptr [ %i.k, %_Z7deallocIN8datatype4utilEEvPT_.exit.i.i ], [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %_ZNK8datatype4util3fidEv.exit.i

bb.g:                                             ; preds = %_ZNK8datatype4decl6plugin1uEv.exit
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !121, !nonnull !84, !align !85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.39)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 560
  %i.w = call noundef i32 @_ZNK14family_manager13get_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
end_hunk_0
