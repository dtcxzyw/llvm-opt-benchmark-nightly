Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/named_scope_format_parser?download=true
inline.NumInlined: 1120
inline.NumDeleted: 444
begin_hunk_0_@_ZN5boost3log11v2_mt_posix24basic_formatting_ostreamIcSt11char_traitsIcESaIcEE15formatted_writeEPKcl:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %.not = icmp sgt i64 %i.j, %2
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !87, !range !70, !noundef !71
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !89
  %spec.select.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.q) ; 2 uses
  %.not.i = icmp ugt i64 %2, %spec.select.i.i
  br i1 %.not.i, label %bb.h, label %bb.f, !prof !90

bb.f:                                             ; preds = %bb.e
  %i.t = sub i64 4611686018427387903, %i.q
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #22
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef %1, i64 noundef %2)
          to label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.e
  %i.w = invoke noundef i64 @_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %spec.select.i.i)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.h
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef %1, i64 noundef %i.w)
          to label %.noexc9 unwind label %bb.i    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  store i8 1, ptr %i.l, align 8, !tbaa !87
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %.noexc8, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.g, %bb.j, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.z

bb.j:                                             ; preds = %bb.c
  invoke void @_ZN5boost3log11v2_mt_posix24basic_formatting_ostreamIcSt11char_traitsIcESaIcEE13aligned_writeEPKcl(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1, i64 noundef %2)
          to label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %bb.i

_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %.noexc9, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.j
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !173, !nonnull !71, !align !91 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !92
  %i.an = and i32 %i.am, 8192
  %.not.i10 = icmp eq i32 %i.an, 0
  br i1 %.not.i10, label %_ZNSo6sentryD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #23
  br i1 %i.ao, label %_ZNSo6sentryD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !174 ; 3 uses
  %.not1.i = icmp eq ptr %i.aq, null
  br i1 %.not1.i, label %_ZNSo6sentryD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i unwind label %bb.p, !inline_history !170

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i: ; preds = %bb.n
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.o, label %_ZNSo6sentryD2Ev.exit

bb.o:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !173, !nonnull !71, !align !91 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !98
  %i.bd = or i32 %i.bc, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ba, i32 noundef %i.bd)
          to label %_ZNSo6sentryD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #19
  unreachable

_ZNSo6sentryD2Ev.exit:                            ; preds = %bb.k, %bb.l, %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost3log11v2_mt_posix24basic_formatting_ostreamIcSt11char_traitsIcESaIcEE13aligned_writeEPKcl(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82
  %i.h = sub nsw i64 %i.g, %2                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  %i.k = and i32 %i.j, 176
  %i.l = icmp eq i32 %i.k, 32
  br i1 %i.l, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !87, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !89
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %.not.i = icmp ugt i64 %2, %spec.select.i.i
  br i1 %.not.i, label %bb.f, label %bb.d, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.v = sub i64 4611686018427387903, %i.s
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.c
  %i.y = tail call noundef i64 @_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %spec.select.i.i)
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef %1, i64 noundef %i.y) ; 0 uses
  store i8 1, ptr %i.n, align 8, !tbaa !87
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 225 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !176, !range !70, !noundef !71
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.g:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !178 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !184
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 32), !inline_history !175
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i8 [ %i.an, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store i8 %.0.i.i.i, ptr %i.as, align 8, !tbaa !177
  store i8 1, ptr %i.af, align 1, !tbaa !176
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ] ; 2 uses
  %i.au = load i8, ptr %i.n, align 8, !tbaa !87, !range !70, !noundef !71
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !88  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !23 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !89
  %spec.select.i.i8 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.ay) ; 2 uses
  %.not.i9 = icmp ugt i64 %i.h, %spec.select.i.i8
  br i1 %.not.i9, label %bb.m, label %bb.l, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, i64 noundef 0, i64 noundef %i.h, i8 noundef signext %i.at) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, i64 noundef 0, i64 noundef %spec.select.i.i8, i8 noundef signext %i.at) ; 0 uses
  store i8 1, ptr %i.n, align 8, !tbaa !87
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.n:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 225 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !176, !range !70, !noundef !71
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %._crit_edge.i16, label %bb.o

