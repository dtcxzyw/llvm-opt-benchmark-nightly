Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/params?download=true
inline.NumInlined: 1060
inline.NumDeleted: 398
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z21_gmx_sel_parse_paramsRKNSt7__cxx114listIN3gmx24SelectionParserParameterESaIS2_EEEiP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPv:._crit_edge.i.i.i
  br i1 %.not30.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %._crit_edge.i
  %i.wk = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(56) %103)
          to label %bb.gk unwind label %.thread.i

bb.gk:                                            ; preds = %bb.gj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %104, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %105, align 8, !tbaa !37
  store ptr @__PRETTY_FUNCTION__._ZL14convert_valuesPNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEE12e_selvalue_tPv, ptr %i.bo, align 8, !tbaa !38
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !38
  store i32 201, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.wk, ptr noundef nonnull align 8 %104, ptr noundef nonnull align 8 dereferenceable(32) %105)
          to label %bb.gl unwind label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  invoke void @__cxa_throw(ptr %i.wk, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.gp unwind label %bb.gm

.thread.i:                                        ; preds = %bb.gj
  %i.wl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.0.i = phi i1 [ false, %bb.gl ], [ true, %bb.gk ]
  %i.wm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE   ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %105) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %104) #27
  br i1 %.0.i, label %bb.gn, label %.body.i190

bb.gn:                                            ; preds = %bb.gm, %.thread.i
  %.pn29.i = phi { ptr, i32 } [ %i.wl, %.thread.i ], [ %i.wm, %bb.gm ]
  call void @__cxa_free_exception(ptr %i.wk) #27
  br label %.body.i190

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  %.not.i.i1.i.i.i = icmp eq ptr %.pre.i192, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i.i, label %bb.go

bb.go:                                            ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.wn = load ptr, ptr %i.bp, align 8, !tbaa !70
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %.pre.i192 to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i192, i64 noundef %i.wq) #29
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i.i: ; preds = %bb.go, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i.i, %.lr.ph.i189, %_ZL20convert_const_valuesPNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEE.exit
  %i.wr = load ptr, ptr %103, align 8, !tbaa !35  ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.al
  br i1 %i.ws, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i.i
  %i.wt = load i64, ptr %i.al, align 8, !tbaa !28
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22.i

.body.i190:                                       ; preds = %bb.em, %bb.gn, %bb.gm, %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i
  %.pn11.i = phi { ptr, i32 } [ %i.wm, %bb.gm ], [ %.pn29.i, %bb.gn ], [ %i.wj, %bb.gi ], [ %.pn55.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i ], [ %.pn60.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i ], [ %.pn58.i.i, %bb.em ]
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %103) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #27
  br label %.body

bb.gp:                                            ; preds = %bb.gl
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %104)
  %i.wv = load i32, ptr %i.gp, align 8, !tbaa !27
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %bb.gq, label %bb.hn

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22.i
  %i.wx = load ptr, ptr %i.hs, align 8, !tbaa !138 ; 3 uses
  %.val = load ptr, ptr %i.ey, align 8            ; 3 uses
  %.val162 = load i64, ptr %i.ez, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86)
  call void @llvm.lifetime.start.p0(ptr nonnull %90)
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !156
  %i.xa = icmp ugt i64 %i.wz, 1
  br i1 %i.xa, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.xb = load ptr, ptr %i.wx, align 8, !tbaa !135 ; 3 uses
  %i.xc = icmp eq ptr %i.xb, %i.wx                ; 3 uses
  br i1 %i.xc, label %bb.ha, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !61
  %.not.i204 = icmp eq i32 %i.xe, 1
  br i1 %.not.i204, label %bb.ha, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #27
  %i.xf = load ptr, ptr %.084, align 8, !tbaa !25
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %85, ptr noundef nonnull @.str.20, ptr noundef %i.xf)
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %bb.gt
  %i.xg = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %87, ptr noundef nonnull align 8 dereferenceable(32) %85)
          to label %bb.gu unwind label %.thread.i205

bb.gu:                                            ; preds = %.noexc210
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(56) %87)
          to label %bb.gv unwind label %.thread9.i

