Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cvc5?download=true
inline.NumInlined: 22389
inline.NumDeleted: 4404
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4cvc56Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i16.i.i
  %i.dn = load i64, ptr %i.j, align 8, !tbaa !70, !noalias !3628 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !74, !alias.scope !3628
  %i.dp = load ptr, ptr %0, align 8, !tbaa !72, !alias.scope !3628
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23, !noalias !3628
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !736 ; 3 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !735 ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false), !alias.scope !3628
  %.not.i.i.i.i.i.i.i.i18.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.i.i.i.i.i.i18.i.i, label %.noexc10.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i
  %i.dz = icmp ugt i64 %i.dy, 9223372036854775776
  br i1 %i.dz, label %.noexc.i.i.i.i.i.i28.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i, !prof !161

.noexc.i.i.i.i.i.i28.i.i:                         ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i29.i.i unwind label %bb.ab

.noexc.i.i.i.i29.i.i:                             ; preds = %.noexc.i.i.i.i.i.i28.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i: ; preds = %bb.u
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge unwind label %bb.ab

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i
  %.pre134 = load ptr, ptr %i.ds, align 8, !tbaa !738
  %.pre135 = load ptr, ptr %i.dt, align 8, !tbaa !738
  br label %.noexc10.i.i.i.i.i.i

.noexc10.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i
  %i.eb = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i ], [ %.pre135, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge ]
  %i.ec = phi ptr [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i ], [ %.pre134, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge ]
  %i.ed = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i17.i.i ], [ %i.ea, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i..noexc10.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.ed, ptr %i.dr, align 8, !tbaa !735, !alias.scope !3628
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !736, !alias.scope !3628
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dy
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !737, !alias.scope !3628
  %i.eh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ec, ptr %i.eb, ptr noundef %i.ed)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %.noexc10.i.i.i.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.ej = load ptr, ptr %i.dr, align 8, !tbaa !735, !alias.scope !3628 ; 3 uses
  %.not.i.i.i.i.i.i.i25.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i.i.i25.i.i, label %.body.i.i.i.i20.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !737, !alias.scope !3628
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #38
  br label %.body.i.i.i.i20.i.i

bb.x:                                             ; preds = %.noexc10.i.i.i.i.i.i
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !736, !alias.scope !3628
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !736 ; 3 uses
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !735 ; 3 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false), !alias.scope !3628
  %.not.i.i.i.i11.i.i.i.i.i.i = icmp eq ptr %i.er, %i.es
  br i1 %.not.i.i.i.i11.i.i.i.i.i.i, label %.noexc17.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = icmp ugt i64 %i.ev, 9223372036854775776
  br i1 %i.ew, label %.noexc.i.i15.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i, !prof !161

.noexc.i.i15.i.i.i.i.i.i:                         ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc16.i.i.i.i.i.i unwind label %bb.ac

.noexc16.i.i.i.i.i.i:                             ; preds = %.noexc.i.i15.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i: ; preds = %bb.y
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge unwind label %bb.ac

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i
  %.pre136 = load ptr, ptr %i.ep, align 8, !tbaa !738
  %.pre137 = load ptr, ptr %i.eq, align 8, !tbaa !738
  br label %.noexc17.i.i.i.i.i.i

.noexc17.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge, %bb.x
  %i.ey = phi ptr [ %i.er, %bb.x ], [ %.pre137, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge ]
  %i.ez = phi ptr [ %i.es, %bb.x ], [ %.pre136, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge ]
  %i.fa = phi ptr [ null, %bb.x ], [ %i.ex, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i..noexc17.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.fa, ptr %i.eo, align 8, !tbaa !735, !alias.scope !3628
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !736, !alias.scope !3628
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ev
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !737, !alias.scope !3628
  %i.fe = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ez, ptr %i.ey, ptr noundef %i.fa)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_S14_.exit.i.i" unwind label %bb.z

bb.z:                                             ; preds = %.noexc17.i.i.i.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.fg = load ptr, ptr %i.eo, align 8, !tbaa !735, !alias.scope !3628 ; 3 uses
  %.not.i.i.i13.i.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i13.i.i.i.i.i.i, label %.body18.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !737, !alias.scope !3628
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #38
  br label %.body18.i.i.i.i.i.i

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i19.i.i, %.noexc.i.i.i.i.i.i28.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body.i.i.i.i20.i.i

bb.ac:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i12.i.i.i.i.i.i, %.noexc.i.i15.i.i.i.i.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument
  br label %.body18.i.i.i.i.i.i

