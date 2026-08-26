Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cvc5?download=true
inline.NumInlined: 22389
inline.NumDeleted: 4404
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK4cvc56Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i: ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i.i.i.i47.i.i
  %i.lt = load i64, ptr %i.f, align 8, !tbaa !12, !noalias !3475 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !17, !alias.scope !3475
  %i.lv = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3475
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lt
  store i8 0, ptr %i.lw, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23, !noalias !3475
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !3343 ; 3 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !3342 ; 3 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i8 0, i64 24, i1 false), !alias.scope !3475
  %.not.i.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.ma, %i.mb
  br i1 %.not.i.i.i.i.i.i.i.i49.i.i, label %.noexc12.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i
  %i.mf = icmp ugt i64 %i.me, 9223372036854775776
  br i1 %i.mf, label %.noexc.i.i.i.i.i.i59.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i, !prof !2024

.noexc.i.i.i.i.i.i59.i.i:                         ; preds = %bb.bd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i60.i.i unwind label %bb.bk

.noexc.i.i.i.i60.i.i:                             ; preds = %.noexc.i.i.i.i.i.i59.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i: ; preds = %bb.bd
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge unwind label %bb.bk

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i
  %.pre126 = load ptr, ptr %i.ly, align 8, !tbaa !3345
  %.pre127 = load ptr, ptr %i.lz, align 8, !tbaa !3345
  br label %.noexc12.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i
  %i.mh = phi ptr [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i ], [ %.pre127, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge ]
  %i.mi = phi ptr [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i ], [ %.pre126, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge ]
  %i.mj = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i48.i.i ], [ %i.mg, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i..noexc12.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.mj, ptr %i.lx, align 8, !tbaa !3342, !alias.scope !3475
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !3343, !alias.scope !3475
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.me
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !3344, !alias.scope !3475
  %i.mn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.mi, ptr %i.mh, ptr noundef %i.mj)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %.noexc12.i.i.i.i.i.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.mp = load ptr, ptr %i.lx, align 8, !tbaa !3342, !alias.scope !3475 ; 3 uses
  %.not.i.i.i.i.i.i.i56.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i.i56.i.i, label %.body.i.i.i.i51.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mq = load ptr, ptr %i.mm, align 8, !tbaa !3344, !alias.scope !3475
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mt) #38
  br label %.body.i.i.i.i51.i.i

bb.bg:                                            ; preds = %.noexc12.i.i.i.i.i.i
  store ptr %i.mn, ptr %i.mk, align 8, !tbaa !3343, !alias.scope !3475
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !3343 ; 3 uses
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !3342 ; 3 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 24, i1 false), !alias.scope !3475
  %.not.i.i.i.i13.i.i.i.i.i.i = icmp eq ptr %i.mx, %i.my
  br i1 %.not.i.i.i.i13.i.i.i.i.i.i, label %.noexc19.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nc = icmp ugt i64 %i.nb, 9223372036854775776
  br i1 %i.nc, label %.noexc.i.i17.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i, !prof !2024

.noexc.i.i17.i.i.i.i.i.i:                         ; preds = %bb.bh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc18.i.i.i.i.i.i unwind label %bb.bl

.noexc18.i.i.i.i.i.i:                             ; preds = %.noexc.i.i17.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i: ; preds = %bb.bh
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nb) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i
  %.pre128 = load ptr, ptr %i.mv, align 8, !tbaa !3345
  %.pre129 = load ptr, ptr %i.mw, align 8, !tbaa !3345
  br label %.noexc19.i.i.i.i.i.i

.noexc19.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge, %bb.bg
  %i.ne = phi ptr [ %i.mx, %bb.bg ], [ %.pre129, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge ]
  %i.nf = phi ptr [ %i.my, %bb.bg ], [ %.pre128, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge ]
  %i.ng = phi ptr [ null, %bb.bg ], [ %i.nd, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i..noexc19.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.ng, ptr %i.mu, align 8, !tbaa !3342, !alias.scope !3475
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !3343, !alias.scope !3475
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nb
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !3344, !alias.scope !3475
  %i.nk = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.nf, ptr %i.ne, ptr noundef %i.ng)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESP_S14_.exit.i.i" unwind label %bb.bi

bb.bi:                                            ; preds = %.noexc19.i.i.i.i.i.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.nm = load ptr, ptr %i.mu, align 8, !tbaa !3342, !alias.scope !3475 ; 3 uses
  %.not.i.i.i15.i.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i15.i.i.i.i.i.i, label %.body20.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !3344, !alias.scope !3475
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nq) #38
  br label %.body20.i.i.i.i.i.i

bb.bk:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i50.i.i, %.noexc.i.i.i.i.i.i59.i.i
  %i.nr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body.i.i.i.i51.i.i

bb.bl:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i.i.i, %.noexc.i.i17.i.i.i.i.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body20.i.i.i.i.i.i

.body20.i.i.i.i.i.i:                              ; preds = %bb.bl, %bb.bj, %bb.bi
  %eh.lpad-body21.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ns, %bb.bl ], [ %i.nl, %bb.bj ], [ %i.nl, %bb.bi ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.lx) #23
  br label %.body.i.i.i.i51.i.i

