Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity?download=true
inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi8Sparsity3ldlERSt6vectorIxSaIxEEb:bb.a
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ay) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.5, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.5, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit141

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
  %i.az = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !306
  call void @_ZNK6casadi16SparsityInternal3amdEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %i.az)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = load <2 x ptr>, ptr %14, align 16, !tbaa !46
  store <2 x ptr> %i.bd, ptr %2, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !37
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !37
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit

_ZNSt6vectorIxSaIxEEaSEOS1_.exit:                 ; preds = %bb.s
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bi) #30
  %.pr = load ptr, ptr %14, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit
  %i.bj = load ptr, ptr %i.be, align 16, !tbaa !37
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
  %i.bq = load ptr, ptr %15, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIxSaIxEED2Ev.exit76, label %bb.w

bb.w:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
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
  %i.ca = load ptr, ptr %15, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIxSaIxEED2Ev.exit79, label %bb.aa

bb.aa:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit77
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !37
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
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !39 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %17, i64 noundef %i.cj)
  %i.ck = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !37
  %i.cn = load <2 x ptr>, ptr %17, align 16, !tbaa !46
  store <2 x ptr> %i.cn, ptr %2, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !37
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !37
  %.not.i.i.i.i.i80 = icmp eq ptr %i.ck, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIxSaIxEED2Ev.exit83, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit81

_ZNSt6vectorIxSaIxEEaSEOS1_.exit81:               ; preds = %bb.ab
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cs) #30
  %.pr171 = load ptr, ptr %17, align 16, !tbaa !36 ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %.pr171, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIxSaIxEED2Ev.exit83, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit81
  %i.ct = load ptr, ptr %i.co, align 16, !tbaa !37
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
  %i.cz = mul nuw nsw i64 %i.cj, 24
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #32 ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cx ; 3 uses
  store i64 0, ptr %i.da, align 8, !tbaa !39
  %21 = add nsw i64 %i.cx, -1                     ; 2 uses
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc85
  %23 = getelementptr i8, ptr %i.da, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %21, 3
  call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !39
  br label %24

24:                                               ; preds = %.noexc85, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %25 = shl nuw nsw i64 %i.cj, 3
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #32
          to label %.noexc93 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ; 5 uses

