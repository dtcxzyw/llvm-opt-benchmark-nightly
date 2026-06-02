inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZNK8facebook5velox6common18NegatedBigintRange5cloneESt8optionalIbE:bb.a
  %i.z = trunc i64 %.sroa.speculated7.i.i.i.i to i16
  store i16 %i.z, ptr %i.y, align 8, !tbaa !139, !noalias !1033
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 32767)
  %i.ab = trunc i64 %.sroa.speculated.i.i.i.i to i16
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !140, !noalias !1033
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.ad = icmp eq i64 %i.f, %i.d
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.ac, align 4, !tbaa !141, !noalias !1033
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 45 ; 2 uses
  %.not.i.i.i.i = icmp sgt i64 %i.d, 2147483647
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.b

.thread.i.i.i.i:                                  ; preds = %.noexc.i
  store i8 0, ptr %i.af, align 1, !tbaa !142, !noalias !1033
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %.noexc.i
  %i.ag = icmp sgt i64 %i.f, -2147483649
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !142, !noalias !1033
  %.not1.i.i.i.i = icmp sgt i64 %i.d, 32767
  br i1 %.not1.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp sgt i64 %i.f, -32769
  %i.aj = zext i1 %i.ai to i8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #46, !noalias !1025, !inline_history !1028
  resume { ptr, i32 } %i.ak

_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBigintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %bb.b, %.thread.i.i.i.i
  %i.al = phi i8 [ 0, %bb.b ], [ %i.aj, %bb.c ], [ 0, %.thread.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 46
  store i8 %i.al, ptr %i.an, align 2, !tbaa !143, !noalias !1033
  store ptr %i.n, ptr %i.am, align 8, !tbaa !153, !alias.scope !1029, !noalias !1025
  store ptr %i.j, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN8facebook5velox6common11BigintRangeEJllbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.98") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48 ; 14 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !33     ; 6 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !33     ; 6 uses
  %i.d = load i8, ptr %3, align 1, !tbaa !51, !range !53, !noundef !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.d, ptr %i.e, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.f, align 1, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 5, ptr %i.g, align 4, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.a, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.h, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %i.i, align 8, !tbaa !136
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.speculated15.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 -2147483648)
  %i.k = trunc i64 %.sroa.speculated15.i to i32
  store i32 %i.k, ptr %i.j, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.sroa.speculated11.i = tail call i64 @llvm.smin.i64(i64 %i.c, i64 2147483647)
  %i.m = trunc i64 %.sroa.speculated11.i to i32
  store i32 %i.m, ptr %i.l, align 4, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.speculated7.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 -32768)
  %i.o = trunc i64 %.sroa.speculated7.i to i16
  store i16 %i.o, ptr %i.n, align 8, !tbaa !139
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.c, i64 32767)
  %i.q = trunc i64 %.sroa.speculated.i to i16
  store i16 %i.q, ptr %i.p, align 2, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.s = icmp eq i64 %i.c, %i.b
  %i.t = zext i1 %i.s to i8
  store i8 %i.t, ptr %i.r, align 4, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 45 ; 2 uses
  %.not.i = icmp sgt i64 %i.b, 2147483647
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 0, ptr %i.u, align 1, !tbaa !142
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = icmp sgt i64 %i.c, -2147483649
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.u, align 1, !tbaa !142
  %.not1.i = icmp sgt i64 %i.b, 32767
  br i1 %.not1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %i.c, -32769
  %i.y = zext i1 %i.x to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.thread.i
  %i.z = phi i8 [ 0, %bb.b ], [ %i.y, %bb.c ], [ 0, %.thread.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !143
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox6common12_GLOBAL__N_130combineNegatedRangeOnIntRangesEllRKSt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb(ptr dead_on_unwind noalias writable writeonly align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.266", align 8   ; 17 uses
  %6 = alloca %"class.std::vector.266", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !274    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = add nsw i64 %i.g, 1                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #45
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %.not307 = icmp eq i64 %i.h, 0
  br i1 %.not307, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.h, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #48
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i unwind label %bb.d ; 2 uses

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i
  %.promoted209 = phi ptr [ null, %bb.c ], [ %i.l, %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i ] ; 4 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.m, %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.n = add nsw i64 %1, -1                       ; 4 uses
  %.sroa.speculated11.i.i52 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 2147483647)
  %i.o = trunc i64 %.sroa.speculated11.i.i52 to i32
  %.sroa.speculated.i.i54 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 32767)
  %i.p = trunc i64 %.sroa.speculated.i.i54 to i16
  %i.q = icmp sgt i64 %1, -2147483648
  %i.r = icmp sgt i64 %1, -32768
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.t = add nsw i64 %2, 1                        ; 4 uses
  %.sroa.speculated15.i.i70 = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %i.u = trunc i64 %.sroa.speculated15.i.i70 to i32
  %.sroa.speculated7.i.i72 = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -32768)
  %i.v = trunc i64 %.sroa.speculated7.i.i72 to i16
  %.not.i.i74 = icmp sgt i64 %2, 2147483646
  %.not1.i.i75 = icmp sgt i64 %2, 32766
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.w = phi ptr [ %.promoted209, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit ], [ %i.io, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ]
  %.lcssa197 = phi ptr [ %.promoted209, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit ], [ %i.ip, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ]
  %.lcssa186 = phi ptr [ %.promoted, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit ], [ %i.iq, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ]
  store ptr %.lcssa197, ptr %6, align 8, !tbaa !274
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !277
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.lcssa186, ptr %i.y, align 8, !tbaa !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN8facebook5velox6common12_GLOBAL__N_119combineBigintRangesESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %6, i1 noundef zeroext %4)
          to label %bb.ad unwind label %bb.af

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %i.aa = phi ptr [ %.promoted209, %.lr.ph ], [ %i.io, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ] ; 19 uses
  %i.ab = phi ptr [ %i.c, %.lr.ph ], [ %i.is, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ] ; 4 uses
  %i.ac = phi ptr [ %.promoted, %.lr.ph ], [ %i.iq, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ] ; 11 uses
  %i.ad = phi ptr [ %.promoted209, %.lr.ph ], [ %i.ip, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit ] ; 33 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !153
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
  %8 = extractelement <2 x i64> %7, i64 1         ; 6 uses
  %9 = extractelement <2 x i64> %7, i64 0         ; 13 uses
  %10 = icmp slt i64 %2, %9
  %i.ah = icmp slt i64 %8, %1
  %or.cond = select i1 %10, i1 true, i1 %i.ah
  br i1 %or.cond, label %._crit_edge273, label %bb.n

