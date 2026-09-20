Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/lexer?download=true
inline.NumInlined: 1109
inline.NumDeleted: 367
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7jsonnet8internal13jsonnet_unlexERKNSt7__cxx114listINS0_5TokenESaIS3_EEE:bb.a
          cleanup
  br label %.body

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99: ; preds = %bb.u, %bb.t, %bb.t, %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %.0129, i64 1 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !24  ; 2 uses
  %.not = icmp eq i8 %i.ds, 0
  br i1 %.not, label %._crit_edge131, label %.lr.ph130, !llvm.loop !149

bb.w:                                             ; preds = %._crit_edge127
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0114.0134, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0114.0134, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !32
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.du, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.invoke unwind label %.loopexit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.invoke
  %.sroa.0114.0 = load ptr, ptr %.sroa.0114.0134, align 8, !tbaa !46 ; 2 uses
  %.not118 = icmp eq ptr %.sroa.0114.0, %1
  br i1 %.not118, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread117, label %bb.b

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread117: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread, %bb.a, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !37, !alias.scope !156
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !32, !alias.scope !156
  store i8 0, ptr %i.dy, align 8, !tbaa !24, !alias.scope !156
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !78, !noalias !156 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !156 ; 2 uses
  %i.ee = icmp ugt ptr %i.eb, %i.ed
  %.08.i.i.i = select i1 %i.ee, ptr %i.eb, ptr %i.ed ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread117
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !79, !noalias !156 ; 2 uses
  %i.eh = ptrtoint ptr %.08.i.i.i to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.eg, i64 noundef %i.ej)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !23, !alias.scope !156 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dy
  br i1 %i.en, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.y
  %i.eo = load i64, ptr %i.dy, align 8, !tbaa !24, !alias.scope !156
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #23
  br label %.body

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.thread117
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.y

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.z, %bb.x
  %i.er = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.er, ptr %2, align 8, !tbaa !53
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.et = getelementptr i8, ptr %i.er, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %2, i64 %i.eu
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !53
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !53
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ey, align 8, !tbaa !53
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !23 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ey, align 8, !tbaa !53
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ff) #25
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fg, ptr %2, align 8, !tbaa !53
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fi = getelementptr i8, ptr %i.fg, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %2, i64 %i.fj
  store ptr %i.fh, ptr %i.fk, align 8, !tbaa !53
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.fl, align 8, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %bb.y, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.v, %bb.l, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %i.dq, %bb.v ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.el, %bb.y ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !24
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !37
  %i.r = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !23
  %i.y = load i64, ptr %i.s, align 8, !tbaa !24
  store i64 %i.y, ptr %i.q, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !23
  store i64 0, ptr %i.aa, align 8, !tbaa !32
  store i8 0, ptr %i.s, align 8, !tbaa !24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !37, !alias.scope !165, !noalias !166
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !166, !noalias !165 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32, !alias.scope !166, !noalias !165 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !167
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !165, !noalias !166
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !24, !alias.scope !166, !noalias !165
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !24, !alias.scope !165, !noalias !166
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !166, !noalias !165
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !32, !alias.scope !165, !noalias !166
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !166, !noalias !165
  store i64 0, ptr %i.am, align 8, !tbaa !32, !alias.scope !166, !noalias !165
  store i8 0, ptr %i.ae, align 8, !tbaa !24, !alias.scope !166, !noalias !165
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !37, !alias.scope !168, !noalias !169
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !23, !alias.scope !169, !noalias !168 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32, !alias.scope !169, !noalias !168 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !170
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !23, !alias.scope !168, !noalias !169
  %i.az = load i64, ptr %i.at, align 8, !tbaa !24, !alias.scope !169, !noalias !168
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !24, !alias.scope !168, !noalias !169
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !32, !alias.scope !169, !noalias !168
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !32, !alias.scope !168, !noalias !169
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !23, !alias.scope !169, !noalias !168
  store i64 0, ptr %i.bb, align 8, !tbaa !32, !alias.scope !169, !noalias !168
  store i8 0, ptr %i.at, align 8, !tbaa !24, !alias.scope !169, !noalias !168
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindERKjS8_RKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !49
  %i.f = load i32, ptr %2, align 4, !tbaa !47
  %i.g = load i32, ptr %3, align 4, !tbaa !47
  store i32 %i.e, ptr %i.b, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.h, align 4, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.p, 9223372036854775776
  br i1 %i.q, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindERKjS8_RKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_:bb.a

