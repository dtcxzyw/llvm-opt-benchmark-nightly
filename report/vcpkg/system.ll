inline.NumInlined: 665
inline.NumDeleted: 198
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
  %i.dg = load ptr, ptr %11, align 8, !tbaa !95
  store i8 0, ptr %i.dg, align 1, !tbaa !12
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.87, i64 20)
          to label %bb.ay unwind label %bb.e      ; 0 uses

bb.ay:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit61
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.88, i64 1)
          to label %bb.az unwind label %bb.e      ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.89, i64 1)
          to label %bb.ba unwind label %bb.e      ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.90, i64 1)
          to label %bb.bb unwind label %bb.e      ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.91, i64 1)
          to label %bb.bc unwind label %bb.e      ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.92, i64 1)
          to label %bb.bd unwind label %bb.e      ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.93, i64 1)
          to label %bb.be unwind label %bb.e      ; 0 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  store ptr @.str.51, ptr %31, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 7, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  store ptr @.str, ptr %32, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 213, ptr %i.dp, align 8, !tbaa !21
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str.94) #17
  %i.dq = load ptr, ptr %33, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ds = load i64, ptr %i.dr, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr %i.dq, i64 %i.ds, i32 noundef 1)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  %.fca.0.load.i62 = load ptr, ptr %4, align 8    ; 2 uses
  %.fca.1.gep.i64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i65 = load i64, ptr %.fca.1.gep.i64, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %.fca.0.load.i62, ptr %35, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %.fca.1.load.i65, ptr %i.dt, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.du = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %.fca.0.load.i62, i64 %.fca.1.load.i65, ptr nonnull align 1 dereferenceable(47) @.str.95, i64 46) #17, !noalias !140
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.28) #17, !noalias !140
  %i.dv = load ptr, ptr %3, align 8, !noalias !140
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !140
  %i.dy = zext i1 %i.du to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i8 1, ptr %i.dz, align 8, !tbaa !29, !alias.scope !140
  %i.ea = getelementptr inbounds nuw i8, ptr %34, i64 9
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !31, !alias.scope !140
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg10StringViewERA47_KcEE, i64 16), ptr %34, align 8, !tbaa !32, !alias.scope !140
  %i.eb = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %35, ptr %i.eb, align 8, !tbaa !126, !alias.scope !140
  %i.ec = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %i.dv, ptr %i.ec, align 8, !tbaa !22, !alias.scope !140
  %.sroa.2.0..sroa_idx.i3.i70 = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i64 %i.dx, ptr %.sroa.2.0..sroa_idx.i3.i70, align 8, !tbaa !23, !alias.scope !140
  %i.ed = getelementptr inbounds nuw i8, ptr %34, i64 40
  store ptr @.str.95, ptr %i.ed, align 8, !tbaa !22, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(10) %34)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  br label %bb.bo

bb.bh:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.cy

bb.bi:                                            ; preds = %bb.au, %bb.at
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.pn28 = phi { ptr, i32 } [ %i.ef, %bb.bi ], [ %i.ee, %bb.bh ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %24) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ar
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.bj ], [ %i.ct, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.cx

bb.bl:                                            ; preds = %bb.be
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %bb.ci

bb.bm:                                            ; preds = %bb.bf
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %34) #17
  %.915 = extractvalue { ptr, i32 } %i.eh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %i.ei = call ptr @__cxa_begin_catch(ptr %.915) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %30)
          to label %bb.bn unwind label %bb.cf

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.cg

bb.bo:                                            ; preds = %bb.bn, %bb.bg
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %30)
          to label %bb.bp unwind label %bb.cg

bb.bp:                                            ; preds = %bb.bo
  %i.ej = getelementptr inbounds nuw i8, ptr %30, i64 58
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !36, !range !27, !noundef !28
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZN5Catch16AssertionHandlerD2Ev.exit71, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.em = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !43, !nonnull !28, !align !44 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %30)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit71 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #18
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit71:           ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  store i64 0, ptr %i.c, align 8, !tbaa !105
  %i.et = load ptr, ptr %11, align 8, !tbaa !95
  store i8 0, ptr %i.et, align 1, !tbaa !12
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.96, i64 20)
          to label %bb.bs unwind label %bb.e      ; 0 uses

bb.bs:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit71
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.97, i64 1)
          to label %bb.bt unwind label %bb.e      ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.98, i64 1)
          to label %bb.bu unwind label %bb.e      ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg7Command10string_argENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.99, i64 1)
          to label %.noexc.i unwind label %bb.e   ; 0 uses