.noexc93:                                         ; preds = %24
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.cj ; 2 uses
  store i64 0, ptr %26, align 8, !tbaa !39
  %i.dd = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94:             ; preds = %.noexc93
  %i.df = getelementptr i8, ptr %26, i64 8
  %.idx.i.i.i.i.i.i.i89 = shl nuw nsw i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %.idx.i.i.i.i.i.i.i89, i1 false), !tbaa !39
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread:      ; preds = %.noexc93, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94
  %.sroa.0151.0227 = phi ptr [ %i.da, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.da, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.13157.0223 = phi ptr [ %i.db, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.db, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.13.0180 = phi ptr [ %i.dc, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %i.dc, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0144.0177 = phi ptr [ %26, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94 ], [ %26, %.noexc93 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dg = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #32
          to label %.noexc102 unwind label %bb.ar ; 6 uses

.noexc102:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread
  store ptr %i.di, ptr %18, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !37
  store i64 0, ptr %i.di, align 8, !tbaa !39
  %i.dl = getelementptr i8, ptr %i.di, i64 8      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.ad, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97: ; preds = %.noexc102
  %.idx.i.i.i.i.i.i.i98 = shl nuw nsw i64 %i.cj, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %.idx.i.i.i.i.i.i.i98, i1 false), !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i.i98
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97, %.noexc102
  %i.dn = phi ptr [ %i.dm, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i97 ], [ %i.dl, %.noexc102 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !40
  %i.dp = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.ds = icmp eq ptr %i.di, %i.dn
  %spec.select.i105 = select i1 %i.ds, ptr null, ptr %i.di
  invoke void @_ZN6casadi16SparsityInternal10ldl_colindEPKxPxS3_S3_(ptr noundef nonnull %i.dr, ptr noundef %.sroa.0144.0177, ptr noundef %spec.select.i105, ptr noundef %.sroa.0151.0227)
          to label %bb.af unwind label %bb.as

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !46 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !39 ; 5 uses
  %i.dw = icmp ugt i64 %i.dv, 1152921504606846975
  br i1 %i.dw, label %bb.ag, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
          to label %.noexc113 unwind label %bb.at

.noexc113:                                        ; preds = %bb.ag
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107: ; preds = %bb.af
  %.not.i.i.i.i108 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i108, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112, label %bb.ah

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.dx = shl nuw nsw i64 %i.dv, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #32
          to label %.noexc114 unwind label %bb.at ; 6 uses

.noexc114:                                        ; preds = %bb.ah
  store ptr %i.dy, ptr %19, align 8, !tbaa !36
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !37
  store i64 0, ptr %i.dy, align 8, !tbaa !39
  %i.eb = getelementptr i8, ptr %i.dy, i64 8      ; 3 uses
  %i.ec = add nsw i64 %i.dv, -1                   ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ai, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109: ; preds = %.noexc114
  %.idx.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.ec, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.eb, i8 0, i64 %.idx.i.i.i.i.i.i.i110, i1 false), !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i.i.i.i110
  br label %bb.ai

bb.ai:                                            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109, %.noexc114, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112
  %i.ef = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112 ], [ %i.dy, %.noexc114 ], [ %i.dy, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109 ] ; 2 uses
  %i.eg = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i112 ], [ %i.eb, %.noexc114 ], [ %i.ee, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !40
  %i.ei = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46
  %i.el = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dt
  %spec.select.i119 = select i1 %i.em, ptr null, ptr %i.el
  %i.en = icmp eq ptr %i.ef, %i.eg
  %spec.select.i120 = select i1 %i.en, ptr null, ptr %i.ef
  invoke void @_ZN6casadi16SparsityInternal7ldl_rowEPKxS2_PxS3_S3_(ptr noundef nonnull %i.ek, ptr noundef %.sroa.0144.0177, ptr noundef %spec.select.i119, ptr noundef %spec.select.i120, ptr noundef %.sroa.0151.0227)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %i.cj, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.eo = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc122 unwind label %bb.aw

.noexc122:                                        ; preds = %bb.al
  invoke void @_ZNK6casadi16SparsityInternal1TEv(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.eo)
          to label %_ZNK6casadi8Sparsity1TEv.exit unwind label %bb.aw

_ZNK6casadi8Sparsity1TEv.exit:                    ; preds = %.noexc122
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124 unwind label %bb.am

bb.am:                                            ; preds = %_ZNK6casadi8Sparsity1TEv.exit
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124: ; preds = %_ZNK6casadi8Sparsity1TEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.er = load ptr, ptr %19, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIxSaIxEED2Ev.exit126, label %bb.an

bb.an:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !37
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit126

_ZNSt6vectorIxSaIxEED2Ev.exit126:                 ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit124, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ex = load ptr, ptr %18, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIxSaIxEED2Ev.exit128, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit126
  %i.ey = load ptr, ptr %i.dk, align 8, !tbaa !37
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit128

_ZNSt6vectorIxSaIxEED2Ev.exit128:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit126, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.not.i.i.i129 = icmp eq ptr %.sroa.0144.0177, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIxSaIxEED2Ev.exit130, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit128
  %i.fc = ptrtoint ptr %.sroa.13.0180 to i64
  %i.fd = ptrtoint ptr %.sroa.0144.0177 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0177, i64 noundef %i.fe) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit130

_ZNSt6vectorIxSaIxEED2Ev.exit130:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit128, %bb.ap
  %.not.i.i.i131 = icmp eq ptr %.sroa.0151.0227, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIxSaIxEED2Ev.exit132, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit130
  %27 = ptrtoint ptr %.sroa.13157.0223 to i64
  %i.ff = ptrtoint ptr %.sroa.0151.0227 to i64
  %i.fg = sub i64 %27, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0227, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit132

_ZNSt6vectorIxSaIxEED2Ev.exit139.thread:          ; preds = %24
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit94.thread
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit137

bb.as:                                            ; preds = %bb.ad, %bb.ae
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.at:                                            ; preds = %bb.ah, %bb.ag
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit135

bb.au:                                            ; preds = %bb.ai, %bb.aj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133

bb.aw:                                            ; preds = %.noexc122, %bb.al
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133: ; preds = %bb.aw, %bb.av
  %.pn45 = phi { ptr, i32 } [ %i.fm, %bb.av ], [ %i.fn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133, %bb.au
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit133 ], [ %i.fl, %bb.au ] ; 2 uses
  %i.fq = load ptr, ptr %19, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIxSaIxEED2Ev.exit135, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !37
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit135

_ZNSt6vectorIxSaIxEED2Ev.exit135:                 ; preds = %bb.az, %bb.ay, %bb.at
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.at ], [ %.pn45.pn, %bb.ay ], [ %.pn45.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit135, %bb.as
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit135 ], [ %i.fj, %bb.as ] ; 2 uses
  %i.fw = load ptr, ptr %18, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIxSaIxEED2Ev.exit137, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load ptr, ptr %i.dk, align 8, !tbaa !37
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit137

