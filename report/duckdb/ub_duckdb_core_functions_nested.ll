inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateINS_8string_tEE14InitializeBinsINS_22HistogramStringFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a

bb.q:                                             ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ai, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.q, %.noexc64
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #29
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, %bb.r
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !1023
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !1021
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.sroa.6.0.copyload
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !1038
  br label %.lr.ph

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit: ; preds = %bb.p
  %.not114 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1013  ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1016 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1016 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = xor i64 %i.bj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bb, ptr %i.bd, i64 noundef %i.bk)
          to label %.noexc65 unwind label %bb.w

.noexc65:                                         ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.bb, ptr %i.bd)
          to label %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge unwind label %bb.w

.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc65
  %.pre = load ptr, ptr %0, align 8, !tbaa !1013  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1021
  %.pre116 = load ptr, ptr %.pre, align 8, !tbaa !1023
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge, %._crit_edge
  %i.bl = phi ptr [ %.pre116, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bm = phi ptr [ %.pre115, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bn = phi ptr [ %.pre, %.noexc65._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %i.bq, 16
  br i1 %i.br, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %.lr.ph112

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.u:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.v:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.w:                                             ; preds = %bb.ap, %.noexc65, %bb.s, %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i, %bb.o, %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit
  %.049110 = phi i64 [ 0, %.lr.ph ], [ %i.ev, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bx = load ptr, ptr %8, align 8, !tbaa !122
  %i.by = add i64 %.049110, %.sroa.016.0.copyload ; 4 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !123 ; 2 uses
  %.not.i67 = icmp eq ptr %i.bz, null
  br i1 %.not.i67, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit68

_ZNK6duckdb15SelectionVector9get_indexEm.exit68:  ; preds = %bb.y, %bb.x
  %i.cd = phi i64 [ %i.cc, %bb.y ], [ %i.by, %bb.x ] ; 2 uses
  %i.ce = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 2 uses
  %.not.i69 = icmp eq ptr %i.ce, null
  br i1 %.not.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68
  %i.cf = lshr i64 %i.cd, 6
  %i.cg = and i64 %i.cd, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !47
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not109 = icmp eq i64 %i.ck, 0
  br i1 %.not109, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.cc unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.045 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.co = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.co) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.045, label %bb.ad, label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.045, label %bb.ad, label %bb.bz

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn51106 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.cl) #25
  br label %bb.bz

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit68, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71
  %i.cr = load ptr, ptr %0, align 8, !tbaa !1013  ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread
  %i.cs = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ct = load ptr, ptr %8, align 8, !tbaa !122
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !123 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc76
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.by
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ae, %.noexc76
  %i.cy = phi i64 [ %i.cx, %bb.ae ], [ %i.by, %.noexc76 ]
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cy ; 6 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !14 ; 2 uses
  %i.db = icmp ult i32 %i.da, 13
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.cz, align 8 ; 2 uses
  %.sroa.0.sroa.0.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.sroa.0.0.copyload.i, 32
  %.sroa.0.sroa.0.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.0.sroa.0.sroa.3.0.extract.shift.i to i32
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.pre.i = and i64 %.sroa.0.sroa.0.0.copyload.i, 4294967295
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.dc = load ptr, ptr %i.az, align 8, !tbaa !126, !nonnull !130, !align !131 ; 2 uses
  %i.dd = zext i32 %i.da to i64                   ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1039 ; 4 uses
  %.not.i12.i = icmp eq ptr %i.df, null
  br i1 %.not.i12.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1041 ; 2 uses
  %i.di = add i64 %i.dh, %i.dd                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !1053
  %i.dl = icmp ugt i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.ai, label %_ZN6duckdb8string_tC2EPKcj.exit.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  invoke void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, i64 noundef %i.dd)
          to label %.noexc77 unwind label %.loopexit

.noexc77:                                         ; preds = %bb.ai
  %.pre.i.i = load ptr, ptr %i.de, align 8, !tbaa !1039 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1041 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.dd
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

_ZN6duckdb8string_tC2EPKcj.exit.i:                ; preds = %.noexc77, %bb.ah
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %.noexc77 ], [ %i.di, %bb.ah ]
  %i.dm = phi i64 [ %.pre4.i.i, %.noexc77 ], [ %i.dh, %bb.ah ]
  %i.dn = phi ptr [ %.pre.i.i, %.noexc77 ], [ %i.df, %bb.ah ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1054
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.dq, align 8, !tbaa !1041
  %i.ds = load i32, ptr %i.cz, align 8, !tbaa !14
  %i.dt = icmp ult i32 %i.ds, 13
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = select i1 %i.dt, ptr %i.du, ptr %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dx, i64 %i.dd, i1 false)
  %i.dy = load i32, ptr %i.dr, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i, %bb.af
  %.sroa.0.sroa.0.sroa.0.0.insert.ext.pre-phi.i = phi i64 [ %i.dd, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.pre.i, %bb.af ]
  %.sroa.0.sroa.0.sroa.3.0.i = phi i32 [ %i.dy, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.sroa.0.sroa.0.sroa.3.0.extract.trunc.i, %bb.af ]
  %.sroa.0.sroa.4.0.i = phi ptr [ %i.dr, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.sroa.0.sroa.4.0.copyload.i, %bb.af ] ; 2 uses
  %.sroa.0.sroa.0.sroa.3.0.insert.ext.i = zext i32 %.sroa.0.sroa.0.sroa.3.0.i to i64
  %.sroa.0.sroa.0.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.0.sroa.3.0.insert.ext.i, 32
  %.sroa.0.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.0.sroa.3.0.insert.shift.i, %.sroa.0.sroa.0.sroa.0.0.insert.ext.pre-phi.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1021 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1038
  %.not.i.i78 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i.i78, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ea, align 8
  %.sroa.6.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx95, align 8, !tbaa !14
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !1021
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !1021
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit

