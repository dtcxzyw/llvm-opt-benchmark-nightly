inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb14DuckTableEntry24DropForeignKeyConstraintERNS_13ClientContextERNS_19AlterForeignKeyInfoE:bb.a
  %.0.i.i.i.i.i = phi i32 [ %i.gt, %bb.ba ], [ %i.hd, %bb.bb ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.he, label %bb.bc, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, !prof !37

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.hf = load ptr, ptr %5, align 8, !tbaa !637   ; 3 uses
  %.not.i42 = icmp eq ptr %i.hf, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(600) %i.hf) #30, !inline_history !648
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.bd:                                            ; preds = %._crit_edge
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %bb.ai
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45

bb.bf:                                            ; preds = %bb.aj
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %10, align 8, !tbaa !214  ; 3 uses
  %.not.i43 = icmp eq ptr %i.hm, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i44: ; preds = %bb.bf
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(320) %i.hm) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45

bb.bg:                                            ; preds = %bb.al, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.hq, %bb.bg ], [ %i.gm, %bb.aw ]
  call void @_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #30
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i44, %bb.bf, %.body, %bb.be
  %.pn19 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.hk, %bb.be ], [ %i.hl, %bb.bf ], [ %i.hl, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45, %bb.bd
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit45 ], [ %i.hj, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34, %bb.q, %bb.n
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34 ], [ %.pn19.pn, %bb.bh ], [ %.pn, %bb.q ], [ %i.bt, %bb.n ]
  %i.hr = load ptr, ptr %5, align 8, !tbaa !637   ; 3 uses
  %.not.i46 = icmp eq ptr %i.hr, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i47

_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i47: ; preds = %bb.bi
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(600) %i.hr) #30, !inline_history !648
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit48: ; preds = %bb.bi, %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry10SetNotNullERNS_13ClientContextERNS_14SetNotNullInfoE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(152) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %5 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::shared_ptr.883", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.888", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 4 uses
  %12 = alloca %"class.duckdb::unique_ptr.1088", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.b = tail call i64 @_ZNK6duckdb17TableCatalogEntry14GetColumnIndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext false) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 %i.b)
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cb unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53126 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.l = load ptr, ptr %1, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.244") align 8 %8, ptr noundef nonnull align 8 dereferenceable(448) %1)
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 464 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !543  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 472 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !543  ; 2 uses
  %.not131 = icmp eq ptr %i.q, %i.s
  br i1 %.not131, label %._crit_edge.thread, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.h, %.thread
  %.sroa.0118.0132 = phi ptr [ %i.af, %.thread ], [ %i.q, %bb.h ] ; 3 uses
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0132)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !304
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0132)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10Constraint4CastINS_17NotNullConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.y)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !847
  %i.ac = icmp eq i64 %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit, label %.thread

bb.n:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.j, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0118.0132, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.s
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.thread, %bb.h
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc unwind label %bb.u     ; 6 uses

.noexc:                                           ; preds = %._crit_edge.thread
  invoke void @_ZN6duckdb17NotNullConstraintC1ENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 %i.b)
          to label %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.p, !noalias !996

bb.p:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #31, !noalias !996
  br label %.body

_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !300 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 480 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.al = ptrtoint ptr %i.ag to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !567
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.r, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.r:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !303 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.s, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc56 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64

.noexc56:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33
          to label %.noexc57 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64 ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ag to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = add i64 %i.ao, -8
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bi
  %scevgep158 = getelementptr i8, ptr %i.an, i64 %i.bi
  %bound0 = icmp ult ptr %i.ay, %scevgep158
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.an, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.bn = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %wide.load160 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1007, !noalias !1004
  store <2 x i64> %wide.load160, ptr %i.bo, align 8, !tbaa !567, !alias.scope !1007, !noalias !1004
  %i.bp = getelementptr i8, ptr %next.gep159, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1009

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader162

