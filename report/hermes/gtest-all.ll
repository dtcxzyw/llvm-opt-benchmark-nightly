inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing7MessagelsEPw:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.h, ptr %i.k, align 8, !tbaa !28
  %i.l = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.f, i64 noundef %i.e)
          to label %bb.c unwind label %.body      ; 0 uses

.body:                                            ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.n = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.c:                                             ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.q = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !13
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret ptr %0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.body
  %i.v = load i64, ptr %i.o, align 8, !tbaa !13
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.w) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !266    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !270  ; 5 uses
  %.not28.i = icmp eq i64 %i.c, 0
  br i1 %.not28.i, label %_ZN7testing8internalL24StreamWideCharsToMessageEPKwmPNS_7MessageE.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph30.i
  %.029.i = phi i64 [ 0, %.lr.ph30.i ], [ %.2.i, %.critedge.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.029.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !271
  %.not18.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.n = sub i64 %i.c, %.029.i
  %i.o = trunc i64 %i.n to i32
  call void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull readonly %i.l, i32 noundef %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  store i32 1, ptr %i.d, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !26
  store ptr %i.q, ptr %i.f, align 8, !tbaa !28
  %i.r = load ptr, ptr %4, align 8, !tbaa !7
  %i.s = load i64, ptr %i.g, align 8, !tbaa !16
  %i.t = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %i.r, i64 noundef %i.s)
          to label %bb.d unwind label %.body.i    ; 0 uses

.body.i:                                          ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.v = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.x = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.h, align 8, !tbaa !13
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %.not1924.i = icmp eq i64 %.029.i, %i.c
  br i1 %.not1924.i, label %_ZN7testing8internalL24StreamWideCharsToMessageEPKwmPNS_7MessageE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.e
  %.125.i = phi i64 [ %i.ad, %bb.e ], [ %.029.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.125.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !271
  %.not20.i = icmp eq i32 %i.ac, 0
  br i1 %.not20.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = add i64 %.125.i, 1                      ; 2 uses
  %.not19.i = icmp eq i64 %i.ad, %i.c
  br i1 %.not19.i, label %_ZN7testing8internalL24StreamWideCharsToMessageEPKwmPNS_7MessageE.exit, label %.lr.ph.i, !llvm.loop !273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %.body.i
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !13
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.af) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

common.resume.i:                                  ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %common.resume.i

bb.f:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  store i32 1, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !28
  %i.ai = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 0)
          to label %_ZN7testing7MessagelsIcEERS0_RKT_.exit.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume.i

_ZN7testing7MessagelsIcEERS0_RKT_.exit.i:         ; preds = %bb.f
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.ak = add i64 %.029.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %_ZN7testing7MessagelsIcEERS0_RKT_.exit.i
  %.2.i = phi i64 [ %i.ak, %_ZN7testing7MessagelsIcEERS0_RKT_.exit.i ], [ %.125.i, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i64 %.2.i, %i.c
  br i1 %.not.i, label %_ZN7testing8internalL24StreamWideCharsToMessageEPKwmPNS_7MessageE.exit, label %bb.b, !llvm.loop !274

_ZN7testing8internalL24StreamWideCharsToMessageEPKwmPNS_7MessageE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.critedge.i, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  tail call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !14, !alias.scope !281
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16, !alias.scope !281
  store i8 0, ptr %i.a, align 8, !tbaa !13, !alias.scope !281
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %3 = load ptr, ptr %i.c, align 8, !tbaa !282, !noalias !281 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %3, null
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %4, align 8, !noalias !281 ; 2 uses
  %5 = icmp ugt ptr %3, %i.d
  %.08.i.i.i = select i1 %5, ptr %3, ptr %i.d     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !284, !noalias !281 ; 2 uses
  %i.g = ptrtoint ptr %.08.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.i)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !7, !alias.scope !281 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13, !alias.scope !281
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #56
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.u, align 8, !tbaa !16
  store i8 0, ptr %i.t, align 8, !tbaa !13
  %i.v = shl nsw i64 %i.r, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.not25 = icmp samesign eq i64 %i.r, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.026 = phi ptr [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.q, %.preheader ] ; 2 uses
  %i.x = load i8, ptr %.026, align 1, !tbaa !13   ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  %i.z = load i64, ptr %i.u, align 8, !tbaa !16   ; 5 uses
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.aa = and i64 %i.z, -2
  %i.ab = icmp eq i64 %i.aa, 4611686018427387902
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.f
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.84, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.ad = add i64 %i.z, 1                         ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t                 ; 2 uses
  br i1 %i.af, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ah = load i64, ptr %i.t, align 8
  %i.ai = select i1 %i.af, i64 15, i64 %i.ah
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc18
  %i.ak = phi ptr [ %.pre.i.i, %.noexc18 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.z
  store i8 %i.x, ptr %i.al, align 1, !tbaa !13
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !16
  %i.am = load ptr, ptr %0, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !285

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  %i.ap = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !13
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.k
  %i.av = load i64, ptr %i.t, align 8, !tbaa !13
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ax = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.a
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.az = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing15AssertionResultC2ERKS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !183, !range !74, !noundef !75
  store i8 %i.b, ptr %0, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #59 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !7
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN7testing8internal13edit_distance17CreateUnifiedDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_m:bb.a

.noexc84:                                         ; preds = %.noexc83
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.341, i64 noundef 1)
          to label %.noexc85 unwind label %.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %i.dq = load i64, ptr %i.n, align 8, !tbaa !360
  %i.dr = load i64, ptr %i.m, align 8, !tbaa !356
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, i64 noundef %i.ds)
          to label %.noexc86 unwind label %.loopexit.split-lp ; 0 uses