.noexc.i:                                         ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  %i.ey = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 14 uses
  store ptr %i.ey, ptr %36, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 22, ptr %i.a, align 8, !tbaa !23
  %i.ez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.cj    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ez, ptr %36, align 8, !tbaa !95
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ez, ptr noundef nonnull align 1 dereferenceable(22) @.str.100, i64 22, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 11 uses
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !105
  %i.fc = load ptr, ptr %36, align 8, !tbaa !95
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fd, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fe = load i64, ptr %i.fb, align 8, !tbaa !105 ; 4 uses
  %i.ff = add i64 %i.fe, 1                        ; 3 uses
  %i.fg = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ey
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.noexc
  %i.fi = icmp ult i64 %i.fe, 16
  call void @llvm.assume(i1 %i.fi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  %i.fj = load i64, ptr %i.ey, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fk = phi i64 [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.fl = icmp ugt i64 %i.ff, %i.fk
  br i1 %i.fl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.fe, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc72 unwind label %bb.ck

.noexc72:                                         ; preds = %bb.bv
  %.pre.i = load ptr, ptr %36, align 8, !tbaa !95
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.fm = phi ptr [ %.pre.i, %.noexc72 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store i8 9, ptr %i.fn, align 1, !tbaa !12
  store i64 %i.ff, ptr %i.fb, align 8, !tbaa !105
  %i.fo = load ptr, ptr %36, align 8, !tbaa !95
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ff
  store i8 0, ptr %i.fp, align 1, !tbaa !12
  %i.fq = load i64, ptr %i.fb, align 8, !tbaa !105
  %i.fr = add i64 %i.fq, -4611686018427387901
  %i.fs = icmp ult i64 %i.fr, 3
  br i1 %i.fs, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.bw
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.101, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.ck ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.fu = load i64, ptr %i.fb, align 8, !tbaa !105 ; 4 uses
  %i.fv = add i64 %i.fu, 1                        ; 3 uses
  %i.fw = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ey
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.fy = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.fz = load i64, ptr %i.ey, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78
  %i.ga = phi i64 [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78 ]
  %i.gb = icmp ugt i64 %i.fv, %i.ga
  br i1 %i.gb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.fu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc79 unwind label %bb.ck

.noexc79:                                         ; preds = %bb.bx
  %.pre.i77 = load ptr, ptr %36, align 8, !tbaa !95
  br label %bb.by

bb.by:                                            ; preds = %.noexc79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76
  %i.gc = phi ptr [ %.pre.i77, %.noexc79 ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i76 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu
  store i8 10, ptr %i.gd, align 1, !tbaa !12
  store i64 %i.fv, ptr %i.fb, align 8, !tbaa !105
  %i.ge = load ptr, ptr %36, align 8, !tbaa !95
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fv
  store i8 0, ptr %i.gf, align 1, !tbaa !12
  %i.gg = load i64, ptr %i.fb, align 8, !tbaa !105
  %i.gh = add i64 %i.gg, -4611686018427387901
  %i.gi = icmp ult i64 %i.gh, 3
  br i1 %i.gi, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i81

.invoke:                                          ; preds = %bb.by, %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #20
          to label %.cont unwind label %bb.ck

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i81: ; preds = %bb.by
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.101, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit84 unwind label %bb.ck ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i81
  %i.gk = load i64, ptr %i.fb, align 8, !tbaa !105 ; 4 uses
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %i.gm = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ey
  br i1 %i.gn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit84
  %i.go = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.go)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit84
  %i.gp = load i64, ptr %i.ey, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88
  %i.gq = phi i64 [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88 ]
  %i.gr = icmp ugt i64 %i.gl, %i.gq
  br i1 %i.gr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.gk, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc89 unwind label %bb.ck

.noexc89:                                         ; preds = %bb.bz
  %.pre.i87 = load ptr, ptr %36, align 8, !tbaa !95
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86
  %i.gs = phi ptr [ %.pre.i87, %.noexc89 ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i86 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk
  store i8 13, ptr %i.gt, align 1, !tbaa !12
  store i64 %i.gl, ptr %i.fb, align 8, !tbaa !105
  %i.gu = load ptr, ptr %36, align 8, !tbaa !95
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gl
  store i8 0, ptr %i.gv, align 1, !tbaa !12
  %i.gw = load i64, ptr %i.fb, align 8, !tbaa !105 ; 4 uses
  %i.gx = add i64 %i.gw, 1                        ; 3 uses
  %i.gy = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.ey
  br i1 %i.gz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94: ; preds = %bb.ca
  %i.ha = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.ha)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ca
  %i.hb = load i64, ptr %i.ey, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94
  %i.hc = phi i64 [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94 ]
  %i.hd = icmp ugt i64 %i.gx, %i.hc
  br i1 %i.hd, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.gw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc95 unwind label %bb.ck

.noexc95:                                         ; preds = %bb.cb
  %.pre.i93 = load ptr, ptr %36, align 8, !tbaa !95
  br label %bb.cc

bb.cc:                                            ; preds = %.noexc95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92
  %i.he = phi ptr [ %.pre.i93, %.noexc95 ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gw
  store i8 34, ptr %i.hf, align 1, !tbaa !12
  store i64 %i.gx, ptr %i.fb, align 8, !tbaa !105
  %i.hg = load ptr, ptr %36, align 8, !tbaa !95
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gx
  store i8 0, ptr %i.hh, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #17
  store ptr @.str.51, ptr %38, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 7, ptr %i.hi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  store ptr @.str, ptr %39, align 8, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 229, ptr %i.hj, align 8, !tbaa !21
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull @.str.102) #17
  %i.hk = load ptr, ptr %40, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.hm = load i64, ptr %i.hl, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr %i.hk, i64 %i.hm, i32 noundef 1)
          to label %bb.cd unwind label %bb.cl

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  %.fca.0.load.i97 = load ptr, ptr %2, align 8    ; 2 uses
  %.fca.1.gep.i99 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i100 = load i64, ptr %.fca.1.gep.i99, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %.fca.0.load.i97, ptr %42, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %.fca.1.load.i100, ptr %i.hn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !143
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %36) #17, !noalias !143
  %i.ho = load ptr, ptr %0, align 8, !noalias !143
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !143
  %i.hr = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %.fca.0.load.i97, i64 %.fca.1.load.i100, ptr %i.ho, i64 %i.hq) #17, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !143
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.28) #17, !noalias !143
  %i.hs = load ptr, ptr %1, align 8, !noalias !143
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !143
  %i.hv = zext i1 %i.hr to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i8 1, ptr %i.hw, align 8, !tbaa !29, !alias.scope !143
  %i.hx = getelementptr inbounds nuw i8, ptr %41, i64 9
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !31, !alias.scope !143
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %41, align 8, !tbaa !32, !alias.scope !143
  %i.hy = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %42, ptr %i.hy, align 8, !tbaa !126, !alias.scope !143
  %i.hz = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %i.hs, ptr %i.hz, align 8, !tbaa !22, !alias.scope !143
  %.sroa.2.0..sroa_idx.i3.i105 = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i64 %i.hu, ptr %.sroa.2.0..sroa_idx.i3.i105, align 8, !tbaa !23, !alias.scope !143
  %i.ia = getelementptr inbounds nuw i8, ptr %41, i64 40
  store ptr %36, ptr %i.ia, align 8, !tbaa !146, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(10) %41)
          to label %bb.ce unwind label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %41) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %bb.co

