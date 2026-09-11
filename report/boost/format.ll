Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/format?download=true
inline.NumInlined: 240
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost6locale6detail13format_parserC2ERSt8ios_basePvPFvS5_RKSt6localeE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_ZN5boost6locale8ios_infoC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  store ptr %i.b, ptr %i.a, align 8, !tbaa !12
  store i32 -1, ptr %i.b, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !39
  %i.k = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_infoaSERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #16
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 0 uses
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i8 0, ptr %i.t, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store ptr %2, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store ptr %3, ptr %i.v, align 8, !tbaa !42
  ret void

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost6locale8hold_ptrINS0_6detail13format_parser4dataEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_infoaSERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6locale8hold_ptrINS0_6detail13format_parser4dataEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @_ZN5boost6locale8ios_infoD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6locale6detail13format_parser5imbueERKSt6locale(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost6locale6detail13format_parserD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost6locale8hold_ptrINS0_6detail13format_parser4dataEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN5boost6locale8ios_infoD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #17
  br label %_ZN5boost6locale8hold_ptrINS0_6detail13format_parser4dataEED2Ev.exit

_ZN5boost6locale8hold_ptrINS0_6detail13format_parser4dataEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6locale6detail13format_parser7restoreEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.e = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.f = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_infoaSERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c) ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !47
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.n = load i8, ptr %i.m, align 8, !tbaa !40, !range !48, !noundef !45
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  tail call void %i.r(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5boost6locale6detail13format_parser12get_positionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6locale6detail13format_parser12set_one_flagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::locale", align 8       ; 5 uses
  %4 = alloca %"class.boost::locale::generator", align 8 ; 9 uses
  %5 = alloca %"class.std::locale", align 8       ; 9 uses
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::locale", align 8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 8 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.dk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !51     ; 11 uses
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %11 = load i8, ptr %i.f, align 1, !tbaa !52     ; 2 uses
  %i.g = icmp eq i8 %11, 43
  br i1 %i.g, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52    ; 2 uses
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.d, -1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c
  %12 = phi i8 [ %11, %bb.c ], [ %i.i, %bb.e ]
  %.sroa.02.0.ph.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.e ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.02.0.ph.i, i64 %.sroa.7.0.ph.i
  br label %.preheader.i.i.i.i.a

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.f, align 1, !tbaa !52
  br label %.preheader.i.i.i.i.a

.preheader.i.i.i.i.a:                             ; preds = %bb.f, %.thread.i
  %14 = phi i8 [ %12, %.thread.i ], [ %i.m, %bb.f ] ; 3 uses
  %15 = phi ptr [ %13, %.thread.i ], [ %i.l, %bb.f ] ; 2 uses
  %.sroa.7.012.i = phi i64 [ %.sroa.7.0.ph.i, %.thread.i ], [ 1, %bb.f ] ; 11 uses
  %.sroa.02.011.i = phi ptr [ %.sroa.02.0.ph.i, %.thread.i ], [ %i.f, %bb.f ] ; 9 uses
  switch i8 %14, label %.lr.ph.preheader.i.i.i.i.a [
    i8 45, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
    i8 43, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
    i8 32, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
  ]

.lr.ph.preheader.i.i.i.i.a:                       ; preds = %.preheader.i.i.i.i.a
  %i.n = add i8 %14, -48
  %.not95.i.i.i.i = icmp ult i8 %i.n, 10
  br i1 %.not95.i.i.i.i, label %bb.g, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.a
  %i.o = zext nneg i8 %14 to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %invariant.smin.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.7.012.i, i64 9) ; 2 uses
  %.071119.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 1 ; 2 uses
  %16 = icmp sgt i64 %.sroa.7.012.i, 1
  br i1 %16, label %bb.h, label %.lr.ph134.i.i.preheader.i.i

