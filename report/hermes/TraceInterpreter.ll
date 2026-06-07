inline.NumInlined: 3334
inline.NumDeleted: 1601
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter15execWithRuntimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a

bb.ab:                                            ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ct, align 8, !tbaa !187
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !189
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35, !inline_history !190
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35, !inline_history !190
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.ae ], [ %i.dg, %bb.af ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.ag, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, !prof !125

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #35
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.di = load ptr, ptr %8, align 8, !tbaa !182   ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.di, %i.dk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.di, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dl) #35, !inline_history !191
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, %i.dk
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !183
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.di to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.du) #36
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.dv = load ptr, ptr %7, align 8, !tbaa !160   ; 3 uses
  %.not.i32 = icmp eq ptr %i.dv, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dv) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.dz = load i8, ptr %i.c, align 8
  %i.ea = trunc i8 %i.dz to i1
  br i1 %i.ea, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.eb = load ptr, ptr %5, align 8, !tbaa !160   ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i33, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34: ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !94
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eb) #35, !inline_history !194
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit35: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.ai, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret void

bb.aj:                                            ; preds = %._crit_edge
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.t, %bb.aj
  %.pn15.pn = phi { ptr, i32 } [ %i.ef, %bb.aj ], [ %i.ap, %bb.s ], [ %i.aq, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.eg = load ptr, ptr %7, align 8, !tbaa !160   ; 3 uses
  %.not.i36 = icmp eq ptr %i.eg, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37: ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !94
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eg) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38: ; preds = %bb.ak, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38, %bb.h, %bb.g
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit38 ], [ %i.j, %bb.g ], [ %i.k, %bb.h ]
  %i.ek = load i8, ptr %i.c, align 8
  %i.el = trunc i8 %i.ek to i1
  br i1 %i.el, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit41, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = load ptr, ptr %5, align 8, !tbaa !160   ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.em, null
  br i1 %.not.i.i39, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit41, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i40

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i40: ; preds = %bb.am
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.em) #35, !inline_history !194
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit41

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit41: ; preds = %bb.al, %bb.am, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  resume { ptr, i32 } %.pn15.pn.pn

bb.an:                                            ; preds = %bb.r, %bb.f
  unreachable
}

declare void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(18), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12system_errorC2ESt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = load ptr, ptr %2, align 8, !tbaa !94, !noalias !195
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !195
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !198
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !74
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12system_error, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.i, align 8, !tbaa !3
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !158
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !74
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.j
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.94") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.std::_Rb_tree<std::array<unsigned char, 20>, std::pair<const std::array<unsigned char, 20>, std::shared_ptr<const facebook::jsi::Buffer>>, std::_Select1st<std::pair<const std::array<unsigned char, 20>, std::shared_ptr<const facebook::jsi::Buffer>>>, std::less<std::array<unsigned char, 20>>>::_Alloc_node", align 8 ; 4 uses
  %7 = alloca %"class.std::tuple.125", align 8    ; 9 uses
  %8 = alloca %"class.std::unique_ptr.81", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::map", align 8          ; 9 uses
  %10 = alloca %"class.hermes::vm::RuntimeConfig", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.67", align 8   ; 12 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 10 uses
  %13 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::map", align 8         ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %17 = alloca %"class.hermes::vm::GCConfig", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.d = load i64, ptr %1, align 8, !tbaa !160
  store i64 %i.d, ptr %8, align 8, !tbaa !160
  store ptr null, ptr %1, align 8, !tbaa !160
  invoke void @_ZN8facebook6hermes7tracing15parseSynthTraceESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.125") align 8 %7, ptr noundef nonnull %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %8, align 8, !tbaa !160    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 520 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.k = load i8, ptr %i.b, align 1, !tbaa !199, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i8, ptr %i.c, align 1, !tbaa !199, !range !67, !noundef !68
  %i.n = trunc nuw i8 %i.m to i1
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter5mergeERN6hermes2vm13RuntimeConfig7BuilderERKNS4_8GCConfig7BuilderERKNS2_14ExecuteOptionsEbb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::RuntimeConfig") align 8 %10, ptr noundef nonnull align 8 dereferenceable(299) %i.j, ptr noundef nonnull align 8 dereferenceable(216) %7, ptr noundef nonnull align 8 dereferenceable(316) %3, i1 noundef zeroext %i.l, i1 noundef zeroext %i.n)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !200  ; 6 uses
  %i.q = sext i32 %i.p to i64                     ; 5 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #38
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %.loopexit87

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.s = shl nuw nsw i64 %i.q, 5
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #37
          to label %.noexc47 unwind label %bb.i   ; 4 uses