bb.al:                                            ; preds = %bb.aj
  %i.ef = load ptr, ptr %i.cr, align 8, !tbaa !1023 ; 4 uses
  %i.eg = ptrtoint ptr %i.ea to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 5 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775792
  br i1 %i.ej, label %bb.am, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc79 unwind label %.loopexit.split-lp

.noexc79:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ek = ashr exact i64 %i.ei, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 576460752303423487)
  %i.eo = select i1 %i.em, i64 576460752303423487, i64 %i.en ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ep = shl nuw nsw i64 %i.eo, 4
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #26
          to label %.noexc80 unwind label %.loopexit ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 3 uses
  store i64 %.sroa.0.sroa.0.sroa.0.0.insert.insert.i, ptr %i.er, align 8
  %.sroa.6.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx97, align 8, !tbaa !14
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.an, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %i.ef, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.an, %.noexc80
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #29
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.eq, ptr %i.cr, align 8, !tbaa !1023
  store ptr %i.et, ptr %i.dz, align 8, !tbaa !1021
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.eu, ptr %i.eb, align 8, !tbaa !1038
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ak
  %i.ev = add nuw i64 %.049110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ev, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !1055

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit71.thread, %bb.ai, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

._crit_edge113:                                   ; preds = %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !1019 ; 3 uses
  %i.ex = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !575 ; 2 uses
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !571 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 3                 ; 3 uses
  %.not108 = icmp ult i64 %.sroa.6.0.copyload, %i.fe
  br i1 %.not108, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge113
  %i.ff = sub nuw nsw i64 %i.ex, %i.fe
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef %i.ff)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.w