.lr.ph.i.i.i.i.i.i.i.preheader162:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader162, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1002, !noalias !999
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !999, !noalias !1002
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1002, !noalias !999
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1010

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc57 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !303
  store ptr %i.bu, ptr %i.r, align 8, !tbaa !300
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %._crit_edge.thread
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64: ; preds = %bb.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ag) #30, !inline_history !617
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.439157 = phi i1 [ true, %bb.q ], [ true, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ false, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.cc = load i64, ptr %8, align 8, !tbaa !214
  store i64 %i.cc, ptr %11, align 8, !tbaa !214
  store ptr null, ptr %8, align 8, !tbaa !214
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %10, ptr noundef nonnull align 8 dereferenceable(472) %i.cb, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(248) %i.ce)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i65 = icmp eq ptr %i.cf, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.x
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(320) %i.cf) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  br i1 %.439157, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.cm = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cn = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc67 unwind label %bb.ao, !inline_history !642 ; 3 uses

.noexc67:                                         ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94, !noalias !1011 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.co, align 8, !tbaa !95, !noalias !1011
  store <2 x ptr> %i.cs, ptr %5, align 16, !tbaa !95, !noalias !1011
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1011
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !3, !noalias !1011
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !3, !noalias !1011
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cx = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !1011 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.ac, %bb.ab, %.noexc67
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.cn, ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(248) %i.cl, ptr noundef nonnull align 8 dereferenceable(360) %i.cm, ptr noundef nonnull %5)
          to label %bb.ad unwind label %bb.ak, !noalias !1011, !inline_history !642

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !94, !noalias !1011 ; 8 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i66, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8, !noalias !1011 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cz, align 8, !tbaa !99, !noalias !1011
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !101, !noalias !1011
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !7, !noalias !1011
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !1011
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #30, !noalias !1011, !inline_history !646
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !7, !noalias !1011
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !1011
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #30, !noalias !1011, !inline_history !646
  br label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1011
  %.not.i.i.i.i6.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i6.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.dc, %bb.ah ], [ %i.dm, %bb.ai ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.aj, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, !prof !37

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #30, !noalias !1011, !inline_history !642
  br label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit

bb.ak:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_9DataTableELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30, !noalias !1011, !inline_history !642
  call void @_ZdlPv(ptr noundef nonnull %i.cn) #31, !noalias !1011, !inline_history !642
  br label %.body68

_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.cn, ptr %0, align 8, !tbaa !213
  br label %bb.bs

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.am:                                            ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit73

bb.an:                                            ; preds = %bb.w
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i71 = icmp eq ptr %i.ds, null
  br i1 %.not.i71, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit73, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i72

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i72: ; preds = %bb.an
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(320) %i.ds) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit73

bb.ao:                                            ; preds = %bb.z, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body68

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.dx = invoke i64 @_ZNK6duckdb10ColumnList17LogicalToPhysicalENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 %i.b)
          to label %bb.aq unwind label %bb.bn

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.dy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %bb.ar unwind label %bb.bo     ; 4 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 1, ptr %i.dz, align 8, !tbaa !1017, !noalias !1014
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb22BoundNotNullConstraintE, i64 16), ptr %i.dy, align 8, !tbaa !7, !noalias !1014
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %i.dx, ptr %i.ea, align 8, !tbaa !19, !noalias !1014
  store ptr %i.dy, ptr %12, align 8, !tbaa !1018, !alias.scope !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ec = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZNK6duckdb10shared_ptrINS_9DataTableELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
          to label %bb.as unwind label %bb.bp

bb.as:                                            ; preds = %bb.ar
  %i.ed = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_22BoundNotNullConstraintESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.at unwind label %bb.bp

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6duckdb15make_shared_ptrINS_9DataTableEJRNS_13ClientContextERS1_RNS_22BoundNotNullConstraintEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.199") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(124) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %bb.au unwind label %bb.bp

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.eg = load ptr, ptr %i.cd, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.eh = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.bq

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ei = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc83 unwind label %bb.bq, !inline_history !642 ; 3 uses

.noexc83:                                         ; preds = %bb.av
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !94, !noalias !1020 ; 2 uses
  %i.em = load <2 x ptr>, ptr %13, align 16, !tbaa !95, !noalias !1020
  store <2 x ptr> %i.em, ptr %4, align 16, !tbaa !95, !noalias !1020
  %.not.i.i.i.i.i76 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i76, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i78, label %bb.aw

bb.aw:                                            ; preds = %.noexc83
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1020
  %.not.i.i.i.i.i.i77 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !1020
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !3, !noalias !1020
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i78

bb.ay:                                            ; preds = %bb.aw
  %i.er = atomicrmw volatile add ptr %i.en, i32 1 acq_rel, align 4, !noalias !1020 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i78

end_hunk_0