._crit_edge273:                                   ; preds = %bb.e
  %i.ai = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48
          to label %.noexc45 unwind label %bb.m, !inline_history !961 ; 15 uses

.noexc45:                                         ; preds = %._crit_edge273
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 0, ptr %i.aj, align 8, !tbaa !72, !noalias !1034
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 1, ptr %i.ak, align 1, !tbaa !71, !noalias !1034
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 5, ptr %i.al, align 4, !tbaa !68, !noalias !1034
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ai, align 8, !tbaa !102, !noalias !1034
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %7, ptr %i.am, align 8, !tbaa !33, !noalias !1034
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.speculated15.i.i = tail call i64 @llvm.smax.i64(i64 %9, i64 -2147483648)
  %i.ao = trunc i64 %.sroa.speculated15.i.i to i32
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !137, !noalias !1034
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %.sroa.speculated11.i.i = tail call i64 @llvm.smin.i64(i64 %8, i64 2147483647)
  %i.aq = trunc i64 %.sroa.speculated11.i.i to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !138, !noalias !1034
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.speculated7.i.i = tail call i64 @llvm.smax.i64(i64 %9, i64 -32768)
  %i.as = trunc i64 %.sroa.speculated7.i.i to i16
  store i16 %i.as, ptr %i.ar, align 8, !tbaa !139, !noalias !1034
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 42
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %8, i64 32767)
  %i.au = trunc i64 %.sroa.speculated.i.i to i16
  store i16 %i.au, ptr %i.at, align 2, !tbaa !140, !noalias !1034
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.aw = icmp eq i64 %8, %9
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 4, !tbaa !141, !noalias !1034
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 45 ; 2 uses
  %.not.i.i = icmp sgt i64 %9, 2147483647
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.noexc45
  store i8 0, ptr %i.ay, align 1, !tbaa !142, !noalias !1034
  br label %bb.h

