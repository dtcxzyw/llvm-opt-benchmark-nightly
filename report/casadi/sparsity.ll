inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi8Sparsity3ldlERSt6vectorIxSaIxEEb:bb.a
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ] ; 4 uses
  %.519 = phi i1 [ true, %bb.k ], [ %.418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ] ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.ao = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !20
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ay) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.519, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.519, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit141

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread
  %.pn.pn.pn.pn.pn.pn.pn161.ph = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn.pn.pn.pn.pn.pn.pn161 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn.pn.pn.pn.pn.pn.pn161.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit141

bb.r:                                             ; preds = %bb.a
  br i1 %3, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.az = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !235
  call void @_ZNK6casadi16SparsityInternal3amdEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %i.az)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !46    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.bd = load <2 x ptr>, ptr %14, align 16, !tbaa !96
  store <2 x ptr> %i.bd, ptr %2, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !49
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit

_ZNSt6vectorIxSaIxEEaSEOS1_.exit:                 ; preds = %bb.s
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bi) #30
  %.pr = load ptr, ptr %14, align 16, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit
  %i.bj = load ptr, ptr %i.be, align 16, !tbaa !49
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %.pr to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bm) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.s, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.bn = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  invoke void @_ZNK6casadi16SparsityInternal3subERKSt6vectorIxSaIxEES5_RS3_b(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15, i1 noundef zeroext false)
          to label %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit unwind label %bb.x

_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit: ; preds = %.noexc
  invoke void @_ZNK6casadi8Sparsity3ldlERSt6vectorIxSaIxEEb(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(24) %15, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.bq = load ptr, ptr %15, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIxSaIxEED2Ev.exit76, label %bb.w

bb.w:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit76

_ZNSt6vectorIxSaIxEED2Ev.exit76:                  ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit132

bb.x:                                             ; preds = %.noexc, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77

bb.y:                                             ; preds = %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77: ; preds = %bb.y, %bb.x
  %.pn53 = phi { ptr, i32 } [ %i.bw, %bb.x ], [ %i.bx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ca = load ptr, ptr %15, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIxSaIxEED2Ev.exit79, label %bb.aa

bb.aa:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit79

_ZNSt6vectorIxSaIxEED2Ev.exit79:                  ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit141

bb.ab:                                            ; preds = %bb.r
  %i.cg = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !50 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %17, i64 noundef %i.cj)
  %i.ck = load ptr, ptr %2, align 8, !tbaa !46    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49
  %i.cn = load <2 x ptr>, ptr %17, align 16, !tbaa !96
  store <2 x ptr> %i.cn, ptr %2, align 8, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !49
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !49
  %.not.i.i.i.i.i80 = icmp eq ptr %i.ck, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIxSaIxEED2Ev.exit83, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit81

_ZNSt6vectorIxSaIxEEaSEOS1_.exit81:               ; preds = %bb.ab
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cs) #30
  %.pr171 = load ptr, ptr %17, align 16, !tbaa !46 ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %.pr171, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIxSaIxEED2Ev.exit83, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit81
  %i.ct = load ptr, ptr %i.co, align 16, !tbaa !49
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %.pr171 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %.pr171, i64 noundef %i.cw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit83

_ZNSt6vectorIxSaIxEED2Ev.exit83:                  ; preds = %bb.ab, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit81, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.cx = mul nsw i64 %i.cj, 3                    ; 3 uses
  %i.cy = icmp ugt i64 %i.cx, 1152921504606846975
  br i1 %i.cy, label %.noexc84, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc84:                                         ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit83
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit83
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread, label %.noexc85

.noexc85:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cz = mul i64 %i.cj, 24
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #32 ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cx ; 3 uses
  store i64 0, ptr %i.da, align 8, !tbaa !50
  %i.dc = add nsw i64 %i.cx, -1                   ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i86, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc85
  %i.de = getelementptr i8, ptr %i.da, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i86

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i86: ; preds = %.noexc85, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.df = shl nuw nsw i64 %i.cj, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #32
          to label %.noexc93 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ; 5 uses