bb.h:                                             ; preds = %bb.g
  %17 = load i8, ptr %.071119.i.i.i.i, align 1, !tbaa !52
  %i.s = zext i8 %17 to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52
  %i.v = zext i8 %i.u to i32
  %i.w = mul nuw nsw i32 %i.r, 10
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 2 uses
  %exitcond.not.i.i.i.i.1.a = icmp eq i64 %.sroa.7.012.i, 2
  br i1 %exitcond.not.i.i.i.i.1.a, label %._crit_edge.i.i.i.i.a, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.071.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 2
  %18 = load i8, ptr %.071.i.i.i.i, align 1, !tbaa !52
  %i.y = zext i8 %18 to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nuw nsw i32 %i.x, 10
  %i.ad = add nuw nsw i32 %i.ac, %i.ab            ; 2 uses
  %exitcond.not.i.i.i.i.2.a = icmp eq i64 %.sroa.7.012.i, 3
  br i1 %exitcond.not.i.i.i.i.2.a, label %._crit_edge.i.i.i.i.a, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.071.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 3
  %19 = load i8, ptr %.071.i.i.i.i.1, align 1, !tbaa !52
  %i.ae = zext i8 %19 to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ad, 10
  %i.aj = add nuw nsw i32 %i.ai, %i.ah            ; 2 uses
  %exitcond.not.i.i.i.i.3.a = icmp eq i64 %.sroa.7.012.i, 4
  br i1 %exitcond.not.i.i.i.i.3.a, label %._crit_edge.i.i.i.i.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.071.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 4
  %20 = load i8, ptr %.071.i.i.i.i.2, align 1, !tbaa !52
  %i.ak = zext i8 %20 to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  %i.an = zext i8 %i.am to i32
  %i.ao = mul i32 %i.aj, 10
  %i.ap = add i32 %i.ao, %i.an                    ; 2 uses
  %exitcond.not.i.i.i.i.4.a = icmp eq i64 %.sroa.7.012.i, 5
  br i1 %exitcond.not.i.i.i.i.4.a, label %._crit_edge.i.i.i.i.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.071.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 5
  %21 = load i8, ptr %.071.i.i.i.i.3, align 1, !tbaa !52
  %i.aq = zext i8 %21 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i8 %i.as to i32
  %i.au = mul i32 %i.ap, 10
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %exitcond.not.i.i.i.i.5.a = icmp eq i64 %.sroa.7.012.i, 6
  br i1 %exitcond.not.i.i.i.i.5.a, label %._crit_edge.i.i.i.i.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.071.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 6
  %22 = load i8, ptr %.071.i.i.i.i.4, align 1, !tbaa !52
  %i.aw = zext i8 %22 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul i32 %i.av, 10
  %i.bb = add i32 %i.ba, %i.az                    ; 2 uses
  %exitcond.not.i.i.i.i.6.a = icmp eq i64 %.sroa.7.012.i, 7
  br i1 %exitcond.not.i.i.i.i.6.a, label %._crit_edge.i.i.i.i.a, label %.lr.ph.i.i.i.i.7

.lr.ph.i.i.i.i.7:                                 ; preds = %bb.m
  %.071.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 7
  %23 = load i8, ptr %.071.i.i.i.i.5, align 1, !tbaa !52
  %24 = zext i8 %23 to i64
  %.071.i.i.i.i.6.a = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %24
  %i.bc = load i8, ptr %.071.i.i.i.i.6.a, align 1, !tbaa !52
  %25 = zext i8 %i.bc to i32
  %26 = mul i32 %i.bb, 10
  %27 = add i32 %26, %25                          ; 2 uses
  %exitcond.not.i.i.i.i.6 = icmp eq i64 %.sroa.7.012.i, 8
  br i1 %exitcond.not.i.i.i.i.6, label %._crit_edge.i.i.i.i.a, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.7
  %.071.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i, i64 8
  %28 = load i8, ptr %.071.i.i.i.i.6, align 1, !tbaa !52
  %i.bd = zext i8 %28 to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul i32 %27, 10
  %i.bi = add i32 %i.bh, %i.bg
  br label %._crit_edge.i.i.i.i.a

._crit_edge.i.i.i.i.a:                            ; preds = %bb.n, %.lr.ph.i.i.i.i.7, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa = phi i32 [ %i.x, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ], [ %i.ap, %bb.k ], [ %i.av, %bb.l ], [ %i.bb, %bb.m ], [ %27, %.lr.ph.i.i.i.i.7 ], [ %i.bi, %bb.n ]
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.02.011.i, i64 %invariant.smin.i.i.i.i
  br label %.lr.ph134.i.i.preheader.i.i

