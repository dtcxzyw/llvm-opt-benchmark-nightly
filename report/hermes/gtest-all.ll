inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing8internal8FilePath13GetCurrentDirEv:bb.a
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !13
  store i8 %i.m, ptr %i.l, align 1, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = load ptr, ptr %1, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !14
  %i.s = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.t = load i64, ptr %i.o, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.t, ptr %i.a, align 8, !tbaa !15
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.h    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i
  store ptr %i.v, ptr %0, align 8, !tbaa !7
  %i.w = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.w, ptr %i.r, align 8, !tbaa !13
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc4, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc4 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.s, align 1, !tbaa !13
  store i8 %i.y, ptr %i.x, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !16
  %i.ab = load ptr, ptr %0, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !13
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #54
  br label %.body

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #53
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ad, %bb.g ]
  %i.an = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %.body
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing8internal8FilePath15RemoveExtensionEPKc(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::FilePath") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !14
  store i8 46, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #53, !noalias !1595 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 4611686018427387902
  br i1 %i.h, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %.noexc13 unwind label %bb.m   ; 6 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !14, !alias.scope !1595
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !7    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc13
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc13
  store ptr %i.k, ptr %3, align 8, !tbaa !7, !alias.scope !1595
  %i.r = load i64, ptr %i.l, align 8, !tbaa !13
  store i64 %i.r, ptr %i.j, align 8, !tbaa !13, !alias.scope !1595
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.s = phi i64 [ %i.o, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.u, align 8, !tbaa !16, !alias.scope !1595
  store ptr %i.l, ptr %i.i, align 8, !tbaa !7
  store i64 0, ptr %i.t, align 8, !tbaa !16
  store i8 0, ptr %i.l, align 8, !tbaa !13
  %i.v = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.c
  %i.x = load i64, ptr %i.d, align 8, !tbaa !13
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 8 uses
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !16  ; 3 uses
  %.not.i = icmp ult i64 %i.aa, %i.ab
  %.pre = load ptr, ptr %1, align 8, !tbaa !7     ; 6 uses
  br i1 %.not.i, label %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ad = icmp eq ptr %.pre, null                 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, null                 ; 2 uses
  %brmerge.i.i = or i1 %i.ad, %i.ae
  br i1 %brmerge.i.i, label %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aa
  %i.ag = sub i64 0, %i.ab
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = call noundef i32 @strcasecmp(ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.ac) #55
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread

_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.d
  %.mux.i.i = and i1 %i.ad, %i.ae
  br i1 %.mux.i.i, label %bb.f, label %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread

bb.f:                                             ; preds = %bb.e, %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ak = sub i64 %i.aa, %i.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !14, !alias.scope !1598
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53, !noalias !1598
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !15, !noalias !1598
  %i.am = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.am, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.f
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc15 unwind label %bb.o   ; 2 uses

.noexc15:                                         ; preds = %.noexc10.i.i
  store ptr %i.an, ptr %5, align 8, !tbaa !7, !alias.scope !1598
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !1598
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !13, !alias.scope !1598
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc15 ], [ %i.al, %bb.f ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %.pre, align 1, !tbaa !13
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !13
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.pre, i64 %spec.select.i.i.i, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !1598 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !16, !alias.scope !1598
  %i.at = load ptr, ptr %5, align 8, !tbaa !7, !alias.scope !1598
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #53, !noalias !1598
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !14
  %i.aw = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !15
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i, label %._crit_edge.i.i.i16

.noexc.i.i:                                       ; preds = %bb.i
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc17 unwind label %bb.p   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i.i
  store ptr %i.az, ptr %0, align 8, !tbaa !7
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !13
  br label %._crit_edge.i.i.i16

._crit_edge.i.i.i16:                              ; preds = %.noexc17, %bb.i
  %i.bb = phi ptr [ %i.az, %.noexc17 ], [ %i.av, %bb.i ] ; 2 uses
  switch i64 %i.ax, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i16
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !13
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i16
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !16
  %i.bf = load ptr, ptr %0, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.av
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !13
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #54
  br label %.body

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.al
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !13
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.m
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !13
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.n:                                             ; preds = %.noexc.i.i29
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %.noexc10.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.p:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.p ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bh, %bb.l ] ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.al
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.ca = load i64, ptr %i.al, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.t

_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !15
  %i.cd = icmp ugt i64 %i.aa, 15
  br i1 %i.cd, label %.noexc.i.i29, label %._crit_edge.i.i.i27

.noexc.i.i29:                                     ; preds = %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc30 unwind label %bb.n   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i.i29
  store ptr %i.ce, ptr %0, align 8, !tbaa !7
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !13
  br label %._crit_edge.i.i.i27

._crit_edge.i.i.i27:                              ; preds = %.noexc30, %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread
  %i.cg = phi ptr [ %i.ce, %.noexc30 ], [ %i.cc, %_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread ] ; 2 uses
  switch i64 %i.aa, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN7testing8internal8FilePathC2ERKS1_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i27
  %i.ch = load i8, ptr %.pre, align 1, !tbaa !13
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !13
  br label %_ZN7testing8internal8FilePathC2ERKS1_.exit

bb.r:                                             ; preds = %._crit_edge.i.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %.pre, i64 %i.aa, i1 false)
  br label %_ZN7testing8internal8FilePathC2ERKS1_.exit

_ZN7testing8internal8FilePathC2ERKS1_.exit:       ; preds = %._crit_edge.i.i.i27, %bb.q, %bb.r
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !16
  %i.ck = load ptr, ptr %0, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal8FilePathC2ERKS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.cm = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.j
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.s
  %i.co = load i64, ptr %i.j, align 8, !tbaa !13
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.n
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.bv, %bb.n ] ; 2 uses
  %i.cq = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.j
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.t
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !13
end_hunk_0