.body.i.i.i.i51.i.i:                              ; preds = %.body20.i.i.i.i.i.i, %bb.bk, %bb.bf, %bb.be
  %.pn.i.i.i.i52.i.i = phi { ptr, i32 } [ %eh.lpad-body21.i.i.i.i.i.i, %.body20.i.i.i.i.i.i ], [ %i.nr, %bb.bk ], [ %i.mo, %bb.bf ], [ %i.mo, %bb.be ] ; 2 uses
  %i.nt = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3475 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ll
  br i1 %i.nu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53.i.i: ; preds = %.body.i.i.i.i51.i.i
  %i.nv = load i64, ptr %i.ll, align 8, !tbaa !16, !alias.scope !3475
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #38
  br label %.body

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESP_S14_.exit.i.i": ; preds = %.noexc19.i.i.i.i.i.i
  %i.nx = icmp ult i32 %i.lk, 3
  %switch.offset.i.i.i.i.i57.i.i = sub i32 2, %i.lk
  %.0.i.i.i.i.i58.i.i = select i1 %i.nx, i32 %switch.offset.i.i.i.i.i57.i.i, i32 3 ; 2 uses
  store ptr %i.nk, ptr %i.nh, align 8, !tbaa !3343, !alias.scope !3475
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !3431, !range !2300, !noundef !2301
  store i8 %i.oa, ptr %i.ny, align 8, !tbaa !3347, !alias.scope !3475
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.oc = icmp eq i32 %.0.i.i.i.i.i58.i.i, 1
  %i.od = zext i1 %i.oc to i8
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !3432, !alias.scope !3475
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.of = icmp eq i32 %.0.i.i.i.i.i58.i.i, 0
  %i.og = zext i1 %i.of to i8
  store i8 %i.og, ptr %i.oe, align 2, !tbaa !3433, !alias.scope !3475
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.oi = load i32, ptr %i.ac, align 4, !tbaa !3420 ; 2 uses
  %i.oj = icmp ult i32 %i.oi, 3
  %switch.offset.i23.i.i.i.i.i.i = sub i32 2, %i.oi
  %.0.i24.i.i.i.i.i.i = select i1 %i.oj, i32 %switch.offset.i23.i.i.i.i.i.i, i32 3
  store i32 %.0.i24.i.i.i.i.i.i, ptr %i.oh, align 4, !tbaa !3358, !alias.scope !3475
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.om, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ol, i64 16, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %12, i64 16, i1 false)
  %13 = load <2 x i64>, ptr %i.x, align 8, !tbaa !12, !noalias !3475
  store <2 x i64> %13, ptr %i.ok, align 8, !alias.scope !3475
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 3, ptr %i.on, align 8, !tbaa !3362, !alias.scope !3475
  br label %"_ZSt5visitIN4cvc510overloadedIJZNKS0_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS2_13getOptionInfoESA_E3$_1ZNKS2_13getOptionInfoESA_E3$_2ZNKS2_13getOptionInfoESA_E3$_3ZNKS2_13getOptionInfoESA_E3$_4ZNKS2_13getOptionInfoESA_E3$_5ZNKS2_13getOptionInfoESA_E3$_6EEEJRSt7variantIJNS0_8internal7options10OptionInfo8VoidInfoENSM_9ValueInfoIbEENSO_IS8_EENSM_10NumberInfoIlEENSR_ImEENSR_IdEENSM_8ModeInfoEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit"

bb.bm:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.oo = load i32, ptr %i.ac, align 4, !tbaa !3420, !noalias !3488 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.op, ptr %0, align 8, !tbaa !8, !alias.scope !3489
  %i.oq = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.or = load i64, ptr %i.o, align 8, !tbaa !17  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23, !noalias !3489
  store i64 %i.or, ptr %i.e, align 8, !tbaa !12, !noalias !3489
  %i.os = icmp ugt i64 %i.or, 15
  br i1 %i.os, label %.noexc.i.i.i.i.i90.i.i, label %._crit_edge.i.i.i.i.i.i62.i.i

.noexc.i.i.i.i.i90.i.i:                           ; preds = %bb.bm
  %i.ot = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc64 unwind label %bb.dr  ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i.i.i.i90.i.i
  store ptr %i.ot, ptr %0, align 8, !tbaa !14, !alias.scope !3489
  %i.ou = load i64, ptr %i.e, align 8, !tbaa !12, !noalias !3489
  store i64 %i.ou, ptr %i.op, align 8, !tbaa !16, !alias.scope !3489
  br label %._crit_edge.i.i.i.i.i.i62.i.i