bb.h:                                             ; preds = %bb.g, %_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  %i.ah = phi ptr [ %.pre, %bb.g ], [ %i.ag, %_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -40
  ret ptr %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12emplace_backIJNS2_4KindEiRKjS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !49
  %i.f = load i32, ptr %2, align 4, !tbaa !47
  %i.g = load i32, ptr %3, align 4, !tbaa !47
  store i32 %i.e, ptr %i.b, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.h, align 4, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.p, 9223372036854775776
  br i1 %i.q, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.s = phi ptr [ null, %bb.b ], [ %i.r, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.s, ptr %i.j, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !26
  %i.w = load ptr, ptr %4, align 8, !tbaa !50
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.y = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.w, ptr %i.x, ptr noundef %i.s)
          to label %_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.z

_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit: ; preds = %bb.d
  store ptr %i.y, ptr %i.t, align 8, !tbaa !18
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindEiRKjS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit
  %i.ah = phi ptr [ %.pre, %bb.g ], [ %i.ag, %_ZN7jsonnet8internal13FodderElementC2ENS1_4KindEjjRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE.exit ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -40
  ret ptr %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.o = phi ptr [ null, %bb.b ], [ %i.n, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.s, ptr %i.t, ptr noundef %i.o)
          to label %_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.v

_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit: ; preds = %bb.d
  store ptr %i.u, ptr %i.p, align 8, !tbaa !18
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7jsonnet8internal13FodderElementC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindERKjS8_RKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !179
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !178, !noalias !177
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !177, !noalias !178
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !178, !noalias !177
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !177, !noalias !178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !178, !noalias !177
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !182
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !181, !noalias !180
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !180, !noalias !181
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !181, !noalias !180
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !180, !noalias !181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !181, !noalias !180
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7jsonnet8internal13FodderElementEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !24
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i
  %i.k = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindEiRKjS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !191
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !190, !noalias !189
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !189, !noalias !190
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !190, !noalias !189
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !189, !noalias !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !190, !noalias !189
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !194
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !193, !noalias !192
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !192, !noalias !193
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !193, !noalias !192
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !192, !noalias !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !193, !noalias !192
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !17   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775776
  br i1 %i.y, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.noexc26 unwind label %bb.h

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.z, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !26
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.u, ptr %i.t, ptr noundef %i.aa)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc26
  %i.af = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc26
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !203
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !50, !alias.scope !202, !noalias !201
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !50, !alias.scope !201, !noalias !202
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26, !alias.scope !202, !noalias !201
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !26, !alias.scope !201, !noalias !202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !202, !noalias !201
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bb, %.lr.ph.i.i.i28 ], [ %i.at, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i30, i64 12, i1 false), !alias.scope !206
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !50, !alias.scope !205, !noalias !204
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !50, !alias.scope !204, !noalias !205
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26, !alias.scope !205, !noalias !204
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !26, !alias.scope !204, !noalias !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !205, !noalias !204
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.at, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bb, %.lr.ph.i.i.i28 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.h ], [ %i.af, %bb.e ], [ %i.af, %bb.d ]
  %i.bj = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bi

