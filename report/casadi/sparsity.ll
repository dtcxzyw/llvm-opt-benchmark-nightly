Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity?download=true
inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6casadi8Sparsity11enlargeRowsExRKSt6vectorIxSaIxEEb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.l ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ao = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.ay = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !26
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bi) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.5, label %bb.q, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.5, label %bb.q, label %bb.ab

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread
  %.pn.pn.pn.pn.pn.pn.pn58.ph = phi { ptr, i32 } [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn.pn.pn.pn.pn.pn.pn58 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn.pn.pn.pn.pn.pn.pn58.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #28
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %2, align 8, !tbaa !46
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bm = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !39
  call void @_ZN6casadi8SparsityC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %1, i64 noundef %i.bq)
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.u ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.s
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit52 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit52: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ab

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bx = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @_ZNK6casadi16SparsityInternal12_enlargeRowsExRKSt6vectorIxSaIxEEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3)
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN6casadi8SparsityaSEOS0_.exit53 unwind label %bb.y ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit53:                ; preds = %bb.w
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit54 unwind label %bb.x

bb.x:                                             ; preds = %_ZN6casadi8SparsityaSEOS0_.exit53
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit54: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit55 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit55: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit54, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  ret void

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.q, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit55, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit52
  %.pn32 = phi { ptr, i32 } [ %i.bu, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit52 ], [ %i.cb, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit55 ], [ %.pn.pn.pn.pn.pn.pn.pn58, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ]
  resume { ptr, i32 } %.pn32

bb.ac:                                            ; preds = %bb.j
  unreachable
}