._crit_edge.i.i.i.i.i.i62.i.i:                    ; preds = %.noexc64, %bb.bm
  %i.ov = phi ptr [ %i.ot, %.noexc64 ], [ %i.op, %bb.bm ] ; 2 uses
  switch i64 %i.or, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i.i.i62.i.i
  %i.ow = load i8, ptr %i.oq, align 1, !tbaa !16
  store i8 %i.ow, ptr %i.ov, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i.i62.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ov, ptr align 1 %i.oq, i64 %i.or, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i: ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i.i.i.i62.i.i
  %i.ox = load i64, ptr %i.e, align 8, !tbaa !12, !noalias !3489 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !17, !alias.scope !3489
  %i.oz = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3489
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ox
  store i8 0, ptr %i.pa, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !3489
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !3343 ; 3 uses
  %i.pf = load ptr, ptr %i.pc, align 8, !tbaa !3342 ; 3 uses
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, i8 0, i64 24, i1 false), !alias.scope !3489
  %.not.i.i.i.i.i.i.i.i64.i.i = icmp eq ptr %i.pe, %i.pf
  br i1 %.not.i.i.i.i.i.i.i.i64.i.i, label %.noexc12.i.i.i.i71.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i
  %i.pj = icmp ugt i64 %i.pi, 9223372036854775776
  br i1 %i.pj, label %.noexc.i.i.i.i.i.i88.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i, !prof !2024

.noexc.i.i.i.i.i.i88.i.i:                         ; preds = %bb.bp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i89.i.i unwind label %bb.bw

.noexc.i.i.i.i89.i.i:                             ; preds = %.noexc.i.i.i.i.i.i88.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i: ; preds = %bb.bp
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pi) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge unwind label %bb.bw

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i
  %.pre122 = load ptr, ptr %i.pc, align 8, !tbaa !3345
  %.pre123 = load ptr, ptr %i.pd, align 8, !tbaa !3345
  br label %.noexc12.i.i.i.i71.i.i

.noexc12.i.i.i.i71.i.i:                           ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i
  %i.pl = phi ptr [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i ], [ %.pre123, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge ]
  %i.pm = phi ptr [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i ], [ %.pre122, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge ]
  %i.pn = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i63.i.i ], [ %i.pk, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i..noexc12.i.i.i.i71.i.i_crit_edge ] ; 4 uses
  store ptr %i.pn, ptr %i.pb, align 8, !tbaa !3342, !alias.scope !3489
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.pn, ptr %i.po, align 8, !tbaa !3343, !alias.scope !3489
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pi
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !3344, !alias.scope !3489
  %i.pr = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.pm, ptr %i.pl, ptr noundef %i.pn)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %.noexc12.i.i.i.i71.i.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.pt = load ptr, ptr %i.pb, align 8, !tbaa !3342, !alias.scope !3489 ; 3 uses
  %.not.i.i.i.i.i.i.i72.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i.i.i.i72.i.i, label %.body.i.i.i.i66.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pu = load ptr, ptr %i.pq, align 8, !tbaa !3344, !alias.scope !3489
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.pt to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.px) #38
  br label %.body.i.i.i.i66.i.i

bb.bs:                                            ; preds = %.noexc12.i.i.i.i71.i.i
  store ptr %i.pr, ptr %i.po, align 8, !tbaa !3343, !alias.scope !3489
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !3343 ; 3 uses
  %i.qc = load ptr, ptr %i.pz, align 8, !tbaa !3342 ; 3 uses
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false), !alias.scope !3489
  %.not.i.i.i.i13.i.i.i.i73.i.i = icmp eq ptr %i.qb, %i.qc
  br i1 %.not.i.i.i.i13.i.i.i.i73.i.i, label %.noexc19.i.i.i.i77.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qg = icmp ugt i64 %i.qf, 9223372036854775776
  br i1 %i.qg, label %.noexc.i.i17.i.i.i.i86.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i, !prof !2024

.noexc.i.i17.i.i.i.i86.i.i:                       ; preds = %bb.bt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc18.i.i.i.i87.i.i unwind label %bb.bx

.noexc18.i.i.i.i87.i.i:                           ; preds = %.noexc.i.i17.i.i.i.i86.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i: ; preds = %bb.bt
  %i.qh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qf) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge unwind label %bb.bx

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i
  %.pre124 = load ptr, ptr %i.pz, align 8, !tbaa !3345
  %.pre125 = load ptr, ptr %i.qa, align 8, !tbaa !3345
  br label %.noexc19.i.i.i.i77.i.i

.noexc19.i.i.i.i77.i.i:                           ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge, %bb.bs
  %i.qi = phi ptr [ %i.qb, %bb.bs ], [ %.pre125, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge ]
  %i.qj = phi ptr [ %i.qc, %bb.bs ], [ %.pre124, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge ]
  %i.qk = phi ptr [ null, %bb.bs ], [ %i.qh, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i..noexc19.i.i.i.i77.i.i_crit_edge ] ; 4 uses
  store ptr %i.qk, ptr %i.py, align 8, !tbaa !3342, !alias.scope !3489
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !3343, !alias.scope !3489
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qf
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.qm, ptr %i.qn, align 8, !tbaa !3344, !alias.scope !3489
  %i.qo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.qj, ptr %i.qi, ptr noundef %i.qk)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESP_S14_.exit.i.i" unwind label %bb.bu

