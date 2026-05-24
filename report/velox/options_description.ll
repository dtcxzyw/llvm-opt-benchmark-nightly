inline.NumInlined: 1490
inline.NumDeleted: 587
begin_hunk_0_@_ZNK5boost15program_options19options_description5printERSoj:bb.a
  %i.af = phi ptr [ %i.r, %bb.f ], [ %.pre27, %bb.g ] ; 2 uses
  %i.ag = phi ptr [ %i.s, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %i.ah = add i32 %.01722, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4
  %i.an = icmp ugt i64 %i.am, %i.ai
  br i1 %i.an, label %bb.f, label %.preheader, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph24, %.preheader
  ret void

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %i.ao = phi i64 [ %i.au, %.lr.ph24 ], [ 0, %.preheader ]
  %.023 = phi i32 [ %i.at, %.lr.ph24 ], [ 0, %.preheader ]
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117
  tail call void @_ZNK5boost15program_options19options_description5printERSoj(ptr noundef nonnull align 8 dereferenceable(128) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.016)
  %i.at = add i32 %.023, 1                        ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !121
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 4
  %i.bb = icmp ugt i64 %i.ba, %i.au
  br i1 %i.bb, label %.lr.ph24, label %._crit_edge, !llvm.loop !137
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5boost15program_options19options_description23get_option_column_widthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.a
  %.059.lcssa = phi i32 [ 23, %bb.a ], [ %.sroa.speculated50, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
  %.not79 = icmp eq ptr %i.ae, %i.af
  br i1 %.not79, label %._crit_edge, label %.lr.ph77

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ag = phi ptr [ %i.e, %.lr.ph ], [ %i.ct, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.ah = phi i64 [ 0, %.lr.ph ], [ %i.cr, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.074 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.05973 = phi i32 [ 23, %.lr.ph ], [ %.sroa.speculated50, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNK5boost15program_options18option_description11format_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %i.aj)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = load ptr, ptr %2, align 8, !tbaa !29
  %i.am = load i64, ptr %i.g, align 8, !tbaa !13
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.al, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !138
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.f unwind label %bb.m

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 32)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.au, %bb.d ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17, !noalias !139 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !7, !noalias !139
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !139
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc26 unwind label %bb.n, !inline_history !142

.noexc26:                                         ; preds = %bb.f
  %.not.i25 = icmp eq i32 %i.bb, 0
  br i1 %.not.i25, label %._crit_edge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc26
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !17, !noalias !139 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !7, !noalias !139
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !139
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge unwind label %bb.n, !inline_history !142

._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %3, align 8, !tbaa !29
  %.pre80 = load i64, ptr %i.i, align 8, !tbaa !13
  br label %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit

._crit_edge.i.i.i:                                ; preds = %.noexc26
  store ptr %i.h, ptr %3, align 8, !tbaa !9, !alias.scope !139
  store i64 0, ptr %i.i, align 8, !tbaa !13, !alias.scope !139
  store i8 0, ptr %i.h, align 8, !tbaa !16, !alias.scope !139
  br label %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit

_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit: ; preds = %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge, %._crit_edge.i.i.i
  %i.bf = phi i64 [ %.pre80, %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge ], [ 0, %._crit_edge.i.i.i ]
  %i.bg = phi ptr [ %.pre, %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge ], [ %i.h, %._crit_edge.i.i.i ]
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bg, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit
  %i.bi = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.h
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !16
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bm = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.j
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load i64, ptr %i.j, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  store ptr %i.k, ptr %4, align 8, !tbaa !9, !alias.scope !149
  store i64 0, ptr %i.l, align 8, !tbaa !13, !alias.scope !149
  store i8 0, ptr %i.k, align 8, !tbaa !16, !alias.scope !149
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !150, !noalias !149 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bq, null
  %5 = load ptr, ptr %i.n, align 8, !noalias !149 ; 2 uses
  %6 = icmp ugt ptr %i.bq, %5
  %.08.i.i.i = select i1 %6, ptr %i.bq, ptr %5    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !152, !noalias !149 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %4, align 8, !tbaa !29, !alias.scope !149 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.k
  br i1 %i.by, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !16, !alias.scope !149
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #35
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %.sroa.speculated50 = call i32 @llvm.umax.i32(i32 %.05973, i32 %i.cc) ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.k
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cg = load i64, ptr %i.k, align 8, !tbaa !16
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store ptr %i.q, ptr %1, align 8, !tbaa !7
  %i.ci = load i64, ptr %i.s, align 8
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ci
  store ptr %i.r, ptr %i.cj, align 8, !tbaa !7
  store ptr %i.t, ptr %i.f, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.u, align 8, !tbaa !7
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !29  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.v
  br i1 %i.cl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cm = load i64, ptr %i.v, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.u, align 8, !tbaa !7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #32
  store ptr %i.x, ptr %1, align 8, !tbaa !7
  %i.co = load i64, ptr %i.z, align 8
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store ptr %i.y, ptr %i.cp, align 8, !tbaa !7
  store i64 0, ptr %i.aa, align 8, !tbaa !50
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ab) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.cq = add i32 %.074, 1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 4
  %i.cy = icmp ugt i64 %i.cx, %i.cr
  br i1 %i.cy, label %bb.b, label %.preheader, !llvm.loop !153

bb.k:                                             ; preds = %bb.b
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.m:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.o:                                             ; preds = %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.h
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.o
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !16
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.n ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.dd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.db, %bb.m ] ; 2 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.j
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  %i.dk = load i64, ptr %i.j, align 8, !tbaa !16
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.q

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.q

bb.q:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.k
  %.pn22 = phi { ptr, i32 } [ %i.bw, %.body ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.cz, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn22

._crit_edge:                                      ; preds = %.lr.ph77, %.preheader
  %.1.lcssa = phi i32 [ %.059.lcssa, %.preheader ], [ %.sroa.speculated46, %.lr.ph77 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !103
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !116
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %i.dn, %i.dq
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.dr, i32 %.1.lcssa)
  %i.ds = add i32 %.sroa.speculated, 1
  ret i32 %i.ds

.lr.ph77:                                         ; preds = %.preheader, %.lr.ph77
  %i.dt = phi ptr [ %i.eb, %.lr.ph77 ], [ %i.af, %.preheader ]
  %i.du = phi i64 [ %i.dz, %.lr.ph77 ], [ 0, %.preheader ]
  %.01176 = phi i32 [ %i.dy, %.lr.ph77 ], [ 0, %.preheader ]
  %.175 = phi i32 [ %.sroa.speculated46, %.lr.ph77 ], [ %.059.lcssa, %.preheader ]
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !117
  %i.dx = call noundef i32 @_ZNK5boost15program_options19options_description23get_option_column_widthEv(ptr noundef nonnull align 8 dereferenceable(128) %i.dw)
  %.sroa.speculated46 = call i32 @llvm.umax.i32(i32 %.175, i32 %i.dx) ; 2 uses
  %i.dy = add i32 %.01176, 1                      ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.eb = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  %i.eg = icmp ugt i64 %i.ef, %i.dz
  br i1 %i.eg, label %.lr.ph77, label %._crit_edge, !llvm.loop !154
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost15program_options12_GLOBAL__N_110format_oneERSoRKNS0_18option_descriptionEjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.boost::program_options::error", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.boost::tokenizer", align 8  ; 12 uses
  %8 = alloca %"class.boost::char_separator", align 8 ; 10 uses
  %9 = alloca %"class.boost::token_iterator", align 8 ; 16 uses
  %10 = alloca %"class.boost::token_iterator", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZNK5boost15program_options18option_description11format_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %13, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.q

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 32)
          to label %bb.e unwind label %bb.q       ; 0 uses

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !155 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7, !noalias !155
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !155
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc40 unwind label %bb.r, !inline_history !142

.noexc40:                                         ; preds = %bb.e
  %.not.i39 = icmp eq i32 %i.x, 0
  br i1 %.not.i39, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc40
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !155 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7, !noalias !155
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !155
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge unwind label %bb.r, !inline_history !142

._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %14, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre156 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit

._crit_edge.i.i.i:                                ; preds = %.noexc40
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ab, ptr %14, align 8, !tbaa !9, !alias.scope !155
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !13, !alias.scope !155
  store i8 0, ptr %i.ab, align 8, !tbaa !16, !alias.scope !155
  br label %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit

_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit: ; preds = %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge, %._crit_edge.i.i.i
  %i.ad = phi i64 [ %.pre156, %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge ], [ 0, %._crit_edge.i.i.i ]
  %i.ae = phi ptr [ %.pre, %._ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit_crit_edge ], [ %i.ab, %._crit_edge.i.i.i ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.ae, i64 noundef %i.ad)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43 unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43: ; preds = %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit
  %i.ag = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.al = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.aq, ptr %15, align 8, !tbaa !9, !alias.scope !164
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !13, !alias.scope !164
  store i8 0, ptr %i.aq, align 8, !tbaa !16, !alias.scope !164
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %19 = load ptr, ptr %18, align 8, !tbaa !150, !noalias !164 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %19, null
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !noalias !164 ; 2 uses
  %20 = icmp ugt ptr %19, %i.at
  %.08.i.i.i = select i1 %20, ptr %19, ptr %i.at  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !152, !noalias !164 ; 2 uses
  %i.aw = ptrtoint ptr %.08.i.i.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.av, i64 noundef %i.ay)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %15, align 8, !tbaa !29, !alias.scope !164 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.be = load ptr, ptr %15, align 8, !tbaa !29
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.be, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bh = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aq
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.ck, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bp, ptr %16, align 8, !tbaa !9, !alias.scope !171
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !13, !alias.scope !171
  store i8 0, ptr %i.bp, align 8, !tbaa !16, !alias.scope !171
  %21 = load ptr, ptr %18, align 8, !tbaa !150, !noalias !171 ; 3 uses
  %.not.i.not.i.i52 = icmp eq ptr %21, null
  %i.br = load ptr, ptr %i.as, align 8, !noalias !171 ; 2 uses
  %22 = icmp ugt ptr %21, %i.br
  %.08.i.i.i53 = select i1 %22, ptr %21, ptr %i.br ; 2 uses
  %.not5.i.i54 = icmp eq ptr %.08.i.i.i53, null
  %.not.i.i55 = select i1 %.not.i.not.i.i52, i1 true, i1 %.not5.i.i54
  br i1 %.not.i.i55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152, !noalias !171 ; 2 uses
  %i.bu = ptrtoint ptr %.08.i.i.i53 to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.bt, i64 noundef %i.bw)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit61 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %16, align 8, !tbaa !29, !alias.scope !171 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bp
  br i1 %i.ca, label %.body59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56: ; preds = %bb.l
  %i.cb = load i64, ptr %i.bp, align 8, !tbaa !16, !alias.scope !171
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #35
  br label %.body59