.noexc47:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.t, ptr %11, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !203
  %xtraiter = and i64 %i.q, 3
  %i.w = and i32 %i.p, 3
  %lcmp.mod.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc47, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.prol ], [ %i.t, %.noexc47 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %i.q, %.noexc47 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc47 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.x, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !92
  store i8 0, ptr %i.x, align 8, !tbaa !74
  %i.z = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !204

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc47
  %.lcssa195.unr = phi ptr [ poison, %.noexc47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.t, %.noexc47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.q, %.noexc47 ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %i.ab = icmp ult i32 %i.p, 4
  br i1 %i.ab, label %.loopexit87, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ac, ptr %.08.i.i.i.i.i, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !92
  store i8 0, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !92
  store i8 0, ptr %i.af, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aj, align 8, !tbaa !92
  store i8 0, ptr %i.ai, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.am, align 8, !tbaa !92
  store i8 0, ptr %i.al, align 8, !tbaa !74
  %i.an = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit87, label %.lr.ph.i.i.i.i.i, !llvm.loop !206

.loopexit87:                                      ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa195.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !208
  %i.as = sub nsw i32 0, %i.ar                    ; 2 uses
  %i.at = icmp sgt i32 %i.p, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit87
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.jh)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85 unwind label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #34
  unreachable

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void

bb.bq:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.am
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.br, %bb.be, %bb.bd, %bb.an
  %.pn = phi { ptr, i32 } [ %.pn21.pn.pn22.i, %bb.be ], [ %i.jl, %bb.br ], [ %i.el, %bb.an ], [ %.pn21.pn.pn.i, %bb.bd ]
  call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %17) #35
  br label %bb.bs

bb.bs:                                            ; preds = %.body, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jk, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.bt

bb.bt:                                            ; preds = %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bs
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bs ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi, %bb.ag ], [ %i.do, %bb.af ]
  call void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #35
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.i
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bt ], [ %i.bo, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.h
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bu ], [ %i.bn, %bb.h ]
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.g
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.bv ], [ %i.bm, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50, %bb.f, %bb.bw
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.bw ], [ %i.bh, %bb.f ], [ %i.bh, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #35, !inline_history !242
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(316) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.100", align 8  ; 14 uses
  %.sroa.0 = alloca [20 x i8], align 1            ; 7 uses
  %11 = alloca %"struct.std::array", align 1      ; 5 uses
  %12 = alloca %"struct.std::array", align 1      ; 5 uses
  %13 = alloca %"struct.std::pair.117", align 8   ; 8 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1, !tbaa !199
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not112134 = icmp eq ptr %i.a, %i.c
  br i1 %.not112134, label %.loopexit116, label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.d, %i.c
  br i1 %.not112, label %.loopexit116, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.sroa.0105.0135 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0105.0135, align 8, !tbaa !160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %.not51 = icmp eq i32 %i.i, 1
  br i1 %.not51, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  store i8 0, ptr %4, align 1, !tbaa !199
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %.not113141 = icmp eq ptr %i.j, %i.l
  br i1 %.not113141, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit116
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.bg, ptr %i.m, align 8
  store ptr %i.be, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit116
  %i.o = phi ptr [ %i.bg, %._crit_edge ], [ null, %.loopexit116 ] ; 4 uses
  %i.p = phi ptr [ %i.bf, %._crit_edge ], [ null, %.loopexit116 ] ; 5 uses
  store ptr %i.p, ptr %10, align 8
  %i.q = invoke noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv()
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.0101.0142 = phi ptr [ %i.j, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 14 uses
  %i.u = load i64, ptr %.sroa.0101.0142, align 8, !tbaa !160 ; 3 uses
  store ptr null, ptr %.sroa.0101.0142, align 8, !tbaa !160
  %i.v = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37
          to label %bb.g unwind label %bb.l       ; 6 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i32 0, i32 0, i32 2), ptr %i.v, align 8, !tbaa !94, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !160, !noalias !244
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.v to i64
  store i64 %i.x, ptr %i.s, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc85 unwind label %.thread.loopexit.split-lp

.noexc85:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i80 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i80)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #37
          to label %.noexc86 unwind label %.thread.loopexit ; 10 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = ptrtoint ptr %i.v to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !249
  %.not10.i.i.i.i81 = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i81, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %.noexc86
  %i.al = add i64 %i.y, -8
  %i.am = sub i64 %i.al, %i.z                     ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i82.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i82.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep307 = getelementptr i8, ptr %i.t, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ar
  %bound0 = icmp ult ptr %i.ai, %scevgep308
  %bound1 = icmp ult ptr %i.t, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.t, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.aw = getelementptr i8, ptr %next.gep309, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %wide.load310 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  store <2 x i64> %wide.load310, ptr %i.ax, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  %i.ay = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader322