.body18.i.i.i.i.i.i:                              ; preds = %bb.ac, %bb.aa, %bb.z
  %eh.lpad-body19.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fm, %bb.ac ], [ %i.ff, %bb.aa ], [ %i.ff, %bb.z ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #23
  br label %.body.i.i.i.i20.i.i

.body.i.i.i.i20.i.i:                              ; preds = %.body18.i.i.i.i.i.i, %bb.ab, %bb.w, %bb.v
  %.pn.i.i.i.i21.i.i = phi { ptr, i32 } [ %eh.lpad-body19.i.i.i.i.i.i, %.body18.i.i.i.i.i.i ], [ %i.fl, %bb.ab ], [ %i.ei, %bb.w ], [ %i.ei, %bb.v ] ; 2 uses
  %i.fn = load ptr, ptr %0, align 8, !tbaa !72, !alias.scope !3628 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.df
  br i1 %i.fo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22.i.i: ; preds = %.body.i.i.i.i20.i.i
  %i.fp = load i64, ptr %i.df, align 8, !tbaa !73, !alias.scope !3628
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #38
  br label %.body

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4cvc510OptionInfoEEEONS4_10overloadedIJZNKS4_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS8_13getOptionInfoESG_E3$_1ZNKS8_13getOptionInfoESG_E3$_2ZNKS8_13getOptionInfoESG_E3$_3ZNKS8_13getOptionInfoESG_E3$_4ZNKS8_13getOptionInfoESG_E3$_5ZNKS8_13getOptionInfoESG_E3$_6EEERSt7variantIJNS4_8internal7options10OptionInfo8VoidInfoENST_9ValueInfoIbEENSV_ISE_EENST_10NumberInfoIlEENSY_ImEENSY_IdEENST_8ModeInfoEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_S14_.exit.i.i": ; preds = %.noexc17.i.i.i.i.i.i
  %i.fr = icmp ult i32 %i.de, 3
  %switch.offset.i.i.i.i.i26.i.i = sub i32 2, %i.de
  %.0.i.i.i.i.i27.i.i = select i1 %i.fr, i32 %switch.offset.i.i.i.i.i26.i.i, i32 3 ; 2 uses
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !736, !alias.scope !3628
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !3620, !range !262, !noundef !263
  store i8 %i.fu, ptr %i.fs, align 8, !tbaa !748, !alias.scope !3628
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.fw = icmp eq i32 %.0.i.i.i.i.i27.i.i, 1
  %i.fx = zext i1 %i.fw to i8
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !3621, !alias.scope !3628
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.fz = icmp eq i32 %.0.i.i.i.i.i27.i.i, 0
  %i.ga = zext i1 %i.fz to i8
  store i8 %i.ga, ptr %i.fy, align 2, !tbaa !3622, !alias.scope !3628
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gc = load i32, ptr %i.ac, align 4, !tbaa !3617 ; 2 uses
  %i.gd = icmp ult i32 %i.gc, 3
  %switch.offset.i21.i.i.i.i.i.i = sub i32 2, %i.gc
  %.0.i22.i.i.i.i.i.i = select i1 %i.gd, i32 %switch.offset.i21.i.i.i.i.i.i, i32 3
  store i32 %.0.i22.i.i.i.i.i.i, ptr %i.gb, align 4, !tbaa !749, !alias.scope !3628
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gf = load i16, ptr %i.x, align 8, !noalias !3628
  store i16 %i.gf, ptr %i.ge, align 8, !alias.scope !3628
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.gg, align 8, !tbaa !753, !alias.scope !3628
  br label %"_ZSt5visitIN4cvc510overloadedIJZNKS0_6Solver13getOptionInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ZNKS2_13getOptionInfoESA_E3$_1ZNKS2_13getOptionInfoESA_E3$_2ZNKS2_13getOptionInfoESA_E3$_3ZNKS2_13getOptionInfoESA_E3$_4ZNKS2_13getOptionInfoESA_E3$_5ZNKS2_13getOptionInfoESA_E3$_6EEEJRSt7variantIJNS0_8internal7options10OptionInfo8VoidInfoENSM_9ValueInfoIbEENSO_IS8_EENSM_10NumberInfoIlEENSR_ImEENSR_IdEENSM_8ModeInfoEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit"

bb.ad:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  call void @llvm.experimental.noalias.scope.decl(metadata !3630)
  call void @llvm.experimental.noalias.scope.decl(metadata !3631)
  call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  %i.gh = load i32, ptr %i.ac, align 4, !tbaa !3617, !noalias !3633 ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 3
  %switch.offset.i.i.i.i.i31.i.i = sub i32 2, %i.gh
  %.0.i.i.i.i.i32.i.i = select i1 %i.gi, i32 %switch.offset.i.i.i.i.i31.i.i, i32 3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.gj, ptr %0, align 8, !tbaa !68, !alias.scope !3634
  %i.gk = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.gl = load i64, ptr %i.o, align 8, !tbaa !74  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23, !noalias !3634
  store i64 %i.gl, ptr %i.i, align 8, !tbaa !70, !noalias !3634
  %i.gm = icmp ugt i64 %i.gl, 15
  br i1 %i.gm, label %.noexc.i.i.i.i.i46.i.i, label %._crit_edge.i.i.i.i.i.i33.i.i

.noexc.i.i.i.i.i46.i.i:                           ; preds = %bb.ad
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc62 unwind label %bb.dr  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i.i.i.i46.i.i
  store ptr %i.gn, ptr %0, align 8, !tbaa !72, !alias.scope !3634
  %i.go = load i64, ptr %i.i, align 8, !tbaa !70, !noalias !3634
  store i64 %i.go, ptr %i.gj, align 8, !tbaa !73, !alias.scope !3634
  br label %._crit_edge.i.i.i.i.i.i33.i.i

._crit_edge.i.i.i.i.i.i33.i.i:                    ; preds = %.noexc62, %bb.ad
  %i.gp = phi ptr [ %i.gn, %.noexc62 ], [ %i.gj, %bb.ad ] ; 2 uses
  switch i64 %i.gl, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i33.i.i
  %i.gq = load i8, ptr %i.gk, align 1, !tbaa !73
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i33.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 1 %i.gk, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i: ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i.i.i.i33.i.i
  %i.gr = load i64, ptr %i.i, align 8, !tbaa !70, !noalias !3634 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !74, !alias.scope !3634
  %i.gt = load ptr, ptr %0, align 8, !tbaa !72, !alias.scope !3634
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  store i8 0, ptr %i.gu, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23, !noalias !3634
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !736 ; 3 uses
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !735 ; 3 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false), !alias.scope !3634
  %.not.i.i.i.i.i.i.i.i35.i.i = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i.i.i.i.i.i.i.i35.i.i, label %.noexc15.i.i.i.i38.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i
  %i.hd = icmp ugt i64 %i.hc, 9223372036854775776
  br i1 %i.hd, label %.noexc.i.i.i.i.i.i44.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i, !prof !161