_ZNSt6vectorIxSaIxEED2Ev.exit137:                 ; preds = %bb.bb, %bb.ba, %bb.ar
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ar ], [ %.pn45.pn.pn.pn, %bb.ba ], [ %.pn45.pn.pn.pn, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.not.i.i.i138 = icmp eq ptr %.sroa.0144.0177, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIxSaIxEED2Ev.exit139, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit137
  %i.gb = ptrtoint ptr %.sroa.13.0180 to i64
  %i.gc = ptrtoint ptr %.sroa.0144.0177 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0177, i64 noundef %i.gd) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit139

_ZNSt6vectorIxSaIxEED2Ev.exit139:                 ; preds = %bb.bc, %_ZNSt6vectorIxSaIxEED2Ev.exit137
  %.not.i.i.i140 = icmp eq ptr %.sroa.0151.0227, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIxSaIxEED2Ev.exit141, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit139
  %.pn45.pn.pn.pn.pn.pn236 = phi { ptr, i32 } [ %i.fh, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.pn45.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
  %.sroa.13157.0222235 = phi ptr [ %i.db, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.sroa.13157.0223, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
  %.sroa.0151.0226234 = phi ptr [ %i.da, %_ZNSt6vectorIxSaIxEED2Ev.exit139.thread ], [ %.sroa.0151.0227, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ] ; 2 uses
  %28 = ptrtoint ptr %.sroa.13157.0222235 to i64
  %i.ge = ptrtoint ptr %.sroa.0151.0226234 to i64
  %i.gf = sub i64 %28, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0226234, i64 noundef %i.gf) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit141

_ZNSt6vectorIxSaIxEED2Ev.exit132:                 ; preds = %bb.aq, %_ZNSt6vectorIxSaIxEED2Ev.exit130, %_ZNSt6vectorIxSaIxEED2Ev.exit76
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit141:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit139, %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit79
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt6vectorIxSaIxEED2Ev.exit79 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn.pn.pn.pn.pn.pn.pn161, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn45.pn.pn.pn.pn.pn236, %bb.bd ], [ %.pn45.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit139 ]
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 8 uses
  %i.h = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 9 uses
  br i1 %5, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.m = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0), !noalias !309
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
  %i.o = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = load <2 x ptr>, ptr %6, align 16, !tbaa !46
  store <2 x ptr> %i.r, ptr %4, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !37
  store ptr %i.t, ptr %i.p, align 8, !tbaa !37
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit

_ZNSt6vectorIxSaIxEEaSEOS1_.exit:                 ; preds = %_ZNK6casadi8Sparsity3amdEv.exit
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #30
  %.pr = load ptr, ptr %6, align 16, !tbaa !36    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit
  %i.x = load ptr, ptr %i.s, align 16, !tbaa !37
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
  %i.ag = load ptr, ptr %11, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIxSaIxEED2Ev.exit65, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi8Sparsity3subERKSt6vectorIxSaIxEES5_RS3_b.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
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
  %i.ao = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.k

bb.k:                                             ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit66
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37
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

bb.m:                                             ; preds = %.noexc, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_0
