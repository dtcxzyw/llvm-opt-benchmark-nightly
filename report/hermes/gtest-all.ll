inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testingL31GetReservedAttributesForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread15: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef 2121)
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.348, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread15
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.349, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !7
  %i.an = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.am, i64 noundef %i.an)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread15
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7testing13ArrayAsVectorILi6EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERAT__KPKc.exit11, %_ZN7testing13ArrayAsVectorILi6EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERAT__KPKc.exit, %_ZN7testing13ArrayAsVectorILi8EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERAT__KPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing10TestResult5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !179  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !13
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !13
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #54
  br label %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !569

_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !179
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !565  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !566 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i1, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i3 = phi ptr [ %i.am, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i ], [ %i.y, %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 48 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4
  %i.ah = load ptr, ptr %.05.i.i.i.i3, align 8, !tbaa !7 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #54
  br label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 64 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.am, %i.aa
  br i1 %.not.i.i.i.i7, label %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !567

_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i
  store ptr %i.y, ptr %i.z, align 8, !tbaa !566
  br label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.an, align 8, !tbaa !592
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.ao, align 8, !tbaa !564
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult6FailedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112                 ; 5 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %bb.b, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.425, i64 noundef %i.h, i64 noundef %i.h) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 8, !tbaa !190
  %.not.not = icmp ne i32 %i.l, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond16.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond16.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit, %bb.a
  %.lcssa8 = phi i1 [ false, %bb.a ], [ %.not.not, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ]
  ret i1 %.lcssa8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult15HasFatalFailureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !593  ; 3 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %1 = add i64 %i.e, -112
  %2 = sub i64 %1, %i.f                           ; 2 uses
  %i.g = udiv i64 %2, 112
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.h, 576460752303423480       ; 3 uses
  %i.i = mul i64 %n.vec, 112
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.k = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep3 = getelementptr i8, ptr %i.l, i64 112
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep4 = getelementptr i8, ptr %i.m, i64 224
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep5 = getelementptr i8, ptr %i.n, i64 336
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep6 = getelementptr i8, ptr %i.o, i64 448
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep7 = getelementptr i8, ptr %i.p, i64 560
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep8 = getelementptr i8, ptr %i.q, i64 672
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep9 = getelementptr i8, ptr %i.r, i64 784
  %i.s = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.t = load i32, ptr %next.gep3, align 8, !tbaa !190
  %i.u = load i32, ptr %next.gep4, align 8, !tbaa !190
  %i.v = load i32, ptr %next.gep5, align 8, !tbaa !190
  %i.w = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.t, i64 1
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 2
  %i.z = insertelement <4 x i32> %i.y, i32 %i.v, i64 3
  %i.aa = load i32, ptr %next.gep6, align 8, !tbaa !190
  %i.ab = load i32, ptr %next.gep7, align 8, !tbaa !190
  %i.ac = load i32, ptr %next.gep8, align 8, !tbaa !190
  %i.ad = load i32, ptr %next.gep9, align 8, !tbaa !190
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3
  %i.ai = icmp eq <4 x i32> %i.z, splat (i32 2)
  %i.aj = icmp eq <4 x i32> %i.ah, splat (i32 2)
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = add <4 x i32> %vec.phi, %i.ak           ; 2 uses
  %i.an = add <4 x i32> %vec.phi2, %i.al          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !594

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.04.08.i.ph = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader10 ]
  %.sroa.04.08.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.04.08.i, align 8, !tbaa !190
  %i.ar = icmp eq i32 %i.aq, 2
  %i.as = zext i1 %i.ar to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !595

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ap, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.au = icmp ne i32 %spec.select.i.lcssa, 0
  br label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.au, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult18HasNonfatalFailureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !593  ; 3 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %1 = add i64 %i.e, -112
  %2 = sub i64 %1, %i.f                           ; 2 uses
  %i.g = udiv i64 %2, 112
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.h, 576460752303423480       ; 3 uses
  %i.i = mul i64 %n.vec, 112
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.k = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep3 = getelementptr i8, ptr %i.l, i64 112
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep4 = getelementptr i8, ptr %i.m, i64 224
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep5 = getelementptr i8, ptr %i.n, i64 336
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep6 = getelementptr i8, ptr %i.o, i64 448
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep7 = getelementptr i8, ptr %i.p, i64 560
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep8 = getelementptr i8, ptr %i.q, i64 672
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep9 = getelementptr i8, ptr %i.r, i64 784
  %i.s = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.t = load i32, ptr %next.gep3, align 8, !tbaa !190
  %i.u = load i32, ptr %next.gep4, align 8, !tbaa !190
  %i.v = load i32, ptr %next.gep5, align 8, !tbaa !190
  %i.w = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.t, i64 1
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 2
  %i.z = insertelement <4 x i32> %i.y, i32 %i.v, i64 3
  %i.aa = load i32, ptr %next.gep6, align 8, !tbaa !190
  %i.ab = load i32, ptr %next.gep7, align 8, !tbaa !190
  %i.ac = load i32, ptr %next.gep8, align 8, !tbaa !190
  %i.ad = load i32, ptr %next.gep9, align 8, !tbaa !190
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3
  %i.ai = icmp eq <4 x i32> %i.z, splat (i32 1)
  %i.aj = icmp eq <4 x i32> %i.ah, splat (i32 1)
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = add <4 x i32> %vec.phi, %i.ak           ; 2 uses
  %i.an = add <4 x i32> %vec.phi2, %i.al          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !596

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.04.08.i.ph = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader10 ]
  %.sroa.04.08.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.04.08.i, align 8, !tbaa !190
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !597

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ap, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.au = icmp ne i32 %spec.select.i.lcssa, 0
  br label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.au, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4TestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #57 ; 3 uses
  invoke void @_ZN7testing8internal14GTestFlagSaverC2Ev(ptr noundef nonnull align 8 dereferenceable(241) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !598
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #54
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal14GTestFlagSaverC2Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !16
  store i8 0, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !16
  store i8 0, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.l, align 8, !tbaa !16
  store i8 0, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.o, align 8, !tbaa !16
  store i8 0, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.r, align 8, !tbaa !16
  store i8 0, ptr %i.q, align 8, !tbaa !13
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !73, !range !74, !noundef !75
  store i8 %i.s, ptr %0, align 8, !tbaa !601
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !603
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !604
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !605
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3
  %i.z = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.z, ptr %i.aa, align 8, !tbaa !606
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !607
  %i.ad = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !608
  %i.af = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !609
  %i.ah = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !610
  %i.aj = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !611
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6 unwind label %bb.b

end_hunk_0
begin_hunk_1_@_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE:bb.a
  %i.as = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.ar)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18: ; preds = %bb.j, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i16
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22:       ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18, %bb.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !20, !noalias !619
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.au)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.n

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22
  %i.av = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !13
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.ba = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #53, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret void