bb.m:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cd)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit61 unwind label %bb.l

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit61: ; preds = %bb.m, %bb.k
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.cf = zext i32 %2 to i64
  %.not = icmp ult i64 %i.ce, %i.cf
  %i.cg = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bp
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit61
  %i.ci = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit61
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10)
          to label %.preheader unwind label %bb.o ; 0 uses

.preheader:                                       ; preds = %bb.n
  %.not35127 = icmp eq i32 %2, 0
  br i1 %.not35127, label %.loopexit, label %.lr.ph

bb.o:                                             ; preds = %.loopexit, %bb.a, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.q:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.f, %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.s:                                             ; preds = %_ZNK5boost15program_options18option_description16format_parameterB5cxx11Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.s
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.r ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.cq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.co, %bb.q ] ; 2 uses
  %i.cw = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.t
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.p ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %.body94

bb.u:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.aq
  br i1 %i.dd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.u, %bb.h
  %.sink = phi ptr [ %i.bb, %bb.h ], [ %i.dc, %bb.u ]
  %.pn30.ph = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.db, %bb.u ]
  %i.de = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.df) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u, %bb.h
  %.pn30 = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.db, %bb.u ], [ %.pn30.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.body94

.body59:                                          ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %.body94

.lr.ph:                                           ; preds = %.preheader, %bb.v
  %.019128 = phi i32 [ %i.dh, %bb.v ], [ %2, %.preheader ]
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.lr.ph
  %i.dh = add i32 %.019128, -1                    ; 2 uses
  %.not35 = icmp eq i32 %i.dh, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !172

bb.w:                                             ; preds = %.lr.ph
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dj, ptr %17, align 8, !tbaa !9, !alias.scope !179
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.dk, align 8, !tbaa !13, !alias.scope !179
  store i8 0, ptr %i.dj, align 8, !tbaa !16, !alias.scope !179
  %23 = load ptr, ptr %18, align 8, !tbaa !150, !noalias !179 ; 3 uses
  %.not.i.not.i.i74 = icmp eq ptr %23, null
  %i.dl = load ptr, ptr %i.as, align 8, !noalias !179 ; 2 uses
  %24 = icmp ugt ptr %23, %i.dl
  %.08.i.i.i75 = select i1 %24, ptr %23, ptr %i.dl ; 2 uses
  %.not5.i.i76 = icmp eq ptr %.08.i.i.i75, null
  %.not.i.i77 = select i1 %.not.i.not.i.i74, i1 true, i1 %.not5.i.i76
  br i1 %.not.i.i77, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !152, !noalias !179 ; 2 uses
  %i.do = ptrtoint ptr %.08.i.i.i75 to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.dn, i64 noundef %i.dq)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %17, align 8, !tbaa !29, !alias.scope !179 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dj
  br i1 %i.du, label %.body81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78: ; preds = %bb.z
  %i.dv = load i64, ptr %i.dj, align 8, !tbaa !16, !alias.scope !179
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #35
  br label %.body81

