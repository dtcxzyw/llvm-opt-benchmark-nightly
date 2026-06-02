inline.NumInlined: 6561
inline.NumDeleted: 2145
begin_hunk_0_@_ZN7testing8internal6String15FormatHexUInt32B5cxx11Ej:bb.a

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %2, align 8
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.by, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.bz = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aj
  br i1 %i.ca, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.aj, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #46
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #44
  store ptr %i.f, ptr %2, align 8
  %i.cd = load i64, ptr %i.h, align 8
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %i.cd
  store ptr %i.g, ptr %i.ce, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 30 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #48
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #44
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 353
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.i, ptr %3, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = load ptr, ptr %3, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.r, ptr noundef null) #44
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.aa
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef null) #44
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #44
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 24, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.am, align 8
  %i.ao = load ptr, ptr %3, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %3, i64 %i.aq
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, ptr noundef nonnull %i.ah) #44
  %i.as = icmp sgt i32 %.023, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %.023 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @_ZN7testing8internal15CodePointToUtf8B5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %4, align 8
  %i.ay = load i64, ptr %i.at, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.ax, i64 noundef %i.ay) #44 ; 0 uses
  %i.ba = load ptr, ptr %4, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.au
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.au, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !217

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.d, %bb.c
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %3)
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %3, align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %3, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.s, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8
  %i.bk = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.am
  br i1 %i.bl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.bm = load i64, ptr %i.am, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #46
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #44
  store ptr %i.i, ptr %3, align 8
  %i.bo = load i64, ptr %i.k, align 8
  %i.bp = getelementptr inbounds i8, ptr %3, i64 %i.bo
  store ptr %i.j, ptr %i.bp, align 8
  store i64 0, ptr %i.n, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal6String17WideCStringEqualsEPKwS3_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #48
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.mux, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_PKwS4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr %3, ptr %i.a, align 8
  store ptr %4, ptr %i.b, align 8
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.d
  br i1 %brmerge.i, label %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @wcscmp(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4) #48
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.c, %i.d
  br i1 %.mux.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0) #44
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
  %i.g = load ptr, ptr %6, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.l = load ptr, ptr %5, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #44
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #44
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #44
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #44
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #44
  %i.ap = load ptr, ptr %1, align 8
  call void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %i.ap, ptr noundef nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !alias.scope !224
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !alias.scope !224
  store i8 0, ptr %i.aq, align 8, !alias.scope !224
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !noalias !224 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !224 ; 2 uses
  %i.aw = icmp ugt ptr %i.at, %i.av
  %.08.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.av ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !224 ; 2 uses
  %i.az = ptrtoint ptr %.08.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ay, i64 noundef %i.bb) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bd, ptr %2, align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
end_hunk_0
begin_hunk_1_@_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_:bb.a
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !63

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internalL18GTestIsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #46
  br label %_ZN7testing8internalL18GTestIsInitializedEv.exit

_ZN7testing8internalL18GTestIsInitializedEv.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br i1 %.not16, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN7testing8internalL18GTestIsInitializedEv.exit
  %i.p = load i32, ptr %0, align 4
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8 ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  %.05.i.i.i.i8 = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10 ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i8, align 8     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i7
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10: ; preds = %.lr.ph.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 32 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i7, !llvm.loop !63

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8
  %.pre = load i32, ptr %0, align 4
  %i.z = icmp eq i32 %.pre, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_(ptr noundef nonnull %0, ptr noundef %1)
  %i.ac = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !6

bb.e:                                             ; preds = %._crit_edge
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i14, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.e, %bb.f
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(713) %i.ag)
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8 ; 6 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8
  %.not.i.i15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i15, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8
  %i.al = load ptr, ptr %3, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aa
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.al, ptr %i.ai, align 8
  %i.aq = load i64, ptr %i.aa, align 8
  store i64 %i.aq, ptr %i.ak, align 8
  %.pre20 = load i64, ptr %i.ab, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ar = phi i64 [ %.pre20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  store ptr %i.aa, ptr %3, align 8
  store i64 0, ptr %i.ab, align 8
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre21 = load ptr, ptr %3, align 8             ; 2 uses
  %i.av = icmp eq ptr %.pre21, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aw = load i64, ptr %i.aa, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.ax) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %0, align 4
  %i.az = zext i32 %i.ay to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.az
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !697

