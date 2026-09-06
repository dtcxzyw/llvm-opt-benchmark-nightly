Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/util?download=true
inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow14MakeEmptyArrayESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.be

bb.ay:                                            ; preds = %bb.au
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bf

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ei = load ptr, ptr %8, align 8, !tbaa !1436  ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !113
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %i.ei, i64 noundef 0)
          to label %_ZN5arrow6StatusD2Ev.exit56 unwind label %bb.bc

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %i.em = load ptr, ptr %12, align 8, !tbaa !91   ; 2 uses
  store ptr %i.em, ptr %11, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN5arrow6StatusD2Ev.exit62, label %bb.az, !prof !92

bb.az:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit56
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  %i.eo = load ptr, ptr %11, align 8, !tbaa !91   ; 2 uses
  %.not.i57 = icmp eq ptr %i.eo, null
  br i1 %.not.i57, label %_ZN5arrow6StatusD2Ev.exit58, label %bb.ba, !prof !92

bb.ba:                                            ; preds = %bb.az
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !102, !range !103, !noundef !104
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN5arrow6StatusD2Ev.exit58, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  br label %_ZN5arrow6StatusD2Ev.exit58

_ZN5arrow6StatusD2Ev.exit58:                      ; preds = %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.be

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bf

_ZN5arrow6StatusD2Ev.exit62:                      ; preds = %_ZN5arrow6StatusD2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.et = load ptr, ptr %8, align 8, !tbaa !1436
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.et)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit62
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit58, %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit62
  %i.ev = load ptr, ptr %8, align 8, !tbaa !1436  ; 3 uses
  %.not.i63 = icmp eq ptr %i.ev, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i: ; preds = %bb.be
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !113
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ev) #19, !inline_history !1429
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.be, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.ay
  %.pn22 = phi { ptr, i32 } [ %i.eu, %bb.bd ], [ %i.es, %bb.bc ], [ %i.eh, %bb.ay ]
  %i.ez = load ptr, ptr %8, align 8, !tbaa !1436  ; 3 uses
  %.not.i64 = icmp eq ptr %i.ez, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i65: ; preds = %bb.bf
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !113
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ez) #19, !inline_history !1429
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit66: ; preds = %bb.bf, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.n, %bb.ak, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit66
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn22, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit66 ], [ %i.dd, %bb.ak ], [ %i.ag, %bb.n ]
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !111
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !1437
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !1437
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !118

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !156

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !102, !range !103, !noundef !104
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.32") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.54") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.29", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !204    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 13 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %3

3:                                                ; preds = %bb.b
  %4 = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %4, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !118

.noexc.i.i:                                       ; preds = %3
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  %.pre254 = load ptr, ptr %1, align 8, !tbaa !1449
  %.pre255 = load ptr, ptr %i.a, align 8, !tbaa !1449
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.j = phi ptr [ %i.b, %bb.b ], [ %.pre255, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.b ], [ %.pre254, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.b ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !204
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !205
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #21
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89, %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.an, %bb.j ], [ %.pn56.pn141, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !203
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !206  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.ab, 0
  br i1 %i.v, label %._crit_edge.thread, label %bb.k

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.044193 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.f ]
  %.sroa.0128.0192 = phi ptr [ %i.ac, %.lr.ph ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.0128.0192, align 8, !tbaa !200
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !207
  %i.ab = add nsw i64 %i.aa, %.044193             ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0128.0192, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.t
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ae = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.ae, label %.noexc.i.i64, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, !prof !118

.noexc.i.i64:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.g
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  %.pre252 = load ptr, ptr %1, align 8, !tbaa !1449
  %.pre253 = load ptr, ptr %i.a, align 8, !tbaa !1449
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, %._crit_edge.thread
  %i.ag = phi ptr [ %i.b, %._crit_edge.thread ], [ %.pre253, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61 ]
  %i.ah = phi ptr [ %i.c, %._crit_edge.thread ], [ %.pre252, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61 ]
  %i.ai = phi ptr [ null, %._crit_edge.thread ], [ %i.af, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61 ] ; 6 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !204
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !203
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !205
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.ah, ptr %i.ag, ptr noundef %i.ai)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i62, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.f) #21
  br label %common.resume

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65: ; preds = %bb.h
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !203
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ao = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.ao, label %.noexc, label %.lr.ph.preheader.i.i.i.i.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.k
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !204
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.f   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.f, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !205
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !203
  %i.at = load ptr, ptr %1, align 8, !tbaa !1449  ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.preheader144, label %.lr.ph201