bb.f:                                             ; preds = %.noexc45
  %i.az = icmp sgt i64 %8, -2147483649
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !142, !noalias !1034
  %.not1.i.i = icmp sgt i64 %9, 32767
  br i1 %.not1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp sgt i64 %8, -32769
  %i.bc = zext i1 %i.bb to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread.i.i
  %i.bd = phi i8 [ 0, %bb.f ], [ %i.bc, %bb.g ], [ 0, %.thread.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 46
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !143, !noalias !1034
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = ptrtoint ptr %i.ai to i64
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !153
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bh = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc110 unwind label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit.split-lp

.noexc110:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i101 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i101, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i102 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i102)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #48
          to label %.noexc111 unwind label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit ; 12 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = ptrtoint ptr %i.ai to i64
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !153
  %.not10.i.i.i.i103 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not10.i.i.i.i103, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc111
  %i.bu = add i64 %i.bh, -8
  %i.bv = sub i64 %i.bu, %i.bi                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i104.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.br, i64 8
  %i.by = add i64 %i.bh, -8
  %i.bz = sub i64 %i.by, %i.bi
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep410 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep411 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep412 = getelementptr i8, ptr %scevgep411, i64 %i.ca
  %bound0 = icmp ult ptr %i.br, %scevgep412
  %bound1 = icmp ult ptr %i.ad, %scevgep410
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i104.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check413 = icmp ult i64 %i.bv, 120
  br i1 %min.iters.check413, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bx, 12
  %n.vec = and i64 %i.bx, 4611686018427387888     ; 4 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ad, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ce ; 4 uses
  %next.gep414 = getelementptr i8, ptr %i.ad, i64 %i.ce ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.cf = getelementptr i8, ptr %next.gep414, i64 32
  %i.cg = getelementptr i8, ptr %next.gep414, i64 64
  %i.ch = getelementptr i8, ptr %next.gep414, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep414, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %wide.load415 = load <4 x i64>, ptr %i.cf, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %wide.load416 = load <4 x i64>, ptr %i.cg, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %wide.load417 = load <4 x i64>, ptr %i.ch, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %i.ci = getelementptr i8, ptr %next.gep, i64 32
  %i.cj = getelementptr i8, ptr %next.gep, i64 64
  %i.ck = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !153, !alias.scope !1045, !noalias !1042
  store <4 x i64> %wide.load415, ptr %i.ci, align 8, !tbaa !153, !alias.scope !1045, !noalias !1042
  store <4 x i64> %wide.load416, ptr %i.cj, align 8, !tbaa !153, !alias.scope !1045, !noalias !1042
  store <4 x i64> %wide.load417, ptr %i.ck, align 8, !tbaa !153, !alias.scope !1045, !noalias !1042
  %i.cl = getelementptr i8, ptr %next.gep414, i64 32
  %i.cm = getelementptr i8, ptr %next.gep414, i64 64
  %i.cn = getelementptr i8, ptr %next.gep414, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep414, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  store <4 x ptr> splat (ptr null), ptr %i.cl, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  store <4 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  store <4 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1047

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i104.preheader, label %vec.epilog.ph, !prof !304

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec420 = and i64 %i.bx, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec420, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.br, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ad, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index421 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next425, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = shl i64 %index421, 3                    ; 2 uses
  %next.gep422 = getelementptr i8, ptr %i.br, i64 %i.cs
  %next.gep423 = getelementptr i8, ptr %i.ad, i64 %i.cs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %wide.load424 = load <4 x i64>, ptr %next.gep423, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  store <4 x i64> %wide.load424, ptr %next.gep422, align 8, !tbaa !153, !alias.scope !1045, !noalias !1042
  store <4 x ptr> splat (ptr null), ptr %next.gep423, align 8, !tbaa !153, !alias.scope !1042, !noalias !1037
  %index.next425 = add nuw i64 %index421, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next425, %n.vec420
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1048

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n426 = icmp eq i64 %i.bx, %n.vec420
  br i1 %cmp.n426, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i104.preheader

