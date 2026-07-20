inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev:bb.a

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !96

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !64, !range !74, !noundef !75
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1336 ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1339   ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 10 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1339
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1336
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1340
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.c, ptr %i.b, ptr noundef %i.j)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #21
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89, %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.aj, %bb.j ], [ %.pn56.pn139, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1336
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1341 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1341 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.z, 0
  br i1 %i.t, label %._crit_edge.thread, label %bb.k

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0191 = phi i64 [ %i.z, %.lr.ph ], [ 0, %bb.f ]
  %.sroa.0126.0190 = phi ptr [ %i.aa, %.lr.ph ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.0126.0190, align 8, !tbaa !1327
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1342
  %i.z = add nsw i64 %i.y, %.0191                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0126.0190, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ac = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.ac, label %.noexc.i.i64, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, !prof !96

.noexc.i.i64:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.g
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, %._crit_edge.thread
  %i.ae = phi ptr [ null, %._crit_edge.thread ], [ %i.ad, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61 ] ; 6 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !1339
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1336
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1340
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr nonnull %i.c, ptr %i.b, ptr noundef %i.ae)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.f) #21
  br label %common.resume

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65: ; preds = %bb.h
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !1336
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ak = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.ak, label %.noexc, label %.lr.ph.preheader.i.i.i.i.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.k
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !1339
  %i.am = getelementptr i8, ptr %i.al, i64 %i.f   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.f, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1340
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1336
  %i.ap = icmp eq ptr %i.c, %i.b
  br i1 %i.ap, label %.preheader142, label %.lr.ph199

.preheader142:                                    ; preds = %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0108.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %.sroa.13121.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13121.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %.sroa.0115.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0115.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %i.aq = icmp sgt i64 %i.z, 0
  br i1 %i.aq, label %.preheader141.lr.ph, label %._crit_edge219

.preheader141.lr.ph:                              ; preds = %.preheader142
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1336
  %.pre248 = load ptr, ptr %1, align 8, !tbaa !1339
  br label %.preheader141

.lr.ph199:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit
  %.sroa.0115.0198 = phi ptr [ %.sroa.0115.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 10 uses
  %.sroa.10120.0197 = phi ptr [ %.sroa.10120.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.sroa.13121.0196 = phi ptr [ %.sroa.13121.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0105.0195 = phi ptr [ %i.cm, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0194 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0193 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.0108.0192 = phi ptr [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.as = load ptr, ptr %.sroa.0105.0195, align 8, !tbaa !1341 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10120.0197, %.sroa.13121.0196
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph199
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %.sroa.10120.0197, align 8, !tbaa !1341
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

bb.m:                                             ; preds = %.lr.ph199
  %i.au = ptrtoint ptr %.sroa.10120.0197 to i64   ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0115.0198 to i64    ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.n, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc70 unwind label %.loopexit.split-lp144

.noexc70:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #20
          to label %.noexc71 unwind label %.loopexit143 ; 8 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = ptrtoint ptr %i.as to i64
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !1341
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0115.0198, %.sroa.10120.0197
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc71
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = sub i64 %i.au, %i.av
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  %i.bm = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0115.0198, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bq ; 2 uses
  %next.gep335 = getelementptr i8, ptr %.sroa.0115.0198, i64 %i.bq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.br = getelementptr i8, ptr %next.gep335, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep335, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  %wide.load336 = load <2 x i64>, ptr %i.br, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  store <2 x i64> %wide.load336, ptr %i.bs, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.preheader343:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0115.0198, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  store i64 %i.bu, ptr %.012.i.i.i.i.i, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %.sroa.10120.0197
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1349

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.be, %.noexc71 ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0115.0198, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0198, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, %bb.l
  %.sroa.13121.3 = phi ptr [ %i.bx, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.13121.0196, %bb.l ] ; 4 uses
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.10120.0197, %bb.l ]
  %.sroa.0115.3 = phi ptr [ %i.be, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.0115.0198, %bb.l ] ; 4 uses
  %.sroa.10120.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  %.not.i72 = icmp eq ptr %.sroa.10.0193, %.sroa.13.0194
  br i1 %.not.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  store i64 0, ptr %.sroa.10.0193, align 8, !tbaa !236
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  %i.by = ptrtoint ptr %.sroa.13.0194 to i64
  %i.bz = ptrtoint ptr %.sroa.0108.0192 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc75 unwind label %.loopexit.split-lp149

.noexc75:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i73 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i73, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i74)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #20
          to label %.noexc76 unwind label %.loopexit148 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !236
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.s, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %.sroa.0108.0192, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc76
  %.not.i17.i.i = icmp eq ptr %.sroa.0108.0192, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0192, i64 noundef %i.ca) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.p
  %.sroa.0108.1 = phi ptr [ %i.ci, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.0108.0192, %bb.p ] ; 2 uses
  %.pn140 = phi ptr [ %i.cj, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.10.0193, %bb.p ]
  %.sroa.13.1 = phi ptr [ %i.cl, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.13.0194, %bb.p ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn140, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0105.0195, i64 24 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.b
  br i1 %i.cn, label %.preheader142, label %.lr.ph199

.loopexit143:                                     ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp144:                            ; preds = %bb.n
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit148:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp149:                            ; preds = %bb.r
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader141:                                    ; preds = %.preheader141.lr.ph, %._crit_edge217
  %i.co = phi ptr [ %.pre248, %.preheader141.lr.ph ], [ %i.dm, %._crit_edge217 ] ; 4 uses
  %i.cp = phi ptr [ %.pre, %.preheader141.lr.ph ], [ %i.dn, %._crit_edge217 ] ; 2 uses
  %.052218 = phi i64 [ 0, %.preheader141.lr.ph ], [ %i.do, %._crit_edge217 ]
  %.not = icmp eq ptr %i.cp, %i.co
  br i1 %.not, label %._crit_edge217, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %.preheader141
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.u
  %.051212 = phi i64 [ %i.dl, %bb.u ], [ 0, %.lr.ph213.preheader ] ; 3 uses
  %.0129211 = phi i64 [ %.sroa.speculated, %bb.u ], [ 9223372036854775807, %.lr.ph213.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0115.0.lcssa, i64 %.051212 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0.lcssa, i64 %.051212 ; 2 uses
  %.promoted = load i64, ptr %i.cv, align 8, !tbaa !236 ; 2 uses
  %.promoted204 = load ptr, ptr %i.cu, align 8, !tbaa !1350 ; 2 uses
  %i.cw = load ptr, ptr %.promoted204, align 8, !tbaa !1327
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1342 ; 2 uses
  %i.db = icmp eq i64 %.promoted, %i.da
  br i1 %i.db, label %.lr.ph206, label %bb.u

.lr.ph206:                                        ; preds = %.lr.ph213, %.lr.ph206
  %i.dc = phi ptr [ %i.dd, %.lr.ph206 ], [ %.promoted204, %.lr.ph213 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !236
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1327
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1342 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph206, label %._crit_edge207, !llvm.loop !1352

._crit_edge207:                                   ; preds = %.lr.ph206
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !1350
end_hunk_0
