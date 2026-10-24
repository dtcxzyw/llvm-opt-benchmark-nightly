Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/pcre?download=true
inline.NumInlined: 356
inline.NumDeleted: 106
begin_hunk_0_@_ZNK3re24PCRE18CheckRewriteStringERKNS_11StringPieceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.assume(i1 %i.aa)
  %.not21.i = icmp eq ptr %3, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  switch i64 %i.z, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !28
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !13  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !13
  %i.ae = load ptr, ptr %2, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %2, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !28
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !28
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !28
  store ptr %i.v, ptr %2, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !28
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.s, ptr %3, align 8, !tbaa !27
  store i64 %i.aj, ptr %i.w, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.w, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.an = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.s, %bb.n ], [ %i.w, %bb.o ], [ %i.v, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !13
  store i8 0, ptr %i.an, align 1, !tbaa !28
  %i.ap = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread45

.thread45:                                        ; preds = %bb.a, %bb.f, %bb.c, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.332 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %._crit_edge ], [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.a ]
  ret i1 %.332
}

declare void @_ZN3re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg10parse_nullEPKcmPv(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef readnone captures(address_is_null) %2) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg12parse_stringEPKcmPv(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef %0, i64 noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_stringpieceEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg10parse_charEPKcmPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 1                       ; 2 uses
  %i.a = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.b, ptr %2, align 1, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg11parse_scharEPKcmPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 1                       ; 2 uses
  %i.a = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.b, ptr %2, align 1, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg11parse_ucharEPKcmPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 1                       ; 2 uses
  %i.a = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.b, ptr %2, align 1, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i = freeze i8 %i.l                       ; 2 uses
  %4 = add i8 %.fr26.i, -48
  %isdigit.i = icmp ult i8 %4, 10
  br i1 %isdigit.i, label %bb.d, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit

_ZN3re2L15TerminateNumberEPcPKcm.exit:            ; preds = %bb.b, %switch.early.test.i, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b, i32 noundef %3) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit, %bb.h
  %.0 = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i = freeze i8 %i.l                       ; 2 uses
  %4 = add i8 %.fr26.i, -48
  %isdigit.i = icmp ult i8 %4, 10
  br i1 %isdigit.i, label %bb.d, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit

_ZN3re2L15TerminateNumberEPcPKcm.exit:            ; preds = %bb.b, %switch.early.test.i, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b, i32 noundef %3) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit, %bb.j
  %.1 = phi i1 [ %.0, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.2 = phi i1 [ %.1, %bb.k ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %4 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %4, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i16
  %i.u = add i64 %i.p, 32768
  %.not = icmp ult i64 %i.u, 65536
  br i1 %.not, label %bb.h, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.t, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9, %bb.h, %bb.g, %bb.i
  %.0 = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9 ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %4 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %4, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i16
  %.not = icmp ult i64 %i.r, 65536
  br i1 %.not, label %bb.i, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.v, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9, %bb.i, %bb.h, %bb.j
  %.0 = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12 ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %4 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %4, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = add i64 %i.p, 2147483648
  %.not = icmp ult i64 %i.u, 4294967296
  br i1 %.not, label %bb.h, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9, %bb.h, %bb.g, %bb.i
  %.0 = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9 ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %4 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %4, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i32
  %.not = icmp ult i64 %i.r, 4294967296
  br i1 %.not, label %bb.i, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9, %bb.i, %bb.h, %bb.j
  %.0 = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12 ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i = freeze i8 %i.l                       ; 2 uses
  %4 = add i8 %.fr26.i, -48
  %isdigit.i = icmp ult i8 %4, 10
  br i1 %isdigit.i, label %bb.d, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit

_ZN3re2L15TerminateNumberEPcPKcm.exit:            ; preds = %bb.b, %switch.early.test.i, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b, i32 noundef %3) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit, %bb.h
  %.0 = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i = freeze i8 %i.l                       ; 2 uses
  %4 = add i8 %.fr26.i, -48
  %isdigit.i = icmp ult i8 %4, 10
  br i1 %isdigit.i, label %bb.d, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit

_ZN3re2L15TerminateNumberEPcPKcm.exit:            ; preds = %bb.b, %switch.early.test.i, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b, i32 noundef %3) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit, %bb.j
  %.1 = phi i1 [ %.0, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.2 = phi i1 [ %.1, %bb.k ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg12parse_doubleEPKcmPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re2L18parse_double_floatEPKcmbPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = icmp ugt i64 %1, 199
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %1 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.f = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.g = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.f, align 4, !tbaa !55
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.g, ptr %2, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.013.i = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1.i = phi i1 [ %.013.i, %bb.g ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re2L18parse_double_floatEPKcmbPv.exit

_ZN3re2L18parse_double_floatEPKcmbPv.exit:        ; preds = %bb.a, %bb.h
  %.2.i = phi i1 [ %.1.i, %bb.h ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg11parse_floatEPKcmPv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re2L18parse_double_floatEPKcmbPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = icmp ugt i64 %1, 199
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %1 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.f = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.g = call float @strtof(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.f, align 4, !tbaa !55
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.g, ptr %2, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.013.i = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1.i = phi i1 [ %.013.i, %bb.g ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re2L18parse_double_floatEPKcmbPv.exit

_ZN3re2L18parse_double_floatEPKcmbPv.exit:        ; preds = %bb.a, %bb.h
  %.2.i = phi i1 [ %.1.i, %bb.h ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg11parse_shortEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i16
  %i.u = add i64 %i.p, 32768
  %.not.i = icmp ult i64 %i.u, 65536
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.t, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg15parse_short_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i16
  %i.u = add i64 %i.p, 32768
  %.not.i = icmp ult i64 %i.u, 65536
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.t, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_short_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i16
  %i.u = add i64 %i.p, 32768
  %.not.i = icmp ult i64 %i.u, 65536
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.t, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg18parse_short_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i16
  %i.u = add i64 %i.p, 32768
  %.not.i = icmp ult i64 %i.u, 65536
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 %i.t, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_short_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg12parse_ushortEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i16
  %.not.i = icmp ult i64 %i.r, 65536
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.v, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_ushort_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i16
  %.not.i = icmp ult i64 %i.r, 65536
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.v, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg18parse_ushort_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i16
  %.not.i = icmp ult i64 %i.r, 65536
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.v, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg19parse_ushort_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i16
  %.not.i = icmp ult i64 %i.r, 65536
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.v, ptr %2, align 2, !tbaa !64
  br label %_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg18parse_ushort_radixEPKcmPvi.exit: ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg9parse_intEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = add i64 %i.p, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit:   ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg13parse_int_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = add i64 %i.p, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit:   ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg15parse_int_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = add i64 %i.p, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit:   ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_int_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %bb.g, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i: ; preds = %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = add i64 %i.p, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.h, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg15parse_int_radixEPKcmPvi.exit:   ; preds = %bb.a, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg10parse_uintEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i32
  %.not.i = icmp ult i64 %i.r, 4294967296
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit:  ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg14parse_uint_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i32
  %.not.i = icmp ult i64 %i.r, 4294967296
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit:  ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_uint_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i32
  %.not.i = icmp ult i64 %i.r, 4294967296
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit:  ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_uint_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i.i = freeze i8 %i.l                   ; 2 uses
  %3 = add i8 %.fr26.i.i.i, -48
  %isdigit.i.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i8 %.fr26.i.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i:        ; preds = %bb.e, %bb.d, %switch.early.test.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, label %bb.f

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i: ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %1
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i.i, label %bb.h, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.v = trunc nuw i64 %i.r to i32
  %.not.i = icmp ult i64 %i.r, 4294967296
  br i1 %.not.i, label %bb.i, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %2, null
  br i1 %i.w, label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %2, align 4, !tbaa !55
  br label %_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_uint_radixEPKcmPvi.exit:  ; preds = %bb.a, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread12.i ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.i ], [ false, %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit.thread9.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg10parse_longEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit:  ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg14parse_long_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit:  ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg16parse_long_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit:  ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_long_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg16parse_long_radixEPKcmPvi.exit:  ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg11parse_ulongEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg15parse_ulong_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg17parse_ulong_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg18parse_ulong_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg17parse_ulong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg14parse_longlongEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg18parse_longlong_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg20parse_longlong_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg21parse_longlong_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %i.s = load i32, ptr %i.o, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.0.i = phi i1 [ true, %bb.h ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ], [ false, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg20parse_longlong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.i
  %.1.i = phi i1 [ %.0.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg15parse_ulonglongEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg19parse_ulonglong_hexEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 16) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg21parse_ulonglong_octalEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 8) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re24PCRE3Arg22parse_ulonglong_cradixEPKcmPv(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  %i.e = tail call ptr @__ctype_b_loc() #30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = sext i8 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !64
  %i.j = and i16 %i.i, 8192
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.fr26.i.i = freeze i8 %i.l                     ; 2 uses
  %3 = add i8 %.fr26.i.i, -48
  %isdigit.i.i = icmp ult i8 %3, 10
  br i1 %isdigit.i.i, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  switch i8 %.fr26.i.i, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.c
  %i.m = icmp ugt i64 %1, 32
  br i1 %i.m, label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 1, 0) %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !28
  br label %_ZN3re2L15TerminateNumberEPcPKcm.exit.i

_ZN3re2L15TerminateNumberEPcPKcm.exit.i:          ; preds = %bb.e, %bb.d, %switch.early.test.i.i, %bb.b
  %.0.i.i = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.b ], [ %i.a, %bb.e ], [ %0, %switch.early.test.i.i ] ; 3 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.q = tail call ptr @__errno_location() #30    ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !55
  %i.r = call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %1
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !55
  %.not13.i = icmp eq i32 %i.u, 0
  br i1 %.not13.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.r, ptr %2, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i
  %.1.i = phi i1 [ %.0.i, %bb.j ], [ false, %_ZN3re2L15TerminateNumberEPcPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit

_ZN3re24PCRE3Arg21parse_ulonglong_radixEPKcmPvi.exit: ; preds = %bb.a, %bb.k
  %.2.i = phi i1 [ %.1.i, %bb.k ], [ false, %bb.a ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.30, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !25, !alias.scope !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !13, !alias.scope !83
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !83 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !83 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85, !noalias !83 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !27, !alias.scope !83 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !83
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !13
  %i.w = load ptr, ptr %1, align 8, !tbaa !27
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !87
  %i.y = call i64 @fwrite(ptr noundef %i.w, i64 noundef 1, i64 noundef %i.v, ptr noundef %i.x) #31 ; 0 uses
  store i8 1, ptr %0, align 8, !tbaa !37
  %i.z = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8
end_hunk_0