.lr.ph.i.i.i.i82.preheader322:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i82.preheader, %middle.block
  %.012.i.i.i.i83.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i82.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i82.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader322, %.lr.ph.i.i.i.i82
  %.012.i.i.i.i83 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i82 ], [ %.012.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i82 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  store i64 %i.ba, ptr %.012.i.i.i.i83, align 8, !tbaa !249, !alias.scope !251, !noalias !254
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i83, i64 8 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.bb, %i.r
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82, !llvm.loop !262

_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i82, %middle.block, %.noexc86
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %.noexc86 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i82 ]
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.h
  %i.be = phi ptr [ %i.bd, %.noexc ], [ %i.r, %bb.h ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %i.s, %bb.h ]
  %i.bf = phi ptr [ %i.ai, %.noexc ], [ %i.t, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0101.0142, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.bh, %i.l
  br i1 %.not113, label %._crit_edge, label %bb.f

.thread.loopexit:                                 ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !94
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp, %.thread.loopexit
  %i.bi = phi ptr [ getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i32 0, i32 0, i32 2), %.thread.loopexit ], [ %.pre, %.thread.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #35, !inline_history !263
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.l:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  %.not.i68 = icmp eq i64 %i.u, 0
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69: ; preds = %bb.l
  %i.bm = inttoptr i64 %i.u to ptr                ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bm) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.m:                                             ; preds = %bb.e
  %.not.i71 = icmp eq ptr %i.q, null
  br i1 %.not.i71, label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE)
          to label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit unwind label %bb.q, !inline_history !264

_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.m ], [ %i.bs, %bb.n ] ; 4 uses
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  store i8 1, ptr %5, align 1, !tbaa !199
  %.not114153 = icmp eq ptr %i.p, %i.o
  br i1 %.not114153, label %.loopexit, label %.lr.ph156

bb.p:                                             ; preds = %.critedge61
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0154, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.bt, %i.o
  br i1 %.not114, label %.loopexit, label %.lr.ph156

bb.q:                                             ; preds = %bb.n, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.lr.ph156:                                        ; preds = %bb.o, %bb.p
  %.sroa.092.0154 = phi ptr [ %i.bt, %bb.p ], [ %i.p, %bb.o ] ; 3 uses
  %i.bv = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %.lr.ph156
  %i.ca = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bz, i64 noundef %i.ce)
          to label %.critedge61 unwind label %bb.u

.critedge61:                                      ; preds = %bb.s
  br i1 %i.ci, label %bb.p, label %bb.t

bb.t:                                             ; preds = %.critedge61
  store i8 0, ptr %5, align 1, !tbaa !199
  br label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.r, %.lr.ph156
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.t, %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.ck, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.co, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not115157 = icmp eq ptr %i.p, %i.o
  br i1 %.not115157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %bb.v

._crit_edge161:                                   ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 229
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !265, !range !67, !noundef !68
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %bb.av

