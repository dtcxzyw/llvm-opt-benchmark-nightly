Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function_internal?download=true
inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi16FunctionInternal12call_forwardERKSt6vectorINS_2MXESaIS2_EES6_RKS1_IS4_SaIS4_EERS8_bb:bb.a
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !44
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527, %bb.dp
  %.4265 = phi i1 [ true, %bb.dp ], [ %.3264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527 ], [ %.3264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ] ; 2 uses
  %.pn328.pn.pn.pn = phi { ptr, i32 } [ %i.pa, %bb.dp ], [ %.pn328.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527 ], [ %.pn328.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  %i.pz = load ptr, ptr %53, align 8, !tbaa !43   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !44
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530, %bb.do
  %.5266 = phi i1 [ true, %bb.do ], [ %.4265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %.4265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529 ] ; 2 uses
  %.pn328.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oz, %bb.do ], [ %.pn328.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530 ], [ %.pn328.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529 ] ; 4 uses
  %i.qe = load ptr, ptr %54, align 8, !tbaa !43   ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !44
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
  %i.qj = load ptr, ptr %55, align 8, !tbaa !43   ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread: ; preds = %bb.df
  %i.qm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qn = load ptr, ptr %55, align 8, !tbaa !43   ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %.sink.split1459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !44
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #39
  br label %.sink.split1459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  %i.qs = load i64, ptr %i.qk, align 8, !tbaa !44
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qt) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br i1 %.5266, label %bb.du, label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br i1 %.5266, label %bb.du, label %bb.dx

.sink.split1459:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread
  %.pn328.pn.pn.pn.pn.pn.pn785.ph = phi { ptr, i32 } [ %i.qm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536.thread ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538.thread ], [ %i.qm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  br label %bb.du

bb.du:                                            ; preds = %.sink.split1459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  %.pn328.pn.pn.pn.pn.pn.pn785 = phi { ptr, i32 } [ %.pn328.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536 ], [ %.pn328.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %.pn328.pn.pn.pn.pn.pn.pn785.ph, %.sink.split1459 ]
  call void @__cxa_free_exception(ptr %i.ow) #38
  br label %bb.dx

._crit_edge1007:                                  ; preds = %_ZN6casadi2MXaSERKS0_.exit544
  %i.qu = add nuw i64 %.02691008, 1               ; 2 uses
  %i.qv = load i64, ptr %i.ii, align 8, !tbaa !204
  %i.qw = icmp ult i64 %i.qu, %i.qv
  br i1 %i.qw, label %bb.db, label %._crit_edge1010, !llvm.loop !1920

.lr.ph1006:                                       ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit517, %_ZN6casadi2MXaSERKS0_.exit544
  %.02601005 = phi i64 [ %i.ro, %_ZN6casadi2MXaSERKS0_.exit544 ], [ 0, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit517 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #38
  %i.qx = load ptr, ptr %41, align 16, !tbaa !287
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %.02601005
  %i.qz = load ptr, ptr %i.lh, align 8, !tbaa !147
  %i.ra = load ptr, ptr %i.lg, align 8, !tbaa !146 ; 2 uses
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 3                 ; 2 uses
  %.not.i.i.i.i539 = icmp ult i64 %.02691008, %i.re
  br i1 %.not.i.i.i.i539, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph1006
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.02691008, i64 noundef %i.re) #37
          to label %.noexc540 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc540:                                        ; preds = %bb.dv
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i: ; preds = %.lr.ph1006
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %.02691008
  %i.rg = invoke { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rf)
          to label %_ZNK6casadi16FunctionInternal8size_outEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6casadi16FunctionInternal8size_outEx.exit:    ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %i.rh = extractvalue { i64, i64 } %i.rg, 0
  %i.ri = extractvalue { i64, i64 } %i.rg, 1
  invoke void @_ZN6casadi2MX7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %62, ptr noundef nonnull align 8 dereferenceable(8) %i.qy, i64 noundef %i.rh, i64 noundef %i.ri)
          to label %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit:     ; preds = %_ZNK6casadi16FunctionInternal8size_outEx.exit
  %i.rj = load ptr, ptr %4, align 8, !tbaa !308
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %.02601005
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !287
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %.02691008
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %_ZN6casadi2MXaSERKS0_.exit544 unwind label %bb.dw ; 0 uses

