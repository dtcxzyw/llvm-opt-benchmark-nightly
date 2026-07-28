inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@_ZN4absl16strings_internal10ParseFloatILi10EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
  %.sink = select i1 %.not, i32 0, i32 %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6109, ptr %i.by, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread, %bb.k, %bb.i, %.critedge, %.critedge3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %bb.w
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_118ParseInfinityOrNanEPKcS2_PNS_16strings_internal11ParsedFloatE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 3
  br i1 %i.d, label %.critedge40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1
  switch i8 %i.e, label %.critedge40 [
    i8 105, label %bb.c
    i8 73, label %bb.c
    i8 110, label %bb.h
    i8 78, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str, i64 noundef 2) #6
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.d, label %.critedge40

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8
  %i.i = icmp samesign ugt i64 %i.c, 7
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1, i64 noundef 5) #6
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.m, ptr %i.n, align 8
  br label %.critedge40

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.o, ptr %i.p, align 8
  br label %.critedge40

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %.critedge40

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %bb.j, label %.critedge40

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1
  %i.x = icmp eq i8 %i.w, 40
  br i1 %i.x, label %bb.k, label %.critedge40

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = icmp ult ptr %i.y, %1
  br i1 %i.z, label %.lr.ph, label %.critedge40

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.042 = phi ptr [ %i.ah, %bb.l ], [ %i.y, %bb.k ] ; 4 uses
  %i.aa = load i8, ptr %.042, align 1             ; 4 uses
  %i.ab = icmp eq i8 %i.aa, 95
  %i.ac = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  %or.cond12.i = or i1 %i.ab, %or.cond.i
  %i.ad = and i8 %i.aa, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = or i1 %or.cond12.i, %i.af
  br i1 %i.ag, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ah, %1
  br i1 %exitcond.not, label %.critedge40, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph
  %i.ai = icmp eq i8 %i.aa, 41
  br i1 %i.ai, label %bb.m, label %.critedge40

bb.m:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.042, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.042, i64 1
  store ptr %i.al, ptr %i.u, align 8
  br label %.critedge40