bb.j:                                             ; preds = %bb.c, %_ZN7testing8internalL18GTestIsInitializedEv.exit, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleTestEv() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i32 1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  store ptr @.str.319, ptr %i.b, align 8
  call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing7TempDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store ptr @.str.320, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.321, ptr %i.b, align 8
  call fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.a, i64 2, ptr noundef nonnull @.str.322)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull readonly captures(address) %1, i64 range(i64 1, 3) %2, ptr noundef readonly captures(address_is_null) %3) unnamed_addr #2 {
.lr.ph.preheader:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %.038 = phi ptr [ %i.bf, %bb.z ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.038, align 8
  %i.c = tail call noundef ptr @getenv(ptr noundef %i.b) #44 ; 10 uses
  %.not21 = icmp eq ptr %i.c, null
  br i1 %.not21, label %bb.z, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.d = load i8, ptr %i.c, align 1
  %.not22 = icmp eq i8 %i.d, 0
  br i1 %.not22, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #48
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1
  %.not23 = icmp eq i8 %i.h, 47
  br i1 %.not23, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.i, ptr %4, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #44 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #45 ; 2 uses
  store ptr %i.o, ptr %4, align 8
  store i64 %i.j, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %5 = load i8, ptr %i.c, align 1
  store i8 %5, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.c, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.r, align 1
  %i.s = load i64, ptr %i.q, align 8              ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.403) #43
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.u = add nsw i64 %i.s, 1                      ; 3 uses
  %i.v = load ptr, ptr %4, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i                   ; 2 uses
  br i1 %i.w, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.i, align 8
  %i.z = select i1 %i.w, i64 15, i64 %i.y
  %.not.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.l
  %i.aa = phi ptr [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 47, ptr %i.ab, align 1
  store i64 %i.u, ptr %i.q, align 8
  %i.ac = load ptr, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8
  %i.af = load ptr, ptr %4, align 8               ; 4 uses
  %i.ag = load i64, ptr %i.q, align 8             ; 9 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.m, label %._crit_edge.i.i24

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i25, !prof !5

bb.p:                                             ; preds = %bb.o
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i25: ; preds = %bb.o
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #45 ; 2 uses
  store ptr %i.al, ptr %0, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.am = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i25 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit ] ; 3 uses
  switch i64 %i.ag, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i24
  %i.an = load i8, ptr %i.af, align 1
  store i8 %i.an, ptr %i.am, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.r:                                             ; preds = %._crit_edge.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i24, %bb.q, %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 0, ptr %i.ap, align 1
  %i.aq = icmp eq ptr %i.af, %i.i
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ar = icmp samesign ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.as = load i64, ptr %i.i, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.at) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %.critedge.thread

bb.s:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.au, ptr %0, align 8
  %i.av = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #44 ; 8 uses
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %bb.t, label %._crit_edge.i.i26

bb.t:                                             ; preds = %bb.s
  %i.ax = icmp slt i64 %i.av, 0
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ay = add nuw i64 %i.av, 1                    ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27, !prof !5

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27: ; preds = %bb.v
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #45 ; 2 uses
  store ptr %i.ba, ptr %0, align 8
  store i64 %i.av, ptr %i.au, align 8
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27, %bb.s
  %i.bb = phi ptr [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i27 ], [ %i.au, %bb.s ] ; 3 uses
  switch i64 %i.av, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit28
  ]

bb.x:                                             ; preds = %._crit_edge.i.i26
  %i.bc = load i8, ptr %i.c, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit28

bb.y:                                             ; preds = %._crit_edge.i.i26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.c, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit28: ; preds = %._crit_edge.i.i26, %bb.x, %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  store i8 0, ptr %i.be, align 1
  br label %.critedge.thread

bb.z:                                             ; preds = %bb.a, %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.a
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8
  %i.bh = icmp eq ptr %3, null
  br i1 %i.bh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.325) #43
  unreachable

bb.ab:                                            ; preds = %.critedge
  %i.bi = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #44 ; 8 uses
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %bb.ac, label %._crit_edge.i.i29

bb.ac:                                            ; preds = %bb.ab
  %i.bk = icmp slt i64 %i.bi, 0
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.ae:                                            ; preds = %bb.ac
end_hunk_1