._crit_edge.i16:                                  ; preds = %bb.n
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %.pre.i18 = load i8, ptr %.phi.trans.insert.i17, align 8, !tbaa !177
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit19

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !178 ; 6 uses
  %.not.i.i.i11 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i11, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12: ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !184
  %.not.i1.i.i13 = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i13, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i14

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 32), !inline_history !175
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i14

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i14: ; preds = %bb.r, %bb.q
  %.0.i.i.i15 = phi i8 [ %i.bl, %bb.q ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store i8 %.0.i.i.i15, ptr %i.bq, align 8, !tbaa !177
  store i8 1, ptr %i.bd, align 1, !tbaa !176
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit19

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit19: ; preds = %._crit_edge.i16, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i14
  %i.br = phi i8 [ %.pre.i18, %._crit_edge.i16 ], [ %.0.i.i.i15, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i14 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !87, !range !70, !noundef !71
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit, label %bb.s

bb.s:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit19
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !88 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !89
  %spec.select.i.i20 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %i.by) ; 2 uses
  %.not.i21 = icmp ugt i64 %i.h, %spec.select.i.i20
  br i1 %.not.i21, label %bb.t, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit23, !prof !90

bb.t:                                             ; preds = %bb.s
  %i.cb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef %i.by, i64 noundef 0, i64 noundef %spec.select.i.i20, i8 noundef signext %i.br) ; 0 uses
  store i8 1, ptr %i.bs, align 8, !tbaa !87
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit23: ; preds = %bb.s
  %i.cc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef %i.by, i64 noundef 0, i64 noundef %i.h, i8 noundef signext %i.br) ; 0 uses
  %.pre = load i8, ptr %i.bs, align 8, !tbaa !87, !range !70
  %i.cd = trunc nuw i8 %.pre to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.cd, label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit23
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !89
  %spec.select.i.i24 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %.not.i25 = icmp ugt i64 %2, %spec.select.i.i24
  br i1 %.not.i25, label %bb.x, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.ck = sub i64 4611686018427387903, %i.ch
  %i.cl = icmp ult i64 %i.ck, %2
  br i1 %i.cl, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i26

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i26: ; preds = %bb.v
  %i.cm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.x:                                             ; preds = %bb.u
  %i.cn = tail call noundef i64 @_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %spec.select.i.i24)
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.cp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef %1, i64 noundef %i.cn) ; 0 uses
  store i8 1, ptr %i.bs, align 8, !tbaa !87
  br label %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.t, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit19, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i26, %_ZN5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE6appendEmc.exit23, %bb.m, %bb.l, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11 align 2

declare void @_ZNSo6sentryC2ERSo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %5 = alloca %struct.__mbstate_t, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  %i.b = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7codecvtIwc11__mbstate_tE2idE) #18
  %i.c = load ptr, ptr %4, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i.i, label %bb.b, label %_ZSt9use_facetISt7codecvtIwc11__mbstate_tEERKT_RKSt6locale.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZSt9use_facetISt7codecvtIwc11__mbstate_tEERKT_RKSt6locale.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i64 0, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef %1, ptr noundef %i.h, i64 noundef %2)
          to label %_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmmNS_17integral_constantImLm1EEE.exit unwind label %bb.d, !inline_history !185

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZSt9use_facetISt7codecvtIwc11__mbstate_tEERKT_RKSt6locale.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn.i

_ZNK5boost3log11v2_mt_posix3aux22basic_ostringstreambufIcSt11char_traitsIcESaIcEE21length_until_boundaryEPKcmmNS_17integral_constantImLm1EEE.exit: ; preds = %_ZSt9use_facetISt7codecvtIwc11__mbstate_tEERKT_RKSt6locale.exit.i
  %i.o = sext i32 %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %i.o
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZSt18uncaught_exceptionv() local_unnamed_addr #14

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvT_SI_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost3log11v2_mt_posix3aux14light_functionIFvRNS4_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS4_10attributes17named_scope_entryEEEEEEvT_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  invoke void %i.c(ptr noundef nonnull %i.a)
          to label %_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost3log11v2_mt_posix3aux14light_functionIFvRNS4_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS4_10attributes17named_scope_entryEEEEEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost3log11v2_mt_posix3aux14light_functionIFvRNS4_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS4_10attributes17named_scope_entryEEEEEEvT_SK_.exit: ; preds = %_ZSt8_DestroyIN5boost3log11v2_mt_posix3aux14light_functionIFvRNS2_24basic_formatting_ostreamIcSt11char_traitsIcESaIcEEERKNS2_10attributes17named_scope_entryEEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13
end_hunk_0
