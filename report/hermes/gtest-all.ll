inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZNK7testing8internal8FilePath15DirectoryExistsEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7testing8internal8FilePath15IsRootDirectoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp eq i8 %i.e, 47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZNK7testing8internal8FilePath12CreateFolderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call i32 @mkdir(ptr noundef %i.a, i32 noundef 511) #53
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = call noundef i32 @stat(ptr noundef %i.d, ptr noundef nonnull %1) #53
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 61440
  %i.j = icmp eq i32 %i.i, 16384
  %i.k = select i1 %i.f, i1 %i.j, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull @.str.12, i64 noundef 0) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #57 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.f, i1 false)
  %i.h = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.loopexit
  %i.i = phi i8 [ %i.o, %.loopexit ], [ %i.h, %bb.c ]
  %.018 = phi ptr [ %i.p, %.loopexit ], [ %i.g, %bb.c ] ; 2 uses
  %.01417 = phi ptr [ %.2, %.loopexit ], [ %i.a, %bb.c ] ; 3 uses
  store i8 %i.i, ptr %.018, align 1, !tbaa !13
  %i.j = load i8, ptr %.01417, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, 47
  br i1 %i.k, label %.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.01417, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.l, align 1, !tbaa !13
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.115 = phi ptr [ %i.m, %.preheader ], [ %.01417, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %.115, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.n = icmp eq i8 %.pr, 47
  br i1 %i.n, label %.preheader, label %.loopexit, !llvm.loop !1634

.loopexit:                                        ; preds = %.preheader, %bb.d
  %i.o = phi i8 [ %.pre, %bb.d ], [ %.pr, %.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.l, %bb.d ], [ %i.m, %.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 1 ; 2 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1635

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.0.lcssa = phi ptr [ %i.g, %bb.c ], [ %i.p, %.loopexit ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !13
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #53
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.g, i64 noundef %i.q) ; 0 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #54
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal2RED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1113, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @regfree(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @regfree(ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1117
  tail call void @free(ptr noundef %i.f) #53
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #59
  unreachable
}

declare void @regfree(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #42

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal2RE9FullMatchEPKcRKS1_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.regmatch_t, align 4         ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1113, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = call i32 @regexec(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef 1, ptr noundef nonnull %2, i32 noundef 0)
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal2RE4InitEPKc(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 10 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noalias noundef ptr @strdup(ptr noundef %1) #53
  store ptr %i.a, ptr %0, align 8, !tbaa !1117
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  %i.c = add i64 %i.b, 10                         ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #57 ; 3 uses
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull @.str.298, ptr noundef nonnull %1) #53 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call i32 @regcomp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 8, !tbaa !1113
  br i1 %i.h, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  store i8 0, ptr %5, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !189
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 1, !tbaa !13
  %i.m = icmp eq i8 %i.l, 0
  %i.n = select i1 %i.m, ptr @.str.299, ptr %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = tail call i32 @regcomp(ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, i32 noundef 1)
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.r = zext i1 %i.q to i8                       ; 2 uses
  store i8 %i.r, ptr %i.i, align 8, !tbaa !1113
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  store i8 %i.r, ptr %5, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !189
  br i1 %i.q, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %6, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !28
  %i.y = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @.str.300, i64 noundef 20)
          to label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.body

_ZN4llvh9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.d
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.aa = load ptr, ptr %6, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !28
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i16, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %1, i64 noundef %i.af)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body

bb.h:                                             ; preds = %bb.f, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.ai = load ptr, ptr %6, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !28
  %i.an = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.301, i64 noundef 51)
          to label %bb.i unwind label %.body20    ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.136)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %8, align 8, !tbaa !7
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.302, i32 noundef 616, ptr noundef %i.ao)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53
  %i.ap = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.au = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #53, !inline_history !30
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit26

.body20:                                          ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

bb.o:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.p:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.bb, %bb.p ] ; 2 uses
  %i.bd = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !13
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g, %.body20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.z, %bb.e ], [ %i.az, %.body20 ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i25, label %_ZN7testing7MessageD2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %.body
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #53, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %bb.s, %.body, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  resume { ptr, i32 } %.pn.pn.pn.pn

end_hunk_0