declare void @_ZNK6casadi16SparsityInternal15_enlargeColumnsExRKSt6vectorIxSaIxEEb(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK6casadi16SparsityInternal12_enlargeRowsExRKSt6vectorIxSaIxEEb(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi8Sparsity4diagExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 9 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %2, i64 %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = add nsw i64 %2, 1                        ; 4 uses
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %.noexc10

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc10:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3                  ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 3 uses
  %i.h = and i64 %2, 2305843009213693951
  %i.i = add i64 %2, 1
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.body.a

vector.body.a:                                    ; preds = %.noexc10, %vector.body.a
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %5, %vector.body.a ], [ %i.d, %.noexc10 ] ; 2 uses
  %prol.iter = phi i64 [ %index.next.a, %vector.body.a ], [ 0, %.noexc10 ]
  store i64 %.sroa.speculated, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !39
  %5 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %index.next.a = add i64 %prol.iter, 1           ; 2 uses
  %i.j = icmp eq i64 %index.next.a, %xtraiter
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.body.a, !llvm.loop !273

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %vector.body.a, %.noexc10
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %.noexc10 ], [ %5, %vector.body.a ]
  %6 = icmp samesign ult i64 %i.h, 7
  br i1 %6, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 9 uses
  store i64 %.sroa.speculated, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39
  %7 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.speculated, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.speculated, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %.sroa.speculated, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.speculated, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 %.sroa.speculated, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.speculated, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 %.sroa.speculated, ptr %13, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !274

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.l = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !40
  %i.n = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %min.iters.check35 = icmp ult i64 %.sroa.speculated, 4
  br i1 %min.iters.check35, label %.lr.ph.preheader44, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph.preheader
  %n.vec37 = and i64 %.sroa.speculated, 9223372036854775804 ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next40, %vector.body38 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph36 ], [ %vec.ind.next, %vector.body38 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index39 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x i64> %vec.ind, ptr %i.o, align 8, !tbaa !39
  store <2 x i64> %step.add, ptr %i.p, align 8, !tbaa !39
  %index.next40 = add nuw i64 %index39, 4         ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.q = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.q, label %middle.block41, label %vector.body38, !llvm.loop !275

middle.block41:                                   ; preds = %vector.body38
  %cmp.n42 = icmp eq i64 %.sroa.speculated, %n.vec37
  br i1 %cmp.n42, label %._crit_edge, label %.lr.ph.preheader44

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block41
  %.028.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec37, %middle.block41 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block41, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %4, i64 noundef %.sroa.speculated)
          to label %bb.b unwind label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.028 = phi i64 [ %i.s, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader44 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.028
  store i64 %.028, ptr %i.r, align 8, !tbaa !39
  %i.s = add nuw nsw i64 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !276

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.z = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIxSaIxEED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit12

_ZNSt6vectorIxSaIxEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.f:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit14

bb.g:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIxSaIxEED2Ev.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit14

_ZNSt6vectorIxSaIxEED2Ev.exit14:                  ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ag, %bb.g ], [ %i.ag, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.an = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIxSaIxEED2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit14
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit16

_ZNSt6vectorIxSaIxEED2Ev.exit16:                  ; preds = %bb.i, %_ZNSt6vectorIxSaIxEED2Ev.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN6casadi5rangeEx(ptr dead_on_unwind writable sret(%"class.std::vector.3") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi8Sparsity9makeDenseERSt6vectorIxSaIxEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZNK6casadi16SparsityInternal9makeDenseERSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

declare void @_ZNK6casadi16SparsityInternal9makeDenseERSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK6casadi16SparsityInternal3dimB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi8Sparsity11postfix_dimB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal8is_denseEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  br i1 %i.c, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !26
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i1 noundef zeroext true)
  br i1 %i.i, label %._crit_edge.i.i13, label %bb.d

._crit_edge.i.i13:                                ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !28
  store i16 23899, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !26
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.n = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal9is_columnEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.o = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  store i64 %i.r, ptr %i.a, align 8, !tbaa !39
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %.noexc17 unwind label %bb.j   ; 8 uses

end_hunk_0
begin_hunk_1_@bcmp
!73 = !{!72, !67, i64 0}
!74 = !{!72, !23, i64 8}
!75 = !{!71, !70, i64 0}
!76 = !{!72, !68, i64 16}
!77 = !{!69, !68, i64 0}
!78 = !{!72, !23, i64 24}
!79 = !{!68, !68, i64 0}
!80 = !{!"_ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !19, i64 0}
!81 = !{!"_ZTSN6casadi7WeakRefE", !80, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!"p1 _ZTSSt6vectorIN6casadi8SparsityESaIS1_EE", !17, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6casadi8SparsityESaIS2_EESaIS4_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!84, !83, i64 8}
!86 = !{!84, !83, i64 0}
!87 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!88 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!89 = !{!"_ZTSSt18_Rb_tree_node_base", !87, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!90 = !{!"_ZTSSt15_Rb_tree_header", !89, i64 0, !23, i64 32}
!91 = !{!90, !88, i64 16}
!92 = !{!90, !88, i64 24}
!93 = !{!90, !23, i64 32}
!94 = !{!90, !87, i64 0}
!95 = !{!90, !88, i64 8}
!96 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !17, i64 0}
!97 = !{!88, !88, i64 0}
!98 = !{!"p1 _ZTSSo", !17, i64 0}
!99 = !{!"_ZTSSt13_Ios_Fmtflags", !13, i64 0}
!100 = !{!"_ZTSSt12_Ios_Iostate", !13, i64 0}
!101 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!102 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !23, i64 8}
!103 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!104 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !99, i64 24, !100, i64 28, !100, i64 32, !101, i64 40, !102, i64 48, !13, i64 64, !14, i64 192, !103, i64 200, !48, i64 208}
!105 = !{!"bool", !13, i64 0}
!106 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!107 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!108 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!109 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!110 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !104, i64 0, !98, i64 216, !13, i64 224, !105, i64 225, !106, i64 232, !107, i64 240, !108, i64 248, !109, i64 256}
!111 = !{!110, !107, i64 240}
!112 = !{!"_ZTSNSt6locale5facetE", !14, i64 8}
!113 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!114 = !{!"p1 int", !17, i64 0}
!115 = !{!"p1 short", !17, i64 0}
!116 = !{!"_ZTSSt5ctypeIcE", !112, i64 0, !113, i64 16, !105, i64 24, !114, i64 32, !114, i64 40, !115, i64 48, !13, i64 56, !13, i64 57, !13, i64 313, !13, i64 569}
!117 = !{!116, !13, i64 56}
!118 = !{!"p1 _ZTSSi", !17, i64 0}
!119 = !{!84, !83, i64 16}
!120 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !67, i64 0, !23, i64 8, !69, i64 16, !23, i64 24, !71, i64 32, !68, i64 48}
!121 = !{!120, !68, i64 16}
!122 = !{!120, !67, i64 0}
!123 = !{!120, !23, i64 8}
!124 = !{i8 0, i8 2}
!125 = !{}
!126 = !{!"p1 _ZTSN6casadi18UniversalNodeOwnerE", !17, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!127, !126, i64 0}
!129 = !{!127, !126, i64 8}
!130 = !{!127, !126, i64 16}
!131 = !{!89, !88, i64 24}
!132 = !{!89, !88, i64 16}
!133 = !{i64 8}
!134 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6casadi7WeakRefEELb0EEEEEE", !17, i64 0}
!135 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmN6casadi7WeakRefEELb0EEE", !17, i64 0}
!136 = !{!"_ZTSNSt10_HashtableImSt4pairIKmN6casadi7WeakRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeE", !134, i64 0, !135, i64 8}
!137 = !{!136, !135, i64 8}
!138 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !17, i64 0}
!139 = distinct !{!139, !"_ZN6casadi6strvecB5cxx11Ev"}
!140 = distinct !{!140, !139, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!141 = !{!140}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!143 = distinct !{!143, !142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!144 = distinct !{!144, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!145 = distinct !{!145, !144, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!146 = !{!30, !30, i64 0}
!147 = !{!143}
!148 = !{!145, !143}
!149 = distinct !{!149, !33}
!150 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!151 = !{!150, !30, i64 0}
!152 = !{!150, !30, i64 8}
!153 = !{!150, !30, i64 16}
!154 = distinct !{!154, !"_ZN6casadi6strvecB5cxx11Ev"}
!155 = distinct !{!155, !154, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!156 = distinct !{!156, !"_ZN6casadi6strvecB5cxx11Ev"}
!157 = distinct !{!157, !156, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!158 = !{!155}
!159 = !{!157}
!160 = distinct !{!160, !"_ZN6casadi6strvecB5cxx11Ev"}
!161 = distinct !{!161, !160, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!162 = distinct !{!162, !"_ZN6casadi6strvecB5cxx11Ev"}
!163 = distinct !{!163, !162, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!164 = !{!161}
!165 = !{!163}
!166 = distinct !{!166, !"_ZN6casadi6strvecB5cxx11Ev"}
!167 = distinct !{!167, !166, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!168 = distinct !{!168, !"_ZN6casadi6strvecB5cxx11Ev"}
!169 = distinct !{!169, !168, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!170 = !{!"_ZTSSt4pairIxxE", !38, i64 0, !38, i64 8}
!171 = !{!170, !38, i64 0}
!172 = !{!167}
!173 = !{!170, !38, i64 8}
!174 = !{!169}
!175 = distinct !{!175, !"_ZN6casadi6strvecB5cxx11Ev"}
!176 = distinct !{!176, !175, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!177 = distinct !{!177, !"_ZN6casadi6strvecB5cxx11Ev"}
!178 = distinct !{!178, !177, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!179 = !{!176}
!180 = !{!178}
!181 = distinct !{!181, !"_ZN6casadi6strvecB5cxx11Ev"}
!182 = distinct !{!182, !181, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!183 = distinct !{!183, !"_ZN6casadi6strvecB5cxx11Ev"}
!184 = distinct !{!184, !183, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!185 = !{!182}
!186 = !{!184}
!187 = distinct !{!187, !"_ZN6casadi6strvecB5cxx11Ev"}
!188 = distinct !{!188, !187, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!189 = distinct !{!189, !"_ZN6casadi6strvecB5cxx11Ev"}
!190 = distinct !{!190, !189, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!191 = distinct !{!191, !43}
!192 = distinct !{!192, !33}
!193 = distinct !{!193, !33, !44, !45}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !33, !45, !44}
!196 = !{!188}
!197 = !{!190}
!198 = distinct !{!198, !"_ZN6casadi6strvecB5cxx11Ev"}
!199 = distinct !{!199, !198, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!200 = !{!199}
!201 = distinct !{!201, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!202 = distinct !{!202, !201, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!203 = distinct !{!203, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!204 = distinct !{!204, !203, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!205 = !{!202}
!206 = !{!204}
!207 = !{!204, !202}
!208 = distinct !{!208, !"_ZN6casadi6strvecB5cxx11Ev"}
!209 = distinct !{!209, !208, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!210 = distinct !{!210, !"_ZN6casadi6strvecB5cxx11Ev"}
!211 = distinct !{!211, !210, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!212 = distinct !{!212, !33, !44, !45}
!213 = distinct !{!213, !33, !45, !44}
!214 = distinct !{!214, !33}
!215 = distinct !{!215, !"_ZNK6casadi8Sparsity7get_rowEv"}
!216 = distinct !{!216, !215, !"_ZNK6casadi8Sparsity7get_rowEv: argument 0"}
!217 = distinct !{!217, !33, !44, !45}
!218 = distinct !{!218, !33, !45, !44}
!219 = !{!209}
!220 = !{!211}
!221 = !{!216}
!222 = distinct !{!222, !"_ZN6casadi6strvecB5cxx11Ev"}
!223 = distinct !{!223, !222, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!224 = !{!223}
!225 = distinct !{!225, !"_ZN6casadi6strvecB5cxx11Ev"}
!226 = distinct !{!226, !225, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!227 = !{!226}
!228 = distinct !{!228, !"_ZNK6casadi8Sparsity10get_colindEv"}
!229 = distinct !{!229, !228, !"_ZNK6casadi8Sparsity10get_colindEv: argument 0"}
!230 = distinct !{!230, !"_ZNK6casadi8Sparsity7get_rowEv"}
!231 = distinct !{!231, !230, !"_ZNK6casadi8Sparsity7get_rowEv: argument 0"}
!232 = !{!229}
!233 = !{!231}
!234 = distinct !{!234, !"_ZNK6casadi8Sparsity1TEv"}
!235 = distinct !{!235, !234, !"_ZNK6casadi8Sparsity1TEv: argument 0"}
!236 = !{!235}
!237 = distinct !{!237, !"_ZNK6casadi8Sparsity7get_rowEv"}
!238 = distinct !{!238, !237, !"_ZNK6casadi8Sparsity7get_rowEv: argument 0"}
!239 = distinct !{!239, !"_ZNK6casadi8Sparsity7get_colEv"}
!240 = distinct !{!240, !239, !"_ZNK6casadi8Sparsity7get_colEv: argument 0"}
!241 = !{!238}
!242 = !{!240}
!243 = distinct !{!243, !"_ZN6casadi6strvecB5cxx11Ev"}
!244 = distinct !{!244, !243, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!245 = !{!244}
!246 = distinct !{!246, !"_ZNK6casadi8Sparsity5uniteERKS0_"}
!247 = distinct !{!247, !246, !"_ZNK6casadi8Sparsity5uniteERKS0_: argument 0"}
!248 = !{!247}
!249 = distinct !{!249, !"_ZN6casadi6strvecB5cxx11Ev"}
!250 = distinct !{!250, !249, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!251 = !{!250}
!252 = distinct !{!252, !33}
!253 = distinct !{!253, !33}
!254 = distinct !{!254, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_"}
!255 = distinct !{!255, !254, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_: argument 0"}
!256 = distinct !{!256, !"_ZN6casadi6strvecB5cxx11Ev"}
!257 = distinct !{!257, !256, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!258 = distinct !{!258, !33}
!259 = distinct !{!259, !33}
!260 = distinct !{!260, !33}
!261 = !{!255}
!262 = !{!257}
!263 = distinct !{!263, !"_ZN6casadi6strvecB5cxx11Ev"}
!264 = distinct !{!264, !263, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!265 = !{!264}
!266 = distinct !{!266, !33}
!267 = distinct !{!267, !"_ZN6casadi6strvecB5cxx11Ev"}
!268 = distinct !{!268, !267, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!269 = !{!268}
!270 = distinct !{!270, !"_ZN6casadi6strvecB5cxx11Ev"}
!271 = distinct !{!271, !270, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!272 = !{!271}
!273 = distinct !{!273, !43}
!274 = distinct !{!274, !33}
!275 = distinct !{!275, !33, !44, !45}
!276 = distinct !{!276, !33, !45, !44}
!277 = distinct !{!277, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!278 = distinct !{!278, !277, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!279 = distinct !{!279, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!280 = distinct !{!280, !279, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!281 = distinct !{!281, !"_ZNK6casadi8Sparsity3dimB5cxx11Eb"}
!282 = distinct !{!282, !281, !"_ZNK6casadi8Sparsity3dimB5cxx11Eb: argument 0"}
!283 = distinct !{!283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!284 = distinct !{!284, !283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!285 = distinct !{!285, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!286 = distinct !{!286, !285, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!287 = distinct !{!287, !"_ZNK6casadi8Sparsity3dimB5cxx11Eb"}
!288 = distinct !{!288, !287, !"_ZNK6casadi8Sparsity3dimB5cxx11Eb: argument 0"}
!289 = distinct !{!289, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!290 = distinct !{!290, !289, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!291 = distinct !{!291, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!292 = distinct !{!292, !291, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!293 = !{!278}
!294 = !{!280}
!295 = !{!282}
!296 = !{!284}
!297 = !{!286}
!298 = !{!288}
!299 = !{!290}
!300 = !{!292}
!301 = distinct !{!301, !"_ZN6casadi6strvecB5cxx11Ev"}
!302 = distinct !{!302, !301, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!303 = distinct !{!303, !"_ZNK6casadi8Sparsity3amdEv"}
!304 = distinct !{!304, !303, !"_ZNK6casadi8Sparsity3amdEv: argument 0"}
!305 = !{!302}
!306 = !{!304}
!307 = distinct !{!307, !"_ZNK6casadi8Sparsity1TEv"}
!308 = distinct !{!308, !307, !"_ZNK6casadi8Sparsity1TEv: argument 0"}
!309 = !{!308}
!310 = distinct !{!310, !"_ZN6casadi6strvecB5cxx11Ev"}
!311 = distinct !{!311, !310, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!312 = distinct !{!312, !"_ZN6casadi6strvecB5cxx11Ev"}
!313 = distinct !{!313, !312, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!314 = distinct !{!314, !"_ZN6casadi6strvecB5cxx11Ev"}
!315 = distinct !{!315, !314, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!316 = !{!311}
!317 = !{!313}
!318 = !{!315}
!319 = distinct !{!319, !"_ZNK6casadi8Sparsity1TEv"}
!320 = distinct !{!320, !319, !"_ZNK6casadi8Sparsity1TEv: argument 0"}
!321 = !{!320}
!322 = distinct !{!322, !"_ZN6casadi6strvecB5cxx11Ev"}
!323 = distinct !{!323, !322, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!324 = distinct !{!324, !33}
!325 = distinct !{!325, !"_ZN6casadi6strvecB5cxx11Ev"}
!326 = distinct !{!326, !325, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!327 = distinct !{!327, !33}
!328 = distinct !{!328, !"_ZN6casadi6strvecB5cxx11Ev"}
!329 = distinct !{!329, !328, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!330 = distinct !{!330, !33}
!331 = distinct !{!331, !"_ZN6casadi6strvecB5cxx11Ev"}
!332 = distinct !{!332, !331, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!333 = distinct !{!333, !33}
!334 = distinct !{!334, !33, !44, !45}
!335 = distinct !{!335, !33, !45, !44}
!336 = distinct !{!336, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_"}
!337 = distinct !{!337, !336, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_: argument 0"}
!338 = distinct !{!338, !33}
!339 = distinct !{!339, !33}
!340 = distinct !{!340, !33}
!341 = distinct !{!341, !33}
!342 = distinct !{!342, !33}
!343 = distinct !{!343, !33}
!344 = !{!323}
!345 = !{!326}
!346 = !{!329}
!347 = !{!332}
!348 = !{!337}
!349 = !{!"_ZTSSt4pairImN6casadi7WeakRefEE", !23, i64 0, !81, i64 8}
!350 = !{!349, !23, i64 0}
!351 = distinct !{!351, !"_ZN6casadi6strvecB5cxx11Ev"}
!352 = distinct !{!352, !351, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!353 = distinct !{!353, !33}
!354 = distinct !{!354, !33}
!355 = !{!352}
!356 = distinct !{!356, !"_ZN6casadi6strvecB5cxx11Ev"}
!357 = distinct !{!357, !356, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!358 = distinct !{!358, !33}
!359 = distinct !{!359, !33}
!360 = !{!357}
!361 = distinct !{!361, !"_ZN6casadi6strvecB5cxx11Ev"}
!362 = distinct !{!362, !361, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!363 = distinct !{!363, !"_ZN6casadi6strvecB5cxx11Ev"}
!364 = distinct !{!364, !363, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!365 = distinct !{!365, !33, !44, !45}
!366 = distinct !{!366, !33, !45, !44}
!367 = distinct !{!367, !33}
!368 = !{!362}
!369 = !{!364}
!370 = distinct !{!370, !33}
!371 = distinct !{!371, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_"}
!372 = distinct !{!372, !371, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_: argument 0"}
!373 = distinct !{!373, !"_ZN6casadi6strvecB5cxx11Ev"}
!374 = distinct !{!374, !373, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!375 = distinct !{!375, !33}
!376 = distinct !{!376, !"_ZN6casadi6strvecB5cxx11Ev"}
!377 = distinct !{!377, !376, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!378 = distinct !{!378, !33}
!379 = !{!372}
!380 = !{!374}
!381 = !{!377}
!382 = distinct !{!382, !"_ZN6casadi6strvecB5cxx11Ev"}
!383 = distinct !{!383, !382, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!384 = distinct !{!384, !"_ZN6casadi6strvecB5cxx11Ev"}
!385 = distinct !{!385, !384, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!386 = distinct !{!386, !"_ZN6casadi6strvecB5cxx11Ev"}
!387 = distinct !{!387, !386, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!388 = distinct !{!388, !"_ZN6casadi6strvecB5cxx11Ev"}
!389 = distinct !{!389, !388, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!390 = distinct !{!390, !"_ZN6casadi6strvecB5cxx11Ev"}
!391 = distinct !{!391, !390, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!392 = distinct !{!392, !33}
!393 = distinct !{!393, !33, !44, !45}
!394 = distinct !{!394, !33}
!395 = distinct !{!395, !33}
!396 = distinct !{!396, !33, !45, !44}
!397 = distinct !{!397, !33}
!398 = distinct !{!398, !33}
!399 = distinct !{!399, !33}
!400 = distinct !{!400, !33}
!401 = distinct !{!401, !33}
!402 = distinct !{!402, !33}
!403 = distinct !{!403, !33}
!404 = distinct !{!404, !33}
!405 = !{!383}
!406 = !{!385}
!407 = !{!387}
!408 = !{!389}
!409 = !{!391}
!410 = distinct !{!410, !"_ZN6casadi6strvecB5cxx11Ev"}
!411 = distinct !{!411, !410, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!412 = distinct !{!412, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_"}
!413 = distinct !{!413, !412, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_: argument 0"}
!414 = distinct !{!414, !33}
!415 = !{!411}
!416 = !{!413}
!417 = distinct !{!417, !"_ZN6casadi6strvecB5cxx11Ev"}
!418 = distinct !{!418, !417, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!419 = !{!418}
!420 = !{!"_ZTSN6casadi14SparsityStructE", !38, i64 0, !38, i64 8, !34, i64 16, !34, i64 24}
!421 = !{!420, !34, i64 16}
!422 = !{!420, !34, i64 24}
!423 = distinct !{!423, !"_ZN6casadi6strvecB5cxx11Ev"}
!424 = distinct !{!424, !423, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!425 = !{!424}
!426 = distinct !{!426, !"_ZN6casadi6strvecB5cxx11Ev"}
!427 = distinct !{!427, !426, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!428 = !{!427}
!429 = distinct !{!429, !"_ZN6casadi6strvecB5cxx11Ev"}
!430 = distinct !{!430, !429, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!431 = distinct !{!431, !"_ZNK6casadi8Sparsity7get_rowEv"}
!432 = distinct !{!432, !431, !"_ZNK6casadi8Sparsity7get_rowEv: argument 0"}
!433 = distinct !{!433, !"_ZNK6casadi8Sparsity7get_rowEv"}
!434 = distinct !{!434, !433, !"_ZNK6casadi8Sparsity7get_rowEv: argument 0"}
!435 = !{!430}
!436 = !{!432}
!437 = !{!434}
!438 = distinct !{!438, !33}
!439 = distinct !{!439, !33}
!440 = distinct !{!440, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_"}
!441 = distinct !{!441, !440, !"_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_: argument 0"}
!442 = distinct !{!442, !"_ZN6casadi6strvecB5cxx11Ev"}
!443 = distinct !{!443, !442, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!444 = distinct !{!444, !33}
!445 = distinct !{!445, !33}
!446 = distinct !{!446, !33}
!447 = !{!441}
!448 = !{!443}
!449 = distinct !{!449, !33}
!450 = distinct !{!450, !33}
!451 = distinct !{!451, !33, !44, !45}
!452 = distinct !{!452, !43}
!453 = distinct !{!453, !33, !44}
!454 = distinct !{!454, !33}
!455 = distinct !{!455, !33}
!456 = distinct !{!456, !33}
!457 = distinct !{!457, !33}
!458 = distinct !{!458, !"_ZN6casadi6strvecB5cxx11Ev"}
!459 = distinct !{!459, !458, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!460 = distinct !{!460, !"_ZN6casadi6strvecB5cxx11Ev"}
!461 = distinct !{!461, !460, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!462 = distinct !{!462, !"_ZN6casadi6strvecB5cxx11Ev"}
!463 = distinct !{!463, !462, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!464 = distinct !{!464, !"_ZN6casadi6strvecB5cxx11Ev"}
!465 = distinct !{!465, !464, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!466 = distinct !{!466, !33, !44, !45}
!467 = distinct !{!467, !33, !45, !44}
!468 = distinct !{!468, !33}
!469 = !{!459}
!470 = !{!461}
!471 = !{!463}
!472 = !{!465}
!473 = distinct !{!473, !"_ZNK6casadi8Sparsity1TEv"}
!474 = distinct !{!474, !473, !"_ZNK6casadi8Sparsity1TEv: argument 0"}
end_hunk_1
