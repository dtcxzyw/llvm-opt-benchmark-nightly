inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal14ParseFlagValueEPKcS2_b:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !14
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !13
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.250, i64 noundef 6)
          to label %.noexc25 unwind label %bb.g   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !14, !alias.scope !1012
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc25
  store ptr %i.h, ptr %4, align 8, !tbaa !7, !alias.scope !1012
  %i.o = load i64, ptr %i.i, align 8, !tbaa !13
  store i64 %i.o, ptr %i.g, align 8, !tbaa !13, !alias.scope !1012
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !16, !alias.scope !1012
  store ptr %i.i, ptr %i.f, align 8, !tbaa !7
  store i64 0, ptr %i.q, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 8, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53, !noalias !1015 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !1015
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc30 unwind label %bb.h

.noexc30:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.s)
          to label %.noexc31 unwind label %bb.h   ; 6 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !14, !alias.scope !1015
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.e:                                             ; preds = %.noexc31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.noexc31
  store ptr %i.y, ptr %3, align 8, !tbaa !7, !alias.scope !1015
  %i.af = load i64, ptr %i.z, align 8, !tbaa !13
  store i64 %i.af, ptr %i.x, align 8, !tbaa !13, !alias.scope !1015
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i29 = load i64, ptr %.phi.trans.insert.i28, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !16, !alias.scope !1015
  store ptr %i.z, ptr %i.w, align 8, !tbaa !7
  store i64 0, ptr %i.ah, align 8, !tbaa !16
  store i8 0, ptr %i.z, align 8, !tbaa !13
  %i.aj = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.f
  %i.al = load i64, ptr %i.g, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.an = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !16 ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %i.at = call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %i.as, i64 noundef %i.ar) #55
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.h
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !13
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.g
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.av, %bb.h ]
  %i.ba = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 3 uses
  %.pre = load i8, ptr %i.be, align 1, !tbaa !13  ; 2 uses
  %i.bf = icmp eq i8 %.pre, 0
  %or.cond64 = select i1 %2, i1 %i.bf, i1 false
  br i1 %or.cond64, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not23 = icmp eq i8 %.pre, 61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %spec.select = select i1 %.not23, ptr %i.bg, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %spec.select, %bb.j ], [ %i.be, %bb.i ]
  %i.bh = icmp eq ptr %i.as, %i.x
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44: ; preds = %bb.k
  %i.bi = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.k
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !13
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.bk) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.2 = phi ptr [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 48, label %bb.d
    i8 102, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i8 %i.c, 70
  %i.e = zext i1 %i.d to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ %i.e, %bb.c ]
  store i8 %i.f, ptr %2, align 1, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal14ParseInt32FlagEPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %i.a = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.c = load ptr, ptr %5, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.d, ptr %i.g, align 8, !tbaa !28
  %i.h = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @.str.251, i64 noundef 20)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.body

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.j = icmp eq ptr %1, null
  %i.k = load ptr, ptr %5, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.83, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.j ; 0 uses

_ZN4llvh9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.l, ptr %i.p, align 8, !tbaa !28
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 2 uses
  %.not.i.i7 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i7, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %1, i64 noundef %i.q)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.f, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, %bb.e
  %i.t = invoke noundef zeroext i1 @_ZN7testing8internal10ParseInt32ERKNS_7MessageEPKcPi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #53, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.l

bb.j:                                             ; preds = %bb.e, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.g, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.y, %bb.j ], [ %i.s, %bb.g ]
  %i.z = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %_ZN7testing7MessageD2Ev.exit11, label %bb.k

bb.k:                                             ; preds = %.body
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #53, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit11

_ZN7testing7MessageD2Ev.exit11:                   ; preds = %.body, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %.0 = phi i1 [ %i.t, %_ZN7testing7MessageD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 3 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #53
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal19ParseGoogleTestFlagEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str, i1 noundef zeroext true) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 48, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread
    i8 102, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ne i8 %i.b, 70
  %i.d = zext i1 %i.c to i8
  br label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread: ; preds = %bb.b, %bb.b, %bb.c
  %i.e = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ %i.d, %bb.c ]
  store i8 %i.e, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !73
  br label %bb.t

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit: ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.2, i1 noundef zeroext true) ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 48, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread
    i8 102, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i8 %i.g, 70
  %i.i = zext i1 %i.h to i8
  br label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread: ; preds = %bb.d, %bb.d, %bb.e
  %i.j = phi i8 [ 0, %bb.d ], [ 0, %bb.d ], [ %i.i, %bb.e ]
  store i8 %i.j, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !73
  br label %bb.t

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17: ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit
  %i.k = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.4, i1 noundef zeroext true) ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.l, label %bb.g [
    i8 48, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread
    i8 102, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = icmp ne i8 %i.l, 70
  %i.n = zext i1 %i.m to i8
  br label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread: ; preds = %bb.f, %bb.f, %bb.g
  %i.o = phi i8 [ 0, %bb.f ], [ 0, %bb.f ], [ %i.n, %bb.g ]
  store i8 %i.o, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !73
  br label %bb.t

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18: ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17
  %i.p = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.6, i1 noundef zeroext false) ; 3 uses
  %.not23 = icmp eq ptr %i.p, null
  br i1 %.not23, label %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8, !tbaa !16
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #53
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull %i.p, i64 noundef %i.r) ; 0 uses
  br label %bb.t