.lr.ph.i.i.i.i104.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i105.ph = phi ptr [ %i.br, %iter.check ], [ %i.br, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i106.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ad, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %.lr.ph.i.i.i.i104.preheader, %.lr.ph.i.i.i.i104
  %.012.i.i.i.i105 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i104 ], [ %.012.i.i.i.i105.ph, %.lr.ph.i.i.i.i104.preheader ] ; 2 uses
  %.0911.i.i.i.i106 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i104 ], [ %.0911.i.i.i.i106.ph, %.lr.ph.i.i.i.i104.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.cu = load i64, ptr %.0911.i.i.i.i106, align 8, !tbaa !153, !alias.scope !1040, !noalias !1037
  store i64 %i.cu, ptr %.012.i.i.i.i105, align 8, !tbaa !153, !alias.scope !1037, !noalias !1040
  store ptr null, ptr %.0911.i.i.i.i106, align 8, !tbaa !153, !alias.scope !1040, !noalias !1037
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i106, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i105, i64 8 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.cv, %i.aa
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i104, !llvm.loop !1049

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i104, %middle.block, %vec.epilog.middle.block, %.noexc111
  %.0.lcssa.i.i.i.i = phi ptr [ %i.br, %.noexc111 ], [ %i.cq, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %i.cw, %.lr.ph.i.i.i.i104 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i, label %.noexc46, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bj) #46
  br label %.noexc46

.noexc46:                                         ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit

bb.m:                                             ; preds = %._crit_edge273
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
  br label %bb.ag

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit.split-lp, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit
  %lpad.phi177 = phi { ptr, i32 } [ %lpad.loopexit175, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit ], [ %lpad.loopexit.split-lp176, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit50.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 48) #46
  br label %bb.ag

bb.n:                                             ; preds = %bb.e
  %i.da = icmp slt i64 %9, %1
  br i1 %i.da, label %bb.o, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit66

bb.o:                                             ; preds = %bb.n
  %i.db = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48
          to label %.noexc58 unwind label %bb.t, !inline_history !961 ; 16 uses

.noexc58:                                         ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 0, ptr %i.dc, align 8, !tbaa !72, !noalias !1050
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 9
  store i8 1, ptr %i.dd, align 1, !tbaa !71, !noalias !1050
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 5, ptr %i.de, align 4, !tbaa !68, !noalias !1050
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.db, align 8, !tbaa !102, !noalias !1050
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %9, ptr %i.df, align 8, !tbaa !133, !noalias !1050
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 %i.n, ptr %i.dg, align 8, !tbaa !136, !noalias !1050
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %.sroa.speculated15.i.i51 = tail call i64 @llvm.smax.i64(i64 %9, i64 -2147483648)
  %i.di = trunc i64 %.sroa.speculated15.i.i51 to i32
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !137, !noalias !1050
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 36
  store i32 %i.o, ptr %i.dj, align 4, !tbaa !138, !noalias !1050
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %.sroa.speculated7.i.i53 = tail call i64 @llvm.smax.i64(i64 %9, i64 -32768)
  %i.dl = trunc i64 %.sroa.speculated7.i.i53 to i16
  store i16 %i.dl, ptr %i.dk, align 8, !tbaa !139, !noalias !1050
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 42
  store i16 %i.p, ptr %i.dm, align 2, !tbaa !140, !noalias !1050
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.do = icmp eq i64 %i.n, %9
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %i.dn, align 4, !tbaa !141, !noalias !1050
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 45
  %.not.i.i55 = icmp slt i64 %9, 2147483648
  %.not1.i.i56 = icmp slt i64 %9, 32768
  %narrow = and i1 %.not1.i.i56, %i.r
  %narrow358 = and i1 %.not.i.i55, %i.q
  %.sink = zext i1 %narrow358 to i8
  %i.dr = zext i1 %narrow to i8
  store i8 %.sink, ptr %i.dq, align 1, !tbaa !142, !noalias !1050
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 46
  store i8 %i.dr, ptr %i.ds, align 2, !tbaa !143, !noalias !1050
  %.not.i60 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc58
  %i.dt = ptrtoint ptr %i.db to i64
  store i64 %i.dt, ptr %i.aa, align 8, !tbaa !153
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit66

bb.q:                                             ; preds = %.noexc58
  %i.dv = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i112

bb.r:                                             ; preds = %bb.q
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc131 unwind label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit69.loopexit.split-lp

.noexc131:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i112: ; preds = %bb.q
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i113, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i114 = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %.not.i.i114)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #48
          to label %.noexc132 unwind label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit69.loopexit ; 12 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = ptrtoint ptr %i.db to i64
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !153
  %.not10.i.i.i.i115 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not10.i.i.i.i115, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127, label %iter.check500

