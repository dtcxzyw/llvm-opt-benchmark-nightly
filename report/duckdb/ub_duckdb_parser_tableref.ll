inline.NumInlined: 3131
inline.NumDeleted: 1642
begin_hunk_0_@_ZNK6duckdb17ExpressionListRef6EqualsERKNS_8TableRefE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not = icmp eq i64 %i.i, %i.p
  br i1 %.not, label %.preheader27, label %.loopexit

.preheader27:                                     ; preds = %bb.b
  %.not2631 = icmp eq ptr %i.e, %i.f
  br i1 %.not2631, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader27, %.critedge
  %.02032 = phi i64 [ %i.bb, %.critedge ], [ 0, %.preheader27 ] ; 7 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.02032) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !174
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.02032) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !174
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %.not24 = icmp eq i64 %i.w, %i.ad               ; 3 uses
  br i1 %.not24, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph33
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.02032) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !173
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !174
  %.not2529.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not2529.not, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ai = add nuw i64 %.030, 1                    ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.02032) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !173
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !174
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %.not25 = icmp ult i64 %i.ai, %i.aq
  br i1 %.not25, label %.lr.ph, label %.critedge, !llvm.loop !179

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.030 = phi i64 [ %i.ai, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.02032)
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %.030)
  %i.at = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 2 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.02032)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %.030)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
  br i1 %i.ba, label %bb.c, label %.loopexit

.critedge:                                        ; preds = %bb.c, %.preheader
  %i.bb = add nuw i64 %.02032, 1                  ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !169
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 24
  %.not26.not = icmp ult i64 %i.bb, %i.bh
  br i1 %.not26.not, label %.lr.ph33, label %.loopexit, !llvm.loop !180