bb.cf:                                            ; preds = %bb.bm
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.cy

bb.cg:                                            ; preds = %bb.bo, %bb.bn
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.pn32 = phi { ptr, i32 } [ %i.ic, %bb.cg ], [ %i.ib, %bb.cf ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %30) #17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bl
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.ch ], [ %i.eg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br label %bb.cx

bb.cj:                                            ; preds = %.noexc.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.ck:                                            ; preds = %.invoke, %bb.cb, %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i81, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.bv
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cl:                                            ; preds = %bb.cc
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  br label %bb.cv

bb.cm:                                            ; preds = %bb.cd
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %41) #17
  %.1218 = extractvalue { ptr, i32 } %i.ig, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  %i.ih = call ptr @__cxa_begin_catch(ptr %.1218) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  invoke void @__cxa_end_catch()
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn, %bb.ce
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.ii = getelementptr inbounds nuw i8, ptr %37, i64 58
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !36, !range !27, !noundef !28
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %_ZN5Catch16AssertionHandlerD2Ev.exit106, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.il = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !43, !nonnull !28, !align !44 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 112
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit106 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #18
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit106:          ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  %i.is = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.ey
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit106
  %i.iu = load i64, ptr %i.ey, align 8, !tbaa !12
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  %i.iw = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.b
  br i1 %i.ix, label %_ZN5vcpkg7CommandD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !12
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #19
  br label %_ZN5vcpkg7CommandD2Ev.exit

_ZN5vcpkg7CommandD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  ret void

bb.cs:                                            ; preds = %bb.cm
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cu unwind label %bb.cy

bb.ct:                                            ; preds = %bb.co, %bb.cn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.pn36 = phi { ptr, i32 } [ %i.jb, %bb.ct ], [ %i.ja, %bb.cs ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %37) #17
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cl
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.cu ], [ %i.if, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ck
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.cv ], [ %i.ie, %bb.ck ] ; 2 uses
  %i.jc = load ptr, ptr %36, align 8, !tbaa !95   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ey
end_hunk_0
