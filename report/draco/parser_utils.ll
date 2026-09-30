Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/parser_utils?download=true
inline.NumInlined: 99
inline.NumDeleted: 46
begin_hunk_0_@_ZN5draco6parser9ParseLineEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.thread60

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %.not4546 = icmp slt i64 %i.c, %i.e
  br i1 %.not4546, label %.critedge, label %.lr.ph.split.us

.thread60:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !26
  %i.g = load ptr, ptr %1, align 8, !tbaa !27
  store i8 0, ptr %i.g, align 1, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %.not454661 = icmp slt i64 %i.j, %i.l
  br i1 %.not454661, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread60
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.split.us
  %i.p = phi i64 [ %i.e, %.lr.ph.split.us ], [ %i.x, %bb.g ] ; 3 uses
  %i.q = phi i64 [ %i.d, %.lr.ph.split.us ], [ %i.p, %bb.g ]
  %.02148.us = phi i8 [ undef, %.lr.ph.split.us ], [ %.243.us, %bb.g ] ; 4 uses
  %.02247.us = phi i32 [ 0, %.lr.ph.split.us ], [ %.12341.us, %bb.g ] ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1               ; 4 uses
  switch i8 %i.s, label %bb.f [
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  switch i32 %.02247.us, label %.critedge [
    i32 0, label %.thread.us
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne i8 %i.s, 10
  %i.u = icmp eq i8 %.02148.us, 10
  %or.cond.us = or i1 %i.u, %i.t
  br i1 %or.cond.us, label %.critedge, label %.thread.us

.thread.us:                                       ; preds = %bb.e, %bb.d
  %.1.us = phi i8 [ %.02148.us, %bb.e ], [ %i.s, %bb.d ]
  %i.v = add nuw nsw i32 %.02247.us, 1
  br label %switch.early.test.us

bb.f:                                             ; preds = %bb.c
  %i.w = icmp sgt i32 %.02247.us, 0
  br i1 %i.w, label %switch.early.test.us, label %bb.g

switch.early.test.us:                             ; preds = %bb.f, %.thread.us
  %.244.us = phi i8 [ %.1.us, %.thread.us ], [ %.02148.us, %bb.f ] ; 2 uses
  %.12342.us = phi i32 [ %i.v, %.thread.us ], [ %.02247.us, %bb.f ] ; 2 uses
  switch i8 %i.s, label %.critedge [
    i8 13, label %bb.g
    i8 10, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.us, %switch.early.test.us, %bb.f
  %.243.us = phi i8 [ %.244.us, %switch.early.test.us ], [ %.244.us, %switch.early.test.us ], [ %.02148.us, %bb.f ]
  %.12341.us = phi i32 [ %.12342.us, %switch.early.test.us ], [ %.12342.us, %switch.early.test.us ], [ %.02247.us, %bb.f ]
  store i64 %i.p, ptr %i.b, align 8, !tbaa !20
  %i.x = add i64 %i.p, 1                          ; 2 uses
  %.not45.us = icmp slt i64 %i.c, %i.x
  br i1 %.not45.us, label %.critedge, label %bb.c, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.m
  %i.y = phi i64 [ %i.av, %bb.m ], [ %i.j, %.lr.ph.split.preheader ] ; 2 uses
  %i.z = phi i64 [ %i.aw, %bb.m ], [ %i.l, %.lr.ph.split.preheader ] ; 3 uses
  %i.aa = phi i64 [ %i.au, %bb.m ], [ %i.k, %.lr.ph.split.preheader ]
  %.02148 = phi i8 [ %.243, %bb.m ], [ undef, %.lr.ph.split.preheader ] ; 4 uses
  %.02247 = phi i32 [ %.12341, %bb.m ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !21
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1             ; 6 uses
  switch i8 %i.ad, label %bb.j [
    i8 13, label %bb.h
    i8 10, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.split, %.lr.ph.split
  switch i32 %.02247, label %.critedge [
    i32 0, label %.thread
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ne i8 %i.ad, 10
  %i.af = icmp eq i8 %.02148, 10
  %or.cond = or i1 %i.af, %i.ae
  br i1 %or.cond, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h
  %.1 = phi i8 [ %.02148, %bb.i ], [ %i.ad, %bb.h ]
  %i.ag = add nuw nsw i32 %.02247, 1
  br label %switch.early.test

bb.j:                                             ; preds = %.lr.ph.split
  %i.ah = icmp sgt i32 %.02247, 0
  br i1 %i.ah, label %switch.early.test, label %switch.early.test30

switch.early.test:                                ; preds = %.thread, %bb.j
  %.244 = phi i8 [ %.1, %.thread ], [ %.02148, %bb.j ] ; 2 uses
  %.12342 = phi i32 [ %i.ag, %.thread ], [ %.02247, %bb.j ] ; 2 uses
  switch i8 %i.ad, label %.critedge [
    i8 13, label %switch.early.test30
    i8 10, label %switch.early.test30
  ]

switch.early.test30:                              ; preds = %switch.early.test, %switch.early.test, %bb.j
  %.243 = phi i8 [ %.244, %switch.early.test ], [ %.244, %switch.early.test ], [ %.02148, %bb.j ]
  %.12341 = phi i32 [ %.12342, %switch.early.test ], [ %.12342, %switch.early.test ], [ %.02247, %bb.j ]
  store i64 %i.z, ptr %i.i, align 8, !tbaa !20
  switch i8 %i.ad, label %bb.k [
    i8 13, label %bb.m
    i8 10, label %bb.m
  ]

bb.k:                                             ; preds = %switch.early.test30
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !26  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.n
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.k
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.an = load i64, ptr %i.n, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.l
  %i.aq = phi ptr [ %.pre.i, %bb.l ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ad, ptr %i.ar, align 1, !tbaa !23
  store i64 %i.aj, ptr %i.m, align 8, !tbaa !26
  %i.as = load ptr, ptr %1, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !23
  %.pre = load i64, ptr %i.h, align 8, !tbaa !19
  %.pre52 = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %switch.early.test30, %switch.early.test30
  %i.au = phi i64 [ %.pre52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.z, %switch.early.test30 ], [ %i.z, %switch.early.test30 ] ; 2 uses
  %i.av = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.y, %switch.early.test30 ], [ %i.y, %switch.early.test30 ] ; 2 uses
  %i.aw = add i64 %i.au, 1                        ; 2 uses
  %.not45 = icmp slt i64 %i.av, %i.aw
  br i1 %.not45, label %.critedge, label %.lr.ph.split, !llvm.loop !1

.critedge:                                        ; preds = %bb.i, %switch.early.test, %bb.h, %bb.m, %bb.e, %switch.early.test.us, %bb.d, %bb.g, %.thread60, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5draco6parser10ParseFloatEPNS_13DecoderBufferEPf(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 4 uses
  %.not83 = icmp slt i64 %i.b, %i.e
  br i1 %.not83, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !21     ; 8 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %switch.selectcmp.i = icmp ne i8 %i.h, 43
  %switch.selectcmp4.i = icmp eq i8 %i.h, 45      ; 2 uses
  %.not = xor i1 %switch.selectcmp4.i, %switch.selectcmp.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.e, ptr %i.c, align 8, !tbaa !20
  %.pre118 = add i64 %i.d, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %.pre118, %bb.c ] ; 7 uses
  %.promoted = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %.045 = phi i1 [ false, %bb.b ], [ %switch.selectcmp4.i, %bb.c ]
  %.not8592 = icmp slt i64 %i.b, %.pre-phi
  br i1 %.not8592, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %.promoted
  %i.j = load i8, ptr %i.i, align 1               ; 4 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.e, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread

bb.e:                                             ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph
  %i.m = zext nneg i8 %i.j to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = uitofp nneg i32 %i.n to double           ; 2 uses
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !20
  %i.p = add i64 %.pre-phi, 1                     ; 2 uses
  %.not85.peel = icmp slt i64 %i.b, %i.p
  br i1 %.not85.peel, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48:     ; preds = %bb.e, %bb.f
  %i.q = phi i64 [ %i.ab, %bb.f ], [ %i.p, %bb.e ] ; 5 uses
  %.03894 = phi double [ %i.aa, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.r = phi i64 [ %i.q, %bb.f ], [ %.pre-phi, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1               ; 4 uses
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.f, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread

bb.f:                                             ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48
  %i.w = zext nneg i8 %i.t to i32
  %i.x = fmul double %.03894, 1.000000e+01
  %i.y = add nsw i32 %i.w, -48
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = fadd double %i.x, %i.z                  ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !20
  %i.ab = add i64 %i.q, 1                         ; 2 uses
  %.not85 = icmp slt i64 %i.b, %i.ab
  br i1 %.not85, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48, !llvm.loop !34

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread: ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph, %bb.d
  %i.ac = phi i64 [ %.promoted, %bb.d ], [ %.promoted, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph ], [ %i.r, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48 ]
  %.042.lcssa = phi i1 [ false, %bb.d ], [ false, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph ], [ true, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48 ] ; 2 uses
  %.038.lcssa = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph ], [ %.03894, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48 ] ; 3 uses
  %.lcssa91 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre-phi, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph ], [ %i.q, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48 ] ; 5 uses
  %.46671 = phi i8 [ %i.h, %bb.d ], [ %i.j, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.lr.ph ], [ %i.t, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48 ] ; 2 uses
  %i.ad = icmp eq i8 %.46671, 46
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread
  store i64 %.lcssa91, ptr %i.c, align 8, !tbaa !20
  %i.ae = add i64 %.lcssa91, 1                    ; 4 uses
  %.not86102 = icmp slt i64 %i.b, %i.ae
  br i1 %.not86102, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph: ; preds = %.preheader
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %.lcssa91
  %i.ag = load i8, ptr %i.af, align 1             ; 4 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph
  %i.aj = zext nneg i8 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double 1.000000e-01, double %.038.lcssa) ; 2 uses
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !20
  %i.an = add i64 %.lcssa91, 2                    ; 2 uses
  %.not86.peel = icmp slt i64 %i.b, %i.an
  br i1 %.not86.peel, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread: ; preds = %.preheader
  br i1 %.042.lcssa, label %.thread146, label %bb.i

_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49:     ; preds = %bb.g, %bb.h
  %i.ao = phi i64 [ %i.ay, %bb.h ], [ %i.an, %bb.g ] ; 4 uses
  %.037106 = phi double [ %i.au, %bb.h ], [ 1.000000e-01, %bb.g ]
  %.139105 = phi double [ %i.ax, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %storemerge103 = phi i64 [ %i.ao, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.f, i64 %storemerge103
  %i.aq = load i8, ptr %i.ap, align 1             ; 4 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread

bb.h:                                             ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49
  %i.at = zext nneg i8 %i.aq to i32
  %i.au = fmul double %.037106, 1.000000e-01      ; 2 uses
  %i.av = add nsw i32 %i.at, -48
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.au, double %.139105) ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !20
  %i.ay = add i64 %i.ao, 1                        ; 2 uses
  %.not86 = icmp slt i64 %i.b, %i.ay
  br i1 %.not86, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49, !llvm.loop !35

.loopexit:                                        ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread
  %i.az = phi i64 [ %i.ac, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread ], [ %.lcssa91, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph ]
  %.2 = phi i8 [ %.46671, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit48.thread ], [ %i.ag, %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.lr.ph ]
  br i1 %.042.lcssa, label %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5draco13DecoderBuffer4PeekIcEEbPT_.exit49.thread, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !26
  store i8 0, ptr %i.ba, align 8, !tbaa !23
  %i.bc = invoke noundef zeroext i1 @_ZN5draco6parser11ParseStringEPNS_13DecoderBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %0, ptr noundef nonnull %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.l, label %.critedge

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread77, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ba
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.bd

bb.l:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !26
  %cond = icmp eq i64 %i.bi, 3
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread77

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.bj = load ptr, ptr %2, align 8, !tbaa !27    ; 9 uses
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = xor i16 %i.bk, 28265
  %i.bm = getelementptr i8, ptr %i.bj, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i16
  %i.bp = xor i16 %i.bo, 102
  %i.bq = or i16 %i.bl, %i.bp
  %i.br = icmp ne i16 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bu = load i16, ptr %i.bj, align 1
  %i.bv = xor i16 %i.bu, 28233
  %i.bw = getelementptr i8, ptr %i.bj, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = xor i16 %i.by, 102
  %i.ca = or i16 %i.bv, %i.bz
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
  %i.ce = load i16, ptr %i.bj, align 1
  %i.cf = xor i16 %i.ce, 24942
  %i.cg = getelementptr i8, ptr %i.bj, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i16
  %i.cj = xor i16 %i.ci, 110
  %i.ck = or i16 %i.cf, %i.cj
  %i.cl = icmp ne i16 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread77

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread77: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  %i.co = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread77
  br i1 %i.co, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, label %.critedge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  %i.cp = phi ptr [ %i.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53 ], [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51 ], [ %i.bj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %.4 = phi double [ +qnan, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53 ], [ +qnan, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ +inf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51 ], [ +inf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.cq = icmp eq ptr %i.cp, %i.ba
end_hunk_0