.noexc86:                                         ; preds = %.noexc85
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !360
  %i.du = icmp eq i64 %.pre.i.i, 0
  %i.dv = load i64, ptr %i.f, align 8             ; 2 uses
  %.not7.i.i = icmp eq i64 %i.dv, 0
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %.not7.i.i
  br i1 %or.cond.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc86
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.191, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %bb.v
  %.pr.i.i = load i64, ptr %i.f, align 8, !tbaa !361
  br label %bb.w

bb.w:                                             ; preds = %.noexc87, %.noexc86, %.thread.i.i
  %i.dx = phi i64 [ %.pr.i.i, %.noexc87 ], [ %i.dv, %.noexc86 ], [ %i.dl, %.thread.i.i ]
  %.not8.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not8.i.i, label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.342, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit.split-lp ; 0 uses

.noexc88:                                         ; preds = %bb.x
  %i.dz = load i64, ptr %i.e, align 8, !tbaa !352
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.dz)
          to label %.noexc89 unwind label %.loopexit.split-lp ; 2 uses

.noexc89:                                         ; preds = %.noexc88
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.341, i64 noundef 1)
          to label %.noexc90 unwind label %.loopexit.split-lp ; 0 uses

.noexc90:                                         ; preds = %.noexc89
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !361
  %i.ed = load i64, ptr %i.m, align 8, !tbaa !356
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i64 noundef %i.ee)
          to label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i unwind label %.loopexit.split-lp ; 0 uses

_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i: ; preds = %.noexc90, %bb.w
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.343, i64 noundef 4)
          to label %.noexc92 unwind label %.loopexit.split-lp ; 0 uses

.noexc92:                                         ; preds = %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !354 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.k
  br i1 %i.ei, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80, label %bb.y

