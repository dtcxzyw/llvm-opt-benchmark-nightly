inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZN8facebook5velox6common12_GLOBAL__N_124createBigintValuesFilterERKSt6vectorIlSaIlEEbb:bb.a
  %i.ds = trunc i64 %.sroa.speculated.i.i.i.i44 to i16
  store i16 %i.ds, ptr %i.dr, align 2, !tbaa !140, !noalias !605
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 44
  %i.du = icmp eq i64 %i.cf, %i.ce
  %i.dv = zext i1 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 4, !tbaa !141, !noalias !605
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 45 ; 2 uses
  %.not.i.i.i.i45 = icmp sgt i64 %i.ce, 2147483647
  br i1 %.not.i.i.i.i45, label %.thread.i.i.i.i47, label %bb.v

.thread.i.i.i.i47:                                ; preds = %.noexc.i40
  store i8 0, ptr %i.dw, align 1, !tbaa !142, !noalias !605
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit52

bb.v:                                             ; preds = %.noexc.i40
  %i.dx = icmp sgt i64 %i.cf, -2147483649
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !142, !noalias !605
  %.not1.i.i.i.i46 = icmp sgt i64 %i.ce, 32767
  br i1 %.not1.i.i.i.i46, label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit52, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = icmp sgt i64 %i.cf, -32769
  %i.ea = zext i1 %i.dz to i8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit52

bb.x:                                             ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 24) #46, !noalias !599, !inline_history !147
  br label %common.resume

_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit52: ; preds = %bb.w, %bb.v, %.thread.i.i.i.i47
  %i.ec = phi i8 [ 0, %bb.v ], [ %i.ea, %bb.w ], [ 0, %.thread.i.i.i.i47 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.de, i64 46
  store i8 %i.ec, ptr %i.ee, align 2, !tbaa !143, !noalias !605
  store ptr %i.de, ptr %i.ed, align 8, !tbaa !153, !alias.scope !602, !noalias !599
  store ptr %i.da, ptr %0, align 8, !tbaa !104
  br label %bb.ak

bb.y:                                             ; preds = %bb.t
  %i.ef = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48, !noalias !606, !inline_history !132 ; 14 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.d, ptr %i.eg, align 8, !tbaa !72, !noalias !606
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 9
  store i8 1, ptr %i.eh, align 1, !tbaa !71, !noalias !606
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 5, ptr %i.ei, align 4, !tbaa !68, !noalias !606
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ef, align 8, !tbaa !102, !noalias !606
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.ce, ptr %i.ej, align 8, !tbaa !133, !noalias !606
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i64 %i.cf, ptr %i.ek, align 8, !tbaa !136, !noalias !606
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %.sroa.speculated15.i.i53 = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 -2147483648)
  %i.em = trunc i64 %.sroa.speculated15.i.i53 to i32
  store i32 %i.em, ptr %i.el, align 8, !tbaa !137, !noalias !606
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %.sroa.speculated11.i.i54 = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 2147483647)
  %i.eo = trunc i64 %.sroa.speculated11.i.i54 to i32
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !138, !noalias !606
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %.sroa.speculated7.i.i55 = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 -32768)
  %i.eq = trunc i64 %.sroa.speculated7.i.i55 to i16
  store i16 %i.eq, ptr %i.ep, align 8, !tbaa !139, !noalias !606
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 42
  %.sroa.speculated.i.i56 = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 32767)
  %i.es = trunc i64 %.sroa.speculated.i.i56 to i16
  store i16 %i.es, ptr %i.er, align 2, !tbaa !140, !noalias !606
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 44
  %i.eu = icmp eq i64 %i.cf, %i.ce
  %i.ev = zext i1 %i.eu to i8
  store i8 %i.ev, ptr %i.et, align 4, !tbaa !141, !noalias !606
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 45 ; 2 uses
  %.not.i.i57 = icmp sgt i64 %i.ce, 2147483647
  br i1 %.not.i.i57, label %.thread.i.i59, label %bb.z

