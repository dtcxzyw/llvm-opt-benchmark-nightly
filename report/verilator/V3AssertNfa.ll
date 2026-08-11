inline.NumInlined: 4685
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_111newPassOnIfEP8FileLineP11AstNodeExprP7AstNode11VAssertType20VAssertDirectiveTypeb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dq = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.l
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  %i.ds = load i64, ptr %i.l, align 8, !tbaa !18
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i

bb.o:                                             ; preds = %.noexc
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

bb.p:                                             ; preds = %bb.b
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.g, %.critedge.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23.i, %bb.l, %.critedge.i29.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.s:                                             ; preds = %.noexc.i.i, %bb.n, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit37.i
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %bb.s
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !18
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.r ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i ], [ %i.dy, %bb.s ] ; 2 uses
  %i.ee = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ba
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i
  %i.eg = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ei = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.bh
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
  %i.ek = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i, %bb.q
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.dw, %bb.q ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i ] ; 2 uses
  %i.em = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !18
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i, %bb.p
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dv, %bb.p ], [ %.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.er = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !18
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i, %bb.o
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.du, %bb.o ], [ %.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #27
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i16 220, ptr noundef %0)
          to label %.noexc17 unwind label %bb.w

.noexc17:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.a, align 8, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 0, ptr %i.ew, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef %1)
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %.noexc17
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull %i.b)
          to label %.noexc19 unwind label %bb.w

.noexc19:                                         ; preds = %.noexc18
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstLogAnd, i64 16), ptr %i.a, align 8, !tbaa !68
  %i.ex = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i8 1)
          to label %.noexc20 unwind label %bb.w   ; 2 uses

.noexc20:                                         ; preds = %.noexc19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !323
  %.not.i.i.i = icmp eq ptr %i.ez, %i.ex
  br i1 %.not.i.i.i, label %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.t

bb.t:                                             ; preds = %.noexc20
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !323
  %i.fa = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !82
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !82
  br label %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit

_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit: ; preds = %bb.t, %.noexc20
  %i.fc = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31 ; 11 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.fc, i16 481, ptr noundef %0)
          to label %.noexc21 unwind label %bb.x

.noexc21:                                         ; preds = %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.fc, align 8, !tbaa !68
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  store i8 0, ptr %i.fd, align 8, !tbaa !548
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fc, ptr noundef nonnull %i.a)
          to label %.noexc22 unwind label %bb.x

.noexc22:                                         ; preds = %.noexc21
  %.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc22
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fc, ptr noundef nonnull %2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %.noexc22, %bb.u
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.fc, align 8, !tbaa !68
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.fe, align 1, !tbaa !213
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  store i64 1, ptr %i.ff, align 8, !tbaa !18
  %i.fg = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !580
  ret ptr %i.fc

bb.w:                                             ; preds = %.noexc19, %.noexc18, %.noexc17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i, %bb.a
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.u, %.noexc21, %_ZN9AstLogAndC2EP8FileLineP11AstNodeExprS3_.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %bb.x
  %.sink = phi ptr [ %i.fc, %bb.x ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.a, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.x ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.fi, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 160) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125assertActionControlPrefixB5cxx11E20VAssertDirectiveType(ptr dead_on_unwind noalias nonnull writable align 8 %0, i8 %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = and i8 %1, 7
  %10 = icmp ne i8 %i.a, 0                        ; 2 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 948), align 4, !tbaa !402, !range !66, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !19, !alias.scope !987
  store i8 40, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 1, ptr %i.d, align 8, !tbaa !16, !alias.scope !987
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.e, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !19, !alias.scope !990
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 1, i8 noundef signext 45)
          to label %_ZNSt7__cxx119to_stringEi.exit unwind label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.i = load ptr, ptr %6, align 8, !tbaa !10, !alias.scope !990
  %i.j = zext i1 %10 to i8
  %11 = xor i8 %i.j, 49
  store i8 %11, ptr %i.i, align 1, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.k = load i64, ptr %i.d, align 8, !tbaa !16, !noalias !993 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !993 ; 4 uses
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !10, !noalias !993 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.r = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !993
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.u = load ptr, ptr %6, align 8, !tbaa !10, !noalias !993
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.b
  %i.w = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.f, align 8, !tbaa !18, !noalias !993
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.n, %i.y
  br i1 %.not.i, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.k)
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !19, !alias.scope !993
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.c:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc
  store ptr %i.ab, ptr %4, align 8, !tbaa !10, !alias.scope !993
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !18
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !18, !alias.scope !993
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !16, !alias.scope !993
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !10
  store i64 0, ptr %i.aj, align 8, !tbaa !16
  store i8 0, ptr %i.ac, align 8, !tbaa !18
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.am = sub i64 4611686018427387903, %i.k
  %i.an = icmp ult i64 %i.am, %i.m
  br i1 %i.an, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc14 unwind label %bb.t

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.ao = load ptr, ptr %6, align 8, !tbaa !10, !noalias !993
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ao, i64 noundef %i.m)
          to label %.noexc15 unwind label %bb.t   ; 5 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !19, !alias.scope !993
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.f:                                             ; preds = %.noexc15
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc15
  store ptr %i.ar, ptr %4, align 8, !tbaa !10, !alias.scope !993
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !18
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !18, !alias.scope !993
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !16, !alias.scope !993
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !10
  store i64 0, ptr %i.az, align 8, !tbaa !16
  store i8 0, ptr %i.as, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bc, ptr %7, align 8, !tbaa !19, !alias.scope !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bc, ptr noundef nonnull align 1 dereferenceable(5) @.str.610, i64 5, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.bd, align 8, !tbaa !16, !alias.scope !996
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.be, align 1, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !16, !noalias !999 ; 4 uses
  %i.bh = add i64 %i.bg, 5                        ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !10, !noalias !999 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %bb.g
  %i.bl = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.g
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !18, !noalias !999
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %i.bn = phi i64 [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ]
  %i.bo = icmp ule i64 %i.bh, %i.bn
  %.not.i23 = icmp ugt i64 %i.bh, 15
  %or.cond = or i1 %.not.i23, %i.bo
  br i1 %or.cond, label %bb.i, label %.critedge.i24