bb.aq:                                            ; preds = %._crit_edge113
  %i.fg = icmp ult i64 %i.ex, %i.fe
  br i1 %i.fg, label %bb.ar, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ex ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ez, %i.fh
  br i1 %.not.i.i81, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ar
  store ptr %i.fh, ptr %i.ey, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit
  %i.fi = phi ptr [ %i.gg, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bl, %.lr.ph112.preheader ] ; 5 uses
  %i.fj = phi ptr [ %i.gh, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bn, %.lr.ph112.preheader ] ; 3 uses
  %i.fk = phi i64 [ %i.gl, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bo, %.lr.ph112.preheader ]
  %i.fl = phi ptr [ %i.gk, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bm, %.lr.ph112.preheader ]
  %i.fm = phi ptr [ %i.gj, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bs, %.lr.ph112.preheader ] ; 2 uses
  %.0111 = phi i64 [ %i.gi, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ 1, %.lr.ph112.preheader ] ; 5 uses
  %i.fn = add i64 %.0111, -1                      ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.0111 ; 5 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.fo, align 1 ; 3 uses
  %.0.copyload.i12.i.i.i = load i64, ptr %i.fp, align 1
  %.not.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i, %.0.copyload.i12.i.i.i
  %i.fq = trunc i64 %.0.copyload.i.i.i.i to i32
  br i1 %.not.i.i.i, label %bb.as, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

bb.as:                                            ; preds = %.lr.ph112
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.0.copyload.i13.i.i.i = load i64, ptr %i.fr, align 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.0.copyload.i14.i.i.i = load i64, ptr %i.fs, align 1 ; 2 uses
  %i.ft = icmp eq i64 %.0.copyload.i13.i.i.i, %.0.copyload.i14.i.i.i
  %i.fu = inttoptr i64 %.0.copyload.i13.i.i.i to ptr
  %i.fv = inttoptr i64 %.0.copyload.i14.i.i.i to ptr
  br i1 %i.ft, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = icmp ult i32 %i.fq, 13
  br i1 %i.fw, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fx = and i64 %.0.copyload.i.i.i.i, 4294967295
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fu, ptr %i.fv, i64 %i.fx)
  %i.fy = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fy, label %bb.av, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

bb.av:                                            ; preds = %bb.as, %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 4 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.fz, %i.fl
  br i1 %.not.i.i.i.i83, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.fk, %i.ga                    ; 3 uses
  %i.gc = icmp sgt i64 %i.gb, 16
  br i1 %i.gc, label %bb.ax, label %bb.ay, !prof !402

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fz, i64 %i.gb, i1 false)
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.gd = icmp eq i64 %i.gb, 16
  br i1 %i.gd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !1056
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av
  %i.ge = load ptr, ptr %i.fm, align 8, !tbaa !1021
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -16
  store ptr %i.gf, ptr %i.fm, align 8, !tbaa !1021
  %.pre117 = load ptr, ptr %0, align 8, !tbaa !1013 ; 2 uses
  %.pre118 = load ptr, ptr %.pre117, align 8, !tbaa !1023
  br label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit: ; preds = %bb.at, %bb.au, %.lr.ph112, %bb.ba
  %i.gg = phi ptr [ %.pre118, %bb.ba ], [ %i.fi, %.lr.ph112 ], [ %i.fi, %bb.au ], [ %i.fi, %bb.at ] ; 2 uses
  %i.gh = phi ptr [ %.pre117, %bb.ba ], [ %i.fj, %.lr.ph112 ], [ %i.fj, %bb.au ], [ %i.fj, %bb.at ] ; 2 uses
  %.1 = phi i64 [ %i.fn, %bb.ba ], [ %.0111, %.lr.ph112 ], [ %.0111, %bb.au ], [ %.0111, %bb.at ]
  %i.gi = add i64 %.1, 1                          ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1021 ; 2 uses
  %i.gl = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gm = ptrtoint ptr %i.gg to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 4
  %i.gp = icmp ult i64 %i.gi, %i.go
  br i1 %i.gp, label %.lr.ph112, label %._crit_edge113, !llvm.loop !1057

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateINS_8string_tEE14InitializeBinsINS_23HistogramGenericFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.t, %.noexc67
  %.not.i8.i = icmp eq ptr %i.aj, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #29
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, %bb.u
  store ptr %i.au, ptr %i.af, align 8, !tbaa !1023
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !1021
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.sroa.6.0.copyload
  store ptr %i.ax, ptr %i.ah, align 8, !tbaa !1038
  br label %.lr.ph

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit: ; preds = %bb.s
  %.not117 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit.thread, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE7reserveEm.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !1013  ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1016 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1016 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bc, ptr %i.be, i64 noundef %i.bl)
          to label %.noexc68 unwind label %bb.aa