.noexc.i.i.i.i.i.i44.i.i:                         ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc.i.i.i.i45.i.i unwind label %bb.aw

.noexc.i.i.i.i45.i.i:                             ; preds = %.noexc.i.i.i.i.i.i44.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i: ; preds = %bb.ag
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge unwind label %bb.aw

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i
  %.pre130 = load ptr, ptr %i.gw, align 8, !tbaa !738
  %.pre131 = load ptr, ptr %i.gx, align 8, !tbaa !738
  br label %.noexc15.i.i.i.i38.i.i

.noexc15.i.i.i.i38.i.i:                           ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i
  %i.hf = phi ptr [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i ], [ %.pre131, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge ]
  %i.hg = phi ptr [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i ], [ %.pre130, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge ]
  %i.hh = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i34.i.i ], [ %i.he, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i36.i.i..noexc15.i.i.i.i38.i.i_crit_edge ] ; 4 uses
  store ptr %i.hh, ptr %i.gv, align 8, !tbaa !735, !alias.scope !3634
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !736, !alias.scope !3634
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hc
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !737, !alias.scope !3634
  %i.hl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.hg, ptr %i.hf, ptr noundef %i.hh)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc15.i.i.i.i38.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !735, !alias.scope !3634 ; 3 uses
  %.not.i.i.i.i.i.i.i39.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i.i39.i.i, label %.body.i.i.i.i37.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !737, !alias.scope !3634
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #38
  br label %.body.i.i.i.i37.i.i

bb.aj:                                            ; preds = %.noexc15.i.i.i.i38.i.i
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !736, !alias.scope !3634
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !736 ; 3 uses
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !735 ; 3 uses
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false), !alias.scope !3634
  %.not.i.i.i.i16.i.i.i.i.i.i = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i.i.i.i16.i.i.i.i.i.i, label %.noexc22.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ia = icmp ugt i64 %i.hz, 9223372036854775776
  br i1 %i.ia, label %.noexc.i.i20.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i, !prof !161

.noexc.i.i20.i.i.i.i.i.i:                         ; preds = %bb.ak
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc21.i.i.i.i.i.i unwind label %bb.ax

