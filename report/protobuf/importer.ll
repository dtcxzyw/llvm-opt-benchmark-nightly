inline.NumInlined: 1010
inline.NumDeleted: 534
begin_hunk_0_@_ZN6google8protobuf8compilerL12ApplyMappingESt17basic_string_viewIcSt11char_traitsIcEES5_S5_PNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %i.aa = getelementptr i8, ptr %i.x, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 46
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i: ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %cond = icmp eq i64 %0, 3
  br i1 %cond, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i
  %i.ai = ptrtoint ptr %i.w to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %0, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.d ]
  %.02132.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i ], [ %i.ao, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.i = add i64 %.033.i.i.i.i, -3
  %i.aj = tail call ptr @memchr(ptr noundef nonnull %.02132.i.i.i.i, i32 noundef 47, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.i) #31 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not26.i.i.i.i, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = icmp ne i32 %i.ak, 791555631
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ai, %i.ap                    ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.aq, 4
  br i1 %.not25.i.i.i.i, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, !llvm.loop !204

_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14.i
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  %.not179 = icmp eq i64 %i.at, -1
  br i1 %.not179, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164

_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.d, %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.c
  %i.au = icmp eq i64 %0, 0
  br i1 %i.au, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread166, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread25.i, %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %lhsc = load i8, ptr %1, align 1
  %i.av = icmp eq i8 %lhsc, 47
  br i1 %i.av, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread166

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread166: ; preds = %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !54
  %i.ax = icmp eq ptr %5, null
  %i.ay = icmp ne i64 %4, 0
  %or.cond.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.e

.noexc:                                           ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread166
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #33
  unreachable

bb.e:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %4, ptr %i.e, align 8, !tbaa !55
  %i.az = icmp ugt i64 %4, 15
  br i1 %i.az, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.ba = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ba, ptr %7, align 8, !tbaa !49
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !55
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.e
  %i.bc = phi ptr [ %i.ba, %.noexc.i.i.i ], [ %i.aw, %bb.e ] ; 2 uses
  switch i64 %4, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bd = load i8, ptr %5, align 1, !tbaa !47
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !47
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %5, i64 %4, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.be = load i64, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !53
  %i.bg = load ptr, ptr %7, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.bi = load ptr, ptr %6, align 8, !tbaa !49    ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  %i.bl = load ptr, ptr %7, align 8, !tbaa !49    ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw                ; 2 uses
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  br i1 %i.bm, label %bb.i, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.h
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !53 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i.i = icmp eq ptr %7, %6
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, label %bb.j, !prof !77

bb.j:                                             ; preds = %bb.i
  switch i64 %i.bn, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !47
  store i8 %i.bp, ptr %i.bi, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bq = load i64, ptr %i.bf, align 8, !tbaa !53 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !53
  %i.bs = load ptr, ptr %6, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !47
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bl, ptr %6, align 8, !tbaa !49
  %i.bv = load <2 x i64>, ptr %i.bf, align 8, !tbaa !47
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !tbaa !47
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bw = load i64, ptr %i.bj, align 8, !tbaa !47
  store ptr %i.bl, ptr %6, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load <2 x i64>, ptr %i.bf, align 8, !tbaa !47
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bi, ptr %7, align 8, !tbaa !49
  store i64 %i.bw, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.aw, ptr %7, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %i.bz = phi ptr [ %i.bi, %bb.m ], [ %i.aw, %bb.n ], [ %i.bl, %bb.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.bf, align 8, !tbaa !53
  store i8 0, ptr %i.bz, align 1, !tbaa !47
  %i.ca = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aw
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit
  %i.cc = load i64, ptr %i.aw, align 8, !tbaa !47
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !53 ; 5 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = add i64 %i.cf, 1                        ; 3 uses
  %i.ci = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bj                ; 2 uses
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.p, %bb.o
  %12 = load i64, ptr %i.bj, align 8
  %13 = select i1 %i.cj, i64 15, i64 %12
  %i.cl = icmp ugt i64 %i.ch, %13
  br i1 %i.cl, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cf, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.q
  %i.cm = phi ptr [ %.pre.i, %bb.q ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cf
  store i8 47, ptr %i.cn, align 1, !tbaa !47
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !53
  %i.co = load ptr, ptr %6, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ch
  store i8 0, ptr %i.cp, align 1, !tbaa !47
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cq, ptr %8, align 8, !tbaa !54
  %i.cr = icmp eq ptr %1, null
  %i.cs = icmp ne i64 %0, 0
  %or.cond.i.i.i47 = and i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.i47, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #33
          to label %.noexc50 unwind label %bb.y

.noexc50:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 %0, ptr %i.d, align 8, !tbaa !55
  %i.ct = icmp ugt i64 %0, 15
  br i1 %i.ct, label %.noexc.i.i.i49, label %._crit_edge.i.i.i.i48

.noexc.i.i.i49:                                   ; preds = %bb.t
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc51 unwind label %bb.y   ; 2 uses

.noexc51:                                         ; preds = %.noexc.i.i.i49
  store ptr %i.cu, ptr %8, align 8, !tbaa !49
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !55
  store i64 %i.cv, ptr %i.cq, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i48

._crit_edge.i.i.i.i48:                            ; preds = %.noexc51, %bb.t
  %i.cw = phi ptr [ %i.cu, %.noexc51 ], [ %i.cq, %bb.t ] ; 2 uses
  switch i64 %0, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i48
  %i.cx = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !47
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %1, i64 %0, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i48
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !53
  %i.da = load ptr, ptr %8, align 8, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !53 ; 2 uses
  %i.dd = load i64, ptr %i.ce, align 8, !tbaa !53
  %i.de = sub i64 4611686018427387903, %i.dd
  %i.df = icmp ult i64 %i.de, %i.dc
  br i1 %i.df, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
          to label %.noexc53 unwind label %bb.z

.noexc53:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.w
  %i.dg = load ptr, ptr %8, align 8, !tbaa !49
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.dg, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.di = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cq
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.dk = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164

bb.y:                                             ; preds = %.noexc.i.i.i49, %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cq
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.z
  %i.dq = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.y
  %.pn36 = phi { ptr, i32 } [ %i.dm, %bb.y ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.dn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.bq

bb.aa:                                            ; preds = %bb.a
  %i.ds = icmp ult i64 %0, %2
  br i1 %i.ds, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit64

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit64: ; preds = %bb.aa
  %bcmp.i.i62 = tail call i32 @bcmp(ptr %1, ptr %3, i64 %2)
  %i.dt = icmp eq i32 %bcmp.i.i62, 0
  br i1 %i.dt, label %bb.ab, label %_ZN6google8protobuf8compilerL23ContainsParentReferenceESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread164

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit64
  %i.du = icmp eq i64 %0, %2
  br i1 %i.du, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.dv, ptr %9, align 8, !tbaa !54
  %i.dw = icmp eq ptr %5, null
  %i.dx = icmp ne i64 %4, 0
  %or.cond.i.i.i68 = and i1 %i.dx, %i.dw
  br i1 %or.cond.i.i.i68, label %.noexc71, label %bb.ad

.noexc71:                                         ; preds = %bb.ac
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #33
  unreachable

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %4, ptr %i.c, align 8, !tbaa !55
  %i.dy = icmp ugt i64 %4, 15
  br i1 %i.dy, label %.noexc.i.i.i70, label %._crit_edge.i.i.i.i69

.noexc.i.i.i70:                                   ; preds = %bb.ad
  %i.dz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.dz, ptr %9, align 8, !tbaa !49
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !55
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i69

._crit_edge.i.i.i.i69:                            ; preds = %.noexc.i.i.i70, %bb.ad
  %i.eb = phi ptr [ %i.dz, %.noexc.i.i.i70 ], [ %i.dv, %bb.ad ] ; 2 uses
  switch i64 %4, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i69
  %i.ec = load i8, ptr %5, align 1, !tbaa !47
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !47
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %5, i64 %4, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i.i69
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !53
  %i.ef = load ptr, ptr %9, align 8, !tbaa !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.eh = load ptr, ptr %6, align 8, !tbaa !49    ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  %i.ek = load ptr, ptr %9, align 8, !tbaa !49    ; 6 uses
  %i.el = icmp eq ptr %i.ek, %i.dv                ; 2 uses
  br i1 %i.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

end_hunk_0