.noexc68:                                         ; preds = %bb.v
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.bc, ptr %i.be)
          to label %.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge unwind label %bb.aa

.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc68
  %.pre = load ptr, ptr %0, align 8, !tbaa !1013  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre118 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1021
  %.pre119 = load ptr, ptr %.pre, align 8, !tbaa !1023
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge, %._crit_edge
  %i.bm = phi ptr [ %.pre119, %.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bn = phi ptr [ %.pre118, %.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.bo = phi ptr [ %.pre, %.noexc68._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %i.br, 16
  br i1 %i.bs, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br label %.lr.ph115

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.x:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.y:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.z:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.at, %.noexc68, %bb.v, %_ZNSt12_Vector_baseIN6duckdb8string_tESaIS1_EE11_M_allocateEm.exit.i, %bb.r, %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ab:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit
  %.050113 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bz = load ptr, ptr %9, align 8, !tbaa !122
  %i.ca = add i64 %.050113, %.sroa.016.0.copyload ; 4 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !123 ; 2 uses
  %.not.i70 = icmp eq ptr %i.cb, null
  br i1 %.not.i70, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit71, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit71

_ZNK6duckdb15SelectionVector9get_indexEm.exit71:  ; preds = %bb.ac, %bb.ab
  %i.cf = phi i64 [ %i.ce, %bb.ac ], [ %i.ca, %bb.ab ] ; 2 uses
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !160 ; 2 uses
  %.not.i72 = icmp eq ptr %i.cg, null
  br i1 %.not.i72, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit71
  %i.ch = lshr i64 %i.cf, 6
  %i.ci = and i64 %i.cf, 63
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !47
  %i.cl = shl nuw i64 1, %i.ci
  %i.cm = and i64 %i.ck, %i.cl
  %.not112 = icmp eq i64 %i.cm, 0
  br i1 %.not112, label %bb.ad, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74.thread

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.cg unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread: ; preds = %bb.ad
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.046 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cq = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.cq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %.046, label %bb.ah, label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %.046, label %bb.ah, label %bb.cd

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn52109 = phi { ptr, i32 } [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ]
  call void @__cxa_free_exception(ptr %i.cn) #25
  br label %bb.cd

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit71, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74
  %i.ct = load ptr, ptr %0, align 8, !tbaa !1013  ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %.noexc79 unwind label %.loopexit

.noexc79:                                         ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74.thread
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !117
  %i.cv = load ptr, ptr %9, align 8, !tbaa !122
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !123 ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i78, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc79
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ca
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ai, %.noexc79
  %i.da = phi i64 [ %i.cz, %bb.ai ], [ %i.ca, %.noexc79 ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.da ; 6 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !14 ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 13
  br i1 %i.dd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.db, align 8 ; 2 uses
  %.sroa.0.sroa.0.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.sroa.0.0.copyload.i, 32
  %.sroa.0.sroa.0.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.0.sroa.0.sroa.3.0.extract.shift.i to i32
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.pre.i = and i64 %.sroa.0.sroa.0.0.copyload.i, 4294967295
  br label %bb.an

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !126, !nonnull !130, !align !131 ; 2 uses
  %i.df = zext i32 %i.dc to i64                   ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1039 ; 4 uses
  %.not.i12.i = icmp eq ptr %i.dh, null
  br i1 %.not.i12.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1041 ; 2 uses
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !1053
  %i.dn = icmp ugt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.am, label %_ZN6duckdb8string_tC2EPKcj.exit.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  invoke void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 noundef %i.df)
          to label %.noexc80 unwind label %.loopexit

.noexc80:                                         ; preds = %bb.am
  %.pre.i.i = load ptr, ptr %i.dg, align 8, !tbaa !1039 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1041 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.df
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

_ZN6duckdb8string_tC2EPKcj.exit.i:                ; preds = %.noexc80, %bb.al
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %.noexc80 ], [ %i.dk, %bb.al ]
  %i.do = phi i64 [ %.pre4.i.i, %.noexc80 ], [ %i.dj, %bb.al ]
  %i.dp = phi ptr [ %.pre.i.i, %.noexc80 ], [ %i.dh, %bb.al ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1054
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.ds, align 8, !tbaa !1041
  %i.du = load i32, ptr %i.db, align 8, !tbaa !14
  %i.dv = icmp ult i32 %i.du, 13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = select i1 %i.dv, ptr %i.dw, ptr %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.dz, i64 %i.df, i1 false)
  %i.ea = load i32, ptr %i.dt, align 1
  br label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i, %bb.aj
  %.sroa.0.sroa.0.sroa.0.0.insert.ext.pre-phi.i = phi i64 [ %i.df, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.pre.i, %bb.aj ]
  %.sroa.0.sroa.0.sroa.3.0.i = phi i32 [ %i.ea, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.sroa.0.sroa.0.sroa.3.0.extract.trunc.i, %bb.aj ]
  %.sroa.0.sroa.4.0.i = phi ptr [ %i.dt, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.sroa.0.sroa.4.0.copyload.i, %bb.aj ] ; 2 uses
  %.sroa.0.sroa.0.sroa.3.0.insert.ext.i = zext i32 %.sroa.0.sroa.0.sroa.3.0.i to i64
  %.sroa.0.sroa.0.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.0.sroa.3.0.insert.ext.i, 32
  %.sroa.0.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.0.sroa.3.0.insert.shift.i, %.sroa.0.sroa.0.sroa.0.0.insert.ext.pre-phi.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1021 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1038
  %.not.i.i81 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i81, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 %.sroa.0.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ec, align 8
  %.sroa.6.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx98, align 8, !tbaa !14
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !1021
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !1021
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit

bb.ap:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr %i.ct, align 8, !tbaa !1023 ; 4 uses
  %i.ei = ptrtoint ptr %i.ec to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 5 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775792
  br i1 %i.el, label %bb.aq, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.em = ashr exact i64 %i.ek, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 576460752303423487)
  %i.eq = select i1 %i.eo, i64 576460752303423487, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #26
          to label %.noexc83 unwind label %.loopexit ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 3 uses
  store i64 %.sroa.0.sroa.0.sroa.0.0.insert.insert.i, ptr %i.et, align 8
  %.sroa.6.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx100, align 8, !tbaa !14
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.ar, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ar:                                            ; preds = %.noexc83
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr align 8 %i.eh, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ar, %.noexc83
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eh) #29
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.es, ptr %i.ct, align 8, !tbaa !1023
  store ptr %i.ev, ptr %i.eb, align 8, !tbaa !1021
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.ew, ptr %i.ed, align 8, !tbaa !1038
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ao
  %i.ex = add nuw i64 %.050113, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %.sroa.6.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !1074

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit74.thread, %bb.am, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