.critedge40:                                      ; preds = %bb.l, %bb.k, %bb.b, %bb.i, %bb.j, %bb.m, %.critedge, %bb.h, %bb.f, %bb.g, %bb.c, %bb.a
  %.035 = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.b ], [ true, %.critedge ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp samesign ult i32 %2, 20
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.d                          ; 3 uses
  %.not = icmp ne i64 %.fr, 0
  %.not5057 = icmp eq ptr %1, %0
  %or.cond58 = or i1 %.not, %.not5057
  br i1 %or.cond58, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %i.e = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph.split

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 252, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb) #7
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %.04459 = phi ptr [ %i.h, %bb.c ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.f = load i8, ptr %.04459, align 1
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.split
  %i.h = getelementptr inbounds nuw i8, ptr %.04459, i64 1 ; 2 uses
  %.not50 = icmp eq ptr %1, %i.h
  br i1 %.not50, label %.critedge, label %.lr.ph.split, !llvm.loop !11

.critedge:                                        ; preds = %.lr.ph.split, %bb.c, %.preheader
  %.044.lcssa = phi ptr [ %0, %.preheader ], [ %scevgep, %bb.c ], [ %.04459, %.lr.ph.split ] ; 6 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %.044.lcssa to i64          ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = icmp sgt i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 %i.l
  %i.o = select i1 %i.m, ptr %i.n, ptr %1         ; 3 uses
  %i.p = icmp ult ptr %.044.lcssa, %i.o
  br i1 %i.p, label %.lr.ph69.preheader, label %.critedge2

.lr.ph69.preheader:                               ; preds = %.critedge
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = sub i64 %i.q, %i.j
  %scevgep84 = getelementptr i8, ptr %.044.lcssa, i64 %i.r
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.h
  %.168 = phi ptr [ %i.x, %bb.h ], [ %.044.lcssa, %.lr.ph69.preheader ] ; 3 uses
  %.04567 = phi i64 [ %i.w, %bb.h ], [ %.fr, %.lr.ph69.preheader ] ; 3 uses
  %i.s = load i8, ptr %.168, align 1              ; 2 uses
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph69
  %i.v = mul i64 %.04567, 10                      ; 3 uses
  %.not51 = icmp ult i64 %i.v, %.04567
  br i1 %.not51, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %5 = and i8 %i.s, 15
  %6 = zext nneg i8 %5 to i64
  %i.w = add i64 %i.v, %6                         ; 3 uses
  %.not52 = icmp ult i64 %i.w, %i.v
  br i1 %.not52, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.168, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.x, %i.o
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph69, !llvm.loop !12

.critedge2:                                       ; preds = %.lr.ph69, %bb.h, %.critedge
  %.045.lcssa = phi i64 [ %.fr, %.critedge ], [ %i.w, %bb.h ], [ %.04567, %.lr.ph69 ]
  %.1.lcssa = phi ptr [ %.044.lcssa, %.critedge ], [ %scevgep84, %bb.h ], [ %.168, %.lr.ph69 ] ; 5 uses
  %i.y = icmp ult ptr %.1.lcssa, %1
  br i1 %i.y, label %.lr.ph77.preheader, label %.critedge4.thread

.lr.ph77.preheader:                               ; preds = %.critedge2
  %.1.lcssa85 = ptrtoaddr ptr %.1.lcssa to i64
  %i.z = sub i64 %i.b, %.1.lcssa85
  %scevgep86 = getelementptr i8, ptr %.1.lcssa, i64 %i.z
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %bb.i
  %.076 = phi i1 [ %spec.select, %bb.i ], [ false, %.lr.ph77.preheader ] ; 2 uses
  %.275 = phi ptr [ %i.ae, %bb.i ], [ %.1.lcssa, %.lr.ph77.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.275, align 1             ; 2 uses
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph77
  %i.ad = icmp ne i8 %i.aa, 48
  %spec.select = or i1 %.076, %i.ad               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.275, i64 1 ; 2 uses
  %exitcond87.not = icmp eq ptr %i.ae, %1
  br i1 %exitcond87.not, label %.critedge4, label %.lr.ph77, !llvm.loop !13

.critedge4:                                       ; preds = %.lr.ph77, %bb.i
  %.2.lcssa = phi ptr [ %scevgep86, %bb.i ], [ %.275, %.lr.ph77 ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select, %bb.i ], [ %.076, %.lr.ph77 ]
  br i1 %.0.lcssa, label %bb.j, label %.critedge4.thread

bb.j:                                             ; preds = %.critedge4
  store i8 1, ptr %4, align 1
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.critedge2, %bb.j, %.critedge4
  %.2.lcssa97 = phi ptr [ %.2.lcssa, %.critedge4 ], [ %.2.lcssa, %bb.j ], [ %.1.lcssa, %.critedge2 ]
  store i64 %.045.lcssa, ptr %3, align 8
  %i.af = ptrtoint ptr %.2.lcssa97 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  ret i32 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load i32, ptr %2, align 4
  %.fr = freeze i32 %i.b                          ; 3 uses
  %.not = icmp ne i32 %.fr, 0
  %.not503 = icmp eq ptr %1, %0
  %or.cond4 = or i1 %.not, %.not503
  br i1 %or.cond4, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %i.a, %i.c
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %.0445 = phi ptr [ %i.g, %bb.b ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0445, align 1
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split
  %i.g = getelementptr inbounds nuw i8, ptr %.0445, i64 1 ; 2 uses
  %.not50 = icmp eq ptr %1, %i.g
  br i1 %.not50, label %.critedge, label %.lr.ph.split, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph.split, %bb.b, %bb.a
  %.044.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.0445, %.lr.ph.split ] ; 6 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %.044.lcssa to i64          ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 9
  %i.m = select i1 %i.k, ptr %i.l, ptr %1         ; 3 uses
  %i.n = icmp ult ptr %.044.lcssa, %i.m
  br i1 %i.n, label %.lr.ph15.preheader, label %.critedge2

.lr.ph15.preheader:                               ; preds = %.critedge
  %i.o = ptrtoaddr ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.i
  %scevgep26 = getelementptr i8, ptr %.044.lcssa, i64 %i.p
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %bb.e
  %.114 = phi ptr [ %i.x, %bb.e ], [ %.044.lcssa, %.lr.ph15.preheader ] ; 3 uses
  %.04513 = phi i32 [ %i.w, %bb.e ], [ %.fr, %.lr.ph15.preheader ] ; 3 uses
  %i.q = load i8, ptr %.114, align 1              ; 2 uses
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %.lr.ph15
  %i.t = mul nsw i32 %.04513, 10                  ; 2 uses
  %.not51 = icmp slt i32 %i.t, %.04513
  br i1 %.not51, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = zext nneg i8 %i.q to i32
  %i.v = add i32 %i.t, -48
  %i.w = add i32 %i.v, %i.u                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.114, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.x, %i.m
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph15, !llvm.loop !15

.critedge2:                                       ; preds = %.lr.ph15, %bb.e, %.critedge
  %.045.lcssa = phi i32 [ %.fr, %.critedge ], [ %i.w, %bb.e ], [ %.04513, %.lr.ph15 ]
  %.1.lcssa = phi ptr [ %.044.lcssa, %.critedge ], [ %scevgep26, %bb.e ], [ %.114, %.lr.ph15 ] ; 5 uses
  %i.y = icmp ult ptr %.1.lcssa, %1
  br i1 %i.y, label %.lr.ph22.preheader, label %.critedge4

.lr.ph22.preheader:                               ; preds = %.critedge2
  %.1.lcssa27 = ptrtoaddr ptr %.1.lcssa to i64
  %i.z = sub i64 %i.a, %.1.lcssa27
  %scevgep28 = getelementptr i8, ptr %.1.lcssa, i64 %i.z
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.f
  %.221 = phi ptr [ %i.ad, %bb.f ], [ %.1.lcssa, %.lr.ph22.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.221, align 1
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.f, label %.critedge4

bb.f:                                             ; preds = %.lr.ph22
  %i.ad = getelementptr inbounds nuw i8, ptr %.221, i64 1 ; 2 uses
  %exitcond29.not = icmp eq ptr %i.ad, %1
  br i1 %exitcond29.not, label %.critedge4, label %.lr.ph22, !llvm.loop !16

.critedge4:                                       ; preds = %bb.f, %.lr.ph22, %.critedge2
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge2 ], [ %.221, %.lr.ph22 ], [ %scevgep28, %bb.f ]
  store i32 %.045.lcssa, ptr %2, align 4
  %i.ae = ptrtoint ptr %.2.lcssa to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  ret i32 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE(ptr dead_on_unwind noalias writable sret(%"struct.absl::strings_internal::ParsedFloat") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_118ParseInfinityOrNanEPKcS2_PNS_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.g, label %bb.x, label %.preheader109

.preheader109:                                    ; preds = %bb.b
  %i.h = icmp ult ptr %1, %2
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.i = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0110 = phi ptr [ %i.l, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.j = load i8, ptr %.0110, align 1
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.0110, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.l, %2
end_hunk_0