bb.y:                                             ; preds = %.noexc92
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #55
  %i.ej = load i64, ptr %.sink21.i.sroa.gep110.a, align 8, !tbaa !357
  %i.ek = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.el = add i64 %i.ek, %i.ej
  store i64 %i.el, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep110.a, align 8, !tbaa !357
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80: ; preds = %bb.y, %.noexc92
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.i
  br i1 %i.en, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #55
  %i.eo = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  %i.ep = load i64, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  %i.eq = add i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %.sink21.i.sroa.gep111, align 8, !tbaa !357
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !357
  br label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i: ; preds = %bb.z, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i80
  %.sroa.07.011.i = load ptr, ptr %i.g, align 8, !tbaa !354 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.07.011.i, %i.g
  br i1 %.not12.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.noexc97
  %.sroa.07.013.i = phi ptr [ %.sroa.07.0.i, %.noexc97 ], [ %.sroa.07.011.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 16
  %i.es = load i8, ptr %i.er, align 8, !tbaa !363 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.es, ptr %i.a, align 1, !tbaa !13
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.eu = getelementptr i8, ptr %i.et, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %i.o, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !365
  %.not.i3.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext %i.es)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi ptr [ %i.ez, %bb.aa ], [ %i.o, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !366 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.fc, null
  br i1 %.not.i4.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.fd = load ptr, ptr %.0.i.i, align 8, !tbaa !26
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !367
  %i.fj = or i32 %i.fi, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fg, i32 noundef %i.fj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.fk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #55
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.fc, i64 noundef %i.fk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ad, %bb.ac
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit ; 0 uses

.noexc97:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.sroa.07.0.i = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !354 ; 2 uses
  %.not.i81 = icmp eq ptr %.sroa.07.0.i, %i.g
  br i1 %.not.i81, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i, !llvm.loop !368

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit: ; preds = %.noexc97, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.critedge4.thread
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.fn, %i.k
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i ], [ %i.fn, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit ] ; 2 uses
  %i.fo = load ptr, ptr %.09.i.i.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #56
  %.not.i.i.i = icmp eq ptr %i.fo, %i.k
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i1.i = icmp eq ptr %i.fp, %i.i
  br i1 %.not8.i.i1.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, %.lr.ph.i.i2.i
  %.09.i.i3.i = phi ptr [ %i.fq, %.lr.ph.i.i2.i ], [ %i.fp, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.fq = load ptr, ptr %.09.i.i3.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3.i, i64 noundef 32) #56
  %.not.i.i4.i = icmp eq ptr %i.fq, %i.i
  br i1 %.not.i.i4.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i: ; preds = %.lr.ph.i.i2.i, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !354 ; 2 uses
  %.not8.i.i6.i = icmp eq ptr %i.fr, %i.g
  br i1 %.not8.i.i6.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, label %.lr.ph.i.i7.i

.lr.ph.i.i7.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, %.lr.ph.i.i7.i
  %.09.i.i8.i = phi ptr [ %i.fs, %.lr.ph.i.i7.i ], [ %i.fr, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i ] ; 2 uses
  %i.fs = load ptr, ptr %.09.i.i8.i, align 8, !tbaa !354 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i8.i, i64 noundef 32) #56
  %.not.i.i9.i = icmp eq ptr %i.fs, %i.g
  br i1 %.not.i.i9.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, label %.lr.ph.i.i7.i, !llvm.loop !369

_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit: ; preds = %.lr.ph.i.i7.i, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br i1 %i.di, label %bb.b, label %bb.af

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.h
  %.pn64 = phi { ptr, i32 } [ %i.be, %bb.h ], [ %i.cp, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %.body

bb.af:                                            ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ft, ptr %0, align 8, !tbaa !14, !alias.scope !376
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fu, align 8, !tbaa !16, !alias.scope !376
  store i8 0, ptr %i.ft, align 8, !tbaa !13, !alias.scope !376
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !282, !noalias !376 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !376 ; 2 uses
  %9 = icmp ugt ptr %8, %i.fw
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.fw    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i98 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i98, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !284, !noalias !376 ; 2 uses
  %i.fz = ptrtoint ptr %.08.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.fy, i64 noundef %i.gb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !376 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ft
  br i1 %i.gf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ah
  %i.gg = load i64, ptr %i.ft, align 8, !tbaa !13, !alias.scope !376
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #56
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ai, %bb.ag
  %i.gj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gj, ptr %5, align 8, !tbaa !26
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gl = getelementptr i8, ptr %i.gj, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %5, i64 %i.gm
  store ptr %i.gk, ptr %i.gn, align 8, !tbaa !26
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.go, ptr %i.o, align 8, !tbaa !26
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gp, align 8, !tbaa !26
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !7  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !13
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gp, align 8, !tbaa !26
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #55
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gx, ptr %5, align 8, !tbaa !26
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gz = getelementptr i8, ptr %i.gx, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %5, i64 %i.ha
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.hc, align 8, !tbaa !377
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hd) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.he = load ptr, ptr %4, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i99.a = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i99.a, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !307
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #56
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret void

