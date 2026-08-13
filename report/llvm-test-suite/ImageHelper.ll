inline.NumInlined: 46
inline.NumDeleted: 24
begin_hunk_0_@_Z9saveImagePiPKcii:bb.a
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.preheader unwind label %bb.f

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.preheader: ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.preheader.lr.ph, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.preheader
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.l = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count52 = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZNSolsEPFRSoS_E.exit.us
  %indvars.iv49 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next50, %_ZNSolsEPFRSoS_E.exit.us ] ; 2 uses
  %i.m = mul nuw nsw i64 %indvars.iv49, %i.l
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %.invoke61

.invoke61:                                        ; preds = %.preheader.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.n = load i32, ptr %gep, align 4, !tbaa !4
  %. = call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = call i32 @llvm.smin.i32(i32 %., i32 255)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.o)
          to label %.invoke unwind label %.split.us

.invoke:                                          ; preds = %.invoke61
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us unwind label %.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %.invoke
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond48.not, label %._crit_edge.us, label %.invoke61, !llvm.loop !24

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us: ; preds = %._crit_edge.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !25
  %.not.i1.i.i.us = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.ag, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ag)
          to label %.noexc36.us unwind label %.loopexit.split.us

.noexc36.us:                                      ; preds = %bb.e
  %i.v = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.ag, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us unwind label %.loopexit.split.us, !inline_history !33

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us: ; preds = %.noexc36.us, %bb.d
  %.0.i.i.i.us = phi i8 [ %i.u, %bb.d ], [ %i.y, %.noexc36.us ]
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i.us)
          to label %.noexc38.us unwind label %.loopexit.split.us

.noexc38.us:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZNSolsEPFRSoS_E.exit.us unwind label %.loopexit.split.us ; 0 uses

_ZNSolsEPFRSoS_E.exit.us:                         ; preds = %.noexc38.us
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge, label %.preheader.us, !llvm.loop !34

._crit_edge.us:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %i.ab = load ptr, ptr %4, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.us, label %.split43.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us

.split.us:                                        ; preds = %.invoke61, %.invoke
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.us:                               ; preds = %.noexc38.us, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us, %.noexc36.us, %bb.e
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSolsEPFRSoS_E.exit
  %.02041 = phi i32 [ %i.az, %_ZNSolsEPFRSoS_E.exit ], [ 0, %.preheader.lr.ph ]
  %i.ai = load ptr, ptr %4, align 8, !tbaa !11
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.split43.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNSolsEPFRSoS_E.exit.us, %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.preheader
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split43.us:                                      ; preds = %.preheader, %._crit_edge.us
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %.split43.us
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !25
  %.not.i1.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
          to label %.noexc36 unwind label %.loopexit.split

.noexc36:                                         ; preds = %bb.h
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split, !inline_history !33

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc36, %bb.g
  %.0.i.i.i = phi i8 [ %i.as, %bb.g ], [ %i.aw, %.noexc36 ]
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i)
          to label %.noexc38 unwind label %.loopexit.split

.noexc38:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc38
  %i.az = add nuw nsw i32 %.02041, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %2
  br i1 %exitcond.not, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge, label %.preheader, !llvm.loop !34

.loopexit.split:                                  ; preds = %bb.h, %.noexc36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc38
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split43.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %.split.us, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.ah, %.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z29initializeRandomColouredImagePiii(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @glibc_compat_srand(i32 noundef 7)
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.preheader, %._crit_edge
  %.01720 = phi i32 [ %4, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %3 = mul i32 %.01720, %2
  br label %bb.b

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %4 = add nuw nsw i32 %.01720, 1                 ; 2 uses
  %exitcond23.not = icmp eq i32 %4, %1
  br i1 %exitcond23.not, label %._crit_edge21.split, label %.preheader.a, !llvm.loop !42

bb.b:                                             ; preds = %.preheader.a, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = tail call i32 @glibc_compat_rand()
  %i.d = srem i32 %i.c, 256
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %reass.add = add i32 %3, %5
  %reass.mul = mul i32 %reass.add, 3
  %6 = sext i32 %reass.mul to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6 ; 3 uses
  store i32 %i.d, ptr %7, align 4, !tbaa !4
  %i.e = tail call i32 @glibc_compat_rand()
  %i.f = srem i32 %i.e, 256
  %i.g = getelementptr i8, ptr %7, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !4
  %i.h = tail call i32 @glibc_compat_rand()
  %i.i = srem i32 %i.h, 256
  %i.j = getelementptr i8, ptr %7, i64 8
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15initializeImagePiPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %1, i32 noundef 4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = and i32 %i.f, 5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader19, label %bb.b

.preheader19:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0
  %i.i = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge22.split

.preheader.preheader:                             ; preds = %.preheader19
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count27 = zext nneg i32 %2 to i64
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.d, !inline_history !44 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.c
  call void @exit(i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.e, %._crit_edge22.split, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next25, %._crit_edge ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv24, %i.j
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  br label %bb.f

._crit_edge22.split:                              ; preds = %._crit_edge, %.preheader19
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.p)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %._crit_edge22.split
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.e:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %4, align 8, !tbaa !11
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %4, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !13
  %i.x = or i32 %i.w, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef %i.x)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.d

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !45

bb.f:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %gep)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !46

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc, %bb.e
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.z, %bb.h ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22initializeColoredImagePiPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %1, i32 noundef 4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13
  %i.g = and i32 %i.f, 5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader27, label %bb.b

.preheader27:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0
  %i.i = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge30.split

.preheader.preheader:                             ; preds = %.preheader27
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count35 = zext nneg i32 %2 to i64
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.d, !inline_history !44 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.c
  call void @exit(i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.e, %._crit_edge30.split, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv32, %i.j
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  br label %bb.f

._crit_edge30.split:                              ; preds = %._crit_edge, %.preheader27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.p)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %._crit_edge30.split
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.e:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %4, align 8, !tbaa !11
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %4, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !13
  %i.x = or i32 %i.w, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef %i.x)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.d

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge30.split, label %.preheader, !llvm.loop !47

bb.f:                                             ; preds = %.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %gep)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %gep, i64 4
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %gep, i64 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !48

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc, %bb.e
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.k:                                             ; preds = %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ad, %bb.j ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !17, i64 32}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !6, i64 64, !5, i64 192, !21, i64 200, !22, i64 208}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = distinct !{!24, !9}
!25 = !{!26, !6, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !27, i64 0, !28, i64 16, !29, i64 24, !30, i64 32, !30, i64 40, !31, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!27 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!28 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!29 = !{!"bool", !6, i64 0}
!30 = !{!"p1 int", !19, i64 0}
!31 = !{!"p1 short", !19, i64 0}
!32 = !{!6, !6, i64 0}
!33 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!34 = distinct !{!34, !9}
!35 = !{!36, !39, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !37, i64 216, !6, i64 224, !29, i64 225, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256}
!37 = !{!"p1 _ZTSSo", !19, i64 0}
!38 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!39 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!40 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!41 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{null}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
end_hunk_0