.noexc93:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i86
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cj ; 2 uses
  store i64 0, ptr %i.dg, align 8, !tbaa !50
  %i.di = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94:             ; preds = %.noexc93
  %i.dk = getelementptr i8, ptr %i.dg, i64 8
  %.idx.i.i.i.i.i.i.i89 = shl nuw nsw i64 %i.di, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %.idx.i.i.i.i.i.i.i89, i1 false), !tbaa !50
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread:      ; preds = %.noexc93, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94
  %.sroa.13157.0221229 = phi ptr [ %i.da, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.da, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.0151.0224227 = phi ptr [ %i.db, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.db, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.13.0180 = phi ptr [ %i.dh, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.dh, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0144.0177 = phi ptr [ %i.dg, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.dg, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dl = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #32
          to label %.noexc102 unwind label %bb.ar ; 6 uses

.noexc102:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread
  store ptr %i.dn, ptr %18, align 8, !tbaa !46
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !49
  store i64 0, ptr %i.dn, align 8, !tbaa !50
  %i.dq = getelementptr i8, ptr %i.dn, i64 8      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.ad, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97: ; preds = %.noexc102
  %.idx.i.i.i.i.i.i.i98 = shl nuw nsw i64 %i.cj, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %.idx.i.i.i.i.i.i.i98, i1 false), !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i98
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97, %.noexc102
  %i.ds = phi ptr [ %i.dr, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97 ], [ %i.dq, %.noexc102 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !52
  %i.du = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !96
  %i.dx = icmp eq ptr %i.dn, %i.ds
  %spec.select.i105 = select i1 %i.dx, ptr null, ptr %i.dn
  invoke void @_ZN6casadi16SparsityInternal10ldl_colindEPKxPxS3_S3_(ptr noundef nonnull %i.dw, ptr noundef %.sroa.0144.0177, ptr noundef %spec.select.i105, ptr noundef %.sroa.13157.0221229)
          to label %bb.af unwind label %bb.as

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !96 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !50 ; 5 uses
  %i.eb = icmp ugt i64 %i.ea, 1152921504606846975
  br i1 %i.eb, label %bb.ag, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
          to label %.noexc113 unwind label %bb.at

.noexc113:                                        ; preds = %bb.ag
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107: ; preds = %bb.af
  %.not.i.i.i.i108 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i108, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112, label %bb.ah

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.ec = shl nuw nsw i64 %i.ea, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #32
          to label %.noexc114 unwind label %bb.at ; 6 uses

.noexc114:                                        ; preds = %bb.ah
  store ptr %i.ed, ptr %19, align 8, !tbaa !46
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !49
  store i64 0, ptr %i.ed, align 8, !tbaa !50
  %i.eg = getelementptr i8, ptr %i.ed, i64 8      ; 3 uses
  %i.eh = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ai, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109: ; preds = %.noexc114
  %.idx.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.eh, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.eg, i8 0, i64 %.idx.i.i.i.i.i.i.i110, i1 false), !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i.i.i.i.i.i110
  br label %bb.ai

bb.ai:                                            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109, %.noexc114, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112
  %i.ek = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112 ], [ %i.ed, %.noexc114 ], [ %i.ed, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109 ] ; 2 uses
  %i.el = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112 ], [ %i.eg, %.noexc114 ], [ %i.ej, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.el, ptr %i.em, align 8, !tbaa !52
  %i.en = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !96
  %i.eq = load ptr, ptr %18, align 8, !tbaa !96   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dy
  %spec.select.i119 = select i1 %i.er, ptr null, ptr %i.eq
  %i.es = icmp eq ptr %i.ek, %i.el
  %spec.select.i120 = select i1 %i.es, ptr null, ptr %i.ek
  invoke void @_ZN6casadi16SparsityInternal7ldl_rowEPKxS2_PxS3_S3_(ptr noundef nonnull %i.ep, ptr noundef %.sroa.0144.0177, ptr noundef %spec.select.i119, ptr noundef %spec.select.i120, ptr noundef %.sroa.13157.0221229)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %i.cj, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.et = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc122 unwind label %bb.aw

.noexc122:                                        ; preds = %bb.al
  invoke void @_ZNK6casadi16SparsityInternal1TEv(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.et)
          to label %_ZNK6casadi8Sparsity1TEv.exit unwind label %bb.aw

_ZNK6casadi8Sparsity1TEv.exit:                    ; preds = %.noexc122
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124 unwind label %bb.am

bb.am:                                            ; preds = %_ZNK6casadi8Sparsity1TEv.exit
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124: ; preds = %_ZNK6casadi8Sparsity1TEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.ew = load ptr, ptr %19, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIxSaIxEED2Ev.exit126, label %bb.an

bb.an:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit126

_ZNSt6vectorIxSaIxEED2Ev.exit126:                 ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.fc = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIxSaIxEED2Ev.exit128, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit126
  %i.fd = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit128

_ZNSt6vectorIxSaIxEED2Ev.exit128:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit126, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.not.i.i.i129 = icmp eq ptr %.sroa.0144.0177, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIxSaIxEED2Ev.exit130, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit128
  %i.fh = ptrtoint ptr %.sroa.13.0180 to i64
  %i.fi = ptrtoint ptr %.sroa.0144.0177 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0177, i64 noundef %i.fj) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit130

_ZNSt6vectorIxSaIxEED2Ev.exit130:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit128, %bb.ap
  %.not.i.i.i131 = icmp eq ptr %.sroa.13157.0221229, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIxSaIxEED2Ev.exit132, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit130
  %i.fk = ptrtoint ptr %.sroa.0151.0224227 to i64
  %i.fl = ptrtoint ptr %.sroa.13157.0221229 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.13157.0221229, i64 noundef %i.fm) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit132