bb.aa:                                            ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83 unwind label %bb.z

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83: ; preds = %bb.aa, %bb.y
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !13 ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = sub i32 %2, %i.dz                       ; 2 uses
  %i.eb = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dj
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83
  %i.ed = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.ed)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83
  %i.ee = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %.not32129 = icmp eq i32 %i.ea, 0
  br i1 %.not32129, label %.loopexit, label %.lr.ph131

.body81:                                          ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.body94

.lr.ph131:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ab
  %.0130 = phi i32 [ %i.eh, %bb.ab ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %.lr.ph131
  %i.eh = add i32 %.0130, -1                      ; 2 uses
  %.not32 = icmp eq i32 %i.eh, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph131, !llvm.loop !180

bb.ac:                                            ; preds = %.lr.ph131
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.loopexit:                                        ; preds = %bb.v, %bb.ab, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ej = icmp ugt i32 %3, 1
  %i.ek = sext i1 %i.ej to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN5boost14char_separatorIcSt11char_traitsIcEEC2EPKcS5_NS_18empty_token_policyE(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 1)
          to label %.noexc93 unwind label %bb.o

.noexc93:                                         ; preds = %.loopexit
  %i.el = load ptr, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  store ptr %i.el, ptr %7, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.en = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  store ptr %i.eo, ptr %i.em, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  invoke void @_ZN5boost14char_separatorIcSt11char_traitsIcEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(73) %i.ep, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %_ZN5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_EC2ISC_EERKT_RKS4_.exit.i unwind label %bb.cb

_ZN5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_EC2ISC_EERKT_RKS4_.exit.i: ; preds = %.noexc93
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87: ; preds = %_ZN5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_EC2ISC_EERKT_RKS4_.exit.i
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !16
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i88: ; preds = %_ZN5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_EC2ISC_EERKT_RKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87
  %i.ew = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZN5boost14char_separatorIcSt11char_traitsIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i88
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #35
  br label %_ZN5boost14char_separatorIcSt11char_traitsIcEED2Ev.exit.i

_ZN5boost14char_separatorIcSt11char_traitsIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNK5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_E5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::token_iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.ad unwind label %bb.cc

bb.ad:                                            ; preds = %_ZN5boost14char_separatorIcSt11char_traitsIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNK5boost9tokenizerINS_14char_separatorIcSt11char_traitsIcEEEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS3_SaIcEEEEESC_E3endEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::token_iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %.preheader.i unwind label %bb.cd

.preheader.i:                                     ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %invariant.op.i = sub i32 %3, %2
  %.reass.i = add i32 %invariant.op.i, %i.ek      ; 3 uses
  %i.fl = zext i32 %.reass.i to i64               ; 2 uses
  %.not176.i.i = icmp eq i32 %.reass.i, 0
  %.not131.i = icmp eq i32 %2, 0
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit73.i, %.preheader.i
  %i.fm = load i8, ptr %i.fb, align 8, !tbaa !181, !range !186, !noundef !187 ; 2 uses
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = load i8, ptr %i.fc, align 8, !range !186 ; 2 uses
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond.i.i.i.i = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fq = load ptr, ptr %i.fd, align 8, !tbaa !188
  %i.fr = load ptr, ptr %i.fe, align 8, !tbaa !188
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %bb.ah, label %.thread.i

bb.ag:                                            ; preds = %bb.ae
  %i.ft = icmp eq i8 %i.fm, %i.fo
  br i1 %i.ft, label %bb.cg, label %.thread.i

bb.ah:                                            ; preds = %bb.af
  %i.fu = load ptr, ptr %i.ff, align 8, !tbaa !188
  %i.fv = load ptr, ptr %i.fg, align 8, !tbaa !188
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.cg, label %.thread.i

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %bb.af
  store ptr %i.fi, ptr %11, align 8, !tbaa !9
  %i.fx = load ptr, ptr %i.fh, align 8, !tbaa !29 ; 2 uses
  %i.fy = load i64, ptr %i.fj, align 8, !tbaa !13 ; 8 uses
  %i.fz = icmp ugt i64 %i.fy, 15
  br i1 %i.fz, label %bb.ai, label %._crit_edge.i.i.i89

bb.ai:                                            ; preds = %.thread.i
  %i.ga = icmp slt i64 %i.fy, 0
  br i1 %i.ga, label %.noexc.i.i, label %bb.aj

.noexc.i.i:                                       ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #33
          to label %.noexc.i unwind label %.loopexit.split-lp77.i

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.gb = add nuw i64 %i.fy, 1                    ; 2 uses
  %i.gc = icmp slt i64 %i.gb, 0
  br i1 %i.gc, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !36

.noexc6.i.i:                                      ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc24.i unwind label %.loopexit.split-lp77.i

.noexc24.i:                                       ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.aj
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #31
          to label %.noexc25.i unwind label %.loopexit76.i ; 2 uses

.noexc25.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.gd, ptr %11, align 8, !tbaa !29
end_hunk_0