.thread.i.i59:                                    ; preds = %bb.y
  store i8 0, ptr %i.ew, align 1, !tbaa !142, !noalias !606
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit62

bb.z:                                             ; preds = %bb.y
  %i.ex = icmp sgt i64 %i.cf, -2147483649
  %i.ey = zext i1 %i.ex to i8
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !142, !noalias !606
  %.not1.i.i58 = icmp sgt i64 %i.ce, 32767
  br i1 %.not1.i.i58, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit62, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = icmp sgt i64 %i.cf, -32769
  %i.fa = zext i1 %i.ez to i8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit62

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit62: ; preds = %bb.aa, %bb.z, %.thread.i.i59
  %i.fb = phi i8 [ 0, %bb.z ], [ %i.fa, %bb.aa ], [ 0, %.thread.i.i59 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 46
  store i8 %i.fb, ptr %i.fc, align 2, !tbaa !143, !noalias !606
  store ptr %i.ef, ptr %0, align 8, !tbaa !104
  br label %bb.ak

bb.ab:                                            ; preds = %bb.s
  %i.fd = icmp slt i64 %i.ci, 2048
  %i.fe = shl nuw nsw i64 %i.s, 5
  %i.ff = icmp samesign ult i64 %i.ci, %i.fe
  %or.cond = select i1 %i.fd, i1 true, i1 %i.ff
  br i1 %or.cond, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  br i1 %3, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fg = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48, !noalias !609, !inline_history !612 ; 3 uses
  invoke void @_ZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common31NegatedBigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit unwind label %bb.ae, !noalias !609, !inline_history !612

bb.ae:                                            ; preds = %bb.ad
  %i.fh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 40) #46, !noalias !609, !inline_history !612
  br label %common.resume

_ZNSt10unique_ptrIN8facebook5velox6common31NegatedBigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ad
  store ptr %i.fg, ptr %0, align 8, !tbaa !104
  br label %bb.ak

bb.af:                                            ; preds = %bb.ac
  %i.fi = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48, !noalias !613, !inline_history !616 ; 3 uses
  invoke void @_ZN8facebook5velox6common24BigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common24BigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit unwind label %bb.ag, !noalias !613, !inline_history !616

bb.ag:                                            ; preds = %bb.af
  %i.fj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 72) #46, !noalias !613, !inline_history !616
  br label %common.resume

_ZNSt10unique_ptrIN8facebook5velox6common24BigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.af
  store ptr %i.fi, ptr %0, align 8, !tbaa !104
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ab, %._crit_edge
  br i1 %3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @_ZSt11make_uniqueIN8facebook5velox6common33NegatedBigintValuesUsingHashTableEJRlS4_RKSt6vectorIlSaIlEERbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.172") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.fk = load ptr, ptr %4, align 8, !tbaa !414
  store ptr null, ptr %4, align 8, !tbaa !414
  store ptr %i.fk, ptr %0, align 8, !tbaa !104
  call void @_ZNSt10unique_ptrIN8facebook5velox6common33NegatedBigintValuesUsingHashTableESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZSt11make_uniqueIN8facebook5velox6common26BigintValuesUsingHashTableEJRlS4_RKSt6vectorIlSaIlEERbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.135") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.fl = load ptr, ptr %5, align 8, !tbaa !373
  store ptr null, ptr %5, align 8, !tbaa !373
  store ptr %i.fl, ptr %0, align 8, !tbaa !104
  call void @_ZNSt10unique_ptrIN8facebook5velox6common26BigintValuesUsingHashTableESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZNSt10unique_ptrIN8facebook5velox6common24BigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN8facebook5velox6common31NegatedBigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit62, %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6common19createHugeintValuesERKSt6vectorInSaInEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i128, align 16                    ; 5 uses
  %i.b = alloca i128, align 16                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.c = load ptr, ptr %1, align 8, !tbaa !548    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !548  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.h
  %i.i = load i128, ptr %i.c, align 16, !tbaa !219 ; 4 uses
  br i1 %or.cond.i.i, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.thread, label %.lr.ph.i.i

