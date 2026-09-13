Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/linker-script.cc.X86_64?download=true
inline.NumInlined: 1328
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_:bb.a

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = icmp ugt i64 %1, 15
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1                        ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %.thread7.i, !prof !42

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

.thread7.i:                                       ; preds = %bb.d
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !44
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 %2, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc.exit

bb.h:                                             ; preds = %bb.f, %.thread7.i
  %i.g = phi ptr [ %i.f, %.thread7.i ], [ %i.a, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.h = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %i.g, %bb.h ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %1) #16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 noundef %i.b) #16 ; 0 uses
  ret ptr %0
}

; Function Attrs: noreturn nounwind
declare void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408)) unnamed_addr #7

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 2 uses
  %2 = alloca %"class.std::allocator.63", align 1 ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 2 uses
  %4 = alloca %"class.std::allocator.63", align 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.091.0175 = phi i64 [ %i.d, %.lr.ph ], [ %.sroa.091.0.be, %.backedge ] ; 26 uses
  %.sroa.24.0174 = phi ptr [ %i.g, %.lr.ph ], [ %i.o, %.backedge ] ; 18 uses
  %i.k = load i8, ptr %.sroa.24.0174, align 1, !tbaa !41 ; 2 uses
  %i.l = sext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #26
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.n = add i64 %.sroa.091.0175, -1
  br label %.backedge

.backedge:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit33, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit58, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit82, %bb.k
  %.sink = phi i64 [ 1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit33 ], [ %i.bj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit58 ], [ %.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit82 ], [ %i.ba, %bb.k ]
  %.sroa.091.0.be = phi i64 [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.am, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit33 ], [ %i.ch, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit58 ], [ %i.dl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit82 ], [ %i.bb, %bb.k ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 %.sink
  %i.p = icmp eq i64 %.sroa.091.0.be, 0
  br i1 %i.p, label %.thread, label %bb.b, !llvm.loop !193

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %.sroa.091.0175, 1      ; 3 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i16, ptr %.sroa.24.0174, align 1
  %i.r = icmp ne i16 %i.q, 10799
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %bb.g

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i.i30 = icmp ugt i64 %.sroa.091.0175, 2
  br i1 %.not.i.i30, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit
  %i.u = add i64 %.sroa.091.0175, -2              ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.u, 2
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 %.sroa.091.0175
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 2
  %i.x = ptrtoint ptr %i.v to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.e
  %.033.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.af, %bb.e ]
  %.02032.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.ad, %bb.e ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -1
  %i.y = tail call ptr @memchr(ptr noundef nonnull %.02032.i.i, i32 noundef 42, i64 noundef %.reass.reass.i.reass.reass.i) #16 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.y, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = icmp ne i16 %i.z, 12074
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.x, %i.ae                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.af, 2
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !194

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = ptrtoint ptr %.sroa.24.0174 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread122

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4mold6ScriptINS_6X86_64EE5errorESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %.sroa.091.0175, ptr nonnull %.sroa.24.0174, ptr nofree noundef nonnull align 8 dereferenceable(32) %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread122: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %i.ak = add nsw i64 %i.ai, 2                    ; 4 uses
  %i.al = icmp ugt i64 %i.ak, %.sroa.091.0175
  br i1 %i.al, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit33

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread122
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i64 noundef %i.ak, i64 noundef %.sroa.091.0175) #23
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread122
  %i.am = sub nuw i64 %.sroa.091.0175, %i.ak
  br label %.backedge

