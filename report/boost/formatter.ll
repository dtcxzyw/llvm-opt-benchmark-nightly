Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/formatter?download=true
inline.NumInlined: 896
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5boost6locale8impl_icu11date_formatIwE5parseERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERm:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE5parseERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseIlEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE5parseERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseIiEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseIdEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_74::ParsePosition", align 8 ; 9 uses
  %4 = alloca %"class.icu_74::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7413ParsePositionE, i64 16), ptr %3, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.b, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = trunc i64 %i.e to i32
  invoke void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.g, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not8.i = icmp eq i64 %i.e, 0
  br i1 %.not8.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %bb.b
  %.09.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %.noexc ] ; 2 uses
  %i.h = load i32, ptr %.09.i, align 4, !tbaa !87, !noalias !235
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.h)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit: ; preds = %bb.b, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !nonnull !100, !align !101
  %i.n = invoke noundef double @_ZNK6icu_7410DateFormat5parseERKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(352) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.s = fdiv double %i.n, 1.000000e+03           ; 3 uses
  %i.t = fcmp ogt double %i.s, f0x7FEFFFFFFFFFFFFF
  %i.u = fcmp olt double %i.s, f0x0010000000000000
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef i32 @_ZNK6icu_7413UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.o)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.sink.split:                                      ; preds = %bb.i
  %i.y = sext i32 %i.v to i64
  store double %i.s, ptr %2, align 8, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.d
  %.2 = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ %i.y, %.sink.split ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.2

bb.l:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.r, %bb.f ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.q, %bb.e ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseImEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_74::ParsePosition", align 8 ; 9 uses
  %4 = alloca %"class.icu_74::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7413ParsePositionE, i64 16), ptr %3, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.b, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = trunc i64 %i.e to i32
  invoke void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.g, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not8.i = icmp eq i64 %i.e, 0
  br i1 %.not8.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %bb.b
  %.09.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %.noexc ] ; 2 uses
  %i.h = load i32, ptr %.09.i, align 4, !tbaa !87, !noalias !238
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.h)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit: ; preds = %bb.b, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !nonnull !100, !align !101
  %i.n = invoke noundef double @_ZNK6icu_7410DateFormat5parseERKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(352) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.s = fdiv double %i.n, 1.000000e+03           ; 5 uses
  %i.t = fcmp ogt double %i.s, f0x43F0000000000000
  %i.u = fcmp olt double %i.s, 0.000000e+00
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef i32 @_ZNK6icu_7413UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.o)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %5 = sext i32 %i.v to i64
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %6

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

6:                                                ; preds = %bb.i
  %7 = fcmp oeq double %i.s, f0x43F0000000000000
  br i1 %7, label %.sink.split, label %8

8:                                                ; preds = %6
  %9 = fcmp oeq double %i.s, 0.000000e+00
  br i1 %9, label %.sink.split, label %10

10:                                               ; preds = %8
  %11 = fptoui double %i.s to i64
  br label %.sink.split

.sink.split:                                      ; preds = %8, %6, %10
  %.sink = phi i64 [ -1, %6 ], [ %11, %10 ], [ 0, %8 ]
  store i64 %.sink, ptr %2, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.d
  %.2 = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ %5, %.sink.split ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.2

bb.l:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.r, %bb.f ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.q, %bb.e ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseIlEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_74::ParsePosition", align 8 ; 9 uses
  %4 = alloca %"class.icu_74::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7413ParsePositionE, i64 16), ptr %3, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.b, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = trunc i64 %i.e to i32
  invoke void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.g, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not8.i = icmp eq i64 %i.e, 0
  br i1 %.not8.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %bb.b
  %.09.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %.noexc ] ; 2 uses
  %i.h = load i32, ptr %.09.i, align 4, !tbaa !87, !noalias !241
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.h)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit: ; preds = %bb.b, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !nonnull !100, !align !101
  %i.n = invoke noundef double @_ZNK6icu_7410DateFormat5parseERKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(352) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.s = fdiv double %i.n, 1.000000e+03           ; 4 uses
  %i.t = call double @llvm.fabs.f64(double %i.s)
  %or.cond = fcmp ogt double %i.t, f0x43E0000000000000
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = invoke noundef i32 @_ZNK6icu_7413UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.o)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %5 = sext i32 %i.u to i64
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %6

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