.preheader144:                                    ; preds = %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0116.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0116.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %.sroa.13122.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13122.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %.sroa.0108.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %i.aw = icmp sgt i64 %i.ab, 0
  br i1 %i.aw, label %.preheader143.lr.ph, label %._crit_edge220

.preheader143.lr.ph:                              ; preds = %.preheader144
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !203
  %.pre249 = load ptr, ptr %1, align 8, !tbaa !204
  br label %.preheader143

.lr.ph201:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit
  %.sroa.0105.0200 = phi ptr [ %i.cf, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0199 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0198 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.0108.0197 = phi ptr [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.sroa.13122.0196 = phi ptr [ %.sroa.13122.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.sroa.10121.0195 = phi ptr [ %.sroa.10121.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.0116.0194 = phi ptr [ %.sroa.0116.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.ay = load ptr, ptr %.sroa.0105.0200, align 8, !tbaa !206 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10121.0195, %.sroa.13122.0196
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph201
  %i.az = ptrtoint ptr %i.ay to i64
  store i64 %i.az, ptr %.sroa.10121.0195, align 8, !tbaa !206
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

bb.m:                                             ; preds = %.lr.ph201
  %i.ba = ptrtoint ptr %.sroa.13122.0196 to i64
  %i.bb = ptrtoint ptr %.sroa.0116.0194 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.n, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc70 unwind label %.loopexit.split-lp146

.noexc70:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #20
          to label %.noexc71 unwind label %.loopexit145 ; 5 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = ptrtoint ptr %i.ay to i64
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !206
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0116.0194, %.sroa.13122.0196
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.sroa.0116.0194, %.noexc71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !206, !alias.scope !1451, !noalias !1450
  store i64 %i.bn, ptr %.012.i.i.i.i.i, align 8, !tbaa !206, !alias.scope !1450, !noalias !1451
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %.sroa.13122.0196
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1441

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc71
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.bk, %.noexc71 ], [ %i.bp, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0116.0194, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0194, i64 noundef %i.bc) #21
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, %bb.l
  %.sroa.0116.3 = phi ptr [ %i.bk, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.0116.0194, %bb.l ] ; 4 uses
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.10121.0195, %bb.l ]
  %.sroa.13122.3 = phi ptr [ %i.bq, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.13122.0196, %bb.l ] ; 4 uses
  %.sroa.10121.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  %.not.i72 = icmp eq ptr %.sroa.10.0198, %.sroa.13.0199
  br i1 %.not.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  store i64 0, ptr %.sroa.10.0198, align 8, !tbaa !157
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  %i.br = ptrtoint ptr %.sroa.13.0199 to i64
  %i.bs = ptrtoint ptr %.sroa.0108.0197 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc75 unwind label %.loopexit.split-lp151

.noexc75:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i73 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i73, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i74)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #20
          to label %.noexc76 unwind label %.loopexit150 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !157
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.s, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %.sroa.0108.0197, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc76
  %.not.i17.i.i = icmp eq ptr %.sroa.0108.0197, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0197, i64 noundef %i.bt) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.p
  %.sroa.0108.1 = phi ptr [ %i.cb, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.0108.0197, %bb.p ] ; 2 uses
  %.pn142 = phi ptr [ %i.cc, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.10.0198, %bb.p ]
  %.sroa.13.1 = phi ptr [ %i.ce, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.13.0199, %bb.p ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn142, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0105.0200, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.au
  br i1 %i.cg, label %.preheader144, label %.lr.ph201

.loopexit145:                                     ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp146:                            ; preds = %bb.n
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit150:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp151:                            ; preds = %bb.r
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

end_hunk_0