.body:                                            ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ae
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.ae ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gd, %bb.ah ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #55
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.d
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %.body ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.hk = load ptr, ptr %4, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !307
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #56
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit101: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  resume { ptr, i32 } %.pn64.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(112) dereferenceable(112) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #56
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i1, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit, %.lr.ph.i.i2
  %.09.i.i3 = phi ptr [ %i.f, %.lr.ph.i.i2 ], [ %i.e, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i3, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3, i64 noundef 32) #56
  %.not.i.i4 = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i4, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, label %.lr.ph.i.i2, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5: ; preds = %.lr.ph.i.i2, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354  ; 2 uses
  %.not8.i.i6 = icmp eq ptr %i.h, %i.g
  br i1 %.not8.i.i6, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5, %.lr.ph.i.i7
  %.09.i.i8 = phi ptr [ %i.i, %.lr.ph.i.i7 ], [ %i.h, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5 ] ; 2 uses
  %i.i = load ptr, ptr %.09.i.i8, align 8, !tbaa !354 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i8, i64 noundef 32) #56
  %.not.i.i9 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i9, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10, label %.lr.ph.i.i7, !llvm.loop !369

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit10: ; preds = %.lr.ph.i.i7, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.testing::Message", align 8 ; 18 uses
  %18 = alloca %"class.std::vector.33", align 8   ; 11 uses
  %19 = alloca %"class.std::vector.33", align 8   ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %i.a = load ptr, ptr %17, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #55
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %16, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !28
  %i.f = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull @.str.52, i64 noundef 16)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #55
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #55
end_hunk_1
begin_hunk_2_@_ZN7testing8internal11CmpHelperGTEPKcS2_xx:bb.a
bb.z:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.ab:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIxxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.ad:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIxxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit10, %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %_ZN7testing7MessageD2Ev.exit4.i14, %bb.ad
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bt, %bb.ad ], [ %eh.lpad-body.i12, %_ZN7testing7MessageD2Ev.exit4.i14 ] ; 2 uses
  %i.bu = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.body17
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %.body17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.ac ], [ %eh.lpad-body18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %eh.lpad-body18, %.body17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  br label %.body

.body:                                            ; preds = %bb.ab, %_ZN7testing7MessageD2Ev.exit4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.br, %bb.ab ], [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit4.i ] ; 2 uses
  %i.bz = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !13
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.z
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bp, %bb.z ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.af:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !392
  store ptr %4, ptr %i.b, align 8, !tbaa !392
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.d
  br i1 %brmerge.i, label %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull readonly dereferenceable(1) %4) #57
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.c, %i.d
  br i1 %.mux.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit
  store i8 1, ptr %0, align 8, !tbaa !183, !alias.scope !452
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !189, !alias.scope !452
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  invoke void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.m = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !13
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.y = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !392
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal21UniversalTersePrinterIPKcE5PrintES3_PSo(ptr noundef %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14, !alias.scope !461
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !461
  store i8 0, ptr %i.c, align 8, !tbaa !13, !alias.scope !461
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !461 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !461 ; 2 uses
  %5 = icmp ugt ptr %4, %i.f
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.f     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284, !noalias !461 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !461 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.c, align 8, !tbaa !13, !alias.scope !461
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #56
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !26
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !26
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.x, ptr %i.b, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.y, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #55
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !26
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !377
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.am) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.f:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal18CmpHelperSTRCASEEQEPKcS2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !392
  store ptr %4, ptr %i.b, align 8, !tbaa !392
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.d
  br i1 %brmerge.i, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @strcasecmp(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4) #57
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.c, %i.d
  br i1 %.mux.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit
  store i8 1, ptr %0, align 8, !tbaa !183, !alias.scope !462
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !189, !alias.scope !462
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  invoke void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.m = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !13
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.y = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN7testing8internal15CodePointToUtf8B5cxx11Ej:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.as = load i64, ptr %i.e, align 8, !tbaa !13
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ap, %bb.h ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.az = icmp samesign ult i32 %1, 128
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !13
  %i.bb = trunc nuw nsw i32 %1 to i8
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp samesign ult i32 %1, 2048
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.bd, align 1, !tbaa !13
  %i.be = lshr i32 %1, 6
  %i.bf = trunc i32 %1 to i8
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !13
  %i.bj = trunc nuw nsw i32 %i.be to i8
  %i.bk = or disjoint i8 %i.bj, -64
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %1, 65536
  %i.bm = lshr i32 %1, 6
  %i.bn = trunc i32 %1 to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = or disjoint i8 %i.bo, -128              ; 2 uses
  %i.bq = lshr i32 %1, 12                         ; 2 uses
  %i.br = trunc i32 %i.bm to i8
  %i.bs = and i8 %i.br, 63
  %i.bt = or disjoint i8 %i.bs, -128              ; 2 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.bu, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !13
  %i.bx = trunc nuw nsw i32 %i.bq to i8
  %i.by = or disjoint i8 %i.bx, -32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 0, ptr %i.bz, align 1, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.bp, ptr %i.ca, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bt, ptr %i.cb, align 1, !tbaa !13
  %i.cc = lshr i32 %1, 18
  %i.cd = trunc i32 %i.bq to i8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.ce, -128
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !13
  %i.ch = trunc nuw nsw i32 %i.cc to i8
  %i.ci = or disjoint i8 %i.ch, -16
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n, %bb.j
  %.sink = phi i8 [ %i.bk, %bb.l ], [ %i.ci, %bb.o ], [ %i.by, %bb.n ], [ %i.bb, %bb.j ] ; 2 uses
  store i8 %.sink, ptr %i.b, align 1, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !14
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !15
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.p
  %i.cm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !7
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.p
  %i.co = phi ptr [ %i.cm, %.noexc.i ], [ %i.cj, %bb.p ] ; 2 uses
  switch i64 %i.ck, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  store i8 %.sink, ptr %i.co, align 1, !tbaa !13
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.b, i64 %i.ck, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !16
  %i.cr = load ptr, ptr %0, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !509
  %i.h = and i32 %i.g, -75
  %i.i = or disjoint i32 %i.h, 8
  store i32 %i.i, ptr %i.f, align 8, !tbaa !510
  %i.j = load i64, ptr %i.c, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !509
  %i.n = or i32 %i.m, 16384
  store i32 %i.n, ptr %i.l, align 8, !tbaa !510
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !14, !alias.scope !517
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !517
  store i8 0, ptr %i.p, align 8, !tbaa !13, !alias.scope !517
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !517 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !517 ; 2 uses
  %5 = icmp ugt ptr %4, %i.s
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.s     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !284, !noalias !517 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !517 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !13, !alias.scope !517
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #56
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !26
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #55
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !26
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !377
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #57
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.d = icmp sgt i32 %.029, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %.029 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !271  ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke void @_ZN7testing8internal15CodePointToUtf8B5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %4, align 8, !tbaa !7
  %i.k = load i64, ptr %i.f, align 8, !tbaa !16
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.j, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.m = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load i64, ptr %i.g, align 8, !tbaa !13
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #56
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !518

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.h
  %i.u = load i64, ptr %i.g, align 8, !tbaa !13
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.k

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.d, %bb.c
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !26
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !26
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #55
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !26
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !377
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.j:                                             ; preds = %.critedge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn34 = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN7testing8internal6String17WideCStringEqualsEPKwS3_(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #57
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.mux, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal14CmpHelperSTREQEPKcS2_PKwS4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !519
  store ptr %4, ptr %i.b, align 8, !tbaa !519
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.d
  br i1 %brmerge.i, label %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @wcscmp(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4) #57
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.c, %i.d
  br i1 %.mux.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  store i8 1, ptr %0, align 8, !tbaa !183, !alias.scope !520
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !189, !alias.scope !520
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  invoke void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.m = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !13
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.y = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !519
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14, !alias.scope !529
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !529
  store i8 0, ptr %i.c, align 8, !tbaa !13, !alias.scope !529
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !529 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !529 ; 2 uses
  %5 = icmp ugt ptr %4, %i.f
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.f     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284, !noalias !529 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !529 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.c, align 8, !tbaa !13, !alias.scope !529
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #56
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !26
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !26
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.x, ptr %i.b, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.y, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #55
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !26
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !377
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.am) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.f:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal14CmpHelperSTRNEEPKcS2_PKwS4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !392
  store ptr %2, ptr %i.b, align 8, !tbaa !392
  store ptr %3, ptr %i.c, align 8, !tbaa !519
  store ptr %4, ptr %i.d, align 8, !tbaa !519
  %i.e = icmp eq ptr %3, null                     ; 2 uses
  %i.f = icmp eq ptr %4, null                     ; 2 uses
  %brmerge.i = or i1 %i.e, %i.f
  br i1 %brmerge.i, label %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @wcscmp(ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4) #57
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit: ; preds = %bb.a
  %.mux.i = and i1 %i.e, %i.f
  br i1 %.mux.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  store i8 1, ptr %0, align 8, !tbaa !183, !alias.scope !530
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !189, !alias.scope !530
  br label %bb.ai