6:                                                ; preds = %bb.i
  %7 = fcmp oeq double %i.s, f0x43E0000000000000
  br i1 %7, label %.sink.split, label %8

8:                                                ; preds = %6
  %9 = fcmp oeq double %i.s, f0xC3E0000000000000
  br i1 %9, label %.sink.split, label %10

10:                                               ; preds = %8
  %11 = fptosi double %i.s to i64
  br label %.sink.split

.sink.split:                                      ; preds = %8, %6, %10
  %.sink = phi i64 [ 9223372036854775807, %6 ], [ %11, %10 ], [ -9223372036854775808, %8 ]
  store i64 %.sink, ptr %2, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.d
  %.2 = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ %5, %.sink.split ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.2

bb.l:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.r, %bb.f ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.q, %bb.e ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu11date_formatIwE8do_parseIiEEmRKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_74::ParsePosition", align 8 ; 9 uses
  %4 = alloca %"class.icu_74::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7413ParsePositionE, i64 16), ptr %3, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.b, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = trunc i64 %i.e to i32
  invoke void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.g, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not8.i = icmp eq i64 %i.e, 0
  br i1 %.not8.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %bb.b
  %.09.i = phi ptr [ %i.j, %bb.b ], [ %i.c, %.noexc ] ; 2 uses
  %i.h = load i32, ptr %.09.i, align 4, !tbaa !87, !noalias !244
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.h)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit: ; preds = %bb.b, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !nonnull !100, !align !101
  %i.n = invoke noundef double @_ZNK6icu_7410DateFormat5parseERKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(352) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.s = fdiv double %i.n, 1.000000e+03           ; 5 uses
  %i.t = fcmp ogt double %i.s, f0x41DFFFFFFFC00000
  %i.u = fcmp olt double %i.s, f0xC1E0000000000000
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef i32 @_ZNK6icu_7413UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.o)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %5 = sext i32 %i.v to i64
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %6

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

6:                                                ; preds = %bb.i
  %7 = fcmp oeq double %i.s, f0x41DFFFFFFFC00000
  br i1 %7, label %.sink.split, label %8

8:                                                ; preds = %6
  %9 = fcmp oeq double %i.s, f0xC1E0000000000000
  br i1 %9, label %.sink.split, label %10

10:                                               ; preds = %8
  %11 = fptosi double %i.s to i32
  br label %.sink.split

.sink.split:                                      ; preds = %8, %6, %10
  %.sink = phi i32 [ 2147483647, %6 ], [ %11, %10 ], [ -2147483648, %8 ]
  store i32 %.sink, ptr %2, align 4, !tbaa !149
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.d
  %.2 = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ %5, %.sink.split ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %.2