.lr.ph134.i.i.preheader.i.i:                      ; preds = %._crit_edge.i.i.i.i.a, %bb.g
  %.079.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %.lcssa, %._crit_edge.i.i.i.i.a ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.g ], [ %invariant.smin.i.i.i.i, %._crit_edge.i.i.i.i.a ] ; 2 uses
  %.071.lcssa.i.i.i.i = phi ptr [ %.071119.i.i.i.i, %bb.g ], [ %scevgep.i.i.i.i, %._crit_edge.i.i.i.i.a ] ; 2 uses
  %29 = icmp slt i64 %.0.lcssa.i.i.i.i, %.sroa.7.012.i
  br i1 %29, label %.lr.ph134.i.i.i.i, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit

.lr.ph134.i.i.i.i:                                ; preds = %.lr.ph134.i.i.preheader.i.i, %bb.r
  %.1132.i.i.i.i = phi i64 [ %i.bv, %bb.r ], [ %.0.lcssa.i.i.i.i, %.lr.ph134.i.i.preheader.i.i ]
  %.069131.i.i.i.i = phi i1 [ %.170.i.i.i.i, %bb.r ], [ false, %.lr.ph134.i.i.preheader.i.i ] ; 2 uses
  %.374130.i.i.i.i = phi ptr [ %i.bu, %bb.r ], [ %.071.lcssa.i.i.i.i, %.lr.ph134.i.i.preheader.i.i ] ; 3 uses
  %.382129.i.i.i.i = phi i32 [ %.483.i.i.i.i, %bb.r ], [ %.079.lcssa.i.i.i.i, %.lr.ph134.i.i.preheader.i.i ] ; 5 uses
  %i.bj = load i8, ptr %.374130.i.i.i.i, align 1, !tbaa !52 ; 3 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add i8 %i.bj, -48
  %.not96.i.i.i.i = icmp ult i8 %i.bo, 10
  br i1 %.not96.i.i.i.i, label %bb.o, label %._crit_edge135.i.i.i.i

