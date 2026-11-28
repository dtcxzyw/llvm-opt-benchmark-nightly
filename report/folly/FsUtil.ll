Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/FsUtil?download=true
inline.NumInlined: 293
inline.NumDeleted: 129
begin_hunk_0_@strerror_r

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly2fs11starts_withERKN5boost10filesystem4pathES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1360
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !1364
  store i8 0, ptr %i.a, align 8, !tbaa !1357
  %i.c = invoke fastcc noundef zeroext i1 @_ZN5folly2fs12_GLOBAL__N_110skipPrefixERKN5boost10filesystem4pathES6_RNS3_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1363   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1357
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !1363   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !1357
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5folly2fs12_GLOBAL__N_110skipPrefixERKN5boost10filesystem4pathES6_RNS3_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::filesystem::path", align 8 ; 10 uses
  %4 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 15 uses
  %5 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 13 uses
  %6 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 10 uses
  %7 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 8 uses
  %8 = alloca %"class.boost::filesystem::path_detail::path_iterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !1363   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !1363   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1364 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  switch i64 %i.h, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.d, align 1, !tbaa !1357
  store i8 %i.j, ptr %i.a, align 1, !tbaa !1357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.k = load i64, ptr %i.g, align 8, !tbaa !1364 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !1364
  %i.m = load ptr, ptr %2, align 8, !tbaa !1363
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !1357
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !1363
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %2, align 8, !tbaa !1363
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !1357
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !1357
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !1357
  store ptr %i.d, ptr %2, align 8, !tbaa !1363
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !1357
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !1357
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.a, ptr %4, align 8, !tbaa !1363
  store i64 %i.r, ptr %i.e, align 8, !tbaa !1357
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.e, ptr %4, align 8, !tbaa !1363
  br label %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit

_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.e, %bb.f
  %i.v = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.a, %bb.e ], [ %i.e, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !1364
  store i8 0, ptr %i.v, align 1, !tbaa !1357
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = load ptr, ptr %4, align 8, !tbaa !1363   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !1357
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratoraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader unwind label %bb.g

_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit

_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit.preheader, %bb.v
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !1368
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !1368
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load i64, ptr %i.ag, align 8
  %i.aw = load i64, ptr %i.ah, align 8
  %i.ax = icmp eq i64 %i.av, %i.aw
  %.not3.i.not = select i1 %i.au, i1 %i.ax, i1 false ; 2 uses
  br i1 %.not3.i.not, label %.thread, label %bb.h

bb.g:                                             ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57

bb.h:                                             ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !1368
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !1368
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = load i64, ptr %i.aj, align 8
  %i.bd = load i64, ptr %i.ak, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1363  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %bb.i
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !1357
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.bf, label %.thread, label %bb.l

bb.j:                                             ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

bb.l:                                             ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.am, ptr %3, align 8, !tbaa !1360
  store i64 0, ptr %i.an, align 8, !tbaa !1364
  store i8 0, ptr %i.am, align 8, !tbaa !1357
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit: ; preds = %bb.l
  %i.bn = invoke noundef i32 @_ZN5boost10filesystem6detail15path_algorithms10compare_v3ERKNS0_4pathES5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !1363  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.am
  br i1 %i.bq, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.m
  %i.br = load i64, ptr %i.am, align 8, !tbaa !1357
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #22
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %i.bt = load ptr, ptr %3, align 8, !tbaa !1363  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.am
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit
  %i.bv = load i64, ptr %i.am, align 8, !tbaa !1357
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36: ; preds = %_ZNK5boost10filesystem4path10compare_opclEPKcS4_PKSt7codecvtIwc11__mbstate_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bx = icmp eq i32 %i.bn, 0
  br i1 %i.bx, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  store ptr %i.ao, ptr %8, align 8, !tbaa !1360, !alias.scope !1381
  %i.by = load ptr, ptr %2, align 8, !tbaa !1363, !noalias !1381 ; 2 uses
  %i.bz = load i64, ptr %i.ap, align 8, !tbaa !1364, !noalias !1381 ; 8 uses
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.o, label %._crit_edge.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cb = icmp slt i64 %i.bz, 0
  br i1 %i.cb, label %.noexc.i.i.i.i, label %bb.p

.noexc.i.i.i.i:                                   ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cc = add nuw i64 %i.bz, 1                    ; 2 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !1361

.noexc6.i.i.i.i:                                  ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #19
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #20
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.ce, ptr %8, align 8, !tbaa !1363, !alias.scope !1381
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !1357, !alias.scope !1381
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc39, %bb.n
  %i.cf = phi ptr [ %i.ce, %.noexc39 ], [ %i.ao, %bb.n ] ; 3 uses
  switch i64 %i.bz, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cg = load i8, ptr %i.by, align 1, !tbaa !1357
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !1357
  br label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.by, i64 %i.bz, i1 false)
  br label %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i