bb.l:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.r, %bb.f ]
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.q, %bb.e ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7413ParsePositionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt6locale", !10, i64 0}
!10 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"_ZTSNSt6locale5_ImplE", !5, i64 0, !14, i64 8, !16, i64 16, !14, i64 24, !17, i64 32}
!14 = !{!"p2 _ZTSNSt6locale5facetE", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"p2 omnipotent char", !15, i64 0}
!18 = !{!13, !14, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5facetE", !11, i64 0}
!21 = !{!22, !23, i64 24}
!22 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !26, i64 48, !6, i64 64, !5, i64 192, !27, i64 200, !9, i64 208}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !16, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!28 = !{!22, !16, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = distinct !{null}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSN5boost6locale8impl_icu10icu_handleE", !34, i64 0}
!34 = !{!"p1 _ZTS10UConverter", !11, i64 0}
!35 = !{!36, !5, i64 8}
!36 = !{!"_ZTSN5boost6locale8impl_icu17icu_std_converterIcLi1EEE", !37, i64 0, !5, i64 8}
!37 = !{!"_ZTSN5boost6locale8impl_icu5uconvE", !33, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN6icu_7412NumberFormatE", !11, i64 0}
!40 = !{!41, !44, i64 32}
!41 = !{!"_ZTSN5boost6locale8impl_icu13number_formatIcEE", !42, i64 0, !36, i64 8, !39, i64 24, !44, i64 32}
!42 = !{!"_ZTSN5boost6locale8impl_icu9formatterIcEE", !43, i64 0}
!43 = !{!"_ZTSN5boost6locale8impl_icu14base_formatterE"}
!44 = !{!"bool", !6, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN5boost6locale8impl_icu9formatterIcEE", !11, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!49, !51, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !16, i64 8, !6, i64 16}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !51, i64 0}
!51 = !{!"p1 omnipotent char", !11, i64 0}
!52 = !{!49, !16, i64 8}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_: argument 0"}
!55 = distinct !{!55, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_"}
!56 = !{!57, !57, i64 0}
!57 = !{!"_ZTS10UErrorCode", !6, i64 0}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_: argument 0"}
!60 = distinct !{!60, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_"}
!61 = !{!62, !46, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN5boost6locale8impl_icu9formatterIcEELb0EE", !46, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTSN6icu_7410DateFormatE", !11, i64 0}
!65 = distinct !{null, null}
!66 = !{!67, !64, i64 0}
!67 = !{!"_ZTSSt10_Head_baseILm0EPN6icu_7410DateFormatELb0EE", !64, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"char16_t", !6, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!50, !51, i64 0}
!73 = !{!16, !16, i64 0}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSN5boost6locale8impl_icu17icu_std_converterIwLi4EEE", !76, i64 0}
!76 = !{!"_ZTSN5boost6locale8impl_icu10cpcvt_typeE", !6, i64 0}
!77 = !{!78, !44, i64 24}
!78 = !{!"_ZTSN5boost6locale8impl_icu13number_formatIwEE", !79, i64 0, !75, i64 8, !39, i64 16, !44, i64 24}
!79 = !{!"_ZTSN5boost6locale8impl_icu9formatterIwEE", !43, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN5boost6locale8impl_icu9formatterIwEE", !11, i64 0}
!82 = !{!83, !85, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !84, i64 0, !16, i64 8, !6, i64 16}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !85, i64 0}
!85 = !{!"p1 wchar_t", !11, i64 0}
!86 = !{!83, !16, i64 8}
!87 = !{!88, !88, i64 0}
!88 = !{!"wchar_t", !6, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_: argument 0"}
!91 = distinct !{!91, !"_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_"}
!92 = distinct !{!92, !71}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_: argument 0"}
!95 = distinct !{!95, !"_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_"}
!96 = !{!97, !81, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN5boost6locale8impl_icu9formatterIwEELb0EE", !81, i64 0}
!98 = !{ptr @_ZN5boost6locale8impl_icu13number_formatIcED2Ev}
!99 = !{!41, !39, i64 24}
!100 = !{}
!101 = !{i64 8}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE: argument 0"}
!104 = distinct !{!104, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE: argument 0"}
!107 = distinct !{!107, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!110 = distinct !{!110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!111 = !{!112, !109}
!112 = distinct !{!112, !113, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!113 = distinct !{!113, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE: argument 0"}
!116 = distinct !{!116, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE: argument 0"}
!119 = distinct !{!119, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3stdB5cxx11ERKN6icu_7413UnicodeStringE"}
!120 = !{!121, !5, i64 8}
!121 = !{!"_ZTSN6icu_7413ParsePositionE", !122, i64 0, !5, i64 8, !5, i64 12}
!122 = !{!"_ZTSN6icu_747UObjectE"}
!123 = !{!121, !5, i64 12}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_: argument 0"}
!126 = distinct !{!126, !"_ZNK5boost6locale8impl_icu17icu_std_converterIcLi1EE3icuEPKcS5_"}
!127 = !{!128, !128, i64 0}
!128 = !{!"double", !6, i64 0}
end_hunk_0