_ZNSt6vectorIxSaIxEED2Ev.exit139.thread:          ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i86
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit137

bb.as:                                            ; preds = %bb.ad, %bb.ae
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.at:                                            ; preds = %bb.ah, %bb.ag
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit135

bb.au:                                            ; preds = %bb.ai, %bb.aj
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133

bb.aw:                                            ; preds = %.noexc122, %bb.al
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133: ; preds = %bb.aw, %bb.av
  %.pn45 = phi { ptr, i32 } [ %i.fs, %bb.av ], [ %i.ft, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133, %bb.au
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133 ], [ %i.fr, %bb.au ] ; 2 uses
  %i.fw = load ptr, ptr %19, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIxSaIxEED2Ev.exit135, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !49
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit135

_ZNSt6vectorIxSaIxEED2Ev.exit135:                 ; preds = %bb.az, %bb.ay, %bb.at
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.at ], [ %.pn45.pn, %bb.ay ], [ %.pn45.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit135, %bb.as
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit135 ], [ %i.fp, %bb.as ] ; 2 uses
  %i.gc = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIxSaIxEED2Ev.exit137, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gg) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit137

_ZNSt6vectorIxSaIxEED2Ev.exit137:                 ; preds = %bb.bb, %bb.ba, %bb.ar
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.ar ], [ %.pn45.pn.pn.pn, %bb.ba ], [ %.pn45.pn.pn.pn, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.not.i.i.i138 = icmp eq ptr %.sroa.0144.0177, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIxSaIxEED2Ev.exit139, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit137
  %i.gh = ptrtoint ptr %.sroa.13.0180 to i64
  %i.gi = ptrtoint ptr %.sroa.0144.0177 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0177, i64 noundef %i.gj) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit139