bb.l:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !37
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !39
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !23
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.h, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !33  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !212

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !23
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #25 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal5Token4KindEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSC_EEEvPSt13_Rb_tree_nodeISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !23
  %i.i = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.i, ptr %i.c, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !24
  store i8 %i.k, ptr %i.j, align 1, !tbaa !24
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36
  store i32 %i.v, ptr %i.t, align 8, !tbaa !36
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindERjS7_RKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !221
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !220, !noalias !219
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !219, !noalias !220
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !220, !noalias !219
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !219, !noalias !220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !220, !noalias !219
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !224
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !223, !noalias !222
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !222, !noalias !223
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !223, !noalias !222
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !222, !noalias !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !223, !noalias !222
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJRNS2_4KindERjS8_RS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !233
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !232, !noalias !231
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !232, !noalias !231
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !231, !noalias !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !232, !noalias !231
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !236
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !235, !noalias !234
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !234, !noalias !235
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !235, !noalias !234
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !234, !noalias !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !235, !noalias !234
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5
  %mul2 = ashr exact i64 %i.g, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !37
  %i.s = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.u, ptr %i.a, align 8, !tbaa !39
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !23
  %i.x = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.x, ptr %i.r, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !24
  store i8 %i.z, ptr %i.y, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !37, !alias.scope !243, !noalias !244
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !244, !noalias !243 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32, !alias.scope !244, !noalias !243 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !245
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !243, !noalias !244
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !24, !alias.scope !243, !noalias !244
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !244, !noalias !243
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !32, !alias.scope !243, !noalias !244
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !23, !alias.scope !244, !noalias !243
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !244, !noalias !243
  store i8 0, ptr %i.ag, align 8, !tbaa !24, !alias.scope !244, !noalias !243
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !37, !alias.scope !246, !noalias !247
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !247, !noalias !246 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32, !alias.scope !247, !noalias !246 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !248
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !23, !alias.scope !246, !noalias !247
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !24, !alias.scope !247, !noalias !246
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !24, !alias.scope !246, !noalias !247
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !32, !alias.scope !247, !noalias !246
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !32, !alias.scope !246, !noalias !247
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !247, !noalias !246
  store i64 0, ptr %i.bd, align 8, !tbaa !32, !alias.scope !247, !noalias !246
  store i8 0, ptr %i.av, align 8, !tbaa !24, !alias.scope !247, !noalias !246
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !17
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !26
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindEiiRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !257
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !256, !noalias !255
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !255, !noalias !256
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !256, !noalias !255
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !255, !noalias !256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !256, !noalias !255
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !260
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !259, !noalias !258
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !258, !noalias !259
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !259, !noalias !258
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !258, !noalias !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !259, !noalias !258
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE17_M_realloc_insertIJNS2_4KindEjRjRKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #26
  unreachable

_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 6 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !49
  %i.r = load i32, ptr %3, align 4, !tbaa !47
  %i.s = load i32, ptr %4, align 4, !tbaa !47
  store i32 %i.q, ptr %i.p, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.t, align 4, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ae = phi ptr [ null, %_ZNKSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.x, ptr noundef %i.ae)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc29
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !17  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #23
  br label %bb.j

bb.f:                                             ; preds = %.noexc29
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !269
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !268, !noalias !267
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !50, !alias.scope !267, !noalias !268
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26, !alias.scope !268, !noalias !267
  store ptr %i.au, ptr %i.as, align 8, !tbaa !26, !alias.scope !267, !noalias !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !268, !noalias !267
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i31 ], [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i33 = phi ptr [ %i.be, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i33, i64 12, i1 false), !alias.scope !272
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !50, !alias.scope !271, !noalias !270
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !50, !alias.scope !270, !noalias !271
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26, !alias.scope !271, !noalias !270
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !26, !alias.scope !270, !noalias !271
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !271, !noalias !270
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %.lr.ph.i.i.i31 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !68
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ]
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5TokenC2ENS1_4KindERKSt6vectorINS0_13FodderElementESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_SG_RKNS0_13LocationRangeE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = icmp ugt i64 %i.l, 230584300921369395
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !51

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
end_hunk_2
