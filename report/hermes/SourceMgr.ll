inline.NumInlined: 1430
inline.NumDeleted: 710
begin_hunk_0_@_ZNK4llvh9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE:bb.a
  br label %_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamERKNS_12SMDiagnosticEb(ptr noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef %i.d) #19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 5 uses
  %.not10 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %.sroa.0.0.copyload.i, %i.n
  br i1 %.not1.i, label %.critedge4.i, label %bb.f, !prof !33

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %.not13.i = icmp ugt ptr %.sroa.0.0.copyload.i, %i.p
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !33

.critedge4.i:                                     ; preds = %bb.f, %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %.critedge4.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp ult ptr %i.u, %.sroa.0.0.copyload.i ; 2 uses
  %.19.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.s
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !55  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.pre11, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %.sroa.0.0.copyload.i, %i.ad
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.x, ptr %i.f, align 8, !tbaa !58
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.f, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %i.j, %bb.f ], [ %.pre11, %bb.h ], [ %.pre11, %bb.g ], [ %.pre11, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.g, %bb.f ], [ %i.x, %bb.h ], [ 0, %bb.g ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %i.af = add i32 %.1.i, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !47
  tail call void @_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, %bb.c
  tail call void @_ZNK4llvh12SMDiagnostic5printEPKcRNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh12SMDiagnostic5printEPKcRNS_11raw_ostreamEbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(36) %2) #19
  %i.e = and i1 %3, %i.d                          ; 9 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4llvh11raw_ostreamlsEPKc.exit103, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !11
  %.not88 = icmp eq i8 %i.j, 0
  br i1 %.not88, label %_ZN4llvh11raw_ostreamlsEPKc.exit103, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 3 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %1, i64 noundef %i.k) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.k, 0
  br i1 %.not.i2.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 2 uses
  store ptr %i.v, ptr %i.n, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre, %bb.e ], [ %i.v, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.t, %bb.e ], [ %2, %bb.g ], [ %2, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str.4, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  store i16 8250, ptr %i.w, align 1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

_ZN4llvh11raw_ostreamlsEPKc.exit103:              ; preds = %bb.i, %bb.h, %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !25 ; 3 uses
  switch i64 %i.aj, label %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 0, label %_ZN4llvh11raw_ostreamlsEPKc.exit114
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %.pre205 = load ptr, ptr %i.ah, align 8, !tbaa !20
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %lhsc = load i8, ptr %i.ak, align 1
  %i.al = icmp eq i8 %lhsc, 45
  br i1 %i.al, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 7
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ap, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 7
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %bb.j
  %.sink = phi i64 [ 7, %bb.j ], [ %i.aj, %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %.str.6.sink = phi ptr [ @.str.6, %bb.j ], [ %.pre205, %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %.str.6.sink, i64 noundef %.sink) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

_ZN4llvh11raw_ostreamlsEPKc.exit107:              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !144
  %.not89 = icmp eq i32 %i.ay, -1
  br i1 %.not89, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit107
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !121
  %.not.i = icmp ult ptr %i.ba, %i.bc
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 58) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.n:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !124
  store i8 58, ptr %i.ba, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.bd, %bb.m ], [ %2, %bb.n ]
  %i.bf = load i32, ptr %i.ax, align 8, !tbaa !144
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, i64 noundef %i.bg) #19 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !158
  %.not90 = icmp eq i32 %i.bj, -1
  br i1 %.not90, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !124 ; 3 uses
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !121
  %.not.i108 = icmp ult ptr %i.bk, %i.bl
  br i1 %.not.i108, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 58) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit110

bb.q:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bn, ptr %i.az, align 8, !tbaa !124
  store i8 58, ptr %i.bk, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit110

_ZN4llvh11raw_ostreamlsEc.exit110:                ; preds = %bb.p, %bb.q
  %.0.i109 = phi ptr [ %i.bm, %bb.p ], [ %2, %bb.q ]
  %i.bo = load i32, ptr %i.bi, align 4, !tbaa !158
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i109, i64 noundef %i.bq) #19 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZN4llvh11raw_ostreamlsEc.exit110, %_ZN4llvh11raw_ostreamlsEPKc.exit107
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !124 ; 2 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 2
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.4, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit114

bb.t:                                             ; preds = %bb.r
  store i16 8250, ptr %i.bv, align 1
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !124
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit114

_ZN4llvh11raw_ostreamlsEPKc.exit114:              ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103, %bb.t, %bb.s
  br i1 %4, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit114
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !159
  switch i32 %i.ce, label %_ZN4llvh11raw_ostreamlsEPKc.exit118 [
    i32 0, label %bb.v
    i32 1, label %bb.aa
    i32 3, label %bb.af
    i32 2, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = load ptr, ptr %2, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !121
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !124 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, 7
  br i1 %i.cq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cr = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.7, i64 noundef 7) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cm, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !124
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 7
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.aa:                                            ; preds = %bb.u
  br i1 %i.e, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %2, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 5, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !121
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !124 ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 9
  br i1 %i.df, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.8, i64 noundef 9) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.db, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !124
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 9
  store ptr %i.di, ptr %i.da, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.af:                                            ; preds = %bb.u
  br i1 %i.e, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %2, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !121
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !124 ; 2 uses
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 6
  br i1 %i.du, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dv = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.9, i64 noundef 6) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dq, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !124
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit118

bb.ak:                                            ; preds = %bb.u
  br i1 %i.e, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr %2, align 8, !tbaa !36
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.ea(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