bb.bu:                                            ; preds = %.noexc19.i.i.i.i77.i.i
  %i.qp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.qq = load ptr, ptr %i.py, align 8, !tbaa !3342, !alias.scope !3489 ; 3 uses
  %.not.i.i.i15.i.i.i.i78.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i15.i.i.i.i78.i.i, label %.body20.i.i.i.i75.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qr = load ptr, ptr %i.qn, align 8, !tbaa !3344, !alias.scope !3489
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qq to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qu) #38
  br label %.body20.i.i.i.i75.i.i

bb.bw:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i65.i.i, %.noexc.i.i.i.i.i.i88.i.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body.i.i.i.i66.i.i

bb.bx:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i74.i.i, %.noexc.i.i17.i.i.i.i86.i.i
  %i.qw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body20.i.i.i.i75.i.i

.body20.i.i.i.i75.i.i:                            ; preds = %bb.bx, %bb.bv, %bb.bu
  %eh.lpad-body21.i.i.i.i76.i.i = phi { ptr, i32 } [ %i.qw, %bb.bx ], [ %i.qp, %bb.bv ], [ %i.qp, %bb.bu ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.pb) #23
  br label %.body.i.i.i.i66.i.i

.body.i.i.i.i66.i.i:                              ; preds = %.body20.i.i.i.i75.i.i, %bb.bw, %bb.br, %bb.bq
  %.pn.i.i.i.i67.i.i = phi { ptr, i32 } [ %eh.lpad-body21.i.i.i.i76.i.i, %.body20.i.i.i.i75.i.i ], [ %i.qv, %bb.bw ], [ %i.ps, %bb.br ], [ %i.ps, %bb.bq ] ; 2 uses
  %i.qx = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3489 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.op
  br i1 %i.qy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68.i.i: ; preds = %.body.i.i.i.i66.i.i
  %i.qz = load i64, ptr %i.op, align 8, !tbaa !16, !alias.scope !3489
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #38
  br label %.body

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESP_S14_.exit.i.i": ; preds = %.noexc19.i.i.i.i77.i.i
  %i.rb = icmp ult i32 %i.oo, 3
  %switch.offset.i.i.i.i.i79.i.i = sub i32 2, %i.oo
  %.0.i.i.i.i.i80.i.i = select i1 %i.rb, i32 %switch.offset.i.i.i.i.i79.i.i, i32 3 ; 2 uses
  store ptr %i.qo, ptr %i.ql, align 8, !tbaa !3343, !alias.scope !3489
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.re = load i8, ptr %i.rd, align 8, !tbaa !3431, !range !2300, !noundef !2301
  store i8 %i.re, ptr %i.rc, align 8, !tbaa !3347, !alias.scope !3489
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.rg = icmp eq i32 %.0.i.i.i.i.i80.i.i, 1
  %i.rh = zext i1 %i.rg to i8
  store i8 %i.rh, ptr %i.rf, align 1, !tbaa !3432, !alias.scope !3489
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.rj = icmp eq i32 %.0.i.i.i.i.i80.i.i, 0
  %i.rk = zext i1 %i.rj to i8
  store i8 %i.rk, ptr %i.ri, align 2, !tbaa !3433, !alias.scope !3489
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.rm = load i32, ptr %i.ac, align 4, !tbaa !3420 ; 2 uses
  %i.rn = icmp ult i32 %i.rm, 3
  %switch.offset.i23.i.i.i.i81.i.i = sub i32 2, %i.rm
  %.0.i24.i.i.i.i82.i.i = select i1 %i.rn, i32 %switch.offset.i23.i.i.i.i81.i.i, i32 3
  store i32 %.0.i24.i.i.i.i82.i.i, ptr %i.rl, align 4, !tbaa !3358, !alias.scope !3489
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rp = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.rp, i64 16, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %.sroa.5.0..sroa_idx.i.i.i.i84.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i84.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %14, i64 16, i1 false)
  %15 = load <2 x i64>, ptr %i.x, align 8, !tbaa !12, !noalias !3489
  store <2 x i64> %15, ptr %i.ro, align 8, !alias.scope !3489
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 4, ptr %i.rr, align 8, !tbaa !3362, !alias.scope !3489
  br label %"_ZSt5visitIN4cvc510overloadedIJZNKS0_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS2_13getOptionInfoESA_E3$_1ZNKS2_13getOptionInfoESA_E3$_2ZNKS2_13getOptionInfoESA_E3$_3ZNKS2_13getOptionInfoESA_E3$_4ZNKS2_13getOptionInfoESA_E3$_5ZNKS2_13getOptionInfoESA_E3$_6EEEJRSt7variantIJNS0_8internal7options10OptionInfo8VoidInfoENSM_9ValueInfoIbEENSO_IS8_EENSM_10NumberInfoIlEENSR_ImEENSR_IdEENSM_8ModeInfoEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit"

