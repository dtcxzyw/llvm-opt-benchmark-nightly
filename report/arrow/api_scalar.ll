inline.NumInlined: 14067
inline.NumDeleted: 5439
begin_hunk_0_@_ZN5arrow7compute8internal13StringifyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  store ptr %i.fy, ptr %7, align 8, !tbaa !43
  %i.iv = load i64, ptr %i.ga, align 8
  %i.iw = getelementptr inbounds i8, ptr %7, i64 %i.iv
  store ptr %i.fz, ptr %i.iw, align 8, !tbaa !43
  store ptr %i.gd, ptr %i.e, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ix, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !50 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !53
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ix, align 8, !tbaa !43
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.je) #28
  store ptr %i.gn, ptr %7, align 8, !tbaa !43
  %i.jf = load i64, ptr %i.gp, align 8
  %i.jg = getelementptr inbounds i8, ptr %7, i64 %i.jf
  store ptr %i.go, ptr %i.jg, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.jh, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ji) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.at:                                            ; preds = %bb.c, %bb.b, %bb.a
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.d
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i26.i
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.ff
  br i1 %i.jn, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.av
  %i.jo = load i64, ptr %i.ff, align 8, !tbaa !53
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #30
  br label %.body

.body:                                            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.au, %.body23.i
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body23.i ], [ %i.jk, %bb.au ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.jl, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aw

.body14:                                          ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aw

bb.aw:                                            ; preds = %.body14, %.body, %bb.at
  %.pn8 = phi { ptr, i32 } [ %i.ho, %.body14 ], [ %.pn, %.body ], [ %i.jj, %bb.at ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn8
}

declare void @_ZNK5arrow16KeyValueMetadata12sorted_pairsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.586") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1107   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1109 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !53
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !53
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1110

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1107
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1111
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1136, !nonnull !37, !align !368 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1049 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1137, !nonnull !37, !align !368 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !77 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !tbaa !76 ; 2 uses
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !77 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.j = ptrtoint ptr %.val3.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 5
  %i.n = ptrtoint ptr %.val5.i to i64
  %i.o = ptrtoint ptr %.val4.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp eq i64 %i.l, %i.p
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

.preheader.i.i:                                   ; preds = %bb.a
  %i.q = icmp eq ptr %.val3.i, %.val.i
  br i1 %i.q, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i
  %.0106.i.i = phi i64 [ %i.y, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.0106.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.0106.i.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val12.i.i = load i64, ptr %i.t, align 8, !tbaa !52 ; 3 uses
  %.val13.i.i = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val14.i.i = load i64, ptr %i.u, align 8, !tbaa !52
  %i.v = icmp eq i64 %.val12.i.i, %.val14.i.i
  br i1 %i.v, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i64 %.val12.i.i, 0
  br i1 %i.w, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i: ; preds = %bb.b
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i, ptr readonly %.val13.i.i, i64 %.val12.i.i)
  %i.x = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.x, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %bb.b
  %i.y = add nuw i64 %.0106.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond.not.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !1138

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit: ; preds = %.lr.ph.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, %bb.a, %.preheader.i.i
  %.1.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i ], [ false, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i ], [ false, %.lr.ph.i.i ], [ true, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1022, !range !36, !noundef !37
  %2 = icmp ne i8 %i.aa, 0
  %3 = and i1 %.1.i.i, %2                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1070 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.ac ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !81
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = zext i32 %i.ai to i64
  %i.ap = add nsw i64 %i.an, %i.ao                ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !78 ; 2 uses
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = zext i32 %i.at to i64
  %i.ba = add nsw i64 %i.ay, %i.az
  %.not.i.i6 = icmp eq i64 %i.ap, %i.ba
  br i1 %.not.i.i6, label %.preheader.i.i8, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

.preheader.i.i8:                                  ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit
  %i.bb = icmp eq i64 %i.ap, 0
  br i1 %i.bb, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit, label %.lr.ph.i.i9

bb.c:                                             ; preds = %.lr.ph.i.i9
  %i.bc = add nuw i64 %.01016.i.i, 1              ; 2 uses
  %.not19.i.i = icmp ult i64 %i.bc, %i.ap
  br i1 %.not19.i.i, label %.lr.ph.i.i9, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit, !llvm.loop !1139

.lr.ph.i.i9:                                      ; preds = %.preheader.i.i8, %bb.c
  %.01016.i.i = phi i64 [ %i.bc, %bb.c ], [ 0, %.preheader.i.i8 ] ; 4 uses
  %i.bd = sdiv i64 %.01016.i.i, 64                ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bd
  %i.bf = and i64 %.01016.i.i, -9223372036854775745
  %i.bg = icmp ugt i64 %i.bf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.bg, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.be, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bh = and i64 %.01016.i.i, 63
  %i.bi = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bd
  %storemerge.i.i.i.i.i14.i.i = getelementptr inbounds i8, ptr %i.bj, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bk = load i64, ptr %storemerge.i.i.i.i.i14.i.i, align 8, !tbaa !352
  %i.bl = xor i64 %i.bk, %i.bi
  %i.bm = shl nuw i64 1, %i.bh
  %i.bn = and i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit: ; preds = %bb.c, %.lr.ph.i.i9, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, %.preheader.i.i8
  %.1.i.i7 = phi i1 [ false, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit ], [ %3, %.preheader.i.i8 ], [ false, %.lr.ph.i.i9 ], [ %3, %bb.c ]
  %4 = zext i1 %.1.i.i7 to i8
  store i8 %4, ptr %i.z, align 8, !tbaa !1022
  tail call void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1136, !nonnull !37, !align !368
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1093 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1137, !nonnull !37, !align !368
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp eq i64 %i.m, %i.s
  br i1 %.not.i, label %.preheader.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

.preheader.i:                                     ; preds = %bb.a
  %i.t = icmp eq ptr %i.i, %i.j
  br i1 %i.t, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i
  %i.u = phi ptr [ %i.al, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ %i.j, %.preheader.i ]
  %.01015.i = phi i64 [ %i.aj, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.01015.i ; 3 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.01015.i ; 3 uses
  %.val9.i.i = load ptr, ptr %i.v, align 8, !tbaa !1102 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val9.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i: ; preds = %.lr.ph.i
  %i.y = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val9.i.i)
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val8.i.i = load ptr, ptr %i.x, align 8, !tbaa !1102 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i10.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i: ; preds = %bb.b
  %i.aa = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val8.i.i)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.c

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i, %bb.b, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val7.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !1102 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %.val7.pr.i.i, null
  br i1 %.not.i12.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i
  %i.ac = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val7.pr.i.i)
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, %.lr.ph.i
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !1102 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i14.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i