bb.d:                                             ; preds = %bb.b, %_ZN7testing8internal6String17WideCStringEqualsEPKwS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  store i8 0, ptr %9, align 8, !tbaa !183, !alias.scope !533
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !189, !alias.scope !533
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(12) @.str.70)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(7) @.str.71)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(12) @.str.72)
          to label %bb.i unwind label %bb.ac      ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  invoke void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.ad

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.j
  %i.p = load ptr, ptr %8, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !28
  %i.u = load ptr, ptr %10, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %i.u, i64 noundef %i.w)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %.body.i

bb.l:                                             ; preds = %.noexc
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %8, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #55, !inline_history !195
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
end_hunk_3
begin_hunk_4_@_ZN7testing8internal14CmpHelperSTRNEEPKcS2_PKwS4_:bb.a
bb.ac:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.ae:                                            ; preds = %bb.j, %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.ag:                                            ; preds = %bb.s, %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %_ZN7testing7MessageD2Ev.exit4.i12, %bb.ag
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bw, %bb.ag ], [ %eh.lpad-body.i10, %_ZN7testing7MessageD2Ev.exit4.i12 ] ; 2 uses
  %i.bx = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.body15
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !13
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %.body15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.af
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.af ], [ %eh.lpad-body16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %eh.lpad-body16, %.body15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  br label %.body

.body:                                            ; preds = %bb.ae, %_ZN7testing7MessageD2Ev.exit4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.bu, %bb.ae ], [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit4.i ] ; 2 uses
  %i.cc = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !13
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.ad
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.ad ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.bs, %bb.ac ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ai:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7testing8internal6String32CaseInsensitiveWideCStringEqualsEPKwS3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %i.b
  %.mux = and i1 %i.a, %i.b
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcscasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #55
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.mux, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @wcscasecmp(ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN7testing8internal6String23EndsWithCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  %i.h = icmp eq ptr %i.f, null                   ; 2 uses
  %brmerge.i = or i1 %i.g, %i.h
  %.mux.i = and i1 %i.g, %i.h
  br i1 %brmerge.i, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %i.j = sub i64 0, %i.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = tail call noundef i32 @strcasecmp(ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.f) #57
  %i.m = icmp eq i32 %i.l, 0
  br label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit

_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %.mux.i, %bb.b ], [ %i.m, %bb.c ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String15FormatIntWidth2B5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 225 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !536, !range !74, !noundef !75
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !542  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !543
  %.not.i1.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 32)
          to label %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %bb.j, !inline_history !548 ; 0 uses