bb.gv:                                            ; preds = %bb.gu
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %86, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %88, align 8, !tbaa !37
  store ptr @__PRETTY_FUNCTION__._ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv, ptr %i.dr, align 8, !tbaa !38
  store ptr @.str.2, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !38
  store i32 879, ptr %.sroa.53.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.xg, ptr noundef nonnull align 8 %86, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  invoke void @__cxa_throw(ptr %i.xg, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.hm unwind label %bb.gx

.thread.i205:                                     ; preds = %.noexc210
  %i.xh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  br label %.sink.split.i

.thread9.i:                                       ; preds = %bb.gu
  %i.xi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %87) #27
  br label %.sink.split.i

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.022.i = phi i1 [ false, %bb.gw ], [ true, %bb.gv ]
  %i.xj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE   ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %88) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %86) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %87) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #27
  br i1 %.022.i, label %bb.gy, label %bb.gz

.sink.split.i:                                    ; preds = %.thread9.i, %.thread.i205
  %.pn35.pn8.ph.i = phi { ptr, i32 } [ %i.xi, %.thread9.i ], [ %i.xh, %.thread.i205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #27
  br label %bb.gy

bb.gy:                                            ; preds = %.sink.split.i, %bb.gx
  %.pn35.pn8.i = phi { ptr, i32 } [ %i.xj, %bb.gx ], [ %.pn35.pn8.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.xg) #27
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.pn35.pn7.i = phi { ptr, i32 } [ %.pn35.pn8.i, %bb.gy ], [ %i.xj, %bb.gx ]
  %i.xk = load ptr, ptr %85, align 8, !tbaa !35   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.ds
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.gz
  %i.xm = load i64, ptr %i.ds, align 8, !tbaa !28
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #27
  br label %.body

bb.ha:                                            ; preds = %bb.gs, %bb.gr
  %i.xo = icmp ugt i64 %.val162, 2
  br i1 %i.xo, label %bb.hb, label %.thread15.i

bb.hb:                                            ; preds = %bb.ha
  %i.xp = load i8, ptr %.val, align 1, !tbaa !28
  %i.xq = icmp eq i8 %i.xp, 110
  br i1 %i.xq, label %bb.hc, label %.thread15.i

bb.hc:                                            ; preds = %bb.hb
  %i.xr = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !28
  %i.xt = icmp eq i8 %i.xs, 111
  br i1 %i.xt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.thread15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.hc
  %136 = add i64 %.val162, -2                     ; 3 uses
  %i.xu = load ptr, ptr %.084, align 8, !tbaa !25 ; 3 uses
  %i.xv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xu) #27 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.xv, i64 %136) ; 2 uses
  %i.xw = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.xw, label %137, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %i.xx, ptr nonnull %i.xu, i64 %.sroa.speculated.i.i)
  %.not.i.i206 = icmp eq i32 %bcmp.i, 0
  %i.xy = icmp eq i64 %136, %i.xv
  %or.cond.i = and i1 %i.xy, %.not.i.i206
  br i1 %or.cond.i, label %bb.hd, label %.thread15.i

137:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %.old.i = icmp eq i64 %136, %i.xv
  br i1 %.old.i, label %bb.hd, label %.thread15.i

bb.hd:                                            ; preds = %137, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  br i1 %i.xc, label %_ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #27
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %89, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.xu)
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc211:                                        ; preds = %bb.he
  %i.xz = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %91, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %bb.hf unwind label %.thread18.i

bb.hf:                                            ; preds = %.noexc211
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(56) %91)
          to label %bb.hg unwind label %.thread23.i

bb.hg:                                            ; preds = %bb.hf
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %90, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %92, align 8, !tbaa !37
  store ptr @__PRETTY_FUNCTION__._ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv, ptr %i.dp, align 8, !tbaa !38
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx.i207, align 8, !tbaa !38
  store i32 892, ptr %.sroa.5.0..sroa_idx.i208, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.xz, ptr noundef nonnull align 8 %90, ptr noundef nonnull align 8 dereferenceable(32) %92)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  invoke void @__cxa_throw(ptr %i.xz, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.hm unwind label %bb.hi

.thread18.i:                                      ; preds = %.noexc211
  %i.ya = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  br label %.sink.split33.i

.thread23.i:                                      ; preds = %bb.hf
  %i.yb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %91) #27
  br label %.sink.split33.i

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.0.i209 = phi i1 [ false, %bb.hh ], [ true, %bb.hg ]
  %i.yc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE   ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %92) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %90) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %91) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  br i1 %.0.i209, label %bb.hj, label %bb.hk