bb.by:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  call void @llvm.experimental.noalias.scope.decl(metadata !3499)
  %i.rs = load i32, ptr %i.ac, align 4, !tbaa !3420, !noalias !3502 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.rt, ptr %0, align 8, !tbaa !8, !alias.scope !3503
  %i.ru = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.rv = load i64, ptr %i.o, align 8, !tbaa !17  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23, !noalias !3503
  store i64 %i.rv, ptr %i.d, align 8, !tbaa !12, !noalias !3503
  %i.rw = icmp ugt i64 %i.rv, 15
  br i1 %i.rw, label %.noexc.i.i.i.i.i119.i.i, label %._crit_edge.i.i.i.i.i.i91.i.i

.noexc.i.i.i.i.i119.i.i:                          ; preds = %bb.by
  %i.rx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc65 unwind label %bb.dr  ; 2 uses

.noexc65:                                         ; preds = %.noexc.i.i.i.i.i119.i.i
  store ptr %i.rx, ptr %0, align 8, !tbaa !14, !alias.scope !3503
  %i.ry = load i64, ptr %i.d, align 8, !tbaa !12, !noalias !3503
  store i64 %i.ry, ptr %i.rt, align 8, !tbaa !16, !alias.scope !3503
  br label %._crit_edge.i.i.i.i.i.i91.i.i

._crit_edge.i.i.i.i.i.i91.i.i:                    ; preds = %.noexc65, %bb.by
  %i.rz = phi ptr [ %i.rx, %.noexc65 ], [ %i.rt, %bb.by ] ; 2 uses
  switch i64 %i.rv, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i.i.i91.i.i
  %i.sa = load i8, ptr %i.ru, align 1, !tbaa !16
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i.i91.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.ru, i64 %i.rv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i: ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i.i.i.i.i91.i.i
  %i.sb = load i64, ptr %i.d, align 8, !tbaa !12, !noalias !3503 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !17, !alias.scope !3503
  %i.sd = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3503
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store i8 0, ptr %i.se, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !3503
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !3343 ; 3 uses
  %i.sj = load ptr, ptr %i.sg, align 8, !tbaa !3342 ; 3 uses
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sf, i8 0, i64 24, i1 false), !alias.scope !3503
  %.not.i.i.i.i.i.i.i.i93.i.i = icmp eq ptr %i.si, %i.sj
  br i1 %.not.i.i.i.i.i.i.i.i93.i.i, label %.noexc12.i.i.i.i100.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i
  %i.sn = icmp ugt i64 %i.sm, 9223372036854775776
  br i1 %i.sn, label %.noexc.i.i.i.i.i.i117.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i, !prof !2024

.noexc.i.i.i.i.i.i117.i.i:                        ; preds = %bb.cb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i118.i.i unwind label %bb.ci

.noexc.i.i.i.i118.i.i:                            ; preds = %.noexc.i.i.i.i.i.i117.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i: ; preds = %bb.cb
  %i.so = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge unwind label %bb.ci

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i
  %.pre118 = load ptr, ptr %i.sg, align 8, !tbaa !3345
  %.pre119 = load ptr, ptr %i.sh, align 8, !tbaa !3345
  br label %.noexc12.i.i.i.i100.i.i

.noexc12.i.i.i.i100.i.i:                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i
  %i.sp = phi ptr [ %i.si, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i ], [ %.pre119, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge ]
  %i.sq = phi ptr [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i ], [ %.pre118, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge ]
  %i.sr = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i92.i.i ], [ %i.so, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i..noexc12.i.i.i.i100.i.i_crit_edge ] ; 4 uses
  store ptr %i.sr, ptr %i.sf, align 8, !tbaa !3342, !alias.scope !3503
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !3343, !alias.scope !3503
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sm
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.st, ptr %i.su, align 8, !tbaa !3344, !alias.scope !3503
  %i.sv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.sq, ptr %i.sp, ptr noundef %i.sr)
          to label %bb.ce unwind label %bb.cc

bb.cc:                                            ; preds = %.noexc12.i.i.i.i100.i.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.sx = load ptr, ptr %i.sf, align 8, !tbaa !3342, !alias.scope !3503 ; 3 uses
  %.not.i.i.i.i.i.i.i101.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i.i.i.i.i101.i.i, label %.body.i.i.i.i95.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sy = load ptr, ptr %i.su, align 8, !tbaa !3344, !alias.scope !3503
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #38
  br label %.body.i.i.i.i95.i.i

bb.ce:                                            ; preds = %.noexc12.i.i.i.i100.i.i
  store ptr %i.sv, ptr %i.ss, align 8, !tbaa !3343, !alias.scope !3503
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !3343 ; 3 uses
  %i.tg = load ptr, ptr %i.td, align 8, !tbaa !3342 ; 3 uses
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = sub i64 %i.th, %i.ti                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tc, i8 0, i64 24, i1 false), !alias.scope !3503
  %.not.i.i.i.i13.i.i.i.i102.i.i = icmp eq ptr %i.tf, %i.tg
  br i1 %.not.i.i.i.i13.i.i.i.i102.i.i, label %.noexc19.i.i.i.i106.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tk = icmp ugt i64 %i.tj, 9223372036854775776
  br i1 %i.tk, label %.noexc.i.i17.i.i.i.i115.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i, !prof !2024