bb.m:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

.body14:                                          ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body

bb.n:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22, %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body14, %bb.k, %bb.n, %bb.c, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %bb.c ], [ %i.at, %bb.k ], [ %i.bf, %.body14 ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.bm = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i27, label %_ZN7testing7MessageD2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #53, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv()
  br i1 %i.a, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !176

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.t, %bb.k ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 424 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !26
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.k, align 8, !tbaa !26
  store ptr %i.k, ptr %i.h, align 8, !tbaa !88
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.g
  %i.l = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.g ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = phi ptr [ %i.k, %bb.g ], [ %i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 17, i64 0, ptr noundef nonnull @.str.104)
  %i.p = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !46

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.j unwind label %bb.k, !inline_history !176

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.j, %bb.h, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !210  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.z = select i1 %.not.i.i8, ptr %i.y, ptr %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !593 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !593 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %1 = add i64 %i.ae, -112
  %2 = sub i64 %1, %i.af                          ; 2 uses
  %i.ag = udiv i64 %2, 112
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ah, 576460752303423480      ; 3 uses
  %i.ai = mul i64 %n.vec, 112
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %i.ak = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep19 = getelementptr i8, ptr %i.al, i64 112
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep20 = getelementptr i8, ptr %i.am, i64 224
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep21 = getelementptr i8, ptr %i.an, i64 336
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep22 = getelementptr i8, ptr %i.ao, i64 448
  %i.ap = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep23 = getelementptr i8, ptr %i.ap, i64 560
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep24 = getelementptr i8, ptr %i.aq, i64 672
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep25 = getelementptr i8, ptr %i.ar, i64 784
  %i.as = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.at = load i32, ptr %next.gep19, align 8, !tbaa !190
  %i.au = load i32, ptr %next.gep20, align 8, !tbaa !190
  %i.av = load i32, ptr %next.gep21, align 8, !tbaa !190
  %i.aw = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 1
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 2
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 3
  %i.ba = load i32, ptr %next.gep22, align 8, !tbaa !190
  %i.bb = load i32, ptr %next.gep23, align 8, !tbaa !190
  %i.bc = load i32, ptr %next.gep24, align 8, !tbaa !190
  %i.bd = load i32, ptr %next.gep25, align 8, !tbaa !190
  %i.be = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 2
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 3
  %i.bi = icmp eq <4 x i32> %i.az, splat (i32 2)
  %i.bj = icmp eq <4 x i32> %i.bh, splat (i32 2)
  %i.bk = zext <4 x i1> %i.bi to <4 x i32>
  %i.bl = zext <4 x i1> %i.bj to <4 x i32>
  %i.bm = add <4 x i32> %vec.phi, %i.bk           ; 2 uses
  %i.bn = add <4 x i32> %vec.phi18, %i.bl         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader26

.lr.ph.i.i.i.preheader26:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader26, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader26 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader26 ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !190
  %i.br = icmp eq i32 %i.bq, 2
  %i.bs = zext i1 %i.br to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, %i.ad
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !623

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.bp, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.m

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !88  ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge

_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  %.pre12 = load ptr, ptr %i.bu, align 8, !tbaa !26
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

bb.l:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  %i.bw = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bw, align 8, !tbaa !26
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !88
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge, %bb.l
  %i.bx = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre12, %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.by = phi ptr [ %i.bw, %bb.l ], [ %i.bu, %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 33, i64 0, ptr noundef nonnull @.str.105)
  br label %bb.m

bb.m:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !88  ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge: ; preds = %bb.m
  %.pre13 = load ptr, ptr %i.cb, align 8, !tbaa !26
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10

bb.n:                                             ; preds = %bb.m
  %i.cd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.cd, align 8, !tbaa !26
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !88
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge, %bb.n
  %i.ce = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.n ], [ %.pre13, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge ]
  %i.cf = phi ptr [ %i.cd, %bb.n ], [ %i.cb, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 25, i64 0, ptr noundef nonnull @.str.106)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !176

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !624, !range !74, !noundef !75
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !75
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !625

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc:bb.a
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ac unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.y = icmp eq i32 %i.t, %i.x
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ad, ptr noundef %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !13
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.t:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.ap, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn33 = phi { ptr, i32 } [ %i.av, %bb.u ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.aw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.be = getelementptr i8, ptr %i.bd, i64 %1
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load ptr, ptr %i.bf, align 8, !nosanitize !75
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bh = inttoptr i64 %1 to ptr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bi = phi ptr [ %i.bg, %bb.y ], [ %i.bh, %bb.z ]
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #59
  unreachable

bb.ac:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !176

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.i    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !593  ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !593  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %0 = add i64 %i.p, -112
  %1 = sub i64 %0, %i.q                           ; 2 uses
  %i.r = udiv i64 %1, 112
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %1, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.s, 576460752303423480       ; 3 uses
  %i.t = mul i64 %n.vec, 112
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.v = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep4 = getelementptr i8, ptr %i.w, i64 112
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep5 = getelementptr i8, ptr %i.x, i64 224
  %i.y = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep6 = getelementptr i8, ptr %i.y, i64 336
  %i.z = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep7 = getelementptr i8, ptr %i.z, i64 448
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep8 = getelementptr i8, ptr %i.aa, i64 560
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep9 = getelementptr i8, ptr %i.ab, i64 672
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep10 = getelementptr i8, ptr %i.ac, i64 784
  %i.ad = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.ae = load i32, ptr %next.gep4, align 8, !tbaa !190
  %i.af = load i32, ptr %next.gep5, align 8, !tbaa !190
  %i.ag = load i32, ptr %next.gep6, align 8, !tbaa !190
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 3
  %i.al = load i32, ptr %next.gep7, align 8, !tbaa !190
  %i.am = load i32, ptr %next.gep8, align 8, !tbaa !190
  %i.an = load i32, ptr %next.gep9, align 8, !tbaa !190
  %i.ao = load i32, ptr %next.gep10, align 8, !tbaa !190
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %i.at = icmp eq <4 x i32> %i.ak, splat (i32 2)
  %i.au = icmp eq <4 x i32> %i.as, splat (i32 2)
  %i.av = zext <4 x i1> %i.at to <4 x i32>
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = add <4 x i32> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <4 x i32> %vec.phi3, %i.aw          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader11

.lr.ph.i.i.preheader11:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader11, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader11 ]
  %.sroa.04.08.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader11 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !190
  %i.bc = icmp eq i32 %i.bb, 2
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.be, %i.o
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !627

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ba, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bf = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal15GetUnitTestImplEv.exit ], [ %i.bf, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !176

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.i    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !593  ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !593  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %0 = add i64 %i.p, -112
  %1 = sub i64 %0, %i.q                           ; 2 uses
  %i.r = udiv i64 %1, 112
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %1, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.s, 576460752303423480       ; 3 uses
  %i.t = mul i64 %n.vec, 112
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.v = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep4 = getelementptr i8, ptr %i.w, i64 112
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep5 = getelementptr i8, ptr %i.x, i64 224
  %i.y = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep6 = getelementptr i8, ptr %i.y, i64 336
  %i.z = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep7 = getelementptr i8, ptr %i.z, i64 448
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep8 = getelementptr i8, ptr %i.aa, i64 560
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep9 = getelementptr i8, ptr %i.ab, i64 672
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep10 = getelementptr i8, ptr %i.ac, i64 784
  %i.ad = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.ae = load i32, ptr %next.gep4, align 8, !tbaa !190
  %i.af = load i32, ptr %next.gep5, align 8, !tbaa !190
  %i.ag = load i32, ptr %next.gep6, align 8, !tbaa !190
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 3
  %i.al = load i32, ptr %next.gep7, align 8, !tbaa !190
  %i.am = load i32, ptr %next.gep8, align 8, !tbaa !190
  %i.an = load i32, ptr %next.gep9, align 8, !tbaa !190
  %i.ao = load i32, ptr %next.gep10, align 8, !tbaa !190
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %i.at = icmp eq <4 x i32> %i.ak, splat (i32 1)
  %i.au = icmp eq <4 x i32> %i.as, splat (i32 1)
  %i.av = zext <4 x i1> %i.at to <4 x i32>
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = add <4 x i32> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <4 x i32> %vec.phi3, %i.aw          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader11

.lr.ph.i.i.preheader11:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader11, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader11 ]
  %.sroa.04.08.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader11 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !190
  %i.bc = icmp eq i32 %i.bb, 1
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.be, %i.o
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !629

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ba, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bf = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal15GetUnitTestImplEv.exit ], [ %i.bf, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #53
  store i64 %i.i, ptr %i.e, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !7
  %i.l = load i64, ptr %i.e, align 8, !tbaa !15
  store i64 %i.l, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.n, ptr %i.m, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !14
  %i.u = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #53
  store i64 %i.w, ptr %i.d, align 8, !tbaa !15
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i44, label %._crit_edge.i.i43

.noexc.i44:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i44
  store ptr %i.y, ptr %i.s, align 8, !tbaa !7
  %i.z = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.z, ptr %i.t, align 8, !tbaa !13
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i43
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !13
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i43
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !16
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not.not = icmp eq ptr %3, null
  br i1 %.not.not, label %.critedge38, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #57
          to label %bb.h unwind label %bb.v       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !14
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !15
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i47, label %._crit_edge.i.i46

end_hunk_2
begin_hunk_3_@_ZN7testing8internal18FormatFileLocationB5cxx11EPKci:bb.a
  %i.fg = icmp eq ptr %i.ff, %i.d
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.body
  %i.fh = load i64, ptr %i.d, align 8, !tbaa !13
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !661, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !662  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !662
  %.not4.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i, label %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !663 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !665
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !662
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, label %.lr.ph.i, !llvm.loop !666

_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !661
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !225, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !176

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.p, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.o, %bb.j ], [ %i.ao, %bb.p ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 2 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !210
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !46

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !47
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !47

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !47 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !47
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.g, %bb.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211  ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.v = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #53 ; 0 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !239
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !241
  %.neg = sdiv i64 %i.y, -1000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 424 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !26
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ac = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ac, align 8, !tbaa !26
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !88
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.k
  %i.ad = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.k ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ae = phi ptr [ %i.ac, %bb.k ], [ %i.aa, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !632
  %i.aj = tail call noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %i.ai, i64 17, i64 0, ptr noundef nonnull @.str.116) ; 3 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.o unwind label %bb.p, !inline_history !176

bb.o:                                             ; preds = %bb.n
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.o, %bb.m, %bb.l
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 272
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !210 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.au = select i1 %.not.i.i12, ptr %i.at, ptr %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !593 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !593 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %3 = add i64 %i.az, -112
  %4 = sub i64 %3, %i.ba                          ; 2 uses
  %i.bb = udiv i64 %4, 112
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bc, 576460752303423480      ; 3 uses
  %i.bd = mul i64 %n.vec, 112
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %i.bf = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep24 = getelementptr i8, ptr %i.bg, i64 112
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep25 = getelementptr i8, ptr %i.bh, i64 224
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 336
  %i.bj = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep27 = getelementptr i8, ptr %i.bj, i64 448
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep28 = getelementptr i8, ptr %i.bk, i64 560
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep29 = getelementptr i8, ptr %i.bl, i64 672
  %i.bm = getelementptr i8, ptr %i.aw, i64 %i.bf
  %next.gep30 = getelementptr i8, ptr %i.bm, i64 784
  %i.bn = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.bo = load i32, ptr %next.gep24, align 8, !tbaa !190
  %i.bp = load i32, ptr %next.gep25, align 8, !tbaa !190
  %i.bq = load i32, ptr %next.gep26, align 8, !tbaa !190
  %i.br = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bp, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 3
  %i.bv = load i32, ptr %next.gep27, align 8, !tbaa !190
  %i.bw = load i32, ptr %next.gep28, align 8, !tbaa !190
  %i.bx = load i32, ptr %next.gep29, align 8, !tbaa !190
  %i.by = load i32, ptr %next.gep30, align 8, !tbaa !190
  %i.bz = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 3
  %i.cd = icmp eq <4 x i32> %i.bu, splat (i32 2)
  %i.ce = icmp eq <4 x i32> %i.cc, splat (i32 2)
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = zext <4 x i1> %i.ce to <4 x i32>
  %i.ch = add <4 x i32> %vec.phi, %i.cf           ; 2 uses
  %i.ci = add <4 x i32> %vec.phi23, %i.cg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ci, %i.ch
  %i.ck = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader31

.lr.ph.i.i.i.preheader31:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader31, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !190
  %i.cm = icmp eq i32 %i.cl, 2
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.cn ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.co, %i.ay
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !668

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.ck, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not15 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not15, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.q

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  br label %bb.q

bb.q:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread, %_ZN7testing4Test15HasFatalFailureEv.exit, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.r, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge: ; preds = %bb.q
  %.pre18 = load ptr, ptr %i.cp, align 8, !tbaa !26
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

bb.r:                                             ; preds = %bb.q
  %i.cr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.cr, align 8, !tbaa !26
  store ptr %i.cr, ptr %i.z, align 8, !tbaa !88
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge, %bb.r
  %i.cs = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.r ], [ %.pre18, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.ct = phi ptr [ %i.cr, %bb.r ], [ %i.cp, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %i.aj, i64 ptrtoint (ptr @_ZN7testing4Test11DeleteSelf_Ev to i64), i64 0, ptr noundef nonnull @.str.117)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.cw = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #53 ; 0 uses
  %i.cx = load i64, ptr %1, align 8, !tbaa !239
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !241
  %i.da = sdiv i64 %i.cz, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  %reass.add = sub i64 %i.cx, %i.w
  %reass.mul = mul i64 %reass.add, 1000
  %.neg17 = add nsw i64 %i.da, %.neg
  %i.db = add i64 %.neg17, %reass.mul
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !564
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.j, align 8, !tbaa !210
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !176

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.bd, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !624, !range !74, !noundef !75
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !75
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

end_hunk_3
begin_hunk_4_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a

bb.l:                                             ; preds = %bb.i, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.aj = phi i32 [ %i.ai, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !689
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !211 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.an = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #53 ; 0 uses
  %i.ao = load i64, ptr %4, align 8, !tbaa !239
  %i.ap = mul nsw i64 %i.ao, 1000
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !241
  %i.as = sdiv i64 %i.ar, 1000
  %i.at = add nsw i64 %i.as, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %i.at, ptr %i.au, align 8, !tbaa !783
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
  %i.ba = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.bb = select i1 %i.m, i32 1, i32 %i.ba        ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 0
  %.not49 = icmp eq i32 %i.bb, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.bo = xor i1 %spec.select, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.029.lcssa = phi i1 [ true, %bb.l ], [ %i.bo, %._crit_edge.loopexit ]
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.bp)
  br label %bb.ab

bb.m:                                             ; preds = %.lr.ph, %bb.aa
  %.02848 = phi i32 [ 0, %.lr.ph ], [ %i.ju, %bb.aa ] ; 3 uses
  %.02947 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.aa ]
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(497) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.bt = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #53 ; 0 uses
  %i.bu = load i64, ptr %3, align 8, !tbaa !239
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !241
  %.neg = sdiv i64 %i.bv, -1000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.bw = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !74
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond = select i1 %i.q, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.n, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.ak, align 4, !tbaa !689
  store i32 %i.by, ptr %i.be, align 8, !tbaa !36
  %i.bz = load i32, ptr %i.bf, align 4, !tbaa !931
  %i.ca = add nsw i32 %i.bz, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef %i.ca, ptr noundef nonnull %i.bg)
  %i.cb = load i32, ptr %i.bf, align 4, !tbaa !931
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !232
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !233
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = trunc i64 %i.ci to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef %i.cc, i32 noundef %i.cj, ptr noundef nonnull %i.bg)
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !232
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i31, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.cm = phi ptr [ %i.da, %.lr.ph.i ], [ %i.cl, %bb.n ]
  %.03.i = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.03.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !214 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !677
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !673
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = trunc i64 %i.cw to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef %i.cx, ptr noundef nonnull %i.cp)
  %i.cy = add nuw i64 %.03.i, 1                   ; 2 uses
  %i.cz = load ptr, ptr %i.bi, align 8, !tbaa !232
  %i.da = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3
  %i.df = icmp ult i64 %i.cy, %i.de
  br i1 %i.df, label %.lr.ph.i, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, !llvm.loop !932

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.n, %bb.m
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.dh = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dg, i32 noundef %.02848)
  br i1 %i.q, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.dl = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dk)
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !933 ; 2 uses
  %i.dp = load ptr, ptr %i.bk, align 8, !tbaa !933 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.do, %bb.o ] ; 2 uses
  %i.dq = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !925 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq), !inline_history !934
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, %i.dp
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !935

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.o
  %i.dv = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dv)
  %i.dz = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.p, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !46