_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18
  %i.t = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.254, i1 noundef zeroext false) ; 3 uses
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19, label %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19.thread

_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19.thread: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !16
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #53
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 noundef 0, i64 noundef %i.u, ptr noundef nonnull %i.t, i64 noundef %i.v) ; 0 uses
  br label %bb.t

_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = tail call noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef nonnull @.str.256, i1 noundef zeroext true) ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.y, label %bb.i [
    i8 48, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread
    i8 102, label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ne i8 %i.y, 70
  %i.aa = zext i1 %i.z to i8
  br label %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread: ; preds = %bb.h, %bb.h, %bb.i
  %i.ab = phi i8 [ 0, %bb.h ], [ 0, %bb.h ], [ %i.aa, %bb.i ]
  store i8 %i.ab, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !73
  br label %bb.t

_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19
  %i.ac = tail call noundef zeroext i1 @_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
  br i1 %i.ac, label %bb.t, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20
  %i.ad = tail call noundef zeroext i1 @_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull @_ZN7testing8internalL25kInternalRunDeathTestFlagE, ptr noundef nonnull @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E)
  br i1 %i.ad, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef zeroext i1 @_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @_ZN7testing8internalL14kListTestsFlagE, ptr noundef nonnull @_ZN7testing22FLAGS_gtest_list_testsE)
  br i1 %i.ae, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call noundef zeroext i1 @_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
  br i1 %i.af, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call noundef zeroext i1 @_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @_ZN7testing22FLAGS_gtest_print_timeE)
  br i1 %i.ag, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call noundef zeroext i1 @_ZN7testing8internal14ParseInt32FlagEPKcS2_Pi(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @_ZN7testing23FLAGS_gtest_random_seedE)
  br i1 %i.ah, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call noundef zeroext i1 @_ZN7testing8internal14ParseInt32FlagEPKcS2_Pi(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @_ZN7testing18FLAGS_gtest_repeatE)
  br i1 %i.ai, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call noundef zeroext i1 @_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @_ZN7testing19FLAGS_gtest_shuffleE)
  br i1 %i.aj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call noundef zeroext i1 @_ZN7testing8internal14ParseInt32FlagEPKcS2_Pi(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @_ZN7testing29FLAGS_gtest_stack_trace_depthE)
  br i1 %i.ak, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = tail call noundef zeroext i1 @_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = tail call noundef zeroext i1 @_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @_ZN7testing28FLAGS_gtest_throw_on_failureE)
  br label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19.thread, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20
  %i.an = phi i1 [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20 ], [ true, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit20.thread ], [ true, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19.thread ], [ true, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ true, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit18.thread ], [ true, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit17.thread ], [ true, %_ZN7testing8internal13ParseBoolFlagEPKcS2_Pb.exit.thread ], [ %i.am, %bb.s ]
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal17LoadFlagsFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::vector.33", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.252) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.d = load ptr, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, align 8, !tbaa !7
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.172, ptr noundef %i.d) #60 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.g = tail call i32 @fflush(ptr noundef %i.f)  ; 0 uses
  tail call void @exit(i32 noundef 1) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  call void @_ZN7testing8internal14ReadEntireFileB5cxx11EP8_IO_FILE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull %i.b)
  %i.h = call noundef i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN7testing8internal11SplitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 10, ptr noundef nonnull %2)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !145    ; 7 uses
  %.not23 = icmp eq ptr %i.j, %i.k
  br i1 %.not23, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 5
  br label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.k, %bb.i ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !13
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #54
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %.preheader
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !150
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.k to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.z) #54
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.aa = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret void

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.021 = phi i64 [ %i.an, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.021 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.al = invoke noundef zeroext i1 @_ZN7testing8internal19ParseGoogleTestFlagEPKc(ptr noundef %i.ak)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.al, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr @_ZN7testing8internal11g_help_flagE, align 1, !tbaa !73
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g, %.lr.ph
  %i.an = add nuw i64 %.021, 1                    ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.o
  br i1 %i.ao, label %.lr.ph, label %.lr.ph.i.i.i, !llvm.loop !1018

bb.j:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.af, %bb.d ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.ap = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