.noexc.i.i17.i.i.i.i115.i.i:                      ; preds = %bb.cf
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc18.i.i.i.i116.i.i unwind label %bb.cj

.noexc18.i.i.i.i116.i.i:                          ; preds = %.noexc.i.i17.i.i.i.i115.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i: ; preds = %bb.cf
  %i.tl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge unwind label %bb.cj

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i
  %.pre120 = load ptr, ptr %i.td, align 8, !tbaa !3345
  %.pre121 = load ptr, ptr %i.te, align 8, !tbaa !3345
  br label %.noexc19.i.i.i.i106.i.i

.noexc19.i.i.i.i106.i.i:                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge, %bb.ce
  %i.tm = phi ptr [ %i.tf, %bb.ce ], [ %.pre121, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge ]
  %i.tn = phi ptr [ %i.tg, %bb.ce ], [ %.pre120, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge ]
  %i.to = phi ptr [ null, %bb.ce ], [ %i.tl, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i..noexc19.i.i.i.i106.i.i_crit_edge ] ; 4 uses
  store ptr %i.to, ptr %i.tc, align 8, !tbaa !3342, !alias.scope !3503
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.to, ptr %i.tp, align 8, !tbaa !3343, !alias.scope !3503
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tj
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !3344, !alias.scope !3503
  %i.ts = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.tn, ptr %i.tm, ptr noundef %i.to)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeESP_S14_.exit.i.i" unwind label %bb.cg

bb.cg:                                            ; preds = %.noexc19.i.i.i.i106.i.i
  %i.tt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.tu = load ptr, ptr %i.tc, align 8, !tbaa !3342, !alias.scope !3503 ; 3 uses
  %.not.i.i.i15.i.i.i.i107.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i15.i.i.i.i107.i.i, label %.body20.i.i.i.i104.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tv = load ptr, ptr %i.tr, align 8, !tbaa !3344, !alias.scope !3503
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tu to i64
  %i.ty = sub i64 %i.tw, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.ty) #38
  br label %.body20.i.i.i.i104.i.i

bb.ci:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i94.i.i, %.noexc.i.i.i.i.i.i117.i.i
  %i.tz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body.i.i.i.i95.i.i

bb.cj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i14.i.i.i.i103.i.i, %.noexc.i.i17.i.i.i.i115.i.i
  %i.ua = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body20.i.i.i.i104.i.i

.body20.i.i.i.i104.i.i:                           ; preds = %bb.cj, %bb.ch, %bb.cg
  %eh.lpad-body21.i.i.i.i105.i.i = phi { ptr, i32 } [ %i.ua, %bb.cj ], [ %i.tt, %bb.ch ], [ %i.tt, %bb.cg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.sf) #23
  br label %.body.i.i.i.i95.i.i

.body.i.i.i.i95.i.i:                              ; preds = %.body20.i.i.i.i104.i.i, %bb.ci, %bb.cd, %bb.cc
  %.pn.i.i.i.i96.i.i = phi { ptr, i32 } [ %eh.lpad-body21.i.i.i.i105.i.i, %.body20.i.i.i.i104.i.i ], [ %i.tz, %bb.ci ], [ %i.sw, %bb.cd ], [ %i.sw, %bb.cc ] ; 2 uses
  %i.ub = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3503 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.rt
  br i1 %i.uc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i97.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i97.i.i: ; preds = %.body.i.i.i.i95.i.i
  %i.ud = load i64, ptr %i.rt, align 8, !tbaa !16, !alias.scope !3503
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #38
  br label %.body

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeESP_S14_.exit.i.i": ; preds = %.noexc19.i.i.i.i106.i.i
  %i.uf = icmp ult i32 %i.rs, 3
  %switch.offset.i.i.i.i.i108.i.i = sub i32 2, %i.rs
  %.0.i.i.i.i.i109.i.i = select i1 %i.uf, i32 %switch.offset.i.i.i.i.i108.i.i, i32 3 ; 2 uses
  store ptr %i.ts, ptr %i.tp, align 8, !tbaa !3343, !alias.scope !3503
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uh = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ui = load i8, ptr %i.uh, align 8, !tbaa !3431, !range !2300, !noundef !2301
  store i8 %i.ui, ptr %i.ug, align 8, !tbaa !3347, !alias.scope !3503
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.uk = icmp eq i32 %.0.i.i.i.i.i109.i.i, 1
  %i.ul = zext i1 %i.uk to i8
  store i8 %i.ul, ptr %i.uj, align 1, !tbaa !3432, !alias.scope !3503
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.un = icmp eq i32 %.0.i.i.i.i.i109.i.i, 0
  %i.uo = zext i1 %i.un to i8
  store i8 %i.uo, ptr %i.um, align 2, !tbaa !3433, !alias.scope !3503
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.uq = load i32, ptr %i.ac, align 4, !tbaa !3420 ; 2 uses
  %i.ur = icmp ult i32 %i.uq, 3
  %switch.offset.i23.i.i.i.i110.i.i = sub i32 2, %i.uq
  %.0.i24.i.i.i.i111.i.i = select i1 %i.ur, i32 %switch.offset.i23.i.i.i.i110.i.i, i32 3
  store i32 %.0.i24.i.i.i.i111.i.i, ptr %i.up, align 4, !tbaa !3358, !alias.scope !3503
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ut = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ut, i64 16, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %.sroa.5.0..sroa_idx.i.i.i.i113.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i113.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %16, i64 16, i1 false)
  %17 = load <2 x double>, ptr %i.x, align 8, !tbaa !2812, !noalias !3503
  store <2 x double> %17, ptr %i.us, align 8, !alias.scope !3503
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 5, ptr %i.uv, align 8, !tbaa !3362, !alias.scope !3503
  br label %"_ZSt5visitIN4cvc510overloadedIJZNKS0_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS2_13getOptionInfoESA_E3$_1ZNKS2_13getOptionInfoESA_E3$_2ZNKS2_13getOptionInfoESA_E3$_3ZNKS2_13getOptionInfoESA_E3$_4ZNKS2_13getOptionInfoESA_E3$_5ZNKS2_13getOptionInfoESA_E3$_6EEEJRSt7variantIJNS0_8internal7options10OptionInfo8VoidInfoENSM_9ValueInfoIbEENSO_IS8_EENSM_10NumberInfoIlEENSR_ImEENSR_IdEENSM_8ModeInfoEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit"