_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.thread: ; preds = %bb.a
  store i128 %i.i, ptr %i.a, align 16, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  br label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = phi i128 [ %3, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %.sroa.02.09.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.c, %bb.a ]
  %i.l = load i128, ptr %i.k, align 16, !tbaa !219 ; 2 uses
  %i.m = icmp slt i128 %i.l, %i.j
  %3 = tail call i128 @llvm.smin.i128(i128 %i.l, i128 %i.j)
  %spec.select.i.i = select i1 %i.m, ptr %i.k, ptr %.sroa.02.09.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.e
  br i1 %i.o, label %.lr.ph.preheader.i.i9, label %.lr.ph.i.i, !llvm.loop !617

.lr.ph.preheader.i.i9:                            ; preds = %.lr.ph.i.i
  %i.p = load i128, ptr %spec.select.i.i, align 16, !tbaa !219
  store i128 %i.p, ptr %i.a, align 16, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11, %.lr.ph.preheader.i.i9
  %i.q = phi i128 [ %4, %.lr.ph.i.i11 ], [ %i.i, %.lr.ph.preheader.i.i9 ] ; 2 uses
  %i.r = phi ptr [ %i.u, %.lr.ph.i.i11 ], [ %i.g, %.lr.ph.preheader.i.i9 ] ; 3 uses
  %.sroa.02.09.i.i12 = phi ptr [ %spec.select.i.i13, %.lr.ph.i.i11 ], [ %i.c, %.lr.ph.preheader.i.i9 ]
  %i.s = load i128, ptr %i.r, align 16, !tbaa !219 ; 2 uses
  %i.t = icmp slt i128 %i.q, %i.s
  %4 = tail call i128 @llvm.smax.i128(i128 %i.q, i128 %i.s)
  %spec.select.i.i13 = select i1 %i.t, ptr %i.r, ptr %.sroa.02.09.i.i12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.loopexit, label %.lr.ph.i.i11, !llvm.loop !618

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.loopexit: ; preds = %.lr.ph.i.i11
  %.pre = load i128, ptr %spec.select.i.i13, align 16, !tbaa !219
  br label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.loopexit, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.thread
  %i.w = phi i128 [ %i.i, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.thread ], [ %.pre, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit.loopexit ]
  store i128 %i.w, ptr %i.b, align 16, !tbaa !219
  %i.x = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #48, !noalias !619 ; 3 uses
  invoke void @_ZN8facebook5velox6common27HugeintValuesUsingHashTableC1ERKnS4_RKSt6vectorInSaInEEb(ptr noundef nonnull align 16 dereferenceable(80) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common27HugeintValuesUsingHashTableESt14default_deleteIS3_EED2Ev.exit unwind label %bb.b, !noalias !619

bb.b:                                             ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 80) #46, !noalias !619
  resume { ptr, i32 } %i.y