bb.o:                                             ; preds = %.lr.ph134.i.i.i.i
  %i.bp = icmp ult i32 %.382129.i.i.i.i, 429496729
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ne i32 %.382129.i.i.i.i, 429496729
  %i.br = add nsw i8 %i.bj, -54
  %.not97.i.i.i.i = icmp ult i8 %i.br, -6
  %or.cond.i.i.i.i = or i1 %i.bq, %.not97.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = mul nuw i32 %.382129.i.i.i.i, 10
  %i.bt = add i32 %i.bs, %i.bn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.483.i.i.i.i = phi i32 [ %i.bt, %bb.q ], [ %.382129.i.i.i.i, %bb.p ] ; 2 uses
  %.170.i.i.i.i = phi i1 [ %.069131.i.i.i.i, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.374130.i.i.i.i, i64 1
  %i.bv = add nuw i64 %.1132.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bv, %.sroa.7.012.i
  br i1 %exitcond.not.i.i, label %._crit_edge135.i.i.i.i, label %.lr.ph134.i.i.i.i, !llvm.loop !58

._crit_edge135.i.i.i.i:                           ; preds = %bb.r, %.lr.ph134.i.i.i.i
  %.382.lcssa.i.i.i.i = phi i32 [ %.483.i.i.i.i, %bb.r ], [ %.382129.i.i.i.i, %.lr.ph134.i.i.i.i ]
  %.374.lcssa.i.i.i.i = phi ptr [ %15, %bb.r ], [ %.374130.i.i.i.i, %.lr.ph134.i.i.i.i ]
  %.069.lcssa.i.i.i.i = phi i1 [ %.170.i.i.i.i, %bb.r ], [ %.069131.i.i.i.i, %.lr.ph134.i.i.i.i ]
  br i1 %.069.lcssa.i.i.i.i, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit

_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit: ; preds = %.lr.ph134.i.i.preheader.i.i, %._crit_edge135.i.i.i.i
  %.374.lcssa156.i.i.i.i = phi ptr [ %.374.lcssa.i.i.i.i, %._crit_edge135.i.i.i.i ], [ %.071.lcssa.i.i.i.i, %.lr.ph134.i.i.preheader.i.i ]
  %.382.lcssa155.i.i.i.i = phi i32 [ %.382.lcssa.i.i.i.i, %._crit_edge135.i.i.i.i ], [ %.079.lcssa.i.i.i.i, %.lr.ph134.i.i.preheader.i.i ] ; 2 uses
  %i.bw = icmp eq ptr %.374.lcssa156.i.i.i.i, %15
  %i.bx = icmp ne i32 %.382.lcssa155.i.i.i.i, 0
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.s, label %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread

bb.s:                                             ; preds = %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit
  %i.by = add i32 %.382.lcssa155.i.i.i.i, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12
  store i32 %i.by, ptr %i.ca, align 8, !tbaa !31
  br label %bb.dk

_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread: ; preds = %._crit_edge135.i.i.i.i, %.preheader.i.i.i.i.a, %.preheader.i.i.i.i.a, %.preheader.i.i.i.i.a, %.lr.ph.preheader.i.i.i.i.a, %bb.d, %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit
  switch i64 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
  %i.cb = load i16, ptr %i.f, align 1
  %i.cc = xor i16 %i.cb, 30062
  %i.cd = getelementptr i8, ptr %i.f, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i16
  %i.cg = xor i16 %i.cf, 109
  %i.ch = or i16 %i.cc, %i.cg
  %i.ci = icmp ne i16 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
  %bcmp.i83 = tail call i32 @bcmp(ptr %i.f, ptr nonnull @.str.1, i64 %i.d)
  %i.cl = icmp eq i32 %bcmp.i83, 0
  br i1 %i.cl, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cm = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.cn = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.cm)
  tail call void @_ZN5boost6locale8ios_info13display_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i64 noundef 1)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !50 ; 2 uses
  switch i64 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86: ; preds = %bb.t
  %i.cq = load ptr, ptr %2, align 8, !tbaa !51    ; 6 uses
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = xor i16 %i.cr, 25960
  %i.ct = getelementptr i8, ptr %i.cq, i64 2
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i16
  %i.cw = xor i16 %i.cv, 120
  %i.cx = or i16 %i.cs, %i.cw
  %i.cy = icmp ne i16 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.db = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !38
  %i.de = and i32 %i.dd, -75
  %i.df = or disjoint i32 %i.de, 8
  store i32 %i.df, ptr %i.dc, align 8, !tbaa !62
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.dg = load i16, ptr %i.cq, align 1
  %i.dh = xor i16 %i.dg, 25455
  %i.di = getelementptr i8, ptr %i.cq, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i16
  %i.dl = xor i16 %i.dk, 116
  %i.dm = or i16 %i.dh, %i.dl
  %i.dn = icmp ne i16 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88
  %i.dq = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !38
  %i.dt = and i32 %i.ds, -75
  %i.du = or disjoint i32 %i.dt, 64
  store i32 %i.du, ptr %i.dr, align 8, !tbaa !62
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88
  %i.dv = load i16, ptr %i.cq, align 1
  %i.dw = xor i16 %i.dv, 25459
  %i.dx = getelementptr i8, ptr %i.cq, i64 2
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i16
  %i.ea = xor i16 %i.dz, 105
  %i.eb = or i16 %i.dw, %i.ea
  %i.ec = icmp ne i16 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.t
  %.pre = load ptr, ptr %2, align 8, !tbaa !51
  %bcmp.i91 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.5, i64 %i.cp)
  %i.ef = icmp eq i32 %bcmp.i91, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.eg = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !38
  %i.ej = and i32 %i.ei, -261
  %i.ek = or disjoint i32 %i.ej, 256
  store i32 %i.ek, ptr %i.eh, align 8, !tbaa !62
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.el = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6)
  br i1 %i.el, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127
  %i.em = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.7)
  br i1 %i.em, label %bb.v, label %bb.dk