iter.check500:                                    ; preds = %.noexc132
  %i.ei = add i64 %i.dv, -8
  %i.ej = sub i64 %i.ei, %i.dw                    ; 3 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 5 uses
  %min.iters.check481 = icmp ult i64 %i.ej, 24
  br i1 %min.iters.check481, label %.lr.ph.i.i.i.i116.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %iter.check500
  %scevgep474 = getelementptr i8, ptr %i.ef, i64 8
  %i.em = add i64 %i.dv, -8
  %i.en = sub i64 %i.em, %i.dw
  %i.eo = and i64 %i.en, -8                       ; 2 uses
  %scevgep475 = getelementptr i8, ptr %scevgep474, i64 %i.eo
  %scevgep476 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep477 = getelementptr i8, ptr %scevgep476, i64 %i.eo
  %bound0478 = icmp ult ptr %i.ef, %scevgep477
  %bound1479 = icmp ult ptr %i.ad, %scevgep475
  %found.conflict480 = and i1 %bound0478, %bound1479
  br i1 %found.conflict480, label %.lr.ph.i.i.i.i116.preheader, label %vector.main.loop.iter.check482

vector.main.loop.iter.check482:                   ; preds = %vector.memcheck473
  %min.iters.check483 = icmp ult i64 %i.ej, 120
  br i1 %min.iters.check483, label %vec.epilog.ph504, label %vector.ph484

vector.ph484:                                     ; preds = %vector.main.loop.iter.check482
  %n.mod.vf485 = and i64 %i.el, 12
  %n.vec486 = and i64 %i.el, 4611686018427387888  ; 4 uses
  %i.ep = shl i64 %n.vec486, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ef, i64 %i.ep  ; 2 uses
  %i.er = getelementptr i8, ptr %i.ad, i64 %i.ep
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next495, %vector.body487 ] ; 2 uses
  %i.es = shl i64 %index488, 3                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.ef, i64 %i.es ; 4 uses
  %next.gep490 = getelementptr i8, ptr %i.ad, i64 %i.es ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.et = getelementptr i8, ptr %next.gep490, i64 32
  %i.eu = getelementptr i8, ptr %next.gep490, i64 64
  %i.ev = getelementptr i8, ptr %next.gep490, i64 96
  %wide.load491 = load <4 x i64>, ptr %next.gep490, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %wide.load492 = load <4 x i64>, ptr %i.et, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %wide.load493 = load <4 x i64>, ptr %i.eu, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %wide.load494 = load <4 x i64>, ptr %i.ev, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %i.ew = getelementptr i8, ptr %next.gep489, i64 32
  %i.ex = getelementptr i8, ptr %next.gep489, i64 64
  %i.ey = getelementptr i8, ptr %next.gep489, i64 96
  store <4 x i64> %wide.load491, ptr %next.gep489, align 8, !tbaa !153, !alias.scope !1061, !noalias !1058
  store <4 x i64> %wide.load492, ptr %i.ew, align 8, !tbaa !153, !alias.scope !1061, !noalias !1058
  store <4 x i64> %wide.load493, ptr %i.ex, align 8, !tbaa !153, !alias.scope !1061, !noalias !1058
  store <4 x i64> %wide.load494, ptr %i.ey, align 8, !tbaa !153, !alias.scope !1061, !noalias !1058
  %i.ez = getelementptr i8, ptr %next.gep490, i64 32
  %i.fa = getelementptr i8, ptr %next.gep490, i64 64
  %i.fb = getelementptr i8, ptr %next.gep490, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep490, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  store <4 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  store <4 x ptr> splat (ptr null), ptr %i.fa, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  store <4 x ptr> splat (ptr null), ptr %i.fb, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %index.next495 = add nuw i64 %index488, 16      ; 2 uses
  %i.fc = icmp eq i64 %index.next495, %n.vec486
  br i1 %i.fc, label %middle.block496, label %vector.body487, !llvm.loop !1063

middle.block496:                                  ; preds = %vector.body487
  %cmp.n497 = icmp eq i64 %i.el, %n.vec486
  br i1 %cmp.n497, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block496
  %min.epilog.iters.check503 = icmp eq i64 %n.mod.vf485, 0
  br i1 %min.epilog.iters.check503, label %.lr.ph.i.i.i.i116.preheader, label %vec.epilog.ph504, !prof !304