_ZNSt10unique_ptrIN8facebook5velox6common27HugeintValuesUsingHashTableESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKnSt6vectorInSaInEEEEET_S8_S8_.exit
  store ptr %i.x, ptr %0, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6common25createNegatedBigintValuesERKSt6vectorIlSaIlEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @_ZN8facebook5velox6common12_GLOBAL__N_124createBigintValuesFilterERKSt6vectorIlSaIlEEbb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6common16BigintMultiRangeC2ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 10), (12, 64)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.856", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.855", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.c, align 1, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 17, ptr %i.d, align 4, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common16BigintMultiRangeE, i64 16), ptr %0, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !280
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !278
  store ptr %i.j, ptr %i.h, align 8, !tbaa !278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !280  ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !280  ; 3 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.e, !prof !61

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEbE18veloxCheckFailArgs, ptr noundef nonnull @.str.74) #45
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.f, label %.lr.ph, !prof !61

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !622
  store i64 %i.s, ptr %4, align 16, !tbaa !9, !alias.scope !625, !noalias !622
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.w, align 16, !tbaa !9, !alias.scope !625, !noalias !622
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.76, i64 45, i64 20, ptr nonnull %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !622
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEbE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.76) #45
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !9
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn19 = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.x, %bb.i ], [ %i.y, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.ab

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.ae = ptrtoint ptr %i.bl to i64
  %i.af = ptrtoint ptr %i.bj to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.fr86 = freeze i64 %i.ag
  %i.ah = ashr i64 %.fr86, 3                      ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 1
  br i1 %i.ai, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %.preheader
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !274 ; 5 uses
  %i.ak = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.al = add nsw i64 %i.ah, -2
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.epil.preheader, label %.lr.ph46.new

.lr.ph46.new:                                     ; preds = %.lr.ph46
  %unroll_iter = and i64 %i.ak, -4
  br label %bb.w

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.an = phi ptr [ null, %.lr.ph ], [ %i.bj, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 5 uses
  %i.ao = phi ptr [ null, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %i.ap = phi ptr [ null, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %.sroa.032.042 = phi ptr [ %i.l, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.042, align 8, !tbaa !153
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.u, align 8, !tbaa !202
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.m:                                             ; preds = %bb.k
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #48
          to label %.noexc23 unwind label %.loopexit ; 5 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %i.as, ptr %i.bf, align 8, !tbaa !33
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.o, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common12_GLOBAL__N_129combineRangesAndNegatedValuesERKSt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EERS3_IlSaIlEEb:bb.a
vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.fv, %n.vec336
  br i1 %cmp.n342, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96, label %.lr.ph.i.i.i.i85.preheader

.lr.ph.i.i.i.i85.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i86.ph = phi ptr [ %i.fp, %iter.check ], [ %i.fp, %vector.memcheck ], [ %i.ga, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  %.0911.i.i.i.i87.ph = phi ptr [ %i.dy, %iter.check ], [ %i.dy, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %.lr.ph.i.i.i.i85.preheader, %.lr.ph.i.i.i.i85
  %.012.i.i.i.i86 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i85 ], [ %.012.i.i.i.i86.ph, %.lr.ph.i.i.i.i85.preheader ] ; 2 uses
  %.0911.i.i.i.i87 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i85 ], [ %.0911.i.i.i.i87.ph, %.lr.ph.i.i.i.i85.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.gs = load i64, ptr %.0911.i.i.i.i87, align 8, !tbaa !153, !alias.scope !928, !noalias !925
  store i64 %i.gs, ptr %.012.i.i.i.i86, align 8, !tbaa !153, !alias.scope !925, !noalias !928
  store ptr null, ptr %.0911.i.i.i.i87, align 8, !tbaa !153, !alias.scope !928, !noalias !925
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i87, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i86, i64 8 ; 2 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.gt, %i.dw
  br i1 %.not.i.i.i.i88, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96, label %.lr.ph.i.i.i.i85, !llvm.loop !937

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96: ; preds = %.lr.ph.i.i.i.i85, %middle.block, %vec.epilog.middle.block, %.noexc100
  %.0.lcssa.i.i.i.i90 = phi ptr [ %i.fp, %.noexc100 ], [ %i.go, %vec.epilog.middle.block ], [ %i.ga, %middle.block ], [ %i.gu, %.lr.ph.i.i.i.i85 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i90, i64 8 ; 2 uses
  %.not.i23.i98 = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i98, label %.noexc57, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.fh) #46
  %.pre216.pre = load ptr, ptr %1, align 8, !tbaa !274
  br label %.noexc57

.noexc57:                                         ; preds = %bb.w, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96
  %.pre216 = phi ptr [ %.pre216.pre, %bb.w ], [ %.pre216220, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i96 ] ; 2 uses
  store ptr %i.fp, ptr %4, align 8, !tbaa !274
  store ptr %i.gv, ptr %i.e, align 8, !tbaa !277
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn ; 3 uses
  store ptr %i.gw, ptr %i.f, align 8, !tbaa !278
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit61

bb.x:                                             ; preds = %bb.p
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i81
  %lpad.loopexit125 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit.split-lp: ; preds = %bb.v
  %lpad.loopexit.split-lp126 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit.split-lp, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit
  %lpad.phi127 = phi { ptr, i32 } [ %lpad.loopexit125, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit ], [ %lpad.loopexit.split-lp126, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 48) #46
  br label %bb.ab

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit61: ; preds = %.noexc57, %bb.t, %bb.o, %bb.n
  %.pre216222 = phi ptr [ %.pre216, %.noexc57 ], [ %.pre216220, %bb.t ], [ %.pre216220, %bb.o ], [ %.pre216220, %bb.n ]
  %i.gy = phi ptr [ %.pre216, %.noexc57 ], [ %i.dv, %bb.t ], [ %i.dv, %bb.o ], [ %i.dv, %bb.n ] ; 2 uses
  %i.gz = phi ptr [ %i.gw, %.noexc57 ], [ %i.dw, %bb.t ], [ %i.dw, %bb.o ], [ %i.dw, %bb.n ] ; 2 uses
  %.promoted159214 = phi ptr [ %i.gw, %.noexc57 ], [ %i.dw, %bb.t ], [ %.promoted159212, %bb.o ], [ %.promoted159212, %bb.n ]
  %.promoted149211 = phi ptr [ %i.gv, %.noexc57 ], [ %i.fe, %bb.t ], [ %i.dx, %bb.o ], [ %i.dx, %bb.n ] ; 2 uses
  %.promoted208 = phi ptr [ %i.fp, %.noexc57 ], [ %i.dy, %bb.t ], [ %i.dy, %bb.o ], [ %i.dy, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !277
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3
  %i.hf = icmp ugt i64 %i.he, %indvars.iv.next
  br i1 %i.hf, label %bb.b, label %._crit_edge172, !llvm.loop !938

bb.y:                                             ; preds = %._crit_edge172
  %i.hg = load ptr, ptr %5, align 8, !tbaa !274   ; 5 uses
  %i.hh = load ptr, ptr %i.j, align 8, !tbaa !277 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hg, %i.hh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hj, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.hg, %bb.y ] ; 2 uses
  %i.hi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 48) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hj, %i.hh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !284

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %bb.y
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.hk = load ptr, ptr %i.k, align 8, !tbaa !278
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hg to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hn) #46
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit76

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit76: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.aa:                                            ; preds = %._crit_edge172
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64, %bb.m, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit45, %bb.aa
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %i.ho, %bb.aa ], [ %i.gx, %bb.x ], [ %i.dm, %bb.m ], [ %lpad.phi, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit45 ], [ %lpad.phi127, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit64 ]
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %.pn36.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common14TimestampRange9mergeWithEPKNS1_6FilterE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  switch i32 %i.b, label %bb.f [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 3, label %_ZNK8facebook5velox6common14TimestampRange5cloneESt8optionalIbE.exit
    i32 20, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.g

_ZNK8facebook5velox6common14TimestampRange5cloneESt8optionalIbE.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48, !noalias !942, !inline_history !945 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !72, !noalias !942
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 1, ptr %i.j, align 1, !tbaa !71, !noalias !942
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 20, ptr %i.k, align 4, !tbaa !68, !noalias !942
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common14TimestampRangeE, i64 16), ptr %i.h, align 8, !tbaa !102, !noalias !942
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !946, !noalias !942
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !946, !noalias !942
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load <2 x i64>, ptr %i.l, align 8, !noalias !942
  %i.p = load <2 x i64>, ptr %i.g, align 8, !noalias !942
  %i.q = icmp eq <2 x i64> %i.o, %i.p             ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %i.s = extractelement <2 x i1> %i.q, i64 1
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %i.n, align 8, !tbaa !353, !noalias !942
  store ptr %i.h, ptr %0, align 8, !tbaa !104, !alias.scope !939
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !72, !range !53, !noundef !57
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZNK8facebook5velox9TimestampssERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !72, !range !53, !noundef !57
  br label %_ZNK8facebook5velox9TimestampssERKS1_.exit

_ZNK8facebook5velox9TimestampssERKS1_.exit:       ; preds = %bb.d, %bb.c
  %i.aa = phi i8 [ 0, %bb.c ], [ %i.z, %bb.d ]    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !364 ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !364 ; 3 uses
  %i.af = icmp eq i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.ad, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ult i64 %i.ai, %i.ak
  %.sroa.09.2.i.i = select i1 %i.af, i1 %i.al, i1 %i.ag ; 2 uses
  %3 = select i1 %.sroa.09.2.i.i, i64 %i.ae, i64 %i.ad ; 3 uses
  %..i = select i1 %.sroa.09.2.i.i, ptr %i.ac, ptr %i.ab
  %.sroa.5.0...i.sroa_idx = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0...i.sroa_idx, align 8, !tbaa !33 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !364 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !364 ; 3 uses
  %i.aq = icmp eq i64 %i.ao, %i.ap
  %i.ar = icmp slt i64 %i.ao, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp ult i64 %i.at, %i.av
  %.sroa.09.2.i.i8 = select i1 %i.aq, i1 %i.aw, i1 %i.ar ; 2 uses
  %4 = select i1 %.sroa.09.2.i.i8, i64 %i.ao, i64 %i.ap ; 3 uses
  %..i9 = select i1 %.sroa.09.2.i.i8, ptr %i.an, ptr %i.am
  %.sroa.6.0...i9.sroa_idx = getelementptr inbounds nuw i8, ptr %..i9, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0...i9.sroa_idx, align 8, !tbaa !33 ; 3 uses
  %i.ax = icmp eq i64 %3, %4                      ; 2 uses
  %i.ay = icmp ule i64 %.sroa.5.0.copyload, %.sroa.6.0.copyload
  %i.az = icmp sle i64 %3, %4
  %i.ba = select i1 %i.ax, i1 %i.ay, i1 %i.az
  br i1 %i.ba, label %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit, label %bb.e

_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNK8facebook5velox9TimestampssERKS1_.exit
  %i.bb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48, !noalias !947, !inline_history !352 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.aa, ptr %i.bc, align 8, !tbaa !72, !noalias !947
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  store i8 1, ptr %i.bd, align 1, !tbaa !71, !noalias !947
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 20, ptr %i.be, align 4, !tbaa !68, !noalias !947
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common14TimestampRangeE, i64 16), ptr %i.bb, align 8, !tbaa !102, !noalias !947
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %3, ptr %i.bf, align 8, !tbaa !33, !noalias !947
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !33, !noalias !947
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %4, ptr %i.bg, align 8, !tbaa !33, !noalias !947
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !33, !noalias !947
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bi = icmp eq i64 %.sroa.5.0.copyload, %.sroa.6.0.copyload
  %i.bj = select i1 %i.ax, i1 %i.bi, i1 false
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !353, !noalias !947
  store ptr %i.bb, ptr %0, align 8, !tbaa !104
  br label %bb.g

bb.e:                                             ; preds = %_ZNK8facebook5velox9TimestampssERKS1_.exit
  %i.bl = trunc nuw i8 %i.aa to i1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.bm = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48, !noalias !950 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.7.i = select i1 %i.bl, i32 2, i32 0
  %.8.i = select i1 %i.bl, ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common6IsNullE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16)
  store i8 %i.aa, ptr %i.bn, align 8, !tbaa !72, !noalias !950
  store i8 1, ptr %i.bo, align 1, !tbaa !71, !noalias !950
  store i32 %.7.i, ptr %i.bp, align 4, !tbaa !68, !noalias !950
  store ptr %.8.i, ptr %i.bm, align 8, !tbaa !102, !noalias !950
  store ptr %i.bm, ptr %0, align 8, !tbaa !104, !alias.scope !950
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6common14TimestampRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs) #45
  unreachable

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit, %bb.e, %_ZNK8facebook5velox6common14TimestampRange5cloneESt8optionalIbE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox6common14TimestampRange5cloneESt8optionalIbE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, i16 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i16 %2, 256
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit3, label %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a
  %.sroa.07.0.extract.trunc = trunc i16 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48, !noalias !953, !inline_history !956 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.07.0.extract.trunc, ptr %i.e, align 8, !tbaa !72, !noalias !953
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !71, !noalias !953
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 20, ptr %i.g, align 4, !tbaa !68, !noalias !953
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common14TimestampRangeE, i64 16), ptr %i.d, align 8, !tbaa !102, !noalias !953
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !946, !noalias !953
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !946, !noalias !953
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <2 x i64>, ptr %i.h, align 8, !noalias !953
  %i.l = load <2 x i64>, ptr %i.c, align 8, !noalias !953
  %i.m = icmp eq <2 x i64> %i.k, %i.l             ; 2 uses
  %i.n = extractelement <2 x i1> %i.m, i64 0
  %i.o = extractelement <2 x i1> %i.m, i64 1
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %i.j, align 8, !tbaa !353, !noalias !953
  br label %bb.b