bb.p:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.eb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  %.not.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.r unwind label %bb.s, !inline_history !176

bb.r:                                             ; preds = %bb.q
  %i.ec = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !176 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

common.resume:                                    ; preds = %bb.z, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %bb.s ], [ %i.jq, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !176
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.r, %bb.p, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 272
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !210 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.eg, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 280
  %i.ej = select i1 %.not.i.i32, ptr %i.ei, ptr %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !593 ; 12 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !593 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.el, %i.en
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %6 = add i64 %i.eo, -112
  %7 = sub i64 %6, %i.ep                          ; 2 uses
  %i.eq = udiv i64 %7, 112
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check71 = icmp ult i64 %7, 784
  br i1 %min.iters.check71, label %.lr.ph.i.i.i.preheader89, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec74 = and i64 %i.er, 576460752303423480    ; 3 uses
  %i.es = mul i64 %n.vec74, 112
  %i.et = getelementptr i8, ptr %i.el, i64 %i.es
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph72
  %index76 = phi i64 [ 0, %vector.ph72 ], [ %index.next85, %vector.body75 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph72 ], [ %i.fw, %vector.body75 ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph72 ], [ %i.fx, %vector.body75 ]
  %i.eu = mul i64 %index76, 112                   ; 8 uses
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.eu
  %i.ev = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep78 = getelementptr i8, ptr %i.ev, i64 112
  %i.ew = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep79 = getelementptr i8, ptr %i.ew, i64 224
  %i.ex = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep80 = getelementptr i8, ptr %i.ex, i64 336
  %i.ey = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep81 = getelementptr i8, ptr %i.ey, i64 448
  %i.ez = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep82 = getelementptr i8, ptr %i.ez, i64 560
  %i.fa = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep83 = getelementptr i8, ptr %i.fa, i64 672
  %i.fb = getelementptr i8, ptr %i.el, i64 %i.eu
  %next.gep84 = getelementptr i8, ptr %i.fb, i64 784
  %i.fc = load i32, ptr %next.gep, align 8, !tbaa !190
  %i.fd = load i32, ptr %next.gep78, align 8, !tbaa !190
  %i.fe = load i32, ptr %next.gep79, align 8, !tbaa !190
  %i.ff = load i32, ptr %next.gep80, align 8, !tbaa !190
  %i.fg = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 1
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 2
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 3
  %i.fk = load i32, ptr %next.gep81, align 8, !tbaa !190
  %i.fl = load i32, ptr %next.gep82, align 8, !tbaa !190
  %i.fm = load i32, ptr %next.gep83, align 8, !tbaa !190
  %i.fn = load i32, ptr %next.gep84, align 8, !tbaa !190
  %i.fo = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fl, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fm, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fn, i64 3
  %i.fs = icmp eq <4 x i32> %i.fj, splat (i32 2)
  %i.ft = icmp eq <4 x i32> %i.fr, splat (i32 2)
  %i.fu = zext <4 x i1> %i.fs to <4 x i32>
  %i.fv = zext <4 x i1> %i.ft to <4 x i32>
  %i.fw = add <4 x i32> %vec.phi, %i.fu           ; 2 uses
  %i.fx = add <4 x i32> %vec.phi77, %i.fv         ; 2 uses
  %index.next85 = add nuw i64 %index76, 8         ; 2 uses
  %i.fy = icmp eq i64 %index.next85, %n.vec74
  br i1 %i.fy, label %middle.block86, label %vector.body75, !llvm.loop !936

middle.block86:                                   ; preds = %vector.body75
  %bin.rdx = add <4 x i32> %i.fx, %i.fw
  %i.fz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.er, %n.vec74
  br i1 %cmp.n87, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader89

.lr.ph.i.i.i.preheader89:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block86
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fz, %middle.block86 ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.el, %.lr.ph.i.i.i.preheader ], [ %i.et, %middle.block86 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader89, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader89 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader89 ] ; 2 uses
  %i.ga = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !190
  %i.gb = icmp eq i32 %i.ga, 2
  %i.gc = zext i1 %i.gb to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.gc ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.gd, %i.en
  br i1 %.not.i.i1.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !937

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block86
  %spec.select.i.i.i.lcssa = phi i32 [ %i.fz, %middle.block86 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not41 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not41, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.loopexit

_ZN7testing4Test15HasFatalFailureEv.exit.preheader: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.ge = load ptr, ptr %i.bi, align 8, !tbaa !232
  %i.gf = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 2 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = lshr exact i64 %i.gi, 3
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ 0, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 3 uses
  %i.gm = phi ptr [ %i.ha, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.gf, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ]
  %i.gn = load ptr, ptr %i.bl, align 8, !tbaa !677
  %i.go = load ptr, ptr %i.bg, align 8, !tbaa !673 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %sext = shl i64 %i.gr, 30
  %i.gs = ashr i64 %sext, 32
  %.not.i.i33 = icmp slt i64 %indvars.iv, %i.gs
  call void @llvm.assume(i1 %.not.i.i33)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3  ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = zext nneg i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !214
  call void @_ZN7testing8TestCase3RunEv(ptr noundef nonnull align 8 dereferenceable(248) %i.gy)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load ptr, ptr %i.bi, align 8, !tbaa !232
  %i.ha = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 2 uses
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %sext67 = shl i64 %i.hd, 29
  %i.he = ashr i64 %sext67, 32
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %i.hf, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !938

.loopexit:                                        ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.hg = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.hh = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.hg)
  %i.hk = load ptr, ptr %i.bk, align 8, !tbaa !933, !noalias !939 ; 2 uses
  %i.hl = load ptr, ptr %i.bj, align 8, !tbaa !933, !noalias !942 ; 2 uses
  %.not4.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not4.i, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.loopexit, %.lr.ph.i34
  %.sroa.040.0 = phi ptr [ %i.hm, %.lr.ph.i34 ], [ %i.hk, %.loopexit ]
  %i.hm = getelementptr inbounds i8, ptr %.sroa.040.0, i64 -8 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !925 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hn), !inline_history !945
  %.not.i35 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not.i35, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i34, !llvm.loop !946

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i34, %.loopexit
  %i.hr = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.hs = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 96
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.hr)
  br label %bb.t