bb.ck:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  %i.uw = load i32, ptr %i.ac, align 4, !tbaa !3420, !noalias !3516 ; 2 uses
  %i.ux = icmp ult i32 %i.uw, 3
  %switch.offset.i.i.i.i.i120.i.i = sub i32 2, %i.uw
  %.0.i.i.i.i.i121.i.i = select i1 %i.ux, i32 %switch.offset.i.i.i.i.i120.i.i, i32 3 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.uy, ptr %0, align 8, !tbaa !8, !alias.scope !3517
  %i.uz = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.va = load i64, ptr %i.o, align 8, !tbaa !17  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !3517
  store i64 %i.va, ptr %i.c, align 8, !tbaa !12, !noalias !3517
  %i.vb = icmp ugt i64 %i.va, 15
  br i1 %i.vb, label %.noexc.i.i.i.i.i138.i.i, label %._crit_edge.i.i.i.i.i.i122.i.i

.noexc.i.i.i.i.i138.i.i:                          ; preds = %bb.ck
  %i.vc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc66 unwind label %bb.dr  ; 2 uses

.noexc66:                                         ; preds = %.noexc.i.i.i.i.i138.i.i
  store ptr %i.vc, ptr %0, align 8, !tbaa !14, !alias.scope !3517
  %i.vd = load i64, ptr %i.c, align 8, !tbaa !12, !noalias !3517
  store i64 %i.vd, ptr %i.uy, align 8, !tbaa !16, !alias.scope !3517
  br label %._crit_edge.i.i.i.i.i.i122.i.i

._crit_edge.i.i.i.i.i.i122.i.i:                   ; preds = %.noexc66, %bb.ck
  %i.ve = phi ptr [ %i.vc, %.noexc66 ], [ %i.uy, %bb.ck ] ; 2 uses
  switch i64 %i.va, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i.i122.i.i
  %i.vf = load i8, ptr %i.uz, align 1, !tbaa !16
  store i8 %i.vf, ptr %i.ve, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i.i.i122.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ve, ptr align 1 %i.uz, i64 %i.va, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i: ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i.i.i.i122.i.i
  %i.vg = load i64, ptr %i.c, align 8, !tbaa !12, !noalias !3517 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.vg, ptr %i.vh, align 8, !tbaa !17, !alias.scope !3517
  %i.vi = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !3517
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vg
  store i8 0, ptr %i.vj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !3517
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !3343 ; 3 uses
  %i.vo = load ptr, ptr %i.vl, align 8, !tbaa !3342 ; 3 uses
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vo to i64
  %i.vr = sub i64 %i.vp, %i.vq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vk, i8 0, i64 24, i1 false), !alias.scope !3517
  %.not.i.i.i.i.i.i.i.i124.i.i = icmp eq ptr %i.vn, %i.vo
  br i1 %.not.i.i.i.i.i.i.i.i124.i.i, label %.noexc18.i.i.i.i127.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i
  %i.vs = icmp ugt i64 %i.vr, 9223372036854775776
  br i1 %i.vs, label %.noexc.i.i.i.i.i.i136.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i, !prof !2024

.noexc.i.i.i.i.i.i136.i.i:                        ; preds = %bb.cn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i137.i.i unwind label %bb.dh

.noexc.i.i.i.i137.i.i:                            ; preds = %.noexc.i.i.i.i.i.i136.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i: ; preds = %bb.cn
  %i.vt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vr) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge unwind label %bb.dh

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i
  %.pre = load ptr, ptr %i.vl, align 8, !tbaa !3345
  %.pre115 = load ptr, ptr %i.vm, align 8, !tbaa !3345
  br label %.noexc18.i.i.i.i127.i.i