._crit_edge116:                                   ; preds = %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !1019 ; 3 uses
  %i.ez = add nuw nsw i64 %.sroa.6.0.copyload, 1  ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !575 ; 2 uses
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !571 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.not111 = icmp ult i64 %.sroa.6.0.copyload, %i.fg
  br i1 %.not111, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge116
  %i.fh = sub nuw nsw i64 %i.ez, %i.fg
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 noundef %i.fh)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.aa

bb.au:                                            ; preds = %._crit_edge116
  %i.fi = icmp ult i64 %i.ez, %i.fg
  br i1 %i.fi, label %bb.av, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.av:                                            ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ez ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.fb, %i.fj
  br i1 %.not.i.i84, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.av
  store ptr %i.fj, ptr %i.fa, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit
  %i.fk = phi ptr [ %i.gi, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bm, %.lr.ph115.preheader ] ; 5 uses
  %i.fl = phi ptr [ %i.gj, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bo, %.lr.ph115.preheader ] ; 3 uses
  %i.fm = phi i64 [ %i.gn, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bp, %.lr.ph115.preheader ]
  %i.fn = phi ptr [ %i.gm, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bn, %.lr.ph115.preheader ]
  %i.fo = phi ptr [ %i.gl, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ %i.bt, %.lr.ph115.preheader ] ; 2 uses
  %.0114 = phi i64 [ %i.gk, %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit ], [ 1, %.lr.ph115.preheader ] ; 5 uses
  %i.fp = add i64 %.0114, -1                      ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.0114 ; 5 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.fq, align 1 ; 3 uses
  %.0.copyload.i12.i.i.i = load i64, ptr %i.fr, align 1
  %.not.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i, %.0.copyload.i12.i.i.i
  %i.fs = trunc i64 %.0.copyload.i.i.i.i to i32
  br i1 %.not.i.i.i, label %bb.aw, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