.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc3
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.b, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.f, align 1, !tbaa !536
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.q = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store i8 48, ptr %i.r, align 8, !tbaa !549
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 2, ptr %i.v, align 8, !tbaa !365
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !14, !alias.scope !556
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !16, !alias.scope !556
  store i8 0, ptr %i.x, align 8, !tbaa !13, !alias.scope !556
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !556 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !556 ; 2 uses
  %5 = icmp ugt ptr %4, %i.aa
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.aa    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !284, !noalias !556 ; 2 uses
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !556 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !13, !alias.scope !556
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #56
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.an = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !26
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !26
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.as, ptr %i.a, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !13
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.at, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #55
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !26
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !377
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.j:                                             ; preds = %.noexc3, %bb.d, %bb.c, %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal6String10FormatByteB5cxx11Eh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 225 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !536, !range !74, !noundef !75
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !542  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !543
  %.not.i1.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 32)
          to label %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %bb.i, !inline_history !548 ; 0 uses

.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc3
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc3._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.b, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.f, align 1, !tbaa !536
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.q = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store i8 48, ptr %i.r, align 8, !tbaa !549
  %i.s = getelementptr i8, ptr %i.q, i64 -24      ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 2, ptr %i.v, align 8, !tbaa !365
  %i.w = load i64, ptr %i.s, align 8
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !509
  %i.aa = and i32 %i.z, -75
  %i.ab = or disjoint i32 %i.aa, 8
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !510
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !509
  %i.ag = or i32 %i.af, 16384
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !510
  %i.ah = zext i8 %1 to i64
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.ah)
          to label %_ZNSolsEj.exit unwind label %bb.i ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !14, !alias.scope !563
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !16, !alias.scope !563
  store i8 0, ptr %i.aj, align 8, !tbaa !13, !alias.scope !563
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !563 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !563 ; 2 uses
  %5 = icmp ugt ptr %4, %i.am
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.am    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSolsEj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !284, !noalias !563 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !563 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !13, !alias.scope !563
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #56
  br label %.body

