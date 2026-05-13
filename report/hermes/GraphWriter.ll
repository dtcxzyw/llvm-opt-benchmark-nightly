inline.NumInlined: 399
inline.NumDeleted: 182
begin_hunk_0_@_ZN4llvh12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE:bb.a
  %i.ne = icmp eq ptr %i.nd, %i.m
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.nf = load i64, ptr %i.m, align 8, !tbaa !22
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.nh = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !22
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvh::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %"class.llvh::SmallVector.4", align 8 ; 9 uses
  %7 = alloca %"class.llvh::ErrorOr", align 8     ; 8 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.d, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.g, align 4, !tbaa !29
  call void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef signext 124, i32 noundef -1, i1 noundef zeroext true) #16
  %i.h = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not32.not = icmp eq i32 %i.i, 0
  br i1 %.not32.not, label %.critedge22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit29
  %.01733 = phi ptr [ %i.h, %.lr.ph ], [ %i.bc, %_ZN4llvh11raw_ostreamlsEPKc.exit29 ] ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %.01733, align 8, !tbaa !25 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.01733, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %7, ptr %.sroa.05.0.copyload, i64 %.sroa.5.0.copyload, ptr null, i64 0) #16
  %i.o = load i8, ptr %i.l, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit26, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  %i.q = load i8, ptr %i.l, align 8
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.critedge22

_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit26: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 9
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit26
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str.56, i64 noundef 9) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.y, ptr noundef nonnull align 1 dereferenceable(9) @.str.56, i64 9, i1 false)
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9 ; 2 uses
  store ptr %i.af, ptr %i.n, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.ag = phi ptr [ %.pre, %bb.e ], [ %i.af, %bb.f ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ad, %bb.e ], [ %5, %bb.f ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %.sroa.5.0.copyload, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %.sroa.05.0.copyload, i64 noundef %.sroa.5.0.copyload) #16 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.05.0.copyload, i64 %.sroa.5.0.copyload, i1 false)
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.5.0.copyload ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.g, %bb.h, %bb.i
  %i.ar = phi ptr [ %.pre36, %bb.g ], [ %i.aq, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %i.ao, %bb.g ], [ %.0.i.i, %bb.i ], [ %.0.i.i, %bb.h ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, 2
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.57, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit29

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i16 2599, ptr %i.ar, align 1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit29

_ZN4llvh11raw_ostreamlsEPKc.exit29:               ; preds = %bb.j, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.01733, i64 16 ; 2 uses
  %.not.not = icmp eq ptr %i.bc, %i.k
  br i1 %.not.not, label %.critedge22, label %bb.b

.critedge22:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit29, %bb.a, %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.not31 = phi i1 [ true, %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ false, %bb.a ], [ false, %_ZN4llvh11raw_ostreamlsEPKc.exit29 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.e
  br i1 %i.be, label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.critedge22
  call void @free(ptr noundef %i.bd) #16
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit: ; preds = %.critedge22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %.not31
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, ptr %.0.val, ptr %.8.val, ptr %2, i64 %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %7 = alloca %"class.llvh::Optional", align 8    ; 2 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Optional", align 8    ; 2 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.8.val to i64
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  br i1 %4, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !114
  %i.g = tail call noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr %0, i64 %1, ptr %.0.val, i64 %i.e, ptr noundef nonnull byval(%"class.llvh::Optional") align 8 %7, ptr null, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 7
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull @.str.23, i64 noundef 7) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.l, ptr noundef nonnull align 1 dereferenceable(7) @.str.23, i64 7, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  store ptr %i.s, ptr %i.k, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.q, %bb.d ], [ %i.h, %bb.e ]
  %i.t = load ptr, ptr %5, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.t, i64 noundef %i.v) #16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull @.str.24, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.aa, align 1
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 5, ptr %i.af, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.ag, align 1, !tbaa !122
  store ptr %6, ptr %8, align 8, !tbaa !22
  %i.ah = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %8, i1 noundef zeroext true) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 8
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef nonnull @.str.58, i64 noundef 8) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.j:                                             ; preds = %bb.h
  store i64 729634152813388832, ptr %i.am, align 1
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.al, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.au, align 8, !tbaa !114
  %i.av = tail call { i64, i32 } @_ZN4llvh3sys13ExecuteNoWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr %0, i64 %1, ptr %.0.val, i64 %i.e, ptr noundef nonnull byval(%"class.llvh::Optional") align 8 %9, ptr null, i64 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #16 ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33 ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ult i64 %i.bd, 30
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, ptr noundef nonnull @.str.59, i64 noundef 30) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ba, ptr noundef nonnull align 1 dereferenceable(30) @.str.59, i64 30, i1 false)
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 30 ; 2 uses
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

_ZN4llvh11raw_ostreamlsEPKc.exit25:               ; preds = %bb.l, %bb.m
  %i.bi = phi ptr [ %.pre, %bb.l ], [ %i.bh, %bb.m ] ; 3 uses
  %.0.i.i24 = phi ptr [ %i.bf, %bb.l ], [ %i.aw, %bb.m ] ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !25 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8, !tbaa !21 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 24 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %.sroa.2.0.copyload, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.bq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i24, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #16 ; 2 uses
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %.not.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.2.0.copyload ; 2 uses
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.n, %bb.o, %bb.p
  %i.bt = phi ptr [ %.pre7, %bb.n ], [ %i.bs, %bb.p ], [ %i.bi, %bb.o ] ; 2 uses
  %.0.i = phi ptr [ %i.bq, %bb.n ], [ %.0.i.i24, %bb.p ], [ %.0.i.i24, %bb.o ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = icmp eq ptr %i.bv, %i.bt
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bx = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.24, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 10, ptr %i.bt, align 1
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

_ZN4llvh11raw_ostreamlsEPKc.exit19:               ; preds = %bb.r, %bb.q, %bb.j, %bb.i, %bb.g, %bb.f
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.j ], [ true, %bb.f ], [ false, %bb.r ], [ false, %bb.i ], [ false, %bb.q ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr, i64, ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr, i64, ptr, i64, ptr noundef byval(%"class.llvh::Optional") align 8, ptr, i64, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18), i1 noundef zeroext) local_unnamed_addr #4

declare { i64, i32 } @_ZN4llvh3sys13ExecuteNoWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr, i64, ptr, i64, ptr noundef byval(%"class.llvh::Optional") align 8, ptr, i64, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !123, !range !126, !noundef !127
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123, !range !126, !noundef !127
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !126
  %i.j = load i8, ptr %i.d, align 8, !range !126
  %i.k = icmp ne i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_GraphWriter.cpp() #12 section ".text.startup" {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 8), align 8, !tbaa !128
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 12), align 4
  %i.b = and i16 %i.a, -4096
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 72), align 8, !tbaa !134
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 80), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 88), align 8, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 96), align 8, !tbaa !135
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 100), align 4, !tbaa !136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 104), align 8, !tbaa !137
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 144), align 8, !tbaa !138
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 152), align 8, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 160), align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 169), align 1, !tbaa !123
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 168), align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL14ViewBackground, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 176), align 8, !tbaa !7
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14ViewBackground, ptr nonnull align 1 dereferenceable(16) @.str, i64 15) #16
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 12), align 4
  %i.d = and i16 %i.c, -97
  %i.e = or disjoint i16 %i.d, 32
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 12), align 4
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 40), align 8, !tbaa !25
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14ViewBackground, i64 48), align 8, !tbaa !21
  tail call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14ViewBackground) #16
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZL14ViewBackground, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !19, i64 8, !5, i64 16}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !19, i64 8}
!21 = !{!19, !19, i64 0}
end_hunk_0
