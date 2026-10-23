Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl3EEE5writeExiNS1_8pad_typeE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !354 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !339
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !260
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.pre, i64 noundef %i.aj), !inline_history !13
  %.pre.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %.pre2.i.i.i.i, %bb.i ]
  %i.an = phi i64 [ %i.ai, %bb.h ], [ %.pre.i.i.i.i, %bb.i ]
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i.i, ptr %i.af, align 8, !tbaa !354
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 %i.ae, ptr %i.ap, align 1, !tbaa !232
  %i.aq = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aq, %i.ab
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  store ptr %.sroa.0.0.copyload.pre, ptr %0, align 8, !tbaa !351
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail18to_nonnegative_intIxiTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit
  %i.ar = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.0.0.copyload.pre, i32 noundef %i.q, i32 noundef %i.z)
  store ptr %i.ar, ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcxSt5ratioILl1ELl3EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v12::locale_ref", align 8 ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 8 uses
  %8 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !637, !range !249, !noundef !250 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.02.0.copyload, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !341
  br i1 %i.c, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  br label %bb.b

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v1210locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !341, !range !249
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  br i1 %i.f, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !342

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %7, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !351
  store ptr %i.m, ptr %8, align 8, !tbaa !344
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k, !prof !342

bb.g:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  %.not.i.i15 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i15, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #30
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !344, !nonnull !250, !align !336
  %i.u = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #30
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.s, align 8, !tbaa !350
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !352
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %1, ptr %i.y, align 8, !tbaa !353
  %i.z = getelementptr inbounds i8, ptr %8, i64 %3 ; 2 uses
  %i.aa = and i64 %2, 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !212
  %i.ac = getelementptr i8, ptr %i.ab, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !250
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.af, %bb.m ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.n:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %2 to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ai, %bb.o ]
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i32 noundef %4, i32 noundef %5)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !351
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !341, !range !249, !noundef !250
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationIySt5ratioILl1ELl3EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #2 comdat {
_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 3                         ; 2 uses
  %3 = trunc nuw nsw i64 %i.a to i32
  %.lhs.trunc = mul nuw nsw i32 %3, 1000000
  %4 = udiv i32 %.lhs.trunc, 3
  %.zext = zext nneg i32 %4 to i64                ; 6 uses
  %i.b = or i64 %.zext, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !232   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !255
  %i.k = icmp ugt i64 %i.j, %.zext
  %.neg.i.i = sext i1 %i.k to i32                 ; 2 uses
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 6
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 6)
  %.sroa.speculated = sub i32 6, %i.n             ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !10
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.x = phi i64 [ %i.q, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !354
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !232
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !339
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.ai = phi i64 [ %i.ad, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !232
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !351
  %i.am = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %.zext, i32 noundef %i.l)
  br label %.sink.split

bb.e:                                             ; preds = %_ZN3fmt3v126detail13duration_castINSt6chrono8durationIySt5ratioILl1ELl1000000EEEEyS5_ILl1ELl3EETnNSt9enable_ifIXaasr3std11is_integralIT0_EE5valuesr3std11is_integralINT_3repEEE5valueEiE4typeELi0EEESB_NS4_ISA_T1_EE.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !10
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70

_ZN3fmt3v1214basic_appenderIcEaSEc.exit70:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.f ], [ %.pre2.i.i69, %bb.g ]
  %i.av = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i68, %bb.g ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !338
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !232
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 3 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 5
  br i1 %.not97, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !339
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !260
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !34
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.h ], [ %.pre2.i.i.i77, %bb.i ]
  %i.bi = phi i64 [ %i.bd, %bb.h ], [ %.pre.i.i.i76, %bb.i ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !232
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !351
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.j
  %i.bo = add nsw i32 %i.ay, %.neg.i.i
  %i.bp = add i32 %i.bo, %i.g
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bq = sub i32 %2, %i.bp
  %i.br = icmp ugt i32 %i.bq, -8
  br i1 %i.br, label %tailrecurse.i.epil.preheader, label %tailrecurse.i.preheader.new

tailrecurse.i.preheader.new:                      ; preds = %tailrecurse.i.preheader
  %unroll_iter = and i32 %i.bm, -8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %tailrecurse.i.preheader.new
  %accumulator.tr2.i = phi i64 [ 1, %tailrecurse.i.preheader.new ], [ %i.bs, %tailrecurse.i ]
  %niter = phi i32 [ 0, %tailrecurse.i.preheader.new ], [ %niter.next.7, %tailrecurse.i ]
  %i.bs = mul i64 %accumulator.tr2.i, 100000000   ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, label %tailrecurse.i

_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil.preheader

tailrecurse.i.epil.preheader:                     ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader
  %accumulator.tr2.i.epil.init = phi i64 [ 1, %tailrecurse.i.preheader ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %tailrecurse.i.epil

tailrecurse.i.epil:                               ; preds = %tailrecurse.i.epil, %tailrecurse.i.epil.preheader
  %accumulator.tr2.i.epil = phi i64 [ %i.bt, %tailrecurse.i.epil ], [ %accumulator.tr2.i.epil.init, %tailrecurse.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %tailrecurse.i.epil ], [ 0, %tailrecurse.i.epil.preheader ]
  %i.bt = mul i64 %accumulator.tr2.i.epil, 10     ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt3v126detail5pow10Ej.exit, label %tailrecurse.i.epil, !llvm.loop !6164

_ZN3fmt3v126detail5pow10Ej.exit:                  ; preds = %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa, %tailrecurse.i.epil, %bb.j
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.j ], [ %i.bs, %_ZN3fmt3v126detail5pow10Ej.exit.loopexit.unr-lcssa ], [ %i.bt, %tailrecurse.i.epil ] ; 2 uses
end_hunk_0