.critedge.i24:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bg)
          to label %.noexc29 unwind label %bb.u   ; 5 uses

.noexc29:                                         ; preds = %.critedge.i24
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !19, !alias.scope !999
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i25

bb.h:                                             ; preds = %.noexc29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i25: ; preds = %.noexc29
  store ptr %i.br, ptr %3, align 8, !tbaa !10, !alias.scope !999
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !18
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !18, !alias.scope !999
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i25, %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !16, !alias.scope !999
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !10
  store i64 0, ptr %i.bz, align 8, !tbaa !16
  store i8 0, ptr %i.bs, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit32

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i17
  %i.cc = add i64 %i.bg, -4611686018427387899
  %i.cd = icmp ult i64 %i.cc, 5
  br i1 %i.cd, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc30 unwind label %bb.u

.noexc30:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18: ; preds = %bb.i
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.bc, i64 noundef 5)
          to label %.noexc31 unwind label %bb.u   ; 5 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !19, !alias.scope !999
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i19

bb.k:                                             ; preds = %.noexc31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i19: ; preds = %.noexc31
  store ptr %i.cg, ptr %3, align 8, !tbaa !10, !alias.scope !999
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !18
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !18, !alias.scope !999
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i19, %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !16, !alias.scope !999
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !10
  store i64 0, ptr %i.co, align 8, !tbaa !16
  store i8 0, ptr %i.ch, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit32

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cr, ptr %8, align 8, !tbaa !19, !alias.scope !1002
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, i8 noundef signext 45)
          to label %_ZNSt7__cxx119to_stringEi.exit47 unwind label %bb.l

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit32
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit47:                 ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit32
  %i.cu = load ptr, ptr %8, align 8, !tbaa !10, !alias.scope !1002
  %i.cv = or disjoint i8 %i.b, 48
  %i.cw = select i1 %10, i8 %i.cv, i8 48
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16, !noalias !1005 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16, !noalias !1005 ; 4 uses
  %i.db = add i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !10, !noalias !1005 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZNSt7__cxx119to_stringEi.exit47
  %i.df = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.df)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx119to_stringEi.exit47
  %i.dg = load i64, ptr %i.dd, align 8, !tbaa !18, !noalias !1005
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60
  %i.dh = phi i64 [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60 ]
  %i.di = icmp ugt i64 %i.db, %i.dh
  br i1 %i.di, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i49
  %i.dj = load ptr, ptr %8, align 8, !tbaa !10, !noalias !1005
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i59: ; preds = %bb.m
  %i.dl = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.dl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i53: ; preds = %bb.m
  %i.dm = load i64, ptr %i.cr, align 8, !tbaa !18, !noalias !1005
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i59
  %i.dn = phi i64 [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i53 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i59 ]
  %.not.i55 = icmp ugt i64 %i.db, %i.dn
  br i1 %.not.i55, label %bb.o, label %.critedge.i56

.critedge.i56:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i54
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.dc, i64 noundef %i.cy)
          to label %.noexc61 unwind label %bb.v   ; 5 uses

.noexc61:                                         ; preds = %.critedge.i56
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !19, !alias.scope !1005
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 5 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i57

bb.n:                                             ; preds = %.noexc61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !16 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i57: ; preds = %.noexc61
  store ptr %i.dq, ptr %2, align 8, !tbaa !10, !alias.scope !1005
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !18
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !18, !alias.scope !1005
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i57, %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !16, !alias.scope !1005
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !10
  store i64 0, ptr %i.dy, align 8, !tbaa !16
  store i8 0, ptr %i.dr, align 8, !tbaa !18
  br label %bb.r

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i49
  %i.eb = sub i64 4611686018427387903, %i.cy
  %i.ec = icmp ult i64 %i.eb, %i.da
  br i1 %i.ec, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc62 unwind label %bb.v

.noexc62:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50: ; preds = %bb.o
  %i.ed = load ptr, ptr %8, align 8, !tbaa !10, !noalias !1005
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ed, i64 noundef %i.da)
          to label %.noexc63 unwind label %bb.v   ; 5 uses

.noexc63:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ef, ptr %2, align 8, !tbaa !19, !alias.scope !1005
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 5 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i51

bb.q:                                             ; preds = %.noexc63
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !16 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ef, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.em, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i51: ; preds = %.noexc63
  store ptr %i.eg, ptr %2, align 8, !tbaa !10, !alias.scope !1005
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !18
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !18, !alias.scope !1005
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i51, %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !16, !alias.scope !1005
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !10
  store i64 0, ptr %i.eo, align 8, !tbaa !16
  store i8 0, ptr %i.eh, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.er, ptr %9, align 8, !tbaa !19, !alias.scope !1008
  store i32 539371040, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.es, align 8, !tbaa !16, !alias.scope !1008
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.et, align 4, !tbaa !18
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.er
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.s
  %i.ew = load i64, ptr %i.er, align 8, !tbaa !18
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ey = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !18
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.fd = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.cr
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ff = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.fh = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.dd
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.fj = load i64, ptr %i.dd, align 8, !tbaa !18
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %i.fl = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bc
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.fn = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #27
end_hunk_0