_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i
  store i64 %i.bz, ptr %i.aq, align 8, !tbaa !1364, !alias.scope !1381
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  store i8 0, ptr %i.ch, align 1, !tbaa !1357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  invoke void @_ZN5boost10filesystem6detail15path_algorithms12increment_v3ERNS0_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN5boost9iteratorsppINS_10filesystem11path_detail13path_iteratorEKNS2_4pathENS0_27bidirectional_traversal_tagERS6_lEENS0_6detail24postfix_increment_resultIT_T0_T2_T1_E4typeERNS0_15iterator_facadeISB_SC_SE_SD_T3_EEi.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %8, align 8, !tbaa !1363, !alias.scope !1381 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ao
  br i1 %i.ck, label %.body40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %9 = load i64, ptr %i.ao, align 8, !tbaa !1357, !alias.scope !1381
  %10 = add i64 %9, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %10) #22
  br label %.body40

_ZN5boost9iteratorsppINS_10filesystem11path_detail13path_iteratorEKNS2_4pathENS0_27bidirectional_traversal_tagERS6_lEENS0_6detail24postfix_increment_resultIT_T0_T2_T1_E4typeERNS0_15iterator_facadeISB_SC_SE_SD_T3_EEi.exit: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorC2ERKS2_.exit.i
  %i.cl = invoke noundef i32 @_ZN5boost10filesystem6detail15path_algorithms10compare_v3ERKNS0_4pathES5_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN5boost9iteratorsppINS_10filesystem11path_detail13path_iteratorEKNS2_4pathENS0_27bidirectional_traversal_tagERS6_lEENS0_6detail24postfix_increment_resultIT_T0_T2_T1_E4typeERNS0_15iterator_facadeISB_SC_SE_SD_T3_EEi.exit
  %.not = icmp eq i32 %i.cl, 0
  %i.cm = load ptr, ptr %8, align 8, !tbaa !1363  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ao
  br i1 %i.cn, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.t
  %i.co = load i64, ptr %i.ao, align 8, !tbaa !1357
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit44

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit44: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.not, label %bb.v, label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.u:                                             ; preds = %_ZN5boost9iteratorsppINS_10filesystem11path_detail13path_iteratorEKNS2_4pathENS0_27bidirectional_traversal_tagERS6_lEENS0_6detail24postfix_increment_resultIT_T0_T2_T1_E4typeERNS0_15iterator_facadeISB_SC_SE_SD_T3_EEi.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !1363  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ao
  br i1 %i.cs, label %.body40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45: ; preds = %bb.u
  %i.ct = load i64, ptr %i.ao, align 8, !tbaa !1357
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %.body40

.body40:                                          ; preds = %bb.u, %bb.s, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ci, %bb.s ], [ %i.cq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit44
  invoke void @_ZN5boost10filesystem6detail15path_algorithms12increment_v3ERNS0_11path_detail13path_iteratorE(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit unwind label %bb.j

.thread:                                          ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit44, %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit32, %_ZN5boost9iterators6detail20iterator_facade_baseINS_10filesystem11path_detail13path_iteratorEKNS3_4pathENS0_27bidirectional_traversal_tagERS7_lLb0ELb0EEppEv.exit
  %i.cv = load ptr, ptr %6, align 8, !tbaa !1363  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49: ; preds = %.thread
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !1357
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit51

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit51: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.da = load ptr, ptr %5, align 8, !tbaa !1363  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit51
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !1357
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit54

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit54: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.not3.i.not

.body:                                            ; preds = %bb.j, %_ZN5boost10filesystem4pathD2Ev.exit, %bb.k, %.body40
  %.pn26 = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %.pn, %.body40 ], [ %i.bk, %bb.j ], [ %i.bo, %_ZN5boost10filesystem4pathD2Ev.exit ] ; 2 uses
  %i.df = load ptr, ptr %6, align 8, !tbaa !1363  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55: ; preds = %.body
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !1357
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55, %bb.g
  %.pn26.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55 ], [ %.pn26, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.dk = load ptr, ptr %5, align 8, !tbaa !1363  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !1357
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #22
  br label %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit60

_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit60: ; preds = %_ZN5boost10filesystem11path_detail13path_iteratorD2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn26.pn
}

declare void @_ZNK5boost10filesystem4path5beginEv(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

declare void @_ZNK5boost10filesystem4path3endEv(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path_detail::path_iterator") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1364 ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1363   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !1357
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !1382

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !1357
  store i8 %i.v, ptr %i.t, align 1, !tbaa !1357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !1357
  store i8 %i.w, ptr %i.m, align 1, !tbaa !1357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !1364
  %i.x = load ptr, ptr %0, align 8, !tbaa !1363
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !1357
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1364 ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1363
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !1357
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c
end_hunk_0