_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit3: ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48, !noalias !957, !inline_history !960 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !957
  store i64 %i.u, ptr %i.s, align 8, !noalias !957
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common14TimestampRangeE, i64 16), ptr %i.r, align 8, !tbaa !102, !noalias !957
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.v, ptr noundef nonnull align 8 dereferenceable(33) %i.w, i64 33, i1 false), !noalias !957
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit3, %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit
  %storemerge = phi ptr [ %i.r, %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit3 ], [ %i.d, %_ZNSt10unique_ptrIN8facebook5velox6common14TimestampRangeESt14default_deleteIS3_EED2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common18NegatedBigintRange9mergeWithEPKNS1_6FilterE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.266", align 8   ; 9 uses
  %4 = alloca %"class.std::vector.266", align 16  ; 14 uses
  %5 = alloca %"class.std::unique_ptr.98", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.std::unique_ptr.98", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.std::unique_ptr.98", align 8 ; 7 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::vector.266", align 16  ; 6 uses
  %9 = alloca %"class.std::vector.130", align 16  ; 19 uses
  %10 = alloca %"class.std::vector.130", align 16 ; 6 uses
  %11 = alloca %"class.std::vector.266", align 8  ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68   ; 2 uses
  switch i32 %i.k, label %bb.cu [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 5, label %bb.d
    i32 8, label %bb.l
    i32 17, label %bb.as
    i32 6, label %bb.av
    i32 7, label %bb.av
    i32 22, label %bb.av
    i32 9, label %bb.aw
    i32 10, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK8facebook5velox6common18NegatedBigintRange5cloneESt8optionalIbE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 256)
  br label %bb.cv

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !72, !range !53, !noundef !57
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !72, !range !53, !noundef !57
  %i.t = trunc nuw i8 %i.s to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i1 [ false, %bb.d ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !133  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !136  ; 6 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48
          to label %.noexc unwind label %bb.i, !inline_history !961 ; 15 uses

.noexc:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !72, !noalias !962
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  store i8 1, ptr %i.ab, align 1, !tbaa !71, !noalias !962
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 5, ptr %i.ac, align 4, !tbaa !68, !noalias !962
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.z, align 8, !tbaa !102, !noalias !962
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !133, !noalias !962
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !136, !noalias !962
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.speculated15.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %i.ag = trunc i64 %.sroa.speculated15.i.i to i32
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !137, !noalias !962
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %.sroa.speculated11.i.i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 2147483647)
  %i.ai = trunc i64 %.sroa.speculated11.i.i to i32
end_hunk_1
