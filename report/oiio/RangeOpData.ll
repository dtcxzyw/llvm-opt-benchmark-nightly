inline.NumInlined: 406
inline.NumDeleted: 174
begin_hunk_0_@_ZNK16OpenColorIO_v2_511RangeOpData13hasMinInValueEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = fcmp ord double %i.b, 0.000000e+00
  ret i1 %i.c
}

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_511RangeOpData13hasMaxInValueEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp ord double %i.b, 0.000000e+00
  ret i1 %i.c
}

end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_511RangeOpData14hasMinOutValueEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load double, ptr %i.a, align 8, !tbaa !37
  %i.c = fcmp ord double %i.b, 0.000000e+00
  ret i1 %i.c
}

end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_511RangeOpData14hasMaxOutValueEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load double, ptr %i.a, align 8, !tbaa !38
  %i.c = fcmp ord double %i.b, 0.000000e+00
  ret i1 %i.c
}

end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 captures(none) dereferenceable(228) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35 ; 7 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load double, ptr %i.d, align 8, !tbaa !37 ; 7 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a

bb.j:                                             ; preds = %bb.f, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 6 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load double, ptr %i.n, align 8, !tbaa !38 ; 6 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00       ; 2 uses
  br i1 %i.m, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a

bb.ab:                                            ; preds = %bb.x
  %i.z = fcmp ogt double %i.e, %i.o
  br i1 %i.z, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a
  %.sink.i = select i1 %i.ad, double %i.ag, double %i.af
  %i.ah = tail call double @llvm.fabs.f64(double %.sink.i)
  %.0.in.i = fcmp ogt double %i.ah, 0x3EB0C6F7A0B5ED8D
  br i1 %.0.in.i, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a
          cleanup
  br label %common.resume

bb.an:                                            ; preds = %bb.af, %bb.ab, %bb.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !11
  %or.cond = fcmp uno double %i.b, %i.l
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.at = fsub double %i.l, %i.b                  ; 2 uses
  %i.au = tail call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp olt double %i.au, 0x3EB0C6F7A0B5ED8D
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a
bb.as:                                            ; preds = %bb.ao
  %i.ay = fsub double %i.o, %i.e
  %i.az = fdiv double %i.ay, %i.at                ; 2 uses
  store double %i.az, ptr %i.as, align 8, !tbaa !11
  %i.ba = fneg double %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.b, double %i.e)
  br label %_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit

_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit: ; preds = %bb.an, %bb.as
  %.sink.i6 = phi double [ 0.000000e+00, %bb.an ], [ %i.bb, %bb.as ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink.i6, ptr %i.bc, align 8, !tbaa !57
  ret void
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv:bb.a
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load double, ptr %i.b, align 8, !tbaa !35 ; 3 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.g = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_511RangeOpData10isIdentityEv:bb.a
  %i.k = fadd double %i.f, -1.000000e+00
  %.sink.i.i = select i1 %i.h, double %i.k, double %i.j
  %i.l = tail call double @llvm.fabs.f64(double %.sink.i.i)
  %.0.in.i.i = fcmp ogt double %i.l, 0x3EB0C6F7A0B5ED8D
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %2 = load double, ptr %1, align 8
  %.0.in.i.i.a = fcmp ogt double %2, 0.000000e+00
  %or.cond = select i1 %.0.in.i.i, i1 true, i1 %.0.in.i.i.a
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = fcmp uge double %i.n, 1.000000e+00
  br label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread

_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit
  %.0 = phi i1 [ false, %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit ], [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

end_hunk_11
begin_hunk_12_@_ZNK16OpenColorIO_v2_511RangeOpData10minIsEmptyEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

end_hunk_12
begin_hunk_13_@_ZNK16OpenColorIO_v2_511RangeOpData10maxIsEmptyEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData17clampsToLutDomainEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %or.cond = fcmp oge double %i.b, 0.000000e+00
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %2 = load double, ptr %1, align 8               ; 2 uses
  %i.c = fcmp ord double %2, 0.000000e+00
  %i.d = fcmp ule double %2, 1.000000e+00
  %or.cond6.not = and i1 %i.c, %i.d
  %.0 = select i1 %or.cond, i1 %or.cond6.not, i1 false
  ret i1 %.0
}

end_hunk_13
begin_hunk_14_@_ZNK16OpenColorIO_v2_511RangeOpData11isClampNegsEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
  %i.g = load double, ptr %i.f, align 8, !tbaa !37 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load double, ptr %i.h, align 8, !tbaa !38 ; 5 uses
  %i.j = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load double, ptr %i.n, align 8           ; 4 uses
  %i.p = fcmp ult double %i.o, %i.l
end_hunk_15
begin_hunk_16_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !35 ; 6 uses
  %i.ad = fcmp uno double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_16
begin_hunk_17_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35 ; 4 uses
  %i.as = fcmp uno double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_17
begin_hunk_18_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
  %i.at = phi double [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.ac, %bb.e ] ; 2 uses
  %.043 = phi double [ %i.d, %bb.i ], [ %i.ar, %bb.j ], [ %i.d, %bb.g ], [ %i.ap, %bb.h ], [ %i.d, %bb.e ]
  %.041 = phi double [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %i.aj, %bb.g ], [ %i.g, %bb.h ], [ %i.o, %bb.e ]
  %i.au = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.au, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = fcmp uno double %i.at, 0.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ax = load double, ptr %i.aw, align 8         ; 4 uses
  %i.ay = fcmp ugt double %i.ax, %i.at
end_hunk_18
begin_hunk_19_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
bb.o:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !36 ; 3 uses
  %i.bm = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_19
begin_hunk_20_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
bb.s:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cb = fcmp uno double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_20
begin_hunk_21_@_ZNK16OpenColorIO_v2_511RangeOpData15convertToMatrixEv:bb.a
  %3 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %4 = fcmp uno double %i.b, 0.000000e+00
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %6 = load double, ptr %5, align 8
  %i.c = fcmp uno double %6, 0.000000e+00
  %or.cond = select i1 %4, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d
end_hunk_21
begin_hunk_22_@_ZNK16OpenColorIO_v2_511RangeOpData15convertToMatrixEv:bb.a
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #18
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
end_hunk_22
begin_hunk_23_@_ZNK16OpenColorIO_v2_511RangeOpData6equalsERKNS_6OpDataE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !35 ; 5 uses
  %i.h = fcmp uno double %i.g, 0.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = load double, ptr %i.i, align 8, !tbaa !35 ; 4 uses
  %i.k = fcmp uno double %i.j, 0.000000e+00
  %i.l = xor i1 %i.h, %i.k
  br i1 %i.l, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load double, ptr %i.m, align 8, !tbaa !36 ; 5 uses
  %i.o = fcmp uno double %i.n, 0.000000e+00
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load double, ptr %i.p, align 8, !tbaa !36 ; 4 uses
  %i.r = fcmp uno double %i.q, 0.000000e+00
  %i.s = xor i1 %i.o, %i.r
  br i1 %i.s, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %brmerge = fcmp uno double %i.g, %i.j
  br i1 %brmerge, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_23
begin_hunk_24_@_ZNK16OpenColorIO_v2_511RangeOpData6equalsERKNS_6OpDataE:bb.a
  br i1 %.0.in.i16, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %brmerge21 = fcmp uno double %i.n, %i.q
  br i1 %brmerge21, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_24
begin_hunk_25_@_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv:bb.a
  %i.h = fdiv double 1.000000e+00, %i.g           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !35 ; 3 uses
  %i.k = fcmp uno double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_25
begin_hunk_26_@_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv:bb.a
  %i.m = phi double [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !36 ; 3 uses
  %i.p = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_26
begin_hunk_27_@_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi double [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %i.s = fcmp uno double %i.m, 0.000000e+00
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_27
begin_hunk_28_@_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = fcmp uno double %i.r, 0.000000e+00
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_28