_ZN6casadi2MXaSERKS0_.exit544:                    ; preds = %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  %i.ro = add nuw i64 %.02601005, 1               ; 2 uses
  %exitcond1137.not = icmp eq i64 %i.ro, %i.ft
  br i1 %exitcond1137.not, label %._crit_edge1007, label %.lr.ph1006, !llvm.loop !1921

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6casadi16FunctionInternal8size_outEx.exit, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, %bb.dv
  %lpad.loopexit.split-lp1546 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dw:                                            ; preds = %_ZN6casadi7reshapeERKNS_2MXESt4pairIxxE.exit
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #38
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dw
  %.pn336 = phi { ptr, i32 } [ %i.rp, %bb.dw ], [ %lpad.loopexit.split-lp1546, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536, %bb.dn, %.loopexit.split-lp, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %bb.cv, %bb.cr
  %.pn339.pn.pn = phi { ptr, i32 } [ %.pn339.pn, %bb.cr ], [ %i.ly, %bb.cv ], [ %.pn336, %.loopexit.split-lp ], [ %.pn328.pn.pn.pn.pn.pn.pn785, %bb.du ], [ %.pn328.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538 ], [ %i.ox, %bb.dn ], [ %.pn328.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536 ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %47) #38
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.ck
  %.pn339.pn.pn.pn = phi { ptr, i32 } [ %.pn339.pn.pn, %bb.dx ], [ %i.ke, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp850, %bb.ci, %bb.dy
  %.pn346.pn.pn = phi { ptr, i32 } [ %.pn339.pn.pn.pn, %bb.dy ], [ %.pn346, %.loopexit.split-lp850 ], [ %.pn344, %bb.ci ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #38
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.ca
  %.pn346.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn, %bb.dz ], [ %i.io, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #38
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.bz
  %.pn346.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn, %bb.ea ], [ %i.in, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #38
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.by
  %.pn346.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn.pn, %bb.eb ], [ %.pn326, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.bv
  %.pn346.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn346.pn.pn.pn.pn.pn, %bb.ec ], [ %i.ik, %bb.bv ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %bb.hz

bb.ee:                                            ; preds = %.critedge375
  %i.rq = load i8, ptr %i.dk, align 8, !tbaa !209, !range !175, !noundef !176
  %i.rr = trunc nuw i8 %i.rq to i1
  %.pre.a = load i8, ptr %i.dl, align 1, !tbaa !212, !range !175
  %.pre1142 = trunc nuw i8 %.pre.a to i1          ; 2 uses
  br i1 %i.rr, label %bb.ew, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %.pre1142, label %.thread, label %bb.eg

.thread:                                          ; preds = %bb.ef
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !130
  br label %.loopexit890

bb.eg:                                            ; preds = %bb.ef
  %i.ru = call ptr @__cxa_allocate_exception(i64 40) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.586, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.eh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.ei unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.8)
          to label %bb.ej unwind label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.207, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %bb.ek unwind label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull @.str.304, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.el unwind label %bb.er

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false), !alias.scope !1942
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %bb.em unwind label %bb.es

bb.em:                                            ; preds = %bb.el
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  invoke void @__cxa_throw(ptr nonnull %i.ru, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #37
          to label %bb.ib unwind label %bb.eu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread: ; preds = %bb.eg
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1460

bb.ep:                                            ; preds = %bb.ei
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559

bb.eq:                                            ; preds = %bb.ej
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

bb.er:                                            ; preds = %bb.ek
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

bb.es:                                            ; preds = %bb.el
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.et:                                            ; preds = %bb.em
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.eu:                                            ; preds = %bb.eo, %bb.en
  %.0250 = phi i1 [ false, %bb.eo ], [ true, %bb.en ] ; 2 uses
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %63, align 8, !tbaa !43   ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.eu
  %i.sf = load i64, ptr %i.sd, align 8, !tbaa !44
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.et
  %.1251 = phi i1 [ true, %bb.et ], [ %.0250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.0250, %bb.eu ] ; 2 uses
  %.pn285 = phi { ptr, i32 } [ %i.sa, %bb.et ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %i.sb, %bb.eu ] ; 2 uses
  %i.sh = load ptr, ptr %68, align 8, !tbaa !43   ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.sk = load i64, ptr %i.si, align 8, !tbaa !44
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %bb.es
  %.2252 = phi i1 [ true, %bb.es ], [ %.1251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.1251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  %.pn285.pn = phi { ptr, i32 } [ %i.rz, %bb.es ], [ %.pn285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.pn285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #38
  %i.sm = load ptr, ptr %69, align 8, !tbaa !43   ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !44
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551, %bb.er
  %.3253 = phi i1 [ true, %bb.er ], [ %.2252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %.2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ] ; 2 uses
  %.pn285.pn.pn = phi { ptr, i32 } [ %i.ry, %bb.er ], [ %.pn285.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %.pn285.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ] ; 2 uses
  %i.sr = load ptr, ptr %70, align 8, !tbaa !43   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !44
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %bb.eq
  %.4254 = phi i1 [ true, %bb.eq ], [ %.3253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.3253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ] ; 2 uses
  %.pn285.pn.pn.pn = phi { ptr, i32 } [ %i.rx, %bb.eq ], [ %.pn285.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn285.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #38
  %i.sw = load ptr, ptr %64, align 8, !tbaa !43   ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !44
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557, %bb.ep
  %.5255 = phi i1 [ true, %bb.ep ], [ %.4254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557 ], [ %.4254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ] ; 2 uses
  %.pn285.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rw, %bb.ep ], [ %.pn285.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557 ], [ %.pn285.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ] ; 4 uses
  %i.tb = load ptr, ptr %65, align 8, !tbaa !43   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !44
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560
  %i.tg = load ptr, ptr %66, align 8, !tbaa !43   ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.ti = icmp eq ptr %i.tg, %i.th
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread: ; preds = %bb.eh
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = load ptr, ptr %66, align 8, !tbaa !43   ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %.sink.split1460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !44
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.to) #39
  br label %.sink.split1460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562
  %i.tp = load i64, ptr %i.th, align 8, !tbaa !44
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tq) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #38
  br i1 %.5255, label %bb.ev, label %bb.hz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #38
  br i1 %.5255, label %bb.ev, label %bb.hz

.sink.split1460:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread
  %.pn285.pn.pn.pn.pn.pn.pn797.ph = phi { ptr, i32 } [ %i.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563.thread ], [ %i.rv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.thread ], [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #38
  br label %bb.ev

bb.ev:                                            ; preds = %.sink.split1460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  %.pn285.pn.pn.pn.pn.pn.pn797 = phi { ptr, i32 } [ %.pn285.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563 ], [ %.pn285.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.pn285.pn.pn.pn.pn.pn.pn797.ph, %.sink.split1460 ]
  call void @__cxa_free_exception(ptr %i.ru) #38
  br label %bb.hz

bb.ew:                                            ; preds = %bb.ee
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !130 ; 4 uses
  br i1 %.pre1142, label %.loopexit890, label %.preheader889

.preheader889:                                    ; preds = %bb.ew
  %i.tt = load ptr, ptr %0, align 8, !tbaa !53
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 320
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call noundef zeroext i1 %i.tv(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.ts)
  br i1 %i.tw, label %.loopexit890, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader889, %.lr.ph
  %.0745974 = phi i64 [ %i.tx, %.lr.ph ], [ %i.ts, %.preheader889 ]
  %i.tx = sdiv i64 %.0745974, 2                   ; 3 uses
  %i.ty = load ptr, ptr %0, align 8, !tbaa !53
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 320
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = call noundef zeroext i1 %i.ua(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.tx)
  br i1 %i.ub, label %.loopexit890, label %.lr.ph, !llvm.loop !1924

.loopexit890:                                     ; preds = %.lr.ph, %.thread, %.preheader889, %bb.ew
  %.1746 = phi i64 [ %i.ts, %bb.ew ], [ %i.ts, %.preheader889 ], [ %i.rt, %.thread ], [ %i.tx, %.lr.ph ]
  %i.uc = icmp sgt i64 %i.fs, 0
  br i1 %i.uc, label %.lr.ph990, label %.loopexit883

.lr.ph990:                                        ; preds = %.loopexit890
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 7 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 5 uses
  %i.up = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %79, i64 16
  br label %bb.ex

bb.ex:                                            ; preds = %.lr.ph990, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit640
  %.0249988 = phi i64 [ 0, %.lr.ph990 ], [ %i.zs, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit640 ] ; 5 uses
  %i.us = sub i64 %i.ft, %.0249988
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.1746, i64 %i.us) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %i.ut = load i64, ptr %i.ud, align 8, !tbaa !203
  %i.uu = load i64, ptr %i.ue, align 8, !tbaa !204
  %reass.add = shl i64 %i.ut, 1
  %i.uv = add i64 %i.uu, %reass.add               ; 4 uses
  %i.uw = icmp ugt i64 %i.uv, 1152921504606846975
  br i1 %i.uw, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.802) #37
          to label %.noexc572 unwind label %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc572:                                        ; preds = %bb.ey
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %.not1377 = icmp eq i64 %i.uv, 0
  br i1 %.not1377, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE7reserveEm.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ux = invoke noundef ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_(ptr noundef nonnull align 8 dereferenceable(24) %73, i64 noundef %i.uv, ptr noundef null, ptr noundef null)
          to label %.noexc573 unwind label %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc573:                                        ; preds = %bb.fa
  %i.uy = load ptr, ptr %73, align 8, !tbaa !287  ; 3 uses
  %i.uz = load ptr, ptr %i.ug, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i566 = icmp eq ptr %i.uy, %i.uz
  br i1 %.not4.i.i.i566, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i, label %.lr.ph.i.i.i567

.lr.ph.i.i.i567:                                  ; preds = %.noexc573, %.lr.ph.i.i.i567
  %.05.i.i.i568 = phi ptr [ %i.va, %.lr.ph.i.i.i567 ], [ %i.uy, %.noexc573 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i568) #38
  %i.va = getelementptr inbounds nuw i8, ptr %.05.i.i.i568, i64 8 ; 2 uses
  %.not.i.i.i569 = icmp eq ptr %i.va, %i.uz
  br i1 %.not.i.i.i569, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i567, !llvm.loop !12

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i567
  %.pr.i570 = load ptr, ptr %73, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i:        ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split.i, %.noexc573
  %i.vb = phi ptr [ %.pr.i570, %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exitthread-pre-split.i ], [ %i.uy, %.noexc573 ] ; 3 uses
  %.not.i.i571 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i571, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.fb

bb.fb:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i
  %i.vc = load ptr, ptr %i.uf, align 8, !tbaa !289
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.vb to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.vf) #39
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.fb, %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i
  store ptr %i.ux, ptr %73, align 8, !tbaa !287
  store ptr %i.ux, ptr %i.ug, align 8, !tbaa !288
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.vg, ptr %i.uf, align 8, !tbaa !289
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.ez
  %i.vh = phi ptr [ %i.ux, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.ez ]
  %i.vi = load ptr, ptr %1, align 8, !tbaa !303
  %i.vj = load ptr, ptr %i.uh, align 8, !tbaa !303
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr %i.vh, ptr %i.vi, ptr %i.vj)
          to label %bb.fc unwind label %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE7reserveEm.exit
  %i.vk = load ptr, ptr %73, align 8, !tbaa !303  ; 2 uses
  %i.vl = load ptr, ptr %i.ug, align 8, !tbaa !303
  %i.vm = load ptr, ptr %2, align 8, !tbaa !303
  %i.vn = load ptr, ptr %i.ui, align 8, !tbaa !303
  %i.vo = ptrtoint ptr %i.vl to i64
  %i.vp = ptrtoint ptr %i.vk to i64
  %i.vq = sub i64 %i.vo, %i.vp
  %i.vr = getelementptr inbounds i8, ptr %i.vk, i64 %i.vq
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr %i.vr, ptr %i.vm, ptr %i.vn)
          to label %bb.fd unwind label %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #38
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %74, i64 noundef %.sroa.speculated, ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #38
  %i.vs = load i64, ptr %i.ud, align 8, !tbaa !203
  %.not1011 = icmp eq i64 %i.vs, 0
  br i1 %.not1011, label %._crit_edge978, label %.preheader859.lr.ph