bb.t:                                             ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.hv = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #53 ; 0 uses
  %i.hw = load i64, ptr %2, align 8, !tbaa !239
  %i.hx = load i64, ptr %i.bm, align 8, !tbaa !241
  %i.hy = sdiv i64 %i.hx, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %reass.add = sub i64 %i.hw, %i.bu
  %reass.mul = mul i64 %reass.add, 1000
  %.neg43 = add nsw i64 %i.hy, %.neg
  %i.hz = add i64 %.neg43, %reass.mul
  store i64 %i.hz, ptr %i.bn, align 8, !tbaa !726
  %i.ia = load ptr, ptr %i.av, align 8, !tbaa !930
  %i.ib = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 104
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.ia, i32 noundef %.02848)
  %i.ie = call noundef zeroext i1 @_ZNK7testing8internal12UnitTestImpl6FailedEv(ptr noundef nonnull align 8 dereferenceable(497) %0)
  %spec.select = select i1 %i.ie, i1 true, i1 %.02947 ; 2 uses
  %i.if = load ptr, ptr %i.bi, align 8, !tbaa !232 ; 2 uses
  %i.ig = load ptr, ptr %i.bh, align 8, !tbaa !233 ; 3 uses
  %.not.i36 = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i36, label %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.t
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 3
  %i.il = load ptr, ptr %i.bg, align 8, !tbaa !673
  br label %bb.u

bb.u:                                             ; preds = %_ZN7testing8TestCase14UnshuffleTestsEv.exit.i, %.lr.ph.i37
  %.05.i = phi i64 [ 0, %.lr.ph.i37 ], [ %i.je, %_ZN7testing8TestCase14UnshuffleTestsEv.exit.i ] ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !214 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !677 ; 2 uses
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !673 ; 4 uses
  %.not.i.i38 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i.i38, label %_ZN7testing8TestCase14UnshuffleTestsEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
end_hunk_4