bb.v:                                             ; preds = %.lr.ph160, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit
  %.sroa.088.0158 = phi ptr [ %i.p, %.lr.ph160 ], [ %i.ex, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i8 0, i64 20, i1 false)
  %i.cv = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.cz, i64 noundef %i.de)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %i.di, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.dj = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %11, ptr %i.dn, i64 %i.ds)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ak

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.au

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.dv = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %12, ptr %i.dz, i64 %i.ee)
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing16TraceInterpreter5mergeERN6hermes2vm13RuntimeConfig7BuilderERKNS4_8GCConfig7BuilderERKNS2_14ExecuteOptionsEbb:bb.a

bb.ap:                                            ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %i.ev = invoke noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ap, %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !151 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.fb = invoke noundef zeroext i1 %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.ar, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i35, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.fh = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.at, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !144 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !74
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #36
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 184
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i36, label %_ZNSt14_Function_baseD2Ev.exit.i.i37, label %bb.av

bb.av:                                            ; preds = %_ZN6hermes2vm8GCConfigD2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.ft = invoke noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i37 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i37:             ; preds = %bb.av, %_ZN6hermes2vm8GCConfigD2Ev.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !151 ; 2 uses
  %.not.i1.i.i38 = icmp eq ptr %i.fx, null
  br i1 %.not.i1.i.i38, label %_ZNSt14_Function_baseD2Ev.exit2.i.i39, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i37
  %i.fy = invoke noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i39 unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i39:            ; preds = %bb.ax, %_ZNSt14_Function_baseD2Ev.exit.i.i37
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i40, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i41, label %bb.az

bb.az:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i39
  %i.gd = invoke noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i41 unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i41:   ; preds = %bb.az, %_ZNSt14_Function_baseD2Ev.exit2.i.i39
  %i.gg = load ptr, ptr %i.i, align 8, !tbaa !144 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.j
  br i1 %i.gh, label %_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i41
  %i.gi = load i64, ptr %i.j, align 8, !tbaa !74
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #36
  br label %_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit44

_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit44:        ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(299) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.bb:                                            ; preds = %_ZN6hermes2vm8GCConfig7Builder5buildEv.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %12) #35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.bb ], [ %i.s, %bb.d ], [ %i.al, %bb.j ]
  call void @_ZN6hermes2vm8GCConfig7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(299) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfig7BuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(299) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(269) %0, i8 0, i64 136, i1 false)
  store i32 33554432, ptr %i.a, align 4, !tbaa !283
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1073741824, ptr %i.b, align 8, !tbaa !284
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e-01, ptr %i.c, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.d, align 8, !tbaa !286
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.e, align 8, !tbaa !287
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.f, align 4, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.h, ptr %i.g, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 4294967295, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.k, align 8, !tbaa !326
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false)
  store i32 131072, ptr %i.m, align 8, !tbaa !327
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 65536, ptr %i.n, align 4, !tbaa !328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1>, ptr %i.o, align 8, !tbaa !199
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.p, align 8, !tbaa !329
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.r, align 8, !tbaa !330
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i8 0, ptr %i.s, align 4, !tbaa !331
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.t, align 1, !tbaa !332
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 238
  store i8 0, ptr %i.u, align 2, !tbaa !333
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.v, align 8, !tbaa !334
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i8 1, ptr %i.w, align 4, !tbaa !335
  %i.x = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr getelementptr inbounds inrange(-16, 88) ({ [13 x ptr] }, ptr @_ZTVN6hermes2vm15NopCrashManagerE, i32 0, i32 0, i32 2), ptr %i.x, align 8, !tbaa !94
  store ptr %i.x, ptr %i.y, align 8, !tbaa !336
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6hermes2vm15NopCrashManagerEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.x)
          to label %_ZN6hermes2vm13RuntimeConfigC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(269) %0) #35
  resume { ptr, i32 } %i.aa