.preheader859.lr.ph:                              ; preds = %bb.fe
  %i.vt = icmp sgt i64 %.sroa.speculated, 0
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %.0135977 = phi i64 [ 0, %.preheader859.lr.ph ], [ %i.wk, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  br i1 %i.vt, label %.lr.ph976, label %._crit_edge

._crit_edge978:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #38
  invoke void @_ZNK6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEE16shared_from_thisINS_8FunctionEEEKT_v(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %78, ptr noundef nonnull align 8 dereferenceable(1312) %0)
          to label %_ZNK6casadi16FunctionInternal4selfEv.exit unwind label %bb.fx

.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE7reserveEm.exit, %bb.fa, %bb.fc, %bb.ey
  %lpad.loopexit.split-lp1581 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp885

bb.ff:                                            ; preds = %bb.fd
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #38
  br label %bb.hx

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit582, %.preheader859
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #38
  invoke void @_ZN6casadi2MX7horzcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %76, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit580 unwind label %bb.fj

.lr.ph976:                                        ; preds = %.preheader859, %_ZN6casadi2MXaSERKS0_.exit582
  %.0134975 = phi i64 [ %i.wd, %_ZN6casadi2MXaSERKS0_.exit582 ], [ 0, %.preheader859 ] ; 3 uses
  %i.vv = load ptr, ptr %3, align 8, !tbaa !308
  %i.vw = getelementptr [24 x i8], ptr %i.vv, i64 %.0249988
  %i.vx = getelementptr [24 x i8], ptr %i.vw, i64 %.0134975
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !287
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %.0135977
  %i.wa = load ptr, ptr %74, align 16, !tbaa !287
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %.0134975
  %i.wc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.wb, ptr noundef nonnull align 8 dereferenceable(8) %i.vz)
          to label %_ZN6casadi2MXaSERKS0_.exit582 unwind label %bb.fg ; 0 uses