.loopexit:                                        ; preds = %.lr.ph33, %.critedge, %.lr.ph, %.preheader27, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph ], [ true, %.preheader27 ], [ %.not24, %.critedge ], [ %.not24, %.lr.ph33 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb8TableRef4CastINS_17ExpressionListRefEEERKT_v(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58
  %.not = icmp eq i8 %i.b, 6
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17ExpressionListRef4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.23") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::unique_ptr.153", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::vector.68", align 16 ; 14 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #28, !noalias !181, !inline_history !184 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 6, ptr %i.c, align 8, !tbaa !58, !noalias !181
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !7, !noalias !181
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !14, !noalias !181
  store i8 0, ptr %i.e, align 8, !tbaa !15, !noalias !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !84, !noalias !181
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 -1, ptr %i.h, align 8, !tbaa !85, !noalias !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !181
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb17ExpressionListRefE, i64 16), ptr %i.b, align 8, !tbaa !27, !noalias !181
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !noalias !181
  store ptr %i.b, ptr %3, align 8, !tbaa !185, !alias.scope !181
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !187  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !187  ; 2 uses
  %.not49 = icmp eq ptr %i.l, %i.n
  br i1 %.not49, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.b

._crit_edge53:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.a
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.s unwind label %bb.v

bb.b:                                             ; preds = %.lr.ph52, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.sroa.036.050 = phi ptr [ %i.l, %.lr.ph52 ], [ %i.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.036.050, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173  ; 3 uses
  %i.t = load ptr, ptr %.sroa.036.050, align 8, !tbaa !174 ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc unwind label %.loopexit.split-lp43

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not77 = icmp eq ptr %i.s, %i.t
  br i1 %.not77, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %.loopexit42 ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.y, ptr %4, align 16, !tbaa !174
  store ptr %i.y, ptr %i.p, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store ptr %i.z, ptr %i.o, align 16, !tbaa !136
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !135
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.d
  %6 = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.s, %bb.d ] ; 2 uses
  %.not4147 = icmp eq ptr %i.t, %6
  br i1 %.not4147, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.aa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.o unwind label %.loopexit42 ; 3 uses

.loopexit42:                                      ; preds = %._crit_edge, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.p
  %lpad.loopexit44 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp43:                             ; preds = %bb.c
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.032.048 = phi ptr [ %i.ce, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ab = load ptr, ptr %.sroa.032.048, align 8, !tbaa !16 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !35

.noexc.i:                                         ; preds = %.lr.ph
  %i.ac = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 49, ptr %i.a, align 8, !tbaa !37
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc31:                                         ; preds = %.noexc.i
  store ptr %i.ae, ptr %2, align 8, !tbaa !11
  %i.af = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ae, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc31
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %.noexc31
  %.0.i.i = phi i1 [ false, %bb.e ], [ true, %.noexc31 ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.g, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.g, label %.body

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ac) #25
  br label %.body

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !173 ; 6 uses
  %i.aq = load ptr, ptr %i.o, align 16, !tbaa !136
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.j, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i
  %i.ar = load i64, ptr %5, align 8, !tbaa !16
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.p, align 8, !tbaa !173
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %4, align 16, !tbaa !174  ; 10 uses
  %i.au = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #26
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28
          to label %.noexc17 unwind label %.loopexit ; 10 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = load i64, ptr %5, align 8, !tbaa !16
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !16
  store ptr null, ptr %5, align 8, !tbaa !16
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc17
  %i.bh = sub i64 %i.au, %i.av
  %i.bi = add i64 %i.bh, -8                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bl = add i64 %i.au, -8
  %i.bm = sub i64 %i.bl, %i.av
  %i.bn = and i64 %i.bm, -8                       ; 2 uses
  %scevgep80.a = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep81.a = getelementptr i8, ptr %i.at, i64 8
  %scevgep82 = getelementptr i8, ptr %scevgep81.a, i64 %i.bn
  %bound0 = icmp ult ptr %i.be, %scevgep82
  %bound1 = icmp ult ptr %i.at, %scevgep80.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.at, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.br ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.at, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.bs = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !16, !alias.scope !193, !noalias !188
  %wide.load84 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !16, !alias.scope !193, !noalias !188
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !16, !alias.scope !196, !noalias !193
  store <2 x i64> %wide.load84, ptr %i.bt, align 8, !tbaa !16, !alias.scope !196, !noalias !193
  %i.bu = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !tbaa !16, !alias.scope !193, !noalias !188
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !16, !alias.scope !193, !noalias !188
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader86

.lr.ph.i.i.i.i.i.i.i.preheader86:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader86, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader86 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !191, !noalias !188
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !188, !noalias !191
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !191, !noalias !188
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !201

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bp, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.at) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.l
  store ptr %i.be, ptr %4, align 16, !tbaa !174
  store ptr %i.bz, ptr %i.p, align 8, !tbaa !173
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.ca, ptr %i.o, align 16, !tbaa !136
  %.pr = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i18 = icmp eq ptr %.pr, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cb = load ptr, ptr %.pr, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #25, !inline_history !36
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.048, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.ce, %6
  br i1 %.not41, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %.not.i19 = icmp eq ptr %i.cg, null
  br i1 %.not.i19, label %.body, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i20

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i20: ; preds = %bb.n
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(56) %i.cg) #25, !inline_history !36
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i20, %bb.n, %bb.m, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cf, %bb.m ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.g ], [ %lpad.phi, %bb.n ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !169 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !202
  %.not.i.i22 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i.i22, label %bb.p, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %bb.o
  %i.co = load <2 x ptr>, ptr %4, align 16, !tbaa !135
  store <2 x ptr> %i.co, ptr %i.cl, align 8, !tbaa !135
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.o, align 16, !tbaa !136
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !136
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cr, ptr %i.ck, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %.loopexit42

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.p
  %.pre54.a = load ptr, ptr %4, align 16, !tbaa !174 ; 3 uses
  %.pre55 = load ptr, ptr %i.p, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre54.a, %.pre55
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cx, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre54.a, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.ct = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i24, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(56) %i.ct) #25, !inline_history !203
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, %.pre55
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !204

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !174
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  %i.cy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre54.a, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.036.050, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cz, %i.n
  br i1 %.not, label %._crit_edge53, label %bb.b

bb.r:                                             ; preds = %.loopexit42, %.loopexit.split-lp43, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit44, %.loopexit42 ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp43 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge53
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.v ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.s
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.v ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.t
  %i.dh = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  invoke void @_ZNK6duckdb8TableRef14CopyPropertiesERS0_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.dh)
          to label %_ZNSt10unique_ptrIN6duckdb17ExpressionListRefESt14default_deleteIS1_EED2Ev.exit unwind label %bb.v

_ZNSt10unique_ptrIN6duckdb17ExpressionListRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.u
  %i.di = load ptr, ptr %3, align 8, !tbaa !185
  store ptr %i.di, ptr %0, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %._crit_edge53
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.dj, %bb.v ]
  %i.dk = load ptr, ptr %3, align 8, !tbaa !185   ; 3 uses
  %.not.i28 = icmp eq ptr %i.dk, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb17ExpressionListRefESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN6duckdb17ExpressionListRefEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6duckdb17ExpressionListRefEEclEPS1_.exit.i29: ; preds = %bb.w
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(176) %i.dk) #25, !inline_history !205
  br label %_ZNSt10unique_ptrIN6duckdb17ExpressionListRefESt14default_deleteIS1_EED2Ev.exit30

_ZNSt10unique_ptrIN6duckdb17ExpressionListRefESt14default_deleteIS1_EED2Ev.exit30: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb17ExpressionListRefEEclEPS1_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