.sink.split33.i:                                  ; preds = %.thread23.i, %.thread18.i
  %.pn.pn22.ph.i = phi { ptr, i32 } [ %i.yb, %.thread23.i ], [ %i.ya, %.thread18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  br label %bb.hj

bb.hj:                                            ; preds = %.sink.split33.i, %bb.hi
  %.pn.pn22.i = phi { ptr, i32 } [ %i.yc, %bb.hi ], [ %.pn.pn22.ph.i, %.sink.split33.i ]
  call void @__cxa_free_exception(ptr %i.xz) #27
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn.pn21.i = phi { ptr, i32 } [ %.pn.pn22.i, %bb.hj ], [ %i.yc, %bb.hi ]
  %i.yd = load ptr, ptr %89, align 8, !tbaa !35   ; 2 uses
  %i.ye = icmp eq ptr %i.yd, %i.dq
  br i1 %i.ye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %bb.hk
  %i.yf = load i64, ptr %i.dq, align 8, !tbaa !28
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #27
  br label %.body

.thread15.i:                                      ; preds = %137, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.hc, %bb.hb, %bb.ha
  br i1 %i.xc, label %_ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv.exit, label %bb.hl

bb.hl:                                            ; preds = %.thread15.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xb, i64 72
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !28
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i8
  br label %_ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv.exit

bb.hm:                                            ; preds = %bb.hh, %bb.gw
  unreachable

_ZL17parse_values_boolRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4listIN3gmx20SelectionParserValueESaIS9_EEEP18gmx_ana_selparam_tPv.exit: ; preds = %bb.hd, %.thread15.i, %bb.hl
  %.121.i = phi i8 [ 1, %.thread15.i ], [ %i.yk, %bb.hl ], [ 0, %bb.hd ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.084, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !28
  store i8 %.121.i, ptr %i.ym, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %90)
  br label %bb.vm

bb.hn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22.i
  %i.yn = load i32, ptr %i.gb, align 8, !tbaa !34 ; 7 uses
  %i.yo = and i32 %i.yn, 8
  %.not128 = icmp eq i32 %i.yo, 0
  br i1 %.not128, label %bb.lr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.yp = load ptr, ptr %i.hs, align 8, !tbaa !138 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  %i.yq = and i32 %i.yn, -5
  store i32 %i.yq, ptr %i.gb, align 8, !tbaa !34
  %i.yr = load i32, ptr %i.gp, align 8, !tbaa !27
  switch i32 %i.yr, label %.invoke [
    i32 1, label %.thread.i229
    i32 2, label %.thread303.i
  ]

.thread.i229:                                     ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  store ptr null, ptr %73, align 8, !tbaa !159
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !156
  %i.yu = shl i64 %i.yt, 1
  %i.yv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 277, i64 noundef %i.yu, i64 noundef 4)
          to label %_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEE5resetEPv.exit.i unwind label %bb.hp ; 2 uses

.thread303.i:                                     ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  store ptr null, ptr %73, align 8, !tbaa !159
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !156
  %i.yy = shl i64 %i.yx, 1
  %i.yz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 282, i64 noundef %i.yy, i64 noundef 4)
          to label %_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEE5resetEPv.exit.i unwind label %bb.hp ; 2 uses