_ZN6hermes2vm13RuntimeConfigC2Ev.exit:            ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.ab, align 8, !tbaa !337
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 0, ptr %i.ac, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.ad, i8 0, i64 27, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfig7Builder6updateERKS2_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::RuntimeConfig::Builder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(299) %1, ptr noundef nonnull align 8 dereferenceable(299) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCConfig", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.b = load i8, ptr %i.a, align 8, !tbaa !322, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6hermes2vm8GCConfigD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(269) %2)
  %i.d = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(299) %1, ptr noundef nonnull align 8 dereferenceable(200) %3) #35 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 1, ptr %i.e, align 8, !tbaa !322
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.i = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.o = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.g, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #36
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 273
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !339, !range !67, !noundef !68
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6hermes2vm8GCConfigD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !340
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !341
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 1, ptr %i.aj, align 1, !tbaa !339
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm8GCConfigD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 274
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !342, !range !67, !noundef !68
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !327
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !343
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 274
  store i8 1, ptr %i.aq, align 2, !tbaa !342
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 275
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !344, !range !67, !noundef !68
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.av = load i32, ptr %i.au, align 4, !tbaa !328
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 212
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !345
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 275
  store i8 1, ptr %i.ax, align 1, !tbaa !344
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 276
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !346, !range !67, !noundef !68
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !347, !range !67, !noundef !68
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i8 %i.bc, ptr %i.bd, align 8, !tbaa !348
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 276
  store i8 1, ptr %i.be, align 4, !tbaa !346
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 277
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !349, !range !67, !noundef !68
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 217
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !350, !range !67, !noundef !68
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 217
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !351
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 277
  store i8 1, ptr %i.bl, align 1, !tbaa !349
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 278
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !352, !range !67, !noundef !68
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 218
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !353, !range !67, !noundef !68
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 218
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !354
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 278
  store i8 1, ptr %i.bs, align 2, !tbaa !352
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !355, !range !67, !noundef !68
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 219
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !356, !range !67, !noundef !68
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing16TraceInterpreterD2Ev:bb.a
_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !88
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !87  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !88
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #36
  br label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !138
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev.exit, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 2 uses
  %.not5.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not5.i.i.i.i5, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i6
  %.06.i.i.i.i7 = phi ptr [ %i.av, %.lr.ph.i.i.i.i6 ], [ %i.au, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit ] ; 2 uses
  %i.av = load ptr, ptr %.06.i.i.i.i7, align 8, !tbaa !119 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i7, i64 noundef 24) #36
  %.not.i.i.i.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i8, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i6, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i6, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !85
  %i.az = shl i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !85
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #36
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef %i.bh)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #34
  unreachable

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.bk) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter18createHostFunctionERKNS1_10SynthTrace24CreateHostFunctionRecordERKNS_3jsi10PropNameIDE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i:
  %4 = alloca %"class.std::function.132", align 8 ; 11 uses
  %5 = alloca %"class.std::function.132", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !456
  %i.d = ptrtoint ptr %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.f, align 8
  store i64 %i.d, ptr %5, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @"_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNSA_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0E9_M_invokeERKSt9_Any_dataS4_S6_OS7_Om", ptr %i.g, align 8, !tbaa !463, !noalias !465
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !420, !noalias !465
  store ptr @"_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNSA_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.h, align 8, !tbaa !151, !noalias !465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !465
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !465
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.k = load ptr, ptr %i.j, align 8, !noalias !465
  invoke void %i.k(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.c, ptr noundef nonnull %4)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !151, !noalias !465 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.d:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !151, !noalias !465 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

bb.g:                                             ; preds = %bb.b
  %.pre6 = load ptr, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre6, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = invoke noundef zeroext i1 %.pre6(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.thread, %bb.g, %bb.h
  ret void

.body:                                            ; preds = %bb.e
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  %.not.i4 = icmp eq ptr %.pre, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %.body
  %i.x = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.d, %.body, %bb.j
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.135", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.135", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37, !noalias !468, !inline_history !471 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i32 1, ptr %i.c, align 8, !tbaa !187, !noalias !468
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !189, !noalias !468
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectSaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.b, align 8, !tbaa !94, !noalias !468
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObject, i32 0, i32 0, i32 2), ptr %i.e, align 8, !tbaa !94, !noalias !468
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !461, !noalias !468
  store ptr %i.e, ptr %4, align 8, !tbaa !472
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.e, ptr %3, align 8, !tbaa !472, !noalias !475
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !184, !noalias !475
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74, !noalias !475
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.c, align 8, !tbaa !3, !noalias !475
  br label %_ZNSt10shared_ptrIN8facebook3jsi10HostObjectEEC2ERKS3_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4, !noalias !475 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook3jsi10HostObjectEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN8facebook3jsi10HostObjectEEC2ERKS3_.exit.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !475
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !noalias !475
  invoke void %i.m(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %3)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN8facebook3jsi10HostObjectEEC2ERKS3_.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !184, !noalias !475 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !189
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35, !inline_history !478
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35, !inline_history !478
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74, !noalias !475
  %.not.i.i.i2.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !125

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35
  br label %bb.k