bb.h:                                             ; preds = %_ZNSolsEj.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.az = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !26
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !26
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.be, ptr %i.a, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #55
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !26
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !377
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bt) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.i:                                             ; preds = %bb.e, %.noexc3, %bb.d, %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.at, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define void @_ZN7testing10TestResultC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null) #55 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN7testing8internal5MutexC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1992)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.344, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.a)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %_ZN7testing8internal5MutexC2Ev.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  resume { ptr, i32 } %i.e

_ZN7testing8internal5MutexC2Ev.exit:              ; preds = %bb.a, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.h, align 8, !tbaa !564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.g, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing10TestResultD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !566  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #56
  br label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !567

_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !565
  br label %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !568
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #56
  br label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EED2Ev.exit

_ZNSt6vectorIN7testing12TestPropertyESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #55
  %i.x = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %0) #55 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN7testing8internal5MutexD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1996)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.345, i64 noundef 30)
end_hunk_4
begin_hunk_5_@_ZN7testing8internal24XmlUnitTestResultPrinter9EscapeXmlERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #55, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  ret void

bb.ak:                                            ; preds = %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.f, %bb.k, %bb.y, %bb.ah, %bb.q, %bb.h, %bb.d, %bb.m, %bb.s, %bb.ak
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.ak ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.m ], [ %i.co, %bb.ah ], [ %i.as, %bb.d ], [ %i.aw, %bb.f ], [ %i.ba, %bb.h ], [ %i.be, %bb.k ], [ %i.bk, %bb.q ], [ %i.br, %bb.y ], [ %i.bm, %bb.s ]
  %i.cx = load ptr, ptr %14, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i49, label %_ZN7testing7MessageD2Ev.exit50, label %bb.al