.invoke:                                          ; preds = %bb.pa, %bb.oe, %bb.ss, %bb.qh, %._crit_edge.i265, %bb.lu, %bb.lv, %bb.ho
  %i.za = phi ptr [ @.str.52, %bb.qh ], [ @.str.29, %bb.ho ], [ @.str.36, %bb.lu ], [ @.str.36, %bb.lv ], [ @.str.33, %bb.ss ], [ @.str.46, %._crit_edge.i265 ], [ @.str.16, %bb.pa ], [ @.str.33, %bb.oe ]
  %i.zb = phi ptr [ @.str.45, %bb.qh ], [ @.str.30, %bb.ho ], [ @.str.37, %bb.lu ], [ @.str.37, %bb.lv ], [ @.str.45, %bb.ss ], [ @.str.47, %._crit_edge.i265 ], [ @.str.42, %bb.pa ], [ @.str.45, %bb.oe ]
  %i.zc = phi ptr [ @"__PRETTY_FUNCTION__._ZZL17parse_values_enumRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tPvENK3$_0clEv", %bb.qh ], [ @"__PRETTY_FUNCTION__._ZZL18parse_values_rangeRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tPvENK3$_0clEv", %bb.ho ], [ @"__PRETTY_FUNCTION__._ZZL24parse_values_varnum_exprRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %bb.lu ], [ @"__PRETTY_FUNCTION__._ZZL24parse_values_varnum_exprRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %bb.lv ], [ @"__PRETTY_FUNCTION__._ZZL16parse_values_stdRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %bb.ss ], [ @"__PRETTY_FUNCTION__._ZZL19parse_values_varnumRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %._crit_edge.i265 ], [ @"__PRETTY_FUNCTION__._ZZL19parse_values_varnumRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %bb.oe ], [ @"__PRETTY_FUNCTION__._ZZL19parse_values_varnumRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tRKSt10shared_ptrINS1_20SelectionTreeElementEEPvENK3$_0clEv", %bb.pa ]
  %i.zd = phi i32 [ 918, %bb.qh ], [ 271, %bb.ho ], [ 631, %bb.lu ], [ 631, %bb.lv ], [ 775, %bb.ss ], [ 543, %._crit_edge.i265 ], [ 540, %bb.pa ], [ 497, %bb.oe ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.za, ptr noundef nonnull %i.zb, ptr noundef nonnull %i.zc, ptr noundef nonnull @.str.2, i32 noundef %i.zd) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.hp:                                            ; preds = %.thread303.i, %.thread.i229
  %i.ze = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx14UserInputErrorE
  br label %bb.lp

_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEE5resetEPv.exit.i: ; preds = %.thread303.i, %.thread.i229
  %storemerge.i = phi ptr [ %i.yv, %.thread.i229 ], [ %i.yz, %.thread303.i ]
  %.0302.i = phi ptr [ %i.yv, %.thread.i229 ], [ null, %.thread303.i ] ; 28 uses
  %.0301.i = phi ptr [ null, %.thread.i229 ], [ %i.yz, %.thread303.i ] ; 25 uses
  store ptr %storemerge.i, ptr %73, align 8, !tbaa !62
  %.sroa.0236.0345.i = load ptr, ptr %i.yp, align 8, !tbaa !135 ; 3 uses
  %.not326346.i = icmp eq ptr %.sroa.0236.0345.i, %i.yp
  %.pre.i214 = load i32, ptr %i.gp, align 8, !tbaa !27
  %.fr362.i = freeze i32 %.pre.i214               ; 3 uses
  br i1 %.not326346.i, label %._crit_edge.i222, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %_ZNSt10unique_ptrIvN3gmx15functor_wrapperIvXadL_ZNS0_13sfree_wrapperIvEEvPT_EEEEE5resetEPv.exit.i
  %i.zf = icmp eq i32 %.fr362.i, 1
  br i1 %i.zf, label %.lr.ph.split.us.i, label %.lr.ph.split.i216

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i215, %bb.hw
  %.sroa.0236.0348.us.i = phi ptr [ %.sroa.0236.0.us.i, %bb.hw ], [ %.sroa.0236.0345.i, %.lr.ph.i215 ] ; 6 uses
  %.091347.us.i = phi i32 [ %.3.us.i, %bb.hw ], [ 0, %.lr.ph.i215 ] ; 5 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.us.i, i64 16
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !61
  %i.zi = icmp eq i32 %i.zh, 1
  br i1 %i.zi, label %bb.hq, label %.split350.us.i

bb.hq:                                            ; preds = %.lr.ph.split.us.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.us.i, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !44
  %.not333.us.i = icmp eq ptr %i.zk, null
  br i1 %.not333.us.i, label %bb.hr, label %.split352.us.i

bb.hr:                                            ; preds = %bb.hq
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.us.i, i64 72
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.us.i, i64 76
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !39 ; 2 uses
  %i.zo = load i32, ptr %i.zl, align 8, !tbaa !39 ; 2 uses
  %i.zp = call i32 @llvm.smin.i32(i32 %i.zn, i32 %i.zo) ; 3 uses
  %i.zq = call i32 @llvm.smax.i32(i32 %i.zo, i32 %i.zn) ; 3 uses
  %i.zr = icmp sgt i32 %.091347.us.i, 0
  br i1 %i.zr, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.zs = zext nneg i32 %.091347.us.i to i64
  %i.zt = getelementptr [4 x i8], ptr %.0302.i, i64 %i.zs ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 -4     ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !39 ; 2 uses
  %i.zw = add nsw i32 %i.zv, 1
  %.not127.us.i = icmp sgt i32 %i.zp, %i.zw
  br i1 %.not127.us.i, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.zx = getelementptr i8, ptr %i.zt, i64 -8     ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !39 ; 2 uses
  %i.zz = add nsw i32 %i.zy, -1
  %.not128.us.i = icmp slt i32 %i.zq, %i.zz
  br i1 %.not128.us.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.sroa.speculated225.us.i = call i32 @llvm.smin.i32(i32 %i.zp, i32 %i.zy)
  store i32 %.sroa.speculated225.us.i, ptr %i.zx, align 4, !tbaa !39
  %.sroa.speculated219.us.i = call i32 @llvm.smax.i32(i32 %i.zv, i32 %i.zq)
  store i32 %.sroa.speculated219.us.i, ptr %i.zu, align 4, !tbaa !39
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht, %bb.hs, %bb.hr
  %i.aaa = sext i32 %.091347.us.i to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %.0302.i, i64 %i.aaa ; 2 uses
  store i32 %i.zp, ptr %i.aab, align 4, !tbaa !39
  %i.aac = add nsw i32 %.091347.us.i, 2
  %i.aad = getelementptr i8, ptr %i.aab, i64 4
  store i32 %i.zq, ptr %i.aad, align 4, !tbaa !39
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.3.us.i = phi i32 [ %i.aac, %bb.hv ], [ %.091347.us.i, %bb.hu ] ; 2 uses
  %.sroa.0236.0.us.i = load ptr, ptr %.sroa.0236.0348.us.i, align 8, !tbaa !135 ; 2 uses
  %.not326.us.i = icmp eq ptr %.sroa.0236.0.us.i, %i.yp
  br i1 %.not326.us.i, label %._crit_edge.i222, label %.lr.ph.split.us.i, !llvm.loop !111

.lr.ph.split.i216:                                ; preds = %.lr.ph.i215, %bb.ja
  %.sroa.0236.0348.i = phi ptr [ %.sroa.0236.0.i, %bb.ja ], [ %.sroa.0236.0345.i, %.lr.ph.i215 ] ; 6 uses
  %.091347.i = phi i32 [ %.3.i, %bb.ja ], [ 0, %.lr.ph.i215 ] ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.i, i64 16
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !61
  %i.aag = icmp eq i32 %i.aaf, %.fr362.i
  br i1 %i.aag, label %bb.hx, label %.split350.us.i

.split350.us.i:                                   ; preds = %.lr.ph.split.i216, %.lr.ph.split.us.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL18parse_values_rangeRKNSt7__cxx114listIN3gmx20SelectionParserValueESaIS2_EEEP18gmx_ana_selparam_tPvENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 290) #28
          to label %.noexc.i217 unwind label %bb.ii

.noexc.i217:                                      ; preds = %.split350.us.i
  unreachable

bb.hx:                                            ; preds = %.lr.ph.split.i216
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0236.0348.i, i64 24
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !44
  %.not333.i = icmp eq ptr %i.aai, null
  br i1 %.not333.i, label %bb.iv, label %.split352.us.i

.split352.us.i:                                   ; preds = %bb.hx, %bb.hq
  %.us-phi.i = phi ptr [ %.sroa.0236.0348.us.i, %bb.hq ], [ %.sroa.0236.0348.i, %bb.hx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  %i.aaj = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 84
  invoke void @_Z23_gmx_sel_lexer_get_textB5cxx11PvRKN3gmx17SelectionLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %i.aaj)
          to label %bb.hy unwind label %bb.ik

bb.hy:                                            ; preds = %.split352.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %76)
          to label %bb.hz unwind label %bb.il

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %78, ptr noundef nonnull align 8 dereferenceable(32) %75)
          to label %bb.ia unwind label %bb.im

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(56) %78)
          to label %bb.ib unwind label %bb.in

bb.ib:                                            ; preds = %bb.ia
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %77, align 8, !tbaa !37
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %78) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
end_hunk_0