vec.epilog.ph504:                                 ; preds = %vector.main.loop.iter.check482, %vec.epilog.iter.check502
  %vec.epilog.resume.val498 = phi i64 [ %n.vec486, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check482 ]
  %n.vec506 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec506, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ef, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ad, i64 %i.fd
  br label %vec.epilog.vector.body507

vec.epilog.vector.body507:                        ; preds = %vec.epilog.vector.body507, %vec.epilog.ph504
  %index508 = phi i64 [ %vec.epilog.resume.val498, %vec.epilog.ph504 ], [ %index.next512, %vec.epilog.vector.body507 ] ; 2 uses
  %i.fg = shl i64 %index508, 3                    ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.ef, i64 %i.fg
  %next.gep510 = getelementptr i8, ptr %i.ad, i64 %i.fg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %wide.load511 = load <4 x i64>, ptr %next.gep510, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  store <4 x i64> %wide.load511, ptr %next.gep509, align 8, !tbaa !153, !alias.scope !1061, !noalias !1058
  store <4 x ptr> splat (ptr null), ptr %next.gep510, align 8, !tbaa !153, !alias.scope !1058, !noalias !1053
  %index.next512 = add nuw i64 %index508, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next512, %n.vec506
  br i1 %i.fh, label %vec.epilog.middle.block513, label %vec.epilog.vector.body507, !llvm.loop !1064

vec.epilog.middle.block513:                       ; preds = %vec.epilog.vector.body507
  %cmp.n514 = icmp eq i64 %i.el, %n.vec506
  br i1 %cmp.n514, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127, label %.lr.ph.i.i.i.i116.preheader

.lr.ph.i.i.i.i116.preheader:                      ; preds = %vector.memcheck473, %iter.check500, %vec.epilog.iter.check502, %vec.epilog.middle.block513
  %.012.i.i.i.i117.ph = phi ptr [ %i.ef, %iter.check500 ], [ %i.ef, %vector.memcheck473 ], [ %i.eq, %vec.epilog.iter.check502 ], [ %i.fe, %vec.epilog.middle.block513 ]
  %.0911.i.i.i.i118.ph = phi ptr [ %i.ad, %iter.check500 ], [ %i.ad, %vector.memcheck473 ], [ %i.er, %vec.epilog.iter.check502 ], [ %i.ff, %vec.epilog.middle.block513 ]
  br label %.lr.ph.i.i.i.i116

.lr.ph.i.i.i.i116:                                ; preds = %.lr.ph.i.i.i.i116.preheader, %.lr.ph.i.i.i.i116
  %.012.i.i.i.i117 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i116 ], [ %.012.i.i.i.i117.ph, %.lr.ph.i.i.i.i116.preheader ] ; 2 uses
  %.0911.i.i.i.i118 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i116 ], [ %.0911.i.i.i.i118.ph, %.lr.ph.i.i.i.i116.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.fi = load i64, ptr %.0911.i.i.i.i118, align 8, !tbaa !153, !alias.scope !1056, !noalias !1053
  store i64 %i.fi, ptr %.012.i.i.i.i117, align 8, !tbaa !153, !alias.scope !1053, !noalias !1056
  store ptr null, ptr %.0911.i.i.i.i118, align 8, !tbaa !153, !alias.scope !1056, !noalias !1053
  %i.fj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i118, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i117, i64 8 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.fj, %i.aa
  br i1 %.not.i.i.i.i119, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127, label %.lr.ph.i.i.i.i116, !llvm.loop !1065

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127: ; preds = %.lr.ph.i.i.i.i116, %middle.block496, %vec.epilog.middle.block513, %.noexc132
  %.0.lcssa.i.i.i.i121 = phi ptr [ %i.ef, %.noexc132 ], [ %i.fe, %vec.epilog.middle.block513 ], [ %i.eq, %middle.block496 ], [ %i.fk, %.lr.ph.i.i.i.i116 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i121, i64 8
  %.not.i23.i129 = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i129, label %.noexc62, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.dx) #46
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !274
  br label %.noexc62

.noexc62:                                         ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127
  %.pre = phi ptr [ %.pre.pre, %bb.s ], [ %i.ab, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i127 ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit66

bb.t:                                             ; preds = %bb.o
  %i.fn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
  br label %bb.ag

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit69.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i112
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ac, ptr %i.j, align 8
  store ptr %i.ad, ptr %5, align 8
end_hunk_0