bb.aw:                                            ; preds = %.lr.ph115
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.0.copyload.i13.i.i.i = load i64, ptr %i.ft, align 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.0.copyload.i14.i.i.i = load i64, ptr %i.fu, align 1 ; 2 uses
  %i.fv = icmp eq i64 %.0.copyload.i13.i.i.i, %.0.copyload.i14.i.i.i
  %i.fw = inttoptr i64 %.0.copyload.i13.i.i.i to ptr
  %i.fx = inttoptr i64 %.0.copyload.i14.i.i.i to ptr
  br i1 %i.fv, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = icmp ult i32 %i.fs, 13
  br i1 %i.fy, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = and i64 %.0.copyload.i.i.i.i, 4294967295
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fw, ptr %i.fx, i64 %i.fz)
  %i.ga = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ga, label %bb.az, label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 4 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.gb, %i.fn
  br i1 %.not.i.i.i.i86, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.fm, %i.gc                    ; 3 uses
  %i.ge = icmp sgt i64 %i.gd, 16
  br i1 %i.ge, label %bb.bb, label %bb.bc, !prof !402

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.gb, i64 %i.gd, i1 false)
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.gf = icmp eq i64 %i.gd, 16
  br i1 %i.gf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !1056
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.gg = load ptr, ptr %i.fo, align 8, !tbaa !1021
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -16
  store ptr %i.gh, ptr %i.fo, align 8, !tbaa !1021
  %.pre120 = load ptr, ptr %0, align 8, !tbaa !1013 ; 2 uses
  %.pre121 = load ptr, ptr %.pre120, align 8, !tbaa !1023
  br label %_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit

_ZN6duckdb6Equals9OperationINS_8string_tEEEbRKT_S5_.exit: ; preds = %bb.ax, %bb.ay, %.lr.ph115, %bb.be
  %i.gi = phi ptr [ %.pre121, %bb.be ], [ %i.fk, %.lr.ph115 ], [ %i.fk, %bb.ay ], [ %i.fk, %bb.ax ] ; 2 uses
  %i.gj = phi ptr [ %.pre120, %bb.be ], [ %i.fl, %.lr.ph115 ], [ %i.fl, %bb.ay ], [ %i.fl, %bb.ax ] ; 2 uses
  %.1 = phi i64 [ %i.fp, %bb.be ], [ %.0114, %.lr.ph115 ], [ %.0114, %bb.ay ], [ %.0114, %bb.ax ]
  %i.gk = add i64 %.1, 1                          ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1021 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.go = ptrtoint ptr %i.gi to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 4
  %i.gr = icmp ult i64 %i.gk, %i.gq
  br i1 %i.gr, label %.lr.ph115, label %._crit_edge116, !llvm.loop !1075

end_hunk_1
