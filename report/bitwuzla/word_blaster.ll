Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/word_blaster?download=true
inline.NumInlined: 3102
inline.NumDeleted: 1022
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6symfpu17customRounderInfoIN4bzla2fp15SymFpuSymTraitsEED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #19
  tail call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

declare void @_ZNK4bzla2fp11SymFpuSymBVILb1EEanERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuSymBV.298") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp11SymFpuSymBVILb1EE10isAllZerosEv(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuSymProp") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp11SymFpuSymBVILb1EE20signExtendRightShiftERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuSymBV.298") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6symfpu23conditionalLeftShiftOneIN4bzla2fp15SymFpuSymTraitsENS2_11SymFpuSymBVILb0EEENS2_13SymFpuSymPropEEET0_RKT1_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %4 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %5 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %6 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %7 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %8 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call noundef i32 @_ZNK4bzla2fp11SymFpuSymBVILb0EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK4bzla2fp13SymFpuSymPropntEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = add i32 %i.b, -1                         ; 2 uses
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EE7extractEjj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.c, i32 noundef %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EE10isAllZerosEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK4bzla2fp13SymFpuSymPropooERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4bzla2fp15SymFpuSymTraits12preconditionERKNS0_13SymFpuSymPropE(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EE3oneERKj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EE16modularLeftShiftERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  invoke void @_ZN6symfpu3iteIN4bzla2fp13SymFpuSymPropENS2_11SymFpuSymBVILb0EEEE5iteOpERKS3_RKS5_SA_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6symfpu3ITEIN4bzla2fp13SymFpuSymPropENS2_11SymFpuSymBVILb0EEEEEKT0_RKT_RS7_SB_.exit unwind label %bb.o

_ZN6symfpu3ITEIN4bzla2fp13SymFpuSymPropENS2_11SymFpuSymBVILb0EEEEEKT0_RKT_RS7_SB_.exit: ; preds = %bb.f
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.g:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.g, %bb.j ], [ %i.f, %bb.i ]
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.e, %bb.h ]
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.d, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.i, %bb.o ], [ %i.h, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.p ], [ %.pn.pn.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6symfpu14fixedPointSqrtIN4bzla2fp15SymFpuSymTraitsEEENS_22resultWithRemainderBitIT_EERKNS5_3ubvE(ptr dead_on_unwind noalias writable sret(%"struct.symfpu::resultWithRemainderBit") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %2 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 8 uses
  %3 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 12 uses
  %5 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %6 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %7 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 8 uses
  %8 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 8 uses
  %9 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %10 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %11 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %12 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %13 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %14 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %15 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %16 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %17 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %18 = alloca %"class.bzla::fp::SymFpuSymProp", align 8 ; 7 uses
  %19 = alloca %"class.bzla::fp::SymFpuSymBV", align 8 ; 7 uses
  %i.c = tail call noundef i32 @_ZNK4bzla2fp11SymFpuSymBVILb0EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = add i32 %i.c, -1
  store i32 %i.d, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.e = add i32 %i.c, -2
  store i32 %i.e, ptr %i.b, align 4, !tbaa !95
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EE4zeroERKj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EE6appendERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EE3oneERKj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.f = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.g = add i32 %i.f, -1
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EEC1Ejj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.f, i32 noundef %i.g)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EElsERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.h = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %.049 = add i32 %i.h, -1                        ; 2 uses
  %.not50 = icmp eq i32 %.049, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.p
  %.052 = phi i32 [ %.0, %bb.p ], [ %.049, %bb.e ] ; 2 uses
  %.0.in51 = phi i32 [ %.052, %bb.p ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.i = load i32, ptr %i.a, align 4, !tbaa !95
  %i.j = add i32 %.0.in51, -2
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EEC1Ejj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.i, i32 noundef %i.j)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EE3oneERKj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EElsERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EEorERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN6symfpu17expandingMultiplyIN4bzla2fp15SymFpuSymTraitsENS2_11SymFpuSymBVILb0EEEEET0_RKS6_S8_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EEleERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EEC1ERKNS0_13SymFpuSymPropE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.k = load i32, ptr %i.a, align 4, !tbaa !95
  %i.l = add i32 %i.k, -1
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EE6extendEj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %i.l)
          to label %bb.m unwind label %bb.ag

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EElsERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.ah

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EEorERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2fp11SymFpuSymBVILb0EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.p unwind label %bb.aj      ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.0 = add i32 %.052, -1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !347

bb.q:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.be

bb.r:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.q, %bb.t ], [ %i.p, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.o, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bd

bb.w:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn33 = phi { ptr, i32 } [ %i.u, %bb.z ], [ %i.t, %bb.y ]
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.aa ], [ %i.s, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ap

bb.ac:                                            ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn36 = phi { ptr, i32 } [ %i.w, %bb.ad ], [ %i.v, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ao

bb.af:                                            ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ag:                                            ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn38 = phi { ptr, i32 } [ %i.ab, %bb.aj ], [ %i.aa, %bb.ai ]
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.ak ], [ %i.z, %bb.ah ]
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ag
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.al ], [ %i.y, %bb.ag ]
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.am ], [ %i.x, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ae
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.an ], [ %.pn36, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ab
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.ao ], [ %.pn33.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.ap ], [ %i.r, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bc

._crit_edge:                                      ; preds = %bb.p, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZN6symfpu17expandingMultiplyIN4bzla2fp15SymFpuSymTraitsENS2_11SymFpuSymBVILb0EEEEET0_RKS6_S8_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymBV") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %._crit_edge
  invoke void @_ZNK4bzla2fp11SymFpuSymBVILb0EEeqERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK4bzla2fp13SymFpuSymPropntEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4bzla2fp11SymFpuSymBVILb0EEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.at
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4bzla2fp13SymFpuSymPropC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZN6symfpu22resultWithRemainderBitIN4bzla2fp15SymFpuSymTraitsEEC2ERKNS2_11SymFpuSymBVILb0EEERKNS2_13SymFpuSymPropE.exit unwind label %bb.au

bb.au:                                            ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #19
  br label %.body

_ZN6symfpu22resultWithRemainderBitIN4bzla2fp15SymFpuSymTraitsEEC2ERKNS2_11SymFpuSymBVILb0EEERKNS2_13SymFpuSymPropE.exit: ; preds = %.noexc
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  call void @_ZN4bzla2fp13SymFpuSymPropD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4bzla2fp11SymFpuSymBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.av:                                            ; preds = %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
end_hunk_0