_ZN6casadi2MXaSERKS0_.exit582:                    ; preds = %.lr.ph976
  %i.wd = add nuw nsw i64 %.0134975, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.wd, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph976, !llvm.loop !1925

bb.fg:                                            ; preds = %.lr.ph976
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit580: ; preds = %._crit_edge
  %i.wf = load ptr, ptr %i.ug, align 8, !tbaa !288 ; 4 uses
  %i.wg = load ptr, ptr %i.uf, align 8, !tbaa !289
  %.not.i.i583 = icmp eq ptr %i.wf, %i.wg
  br i1 %.not.i.i583, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit580
  %i.wh = load ptr, ptr %76, align 8, !tbaa !277
  store ptr %i.wh, ptr %i.wf, align 8, !tbaa !277
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wf)
          to label %.noexc584 unwind label %bb.fk

.noexc584:                                        ; preds = %bb.fh
  %i.wi = load ptr, ptr %i.ug, align 8, !tbaa !288
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store ptr %i.wj, ptr %i.ug, align 8, !tbaa !288
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.fi:                                            ; preds = %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit580
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr %i.wf, ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.fk

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc584, %bb.fi
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %76) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  %i.wk = add nuw nsw i64 %.0135977, 1            ; 2 uses
  %i.wl = load i64, ptr %i.ud, align 8, !tbaa !203
  %i.wm = icmp ult i64 %i.wk, %i.wl
  br i1 %i.wm, label %.preheader859, label %._crit_edge978, !llvm.loop !1926

bb.fj:                                            ; preds = %._crit_edge
end_hunk_0