.noexc21.i.i.i.i.i.i:                             ; preds = %.noexc.i.i20.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i: ; preds = %bb.ak
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge unwind label %bb.ax

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i
  %.pre132 = load ptr, ptr %i.ht, align 8, !tbaa !738
  %.pre133 = load ptr, ptr %i.hu, align 8, !tbaa !738
  br label %.noexc22.i.i.i.i.i.i

.noexc22.i.i.i.i.i.i:                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge, %bb.aj
  %i.ic = phi ptr [ %i.hv, %bb.aj ], [ %.pre133, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge ]
  %i.id = phi ptr [ %i.hw, %bb.aj ], [ %.pre132, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge ]
  %i.ie = phi ptr [ null, %bb.aj ], [ %i.ib, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i17.i.i.i.i.i.i..noexc22.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.ie, ptr %i.hs, align 8, !tbaa !735, !alias.scope !3634
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !736, !alias.scope !3634
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hz
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !737, !alias.scope !3634
  %i.ii = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.id, ptr %i.ic, ptr noundef %i.ie)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %.noexc22.i.i.i.i.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4cvc58internal15OptionExceptionE
          catch ptr @_ZTIN4cvc58internal25RecoverableModalExceptionE
          catch ptr @_ZTIN4cvc58internal9ExceptionE
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.ik = load ptr, ptr %i.hs, align 8, !tbaa !735, !alias.scope !3634 ; 3 uses
  %.not.i.i.i18.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i18.i.i.i.i.i.i, label %.body23.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !737, !alias.scope !3634
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.io) #38
  br label %.body23.i.i.i.i.i.i

bb.an:                                            ; preds = %.noexc22.i.i.i.i.i.i
  store ptr %i.ii, ptr %i.if, align 8, !tbaa !736, !alias.scope !3634
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !3620, !range !262, !noundef !263
  store i8 %i.ir, ptr %i.ip, align 8, !tbaa !748, !alias.scope !3634
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.it = icmp eq i32 %.0.i.i.i.i.i32.i.i, 1
  %i.iu = zext i1 %i.it to i8
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !3621, !alias.scope !3634
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.iw = icmp eq i32 %.0.i.i.i.i.i32.i.i, 0
  %i.ix = zext i1 %i.iw to i8
  store i8 %i.ix, ptr %i.iv, align 2, !tbaa !3622, !alias.scope !3634
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal11NodeManager10mkTypeNodeENS0_4kind6Kind_tENS0_8TypeNodeE:bb.a
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !160

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !161

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.j

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.c, %bb.b, %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  invoke void @_ZN4cvc58internal11NodeBuilder17constructTypeNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %i.n)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %5, align 8, !tbaa !159    ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = and i64 %i.p, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.q, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.g, !prof !161

bb.g:                                             ; preds = %bb.f
  %i.r = add i64 %i.p, 1152920405095219200
  %i.s = and i64 %i.r, 1152920405095219200        ; 2 uses
  %i.t = and i64 %i.p, -1152920405095219201
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.o, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.h, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !161

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #40
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.f, %bb.g, %bb.h
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.j:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e, %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN4cvc58internal6String10toInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.std::vector.331") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZNK4cvc58internal7Integer20floorDivideRemainderERKS1_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::Integer") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4cvc58internal7OptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408)) unnamed_addr #25

declare void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46), ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #7

declare void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46)) unnamed_addr #25

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc527CVC5ApiUnsupportedExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc516CVC5ApiExceptionE, i64 16), ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4cvc516CVC5ApiExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !73
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #38, !inline_history !837
  br label %_ZN4cvc516CVC5ApiExceptionD2Ev.exit