bb.al:                                            ; preds = %.body
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #55, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %.body, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsIA4_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(4) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !28
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #57 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA4_cEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %1, i64 noundef %i.f)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA4_cEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.h

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA4_cEE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal24XmlUnitTestResultPrinter26RemoveInvalidXmlCharactersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not11 = icmp samesign eq i64 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.h = phi i64 [ %i.y, %bb.h ], [ %i.e, %.lr.ph.preheader ]
  %i.i = phi ptr [ %i.z, %bb.h ], [ %i.f, %.lr.ph.preheader ]
  %.sroa.07.012 = phi ptr [ %i.aa, %bb.h ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.j = load i8, ptr %.sroa.07.012, align 1, !tbaa !13
  %.fr = freeze i8 %i.j                           ; 3 uses
  %i.k = icmp sgt i8 %.fr, 31
  br i1 %i.k, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr, label %bb.h [
    i8 13, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph
  %i.l = load i64, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a                   ; 2 uses
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.e, %bb.d
  %i.q = load i64, ptr %i.a, align 8
  %i.r = select i1 %i.o, i64 15, i64 %i.q
  %i.s = icmp ugt i64 %i.m, %i.r
  br i1 %i.s, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.t = phi ptr [ %.pre.i, %.noexc ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 %.fr, ptr %i.u, align 1, !tbaa !13
  store i64 %i.m, ptr %i.b, align 8, !tbaa !16
  %i.v = load ptr, ptr %0, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !13
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  %.pre13 = load i64, ptr %i.c, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %switch.early.test, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.y = phi i64 [ %i.h, %switch.early.test ], [ %.pre13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %i.z = phi ptr [ %i.i, %switch.early.test ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !795

bb.i:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.g, %bb.c ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !13
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27FormatTimeInMillisAsSecondsB5cxx11Ex(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = sitofp i64 %1 to double
  %i.c = fmul nnan double %i.b, 1.000000e-03
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.c)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14, !alias.scope !802
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !16, !alias.scope !802
  store i8 0, ptr %i.e, align 8, !tbaa !13, !alias.scope !802
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !282, !noalias !802 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !802 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !284, !noalias !802 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !802 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !13, !alias.scope !802
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #56
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !26
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !26
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #55
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !26
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !377
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal32FormatEpochTimeInMillisAsIso8601B5cxx11Ex(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.tm, align 8                 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.b = sdiv i64 %1, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8, !tbaa !15
  %i.c = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #55
  %.not = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !13
  br label %bb.bt

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !803
  %i.h = add nsw i32 %i.g, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55, !noalias !805
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !805
  %i.i = load ptr, ptr %3, align 8, !tbaa !20, !noalias !805
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55, !noalias !805
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.k, align 8, !tbaa !23, !noalias !805
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !805
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !805
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.j, ptr %i.m, align 8, !tbaa !28, !noalias !805
  %i.n = sext i32 %i.h to i64
  %i.o = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %2, i64 noundef %i.n)
          to label %bb.d unwind label %bb.c, !noalias !805 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55, !noalias !805
  br label %.body.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55, !noalias !805
  %i.q = load ptr, ptr %3, align 8, !tbaa !20, !noalias !808
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.q)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.f

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.d
  %i.r = load ptr, ptr %3, align 8, !tbaa !20, !noalias !805 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #55, !inline_history !654
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.p, %bb.c ]
  %i.w = load ptr, ptr %3, align 8, !tbaa !20, !noalias !805 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i, label %_ZN7testing7MessageD2Ev.exit3.i, label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #55, !inline_history !654
  br label %_ZN7testing7MessageD2Ev.exit3.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZN7testing7MessageD2Ev.exit3.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing7MessageD2Ev.exit3.i:                  ; preds = %bb.g, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55, !noalias !805
  br label %common.resume
end_hunk_5
begin_hunk_6_@_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_:bb.a
_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !326

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEmS6_ET_S8_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !305
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !310  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7testing8internal13edit_distance8EditTypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !1381

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7testing8internal13edit_distance8EditTypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN7testing8internal13edit_distance8EditTypeEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIN7testing8internal13edit_distance8EditTypeEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !305
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !310
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !307
  %i.m = load ptr, ptr %2, align 8, !tbaa !1912   ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1912
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !744

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.m, align 4, !tbaa !308
  store i32 %i.t, ptr %i.i, align 4, !tbaa !308
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !310
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1913

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN7testing8internal13edit_distance8EditTypeEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #55 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #58
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #61
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #56
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !325

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS6_EEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #27

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !28
  %i.e = load i64, ptr %1, align 8, !tbaa !418
  %i.f = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEx(ptr noundef nonnull align 8 dereferenceable(36) %2, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !14, !alias.scope !1920
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !16, !alias.scope !1920
  store i8 0, ptr %i.h, align 8, !tbaa !13, !alias.scope !1920
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !282, !noalias !1920 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1920 ; 2 uses
  %6 = icmp ugt ptr %5, %i.k
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.k     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284, !noalias !1920 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !1920 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.h, align 8, !tbaa !13, !alias.scope !1920
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #56
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !26
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #55
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !26
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !377
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA16_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !28
  %i.f = call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #57 ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #55, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret ptr %0

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.h, %bb.c ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3, label %_ZN7testing7MessageD2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %.body
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #55, !inline_history !30
  br label %_ZN7testing7MessageD2Ev.exit4

_ZN7testing7MessageD2Ev.exit4:                    ; preds = %.body, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsstr(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #21

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !181    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #58
  unreachable

_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 112                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.k

_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

end_hunk_6