.body:                                            ; preds = %_ZNSt10shared_ptrIN8facebook3jsi10HostObjectEEC2ERKS3_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #35
  call void @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #35
  call fastcc void @_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #35
  resume { ptr, i32 } %i.ad

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !184 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !189
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35, !inline_history !479
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35, !inline_history !479
  br label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i3 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.q, label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #35
  br label %_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !189
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !480
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !480
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !127
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !85   ; 2 uses
  %i.s = load i64, ptr %i.o, align 8, !tbaa !107
  %i.t = urem i64 %i.s, %i.r
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  store ptr %i.p, ptr %i.u, align 8, !tbaa !121
  %.02834 = load ptr, ptr %i.l, align 8, !tbaa !119 ; 2 uses
  %.not3035 = icmp eq ptr %.02834, null
  br i1 %.not3035, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.m
  %.02837 = phi ptr [ %.028, %bb.m ], [ %.02834, %bb.h ] ; 2 uses
  %.02636 = phi ptr [ %i.v, %bb.m ], [ %i.m, %bb.h ] ; 2 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.i unwind label %bb.l       ; 4 uses

bb.i:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.02837, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store ptr %i.v, ptr %.02636, align 8, !tbaa !119
  %i.y = load i64, ptr %i.x, align 8, !tbaa !107
  %i.z = urem i64 %i.y, %i.r
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %.not32 = icmp eq ptr %i.ab, null
  br i1 %.not32, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr %.02636, ptr %i.aa, align 8, !tbaa !121
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %.028 = load ptr, ptr %.02837, align 8, !tbaa !119 ; 2 uses
  %.not30 = icmp eq ptr %.028, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !1021

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ac, %bb.k ]
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %.027) #35 ; 0 uses
  tail call void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #35
  br i1 %.not.not, label %bb.o, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ak) #36
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.q:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.p, %bb.o, %bb.n
  invoke void @__cxa_rethrow() #38
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.al

.loopexit:                                        ; preds = %bb.m, %bb.h, %bb.f
  ret void

bb.s:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #34
  unreachable

bb.t:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !119 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 24) #36
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit, label %.lr.ph.i, !llvm.loop !142

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  tail call void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !187
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !189
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #35, !inline_history !1022
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #35, !inline_history !1022
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #35
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1023

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEEN17OwnedMemoryBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEEN17OwnedMemoryBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEEN17OwnedMemoryBufferD2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #35, !inline_history !1024
  br label %_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEEN17OwnedMemoryBufferD2Ev.exit

_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEEN17OwnedMemoryBufferD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #35, !inline_history !1025
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEENK17OwnedMemoryBuffer4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1026
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1028
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEENK17OwnedMemoryBuffer4dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1028
  ret ptr %i.d
}

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !249    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !492
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !184
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m.exit.i

_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m.exit.i: ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.b unwind label %bb.o       ; 10 uses

bb.b:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m.exit.i
  store ptr null, ptr %1, align 8, !tbaa !249
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !189
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1029
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !184 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !189
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35, !inline_history !1031
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35, !inline_history !1031
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !125

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !184
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !187
  store i32 0, ptr %i.f, align 4, !tbaa !189
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !189
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #35, !inline_history !1032
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #35, !inline_history !1032
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1033 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35, !inline_history !1035
  br label %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit

_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPKN8facebook3jsi6BufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1036 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIKN8facebook3jsi6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(44) @_ZTSSt14default_deleteIKN8facebook3jsi6BufferEE) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !inline_history !1038
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #35, !inline_history !1038
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6hermes2vm15NopCrashManagerEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !184
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !187
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !189
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !1039
  store ptr %i.a, ptr %0, align 8, !tbaa !184
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #35 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #38
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1039 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.4", align 16  ; 9 uses
  %3 = alloca %"class.std::function.1", align 16  ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !144  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !144  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !74
  store i8 %i.l, ptr %i.c, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !92
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92
  store i64 %i.s, ptr %i.q, align 8, !tbaa !92
  %i.t = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.t, ptr %i.d, align 8, !tbaa !74
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !74
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !92
  %i.y = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.y, ptr %i.d, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !144
  store i64 %i.u, ptr %i.g, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !92
  store i8 0, ptr %i.z, align 1, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !418
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !418
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !213
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !151
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !420
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !213
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1064
  br label %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN8facebook3jsi5ValueEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !125

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN8facebook3jsi5ValueEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN8facebook3jsi5ValueEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN8facebook3jsi5ValueEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !149
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !119 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %i.o, ptr %.031, align 8, !tbaa !119
  store ptr %.031, ptr %i.g, align 8, !tbaa !149
  store ptr %i.g, ptr %i.m, align 8, !tbaa !121
  %i.p = load ptr, ptr %.031, align 8, !tbaa !119
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !121
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !119
  store ptr %i.r, ptr %.031, align 8, !tbaa !119
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %.031, ptr %i.s, align 8, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1065

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !88
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #36
  br label %_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !88
  store ptr %.0.i, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISJ_SaISJ_EERKNSD_14ExecuteOptionsEE3$_0E9_M_invokeERKSt9_Any_dataS9_"(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(269) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.277", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !1066
  %i.a = tail call noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv(), !noalias !1069 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !1069
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1069
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE), !noalias !1069, !inline_history !1074 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94, !noalias !1069
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1069
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.277") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(269) %2), !noalias !1066, !inline_history !1075
  invoke void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS8_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10shared_ptrIN8facebook3jsi7RuntimeEEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E.exit.i unwind label %bb.b

_ZNSt10shared_ptrIN8facebook3jsi7RuntimeEEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !1076, !noalias !1066 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %"_ZSt10__invoke_rISt10shared_ptrIN8facebook3jsi7RuntimeEERZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EERKNS7_14ExecuteOptionsEE3$_0JRKN6hermes2vm13RuntimeConfigEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESW_E4typeEOSX_DpOSY_.exit", label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i.i: ; preds = %_ZNSt10shared_ptrIN8facebook3jsi7RuntimeEEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35, !inline_history !1078
  br label %"_ZSt10__invoke_rISt10shared_ptrIN8facebook3jsi7RuntimeEERZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EERKNS7_14ExecuteOptionsEE3$_0JRKN6hermes2vm13RuntimeConfigEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESW_E4typeEOSX_DpOSY_.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !1076, !noalias !1066 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i4.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #35, !inline_history !1078
  br label %_ZNSt10unique_ptrIN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i4.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !1066
  resume { ptr, i32 } %i.l

"_ZSt10__invoke_rISt10shared_ptrIN8facebook3jsi7RuntimeEERZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISD_SaISD_EERKNS7_14ExecuteOptionsEE3$_0JRKN6hermes2vm13RuntimeConfigEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESW_E4typeEOSX_DpOSY_.exit": ; preds = %_ZNSt10shared_ptrIN8facebook3jsi7RuntimeEEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E.exit.i, %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !1066
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEZNS1_6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISJ_SaISJ_EERKNSD_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes7tracing16TraceInterpreter15execAndGetStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISA_SaISA_EERKNS4_14ExecuteOptionsEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS8_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1076   ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !184
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i

_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i: ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.b unwind label %bb.o       ; 10 uses

bb.b:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i
  store ptr null, ptr %1, align 8, !tbaa !1076
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !189
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1079
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !184 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !189
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35, !inline_history !1031
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35, !inline_history !1031
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !125

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !184
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !187
  store i32 0, ptr %i.f, align 4, !tbaa !189
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !1083
  br label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1036 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN8facebook6hermes13HermesRuntimeEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(54) @_ZTSSt14default_deleteIN8facebook6hermes13HermesRuntimeEE) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE16_M_insert_uniqueISA_EES2_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !78 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.d = tail call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(20) %i.c, i64 noundef 20) #35
  %i.e = icmp slt i32 %i.d, 0                     ; 2 uses
  %.in.v.i = select i1 %i.e, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1084

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.e, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
end_hunk_5