_ZN4cvc516CVC5ApiExceptionD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !837
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS5_9ValueInfoIbEENS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_10NumberInfoIlEENSG_ImEENSG_IdEENS5_8ModeInfoEEEaSEOSL_EUlOT_T0_E_JRSt7variantIJS6_S8_SF_SH_SI_SJ_SK_EEEEDcOSP_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(89) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1384, align 1           ; 3 uses
  %3 = alloca %class.anon.1384, align 1           ; 3 uses
  %4 = alloca %class.anon.1384, align 1           ; 3 uses
  %5 = alloca %class.anon.1384, align 1           ; 3 uses
  %6 = alloca %class.anon.1384, align 1           ; 3 uses
  %7 = alloca %class.anon.1384, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !753
  switch i8 %i.b, label %bb.an [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.t
    i8 5, label %bb.z
    i8 6, label %bb.af
    i8 -1, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !752    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !753   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !847

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  switch i8 %i.e, label %bb.f [
    i8 6, label %bb.e
    i8 1, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i
    i8 2, label %bb.d
    i8 3, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i
    i8 4, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i
    i8 5, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !73
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !73
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #38
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSJ_EESL_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(89) %i.c)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.g:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !752    ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !753   ; 2 uses
  switch i8 %i.s, label %bb.i [
    i8 1, label %bb.h
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !847

bb.h:                                             ; preds = %bb.g
  %i.t = load i16, ptr %1, align 8
  store i16 %i.t, ptr %i.q, align 8
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  switch i8 %i.s, label %bb.l [
    i8 0, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18
    i8 6, label %bb.k
    i8 2, label %bb.j
    i8 3, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18
    i8 4, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18
    i8 5, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !73
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i20: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !72  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i20
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #38
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18

bb.k:                                             ; preds = %bb.i
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSJ_EESL_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(89) %i.q)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18

bb.l:                                             ; preds = %bb.i
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i20, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i21, %bb.i, %bb.i, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i8 -1, ptr %i.r, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i18, %bb.g
  %i.af = load i16, ptr %1, align 8
  store i16 %i.af, ptr %i.q, align 8
  store i8 1, ptr %i.r, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.m:                                             ; preds = %bb.a
  tail call void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESS_SV_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(89) %1)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.n:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !752   ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !753 ; 2 uses
  switch i8 %i.ai, label %bb.p [
    i8 3, label %bb.o
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !847

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 48, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  switch i8 %i.ai, label %bb.s [
    i8 0, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24
    i8 1, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24
    i8 2, label %bb.q
    i8 6, label %bb.r
    i8 4, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24
    i8 5, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24
  ]

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i25: ; preds = %bb.q
  %i.an = load i64, ptr %i.al, align 8, !tbaa !73
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i26: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i25
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i26
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !73
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #38
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24

bb.r:                                             ; preds = %bb.p
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSJ_EESL_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(89) %i.ag)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24

bb.s:                                             ; preds = %bb.p
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i26, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i27, %bb.p, %bb.p, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  store i8 -1, ptr %i.ah, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i24, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.ag, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 48, i1 false)
  store i8 3, ptr %i.ah, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.t:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !752   ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 88 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !753 ; 2 uses
  switch i8 %i.aw, label %bb.v [
    i8 4, label %bb.u
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm4ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSG_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !847

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 48, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  switch i8 %i.aw, label %bb.y [
    i8 0, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30
    i8 1, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30
    i8 2, label %bb.w
    i8 3, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30
    i8 6, label %bb.x
    i8 5, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30
  ]

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31: ; preds = %bb.w
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !73
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i32: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i32
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #38
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30

bb.x:                                             ; preds = %bb.v
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSJ_EESL_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(89) %i.au)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30

bb.y:                                             ; preds = %bb.v
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i32, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i33, %bb.v, %bb.v, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store i8 -1, ptr %i.av, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant9__emplaceILm4ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSG_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm4ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSG_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i30, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.au, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 48, i1 false)
  store i8 4, ptr %i.av, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.z:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr %0, align 8, !tbaa !752   ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !753 ; 2 uses
  switch i8 %i.bk, label %bb.ab [
    i8 5, label %bb.aa
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm5ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSH_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !847

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 48, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4cvc510OptionInfo8VoidInfoENS6_9ValueInfoIbEENS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS6_10NumberInfoIlEENSH_ImEENSH_IdEENS6_8ModeInfoEEEaSEOSM_EUlOT_T0_E_RSt7variantIJS7_S9_SG_SI_SJ_SK_SL_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  switch i8 %i.bk, label %bb.ae [
    i8 0, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36
    i8 1, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36
    i8 2, label %bb.ac
    i8 3, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36
    i8 4, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36
    i8 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i37: ; preds = %bb.ac
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !73
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i38: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i37
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i38
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !73
  %i.bv = add i64 %i.bu, 1
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #38
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36

bb.ad:                                            ; preds = %bb.ab
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSJ_EESL_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(89) %i.bi)
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36

bb.ae:                                            ; preds = %bb.ab
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4cvc510OptionInfo8VoidInfoENS4_9ValueInfoIbEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS4_10NumberInfoIlEENSF_ImEENSF_IdEENS4_8ModeInfoEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S7_SE_SG_SH_SI_SJ_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i38, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i39, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store i8 -1, ptr %i.bj, align 8, !tbaa !753
  br label %_ZNSt8__detail9__variant9__emplaceILm5ELb0EJN4cvc510OptionInfo8VoidInfoENS3_9ValueInfoIbEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10NumberInfoIlEENSE_ImEENSE_IdEENS3_8ModeInfoEEJSH_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

end_hunk_1