bb.c:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !1102
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !1102
  %i.ag = tail call noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  br i1 %i.ag, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.ah = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val.i.i)
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.aj = add nuw i64 %.01015.i, 1                ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %.not20.i = icmp ult i64 %i.aj, %i.ap
  br i1 %.not20.i, label %.lr.ph.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit, !llvm.loop !1140

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %bb.c, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, %bb.a, %.preheader.i
  %.1.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ true, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ false, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i ], [ false, %bb.c ], [ false, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1022, !range !36, !noundef !37
  %3 = icmp ne i8 %i.ar, 0
  %4 = and i1 %.1.i, %3
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %i.aq, align 8, !tbaa !1022
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

declare noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1141, !nonnull !37, !align !368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1049
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !59

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.l) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.s = load i64, ptr %i.d, align 8, !tbaa !1049
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  store ptr %i.o, ptr %i.t, align 8, !tbaa !77
  store ptr %i.p, ptr %i.v, align 8, !tbaa !76
  store ptr %i.r, ptr %i.x, align 8, !tbaa !70
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.u to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ah) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1141, !nonnull !37, !align !368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1070 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.r = add i64 %i.q, 63                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 2305843009213693944
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 3 uses
  %i.v = lshr i64 %i.r, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = sdiv i64 %i.q, 64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  %i.z = and i64 %i.q, -9223372036854775745
  %i.aa = icmp ugt i64 %i.z, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.aa, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.y, i64 %storemerge.idx.i.i.i.i.i
  %i.ab = trunc i64 %i.q to i32
  %i.ac = and i32 %i.ab, 63
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i:     ; preds = %.noexc.i, %bb.a
  %.sroa.11.0 = phi i32 [ 0, %bb.a ], [ %i.ac, %.noexc.i ]
  %.sroa.84.0 = phi ptr [ null, %bb.a ], [ %storemerge.i.i.i.i.i, %.noexc.i ]
  %.sroa.145.0 = phi ptr [ null, %bb.a ], [ %i.w, %.noexc.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.u, %.noexc.i ] ; 4 uses
  %i.ad = icmp sgt i64 %i.n, 8
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !204

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0, ptr align 8 %i.g, i64 %i.n, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  %i.ae = icmp eq i64 %i.n, 8
  br i1 %i.ae, label %bb.d, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.g, align 8, !tbaa !352
  store i64 %i.af, ptr %.sroa.0.0, align 8, !tbaa !352
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.d, %bb.c, %bb.b
  %.not.i28.i = icmp eq i32 %i.k, 0
  br i1 %.not.i28.i, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.n
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.512.019.i.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.018.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.017.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.016.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.ah = zext nneg i32 %.sroa.512.019.i.i.i.i.i.i.i to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = load i64, ptr %.sroa.09.018.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ak = and i64 %i.aj, %i.ai
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i.i to i64
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ao = or i64 %i.an, %i.am
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = xor i64 %i.am, -1
  %i.aq = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ar = and i64 %i.aq, %i.ap
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i:     ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.ao, %bb.e ]
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal17ValidateEnumValueINS_8TimeUnit4typeEjEENS_6ResultIT_EET0_:.critedge
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !50, !noalias !3029 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53, !noalias !3029
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3029
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3029
  call void @_ZN5arrow6ResultINS_8TimeUnit4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.q = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !204

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !205, !range !36, !noundef !37
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.u = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute18StructFieldOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1330", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !3034
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.1333, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3036 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8, !tbaa !3038
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !3040
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEbRKSt7variantIJDpT_EESL_EUlOT_T0_E_JRKSG_IJS5_SB_SF_EEEEDcOSO_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.e), !inline_history !3042
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.g = load i8, ptr %i.a, align 1, !tbaa !322, !range !36, !noundef !37
  %4 = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1346", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !3043 ; 6 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3043

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !3043
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !3046
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !3034
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1355", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !3034
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !3049
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !3051
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !3052
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1356", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !3055 ; 8 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3055

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !3055
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !3058
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_1