bb.v:                                             ; preds = %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread127
  %i.en = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !38
  %i.eq = and i32 %i.ep, -261
  %i.er = or disjoint i32 %i.eq, 4
  store i32 %i.er, ptr %i.eo, align 8, !tbaa !62
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i93 = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull @.str.8, i64 %i.d)
  %i.es = icmp eq i32 %bcmp.i93, 0
  br i1 %i.es, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96: ; preds = %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread
  %bcmp.i95 = tail call i32 @bcmp(ptr %i.f, ptr nonnull @.str.9, i64 %i.d)
  %i.et = icmp eq i32 %bcmp.i95, 0
  br i1 %i.et, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
  %i.eu = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ev = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.eu)
  tail call void @_ZN5boost6locale8ios_info13display_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ev, i64 noundef 2)
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !50
  %cond = icmp eq i64 %i.ex, 3
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread129

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98: ; preds = %bb.w
  %i.ey = load ptr, ptr %2, align 8, !tbaa !51    ; 4 uses
  %i.ez = load i16, ptr %i.ey, align 1
  %i.fa = xor i16 %i.ez, 29545
  %i.fb = getelementptr i8, ptr %i.ey, i64 2
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i16
  %i.fe = xor i16 %i.fd, 111
  %i.ff = or i16 %i.fa, %i.fe
  %i.fg = icmp ne i16 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98
  %i.fj = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.fk = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.fj)
  tail call void @_ZN5boost6locale8ios_info14currency_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.fk, i64 noundef 32)
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98
  %i.fl = load i16, ptr %i.ey, align 1
  %i.fm = xor i16 %i.fl, 24942
  %i.fn = getelementptr i8, ptr %i.ey, i64 2
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i16
  %i.fq = xor i16 %i.fp, 116
  %i.fr = or i16 %i.fm, %i.fq
  %i.fs = icmp ne i16 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread129

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread129: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.fv = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.12)
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.fw = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.fx = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.fw)
  tail call void @_ZN5boost6locale8ios_info14currency_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, i64 noundef 64)
  br label %bb.dk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %_ZN5boost6locale4util10try_to_intIjEEbNS_4core17basic_string_viewIcEERT_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  %i.fy = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13)
  br i1 %i.fy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread
  %i.fz = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14)
  br i1 %i.fz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread
  %i.ga = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gb = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.ga)
  tail call void @_ZN5boost6locale8ios_info13display_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gb, i64 noundef 3)
  br label %bb.dk

bb.z:                                             ; preds = %bb.x
  %i.gc = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15)
  br i1 %i.gc, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.gd = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.ge = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gd)
  tail call void @_ZN5boost6locale8ios_info13display_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ge, i64 noundef 4)
  %i.gf = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16)
  br i1 %i.gf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17)
  br i1 %i.gg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gh = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gi = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gh)
  tail call void @_ZN5boost6locale8ios_info10date_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gi, i64 noundef 1024)
  br label %bb.dk

bb.ad:                                            ; preds = %bb.ab
  %i.gj = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18)
  br i1 %i.gj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.19)
  br i1 %i.gk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gl = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gm = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gl)
  tail call void @_ZN5boost6locale8ios_info10date_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gm, i64 noundef 2048)
  br label %bb.dk

bb.ag:                                            ; preds = %bb.ae
  %i.gn = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20)
  br i1 %i.gn, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.go = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21)
  br i1 %i.go, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gp = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gq = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gp)
  tail call void @_ZN5boost6locale8ios_info10date_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gq, i64 noundef 3072)
  br label %bb.dk

bb.aj:                                            ; preds = %bb.ah
  %i.gr = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22)
  br i1 %i.gr, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gs = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23)
  br i1 %i.gs, label %bb.al, label %bb.dk

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gt = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gu = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gt)
  tail call void @_ZN5boost6locale8ios_info10date_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gu, i64 noundef 4096)
  br label %bb.dk

bb.am:                                            ; preds = %bb.z
  %i.gv = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24)
  br i1 %i.gv, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.gw = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.gx = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.gw)
  tail call void @_ZN5boost6locale8ios_info13display_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gx, i64 noundef 5)
  %i.gy = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16)
  br i1 %i.gy, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gz = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17)
  br i1 %i.gz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ha = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.hb = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.ha)
  tail call void @_ZN5boost6locale8ios_info10time_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.hb, i64 noundef 128)
  br label %bb.dk

bb.aq:                                            ; preds = %bb.ao
  %i.hc = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18)
  br i1 %i.hc, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.19)
  br i1 %i.hd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.he = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.hf = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.he)
  tail call void @_ZN5boost6locale8ios_info10time_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.hf, i64 noundef 256)
  br label %bb.dk

bb.at:                                            ; preds = %bb.ar
  %i.hg = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20)
  br i1 %i.hg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21)
  br i1 %i.hh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hi = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.hj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.hi)
  tail call void @_ZN5boost6locale8ios_info10time_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, i64 noundef 384)
  br label %bb.dk

bb.aw:                                            ; preds = %bb.au
  %i.hk = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22)
  br i1 %i.hk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23)
  br i1 %i.hl, label %bb.ay, label %bb.dk

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hm = load ptr, ptr %0, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.hn = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost6locale8ios_info3getERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.hm)
  tail call void @_ZN5boost6locale8ios_info10time_flagsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.hn, i64 noundef 512)
  br label %bb.dk

bb.az:                                            ; preds = %bb.am
  %i.ho = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25)
  br i1 %i.ho, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
end_hunk_0