bb.g:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  switch i8 %i.k, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i60 [
    i8 35, label %bb.h
    i8 34, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.h
  %i.an = add i64 %.sroa.091.0175, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 %.sroa.091.0175
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 1
  %i.aq = ptrtoint ptr %i.ao to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i42

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i42:   ; preds = %bb.i, %.lr.ph.i.i37
  %.033.i.i38 = phi i64 [ %i.an, %.lr.ph.i.i37 ], [ %i.av, %bb.i ]
  %.02032.i.i39 = phi ptr [ %i.ap, %.lr.ph.i.i37 ], [ %i.at, %bb.i ]
  %i.ar = tail call ptr @memchr(ptr noundef nonnull %.02032.i.i39, i32 noundef 10, i64 noundef %.033.i.i38) #16 ; 4 uses
  %.not26.i.i43 = icmp eq ptr %i.ar, null
  br i1 %.not26.i.i43, label %.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i42
  %lhsc = load i8, ptr %i.ar, align 1
  %i.as = icmp eq i8 %lhsc, 10
  br i1 %i.as, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48, label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.aq, %i.au                    ; 2 uses
  %.not25.i.i46 = icmp eq i64 %i.av, 0
  br i1 %.not25.i.i46, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i42, !llvm.loop !194

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %.sroa.24.0174 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48.thread127

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48.thread127: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48
  %i.ba = add nuw nsw i64 %i.ay, 1                ; 3 uses
  %.not139 = icmp ult i64 %i.ay, %.sroa.091.0175
  br i1 %.not139, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48.thread127
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i64 noundef %i.ba, i64 noundef %.sroa.091.0175) #23
  unreachable

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit48.thread127
  %i.bb = sub nuw i64 %.sroa.091.0175, %i.ba
  br label %.backedge

bb.l:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.l
  %i.bc = add i64 %.sroa.091.0175, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 1
  %i.be = tail call ptr @memchr(ptr noundef nonnull %i.bd, i32 noundef 34, i64 noundef %i.bc) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %.sroa.24.0174 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.m

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4mold6ScriptINS_6X86_64EE5errorESt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %.sroa.091.0175, ptr nonnull %.sroa.24.0174, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #25
  unreachable

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.bj = add nuw nsw i64 %i.bh, 1                ; 4 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.091.0175, i64 %i.bj) ; 2 uses
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !28  ; 7 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !80
  %.not.i.i54 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.speculated.i, ptr %i.bk, align 8, !tbaa !30
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.24.0174, ptr %.sroa.588.0..sroa_idx, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !27  ; 5 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775792
  br i1 %i.br, label %bb.p, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #23
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bs = ashr exact i64 %i.bq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 576460752303423487)
  %i.bw = select i1 %i.bu, i64 576460752303423487, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #24 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.bz, align 8, !tbaa !30
  %.sroa.588.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.24.0174, ptr %.sroa.588.0..sroa_idx89, align 8, !tbaa !32
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %i.by, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !203, !alias.scope !204
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !198

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.by, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cf) #22
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.by, ptr %i.h, align 8, !tbaa !27
  store ptr %i.cc, ptr %i.i, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !80
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.not138 = icmp ult i64 %i.bh, %.sroa.091.0175
  br i1 %.not138, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit58, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i64 noundef %i.bj, i64 noundef %.sroa.091.0175) #23
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit58: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %i.ch = sub nuw i64 %.sroa.091.0175, %i.bj
  br label %.backedge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i60:   ; preds = %bb.g, %bb.s
  %.0710.i.i = phi i64 [ %i.cm, %bb.s ], [ 0, %bb.g ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.24.0174, i64 %.0710.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.ck = sext i8 %i.cj to i32
  %i.cl = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.ck, i64 noundef 78) #16
  %.not.i.i61 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i61, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i60
  %i.cm = add i64 %.0710.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %.sroa.091.0175
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i60, !llvm.loop !199

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i60
  switch i64 %.0710.i.i, label %.fold.split [
    i64 0, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135
    i64 -1, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  ]

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135

.fold.split:                                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %.fold.split, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %.0 = phi i64 [ 1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ %.sroa.091.0175, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread ], [ %.0710.i.i, %.fold.split ] ; 5 uses
  %.sroa.speculated.i62 = tail call i64 @llvm.umin.i64(i64 %.sroa.091.0175, i64 %.0) ; 2 uses
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !28  ; 7 uses
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !80
  %.not.i.i65 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135
  store i64 %.sroa.speculated.i62, ptr %i.cn, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.24.0174, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cp, ptr %i.i, align 8, !tbaa !28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit78

bb.u:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread135
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !27  ; 5 uses
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.v, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i66

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #23
end_hunk_0