.noexc18.i.i.i.i127.i.i:                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i
  %i.vu = phi ptr [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i ], [ %.pre115, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge ]
  %i.vv = phi ptr [ %i.vo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge ]
  %i.vw = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i123.i.i ], [ %i.vt, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i125.i.i..noexc18.i.i.i.i127.i.i_crit_edge ] ; 4 uses
  store ptr %i.vw, ptr %i.vk, align 8, !tbaa !3342, !alias.scope !3517
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.vw, ptr %i.vx, align 8, !tbaa !3343, !alias.scope !3517
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vr
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !3344, !alias.scope !3517
  %i.wa = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.vv, ptr %i.vu, ptr noundef %i.vw)
          to label %bb.cq unwind label %bb.co

bb.co:                                            ; preds = %.noexc18.i.i.i.i127.i.i
  %i.wb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.wc = load ptr, ptr %i.vk, align 8, !tbaa !3342, !alias.scope !3517 ; 3 uses
  %.not.i.i.i.i.i.i.i128.i.i = icmp eq ptr %i.wc, null
  br i1 %.not.i.i.i.i.i.i.i128.i.i, label %.body.i.i.i.i126.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wd = load ptr, ptr %i.vz, align 8, !tbaa !3344, !alias.scope !3517
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %i.wc to i64
  %i.wg = sub i64 %i.we, %i.wf
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wg) #38
  br label %.body.i.i.i.i126.i.i

bb.cq:                                            ; preds = %.noexc18.i.i.i.i127.i.i
  store ptr %i.wa, ptr %i.vx, align 8, !tbaa !3343, !alias.scope !3517
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !3343 ; 3 uses
  %i.wl = load ptr, ptr %i.wi, align 8, !tbaa !3342 ; 3 uses
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wh, i8 0, i64 24, i1 false), !alias.scope !3517
  %.not.i.i.i.i19.i.i.i.i.i.i = icmp eq ptr %i.wk, %i.wl
  br i1 %.not.i.i.i.i19.i.i.i.i.i.i, label %.noexc25.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wp = icmp ugt i64 %i.wo, 9223372036854775776
  br i1 %i.wp, label %.noexc.i.i23.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i, !prof !2024

.noexc.i.i23.i.i.i.i.i.i:                         ; preds = %bb.cr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc24.i.i.i.i.i.i unwind label %bb.di

.noexc24.i.i.i.i.i.i:                             ; preds = %.noexc.i.i23.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i: ; preds = %bb.cr
  %i.wq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge unwind label %bb.di

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i
  %.pre116 = load ptr, ptr %i.wi, align 8, !tbaa !3345
  %.pre117 = load ptr, ptr %i.wj, align 8, !tbaa !3345
  br label %.noexc25.i.i.i.i.i.i

.noexc25.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge, %bb.cq
  %i.wr = phi ptr [ %i.wk, %bb.cq ], [ %.pre117, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge ]
  %i.ws = phi ptr [ %i.wl, %bb.cq ], [ %.pre116, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge ]
  %i.wt = phi ptr [ null, %bb.cq ], [ %i.wq, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i20.i.i.i.i.i.i..noexc25.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.wt, ptr %i.wh, align 8, !tbaa !3342, !alias.scope !3517
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !3343, !alias.scope !3517
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wo
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.wv, ptr %i.ww, align 8, !tbaa !3344, !alias.scope !3517
  %i.wx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ws, ptr %i.wr, ptr noundef %i.wt)
          to label %bb.cu unwind label %bb.cs

bb.cs:                                            ; preds = %.noexc25.i.i.i.i.i.i
  %i.wy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.wz = load ptr, ptr %i.wh, align 8, !tbaa !3342, !alias.scope !3517 ; 3 uses
  %.not.i.i.i21.i.i.i.i.i.i = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i21.i.i.i.i.i.i, label %.body26.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xa = load ptr, ptr %i.ww, align 8, !tbaa !3344, !alias.scope !3517
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wz to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xd) #38
  br label %.body26.i.i.i.i.i.i

bb.cu:                                            ; preds = %.noexc25.i.i.i.i.i.i
  store ptr %i.wx, ptr %i.wu, align 8, !tbaa !3343, !alias.scope !3517
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xf = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.xg = load i8, ptr %i.xf, align 8, !tbaa !3431, !range !2300, !noundef !2301
  store i8 %i.xg, ptr %i.xe, align 8, !tbaa !3347, !alias.scope !3517
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.xi = icmp eq i32 %.0.i.i.i.i.i121.i.i, 1
  %i.xj = zext i1 %i.xi to i8
  store i8 %i.xj, ptr %i.xh, align 1, !tbaa !3432, !alias.scope !3517
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.xl = icmp eq i32 %.0.i.i.i.i.i121.i.i, 0
  %i.xm = zext i1 %i.xl to i8
  store i8 %i.xm, ptr %i.xk, align 2, !tbaa !3433, !alias.scope !3517
end_hunk_0