_ZNSt6vectorIxSaIxEED2Ev.exit139:                 ; preds = %bb.bc, %_ZNSt6vectorIxSaIxEED2Ev.exit137
  %.not.i.i.i140 = icmp eq ptr %.sroa.13157.0221229, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIxSaIxEED2Ev.exit141, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit139
  %.pn45.pn.pn.pn.pn.pn237 = phi { ptr, i32 } [ %i.fn, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.pn45.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
  %.sroa.13157.0219236 = phi ptr [ %i.db, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.sroa.0151.0224227, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
  %.sroa.0151.0222235 = phi ptr [ %i.da, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.sroa.13157.0221229, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.13157.0219236 to i64
  %i.gl = ptrtoint ptr %.sroa.0151.0222235 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0222235, i64 noundef %i.gm) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit141

_ZNSt6vectorIxSaIxEED2Ev.exit132:                 ; preds = %bb.aq, %_ZNSt6vectorIxSaIxEED2Ev.exit130, %_ZNSt6vectorIxSaIxEED2Ev.exit76
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit141:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit139, %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit79
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt6vectorIxSaIxEED2Ev.exit79 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn.pn.pn.pn.pn.pn.pn161, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn45.pn.pn.pn.pn.pn237, %bb.bd ], [ %.pn45.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
  resume { ptr, i32 } %.pn53.pn

bb.be:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi8Sparsity3amdEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZNK6casadi16SparsityInternal3amdEv(ptr dead_on_unwind writable sret(%"class.std::vector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret void
}

declare void @_ZN6casadi16SparsityInternal10ldl_colindEPKxPxS3_S3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6casadi16SparsityInternal7ldl_rowEPKxS2_PxS3_S3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi8Sparsity9qr_sparseERS0_S1_RSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.3", align 16    ; 8 uses
  %7 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %8 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %10 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %12 = alloca %"class.std::vector.3", align 16   ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %14 = alloca %"class.std::vector.3", align 8    ; 8 uses
  %15 = alloca %"class.std::vector.3", align 8    ; 8 uses
  %16 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %17 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %i.d = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %i.h = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 9 uses
  br i1 %5, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.m = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0), !noalias !238
  call void @_ZNK6casadi16SparsityInternal1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  invoke void @_ZN6casadi8Sparsity6mtimesERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  invoke void @_ZNK6casadi16SparsityInternal3amdEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %_ZNK6casadi8Sparsity3amdEv.exit unwind label %bb.m

_ZNK6casadi8Sparsity3amdEv.exit:                  ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = load <2 x ptr>, ptr %6, align 16, !tbaa !96
  store <2 x ptr> %i.r, ptr %4, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !49
  store ptr %i.t, ptr %i.p, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit

_ZNSt6vectorIxSaIxEEaSEOS1_.exit:                 ; preds = %_ZNK6casadi8Sparsity3amdEv.exit
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #30
  %.pr = load ptr, ptr %6, align 16, !tbaa !46    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit
  %i.x = load ptr, ptr %i.s, align 16, !tbaa !49
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.pr to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNK6casadi8Sparsity3amdEv.exit, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit, %bb.d
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit61 unwind label %bb.f

bb.f:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit61: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %11, i64 noundef %i.g)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit61
  %i.af = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc62 unwind label %bb.q

.noexc62:                                         ; preds = %bb.g
  invoke void @_ZNK6casadi16SparsityInternal3subERKSt6vectorIxSaIxEES5_RS3_b(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit unwind label %bb.q

_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit: ; preds = %.noexc62
  %i.ag = load ptr, ptr %11, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIxSaIxEED2Ev.exit65, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit65

_ZNSt6vectorIxSaIxEED2Ev.exit65:                  ; preds = %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  invoke void @_ZNK6casadi8Sparsity9qr_sparseERS0_S1_RSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit65
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit66 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit66: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ao = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.k

bb.k:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit66
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit68

_ZNSt6vectorIxSaIxEED2Ev.exit68:                  ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit66, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit154

bb.l:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit69

end_hunk_0
