inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh16itanium_demangle13QualifiedName9printLeftER12OutputStream:bb.a
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit
  %i.s = phi i64 [ %i.l, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.t = phi ptr [ %.pre.i, %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit ], [ %i.q, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i16 14906, ptr %i.u, align 1
  %i.v = load i64, ptr %i.k, align 8, !tbaa !44
  %i.w = add i64 %i.v, 2
  store i64 %i.w, ptr %i.k, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !185  ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !50
  %.not.i4 = icmp eq i8 %i.ad, 1
  br i1 %.not.i4, label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5, label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStream4growEm.exit.i
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1) #19, !inline_history !49
  br label %_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5

_ZNK4llvh16itanium_demangle4Node5printER12OutputStream.exit5: ; preds = %_ZN12OutputStream4growEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4llvh16itanium_demangle13QualifiedName11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle13QualifiedNameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseOperatorNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #2 align 2 {
bb.a:
  %.val37 = load ptr, ptr %0, align 16, !tbaa !11 ; 68 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val38 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.b = ptrtoint ptr %.val38 to i64
  %i.c = ptrtoint ptr %.val37 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 15 uses
  %.not.i.not = icmp eq ptr %.val38, %.val37
  br i1 %.not.i.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit: ; preds = %bb.a
  %i.e = load i8, ptr %.val37, align 1, !tbaa !7
  switch i8 %i.e, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 97, label %bb.b
    i8 99, label %bb.i
    i8 100, label %bb.q
    i8 101, label %bb.w
    i8 103, label %bb.aa
    i8 105, label %bb.ah
    i8 108, label %bb.al
    i8 109, label %bb.as
    i8 110, label %bb.ay
    i8 111, label %bb.be
    i8 112, label %bb.bi
    i8 113, label %bb.bp
    i8 114, label %bb.bt
    i8 115, label %bb.by
    i8 118, label %bb.cc
  ]

bb.b:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i42 = icmp ugt i64 %i.d, 1
  br i1 %.not.i42, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val37, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  switch i8 %i.g, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 97, label %bb.c
    i8 100, label %bb.d
    i8 110, label %bb.d
    i8 78, label %bb.g
    i8 83, label %bb.h
  ]

bb.c:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44
  %i.h = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.h, ptr %0, align 16, !tbaa !11
  %i.i = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.145)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.d:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44
  %i.j = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.j, ptr %0, align 16, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !38  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = add i64 %i.n, -4048
  %i.p = icmp ult i64 %i.o, -4080
  br i1 %i.p, label %bb.e, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.l, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !57
  store ptr %i.q, ptr %i.k, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.d, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.t = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.q, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = add nsw i64 %i.t, 32
  store i64 %i.w, ptr %i.v, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.t ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store <4 x i8> <i8 7, i8 1, i8 1, i8 1>, ptr %i.z, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle8NameTypeE, i64 16), ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @.str.146, ptr %i.aa, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @.str.146, i64 9), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.g:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44
  %i.ab = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ab, ptr %0, align 16, !tbaa !11
  %i.ac = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.147)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.h:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44
  %i.ad = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ad, ptr %0, align 16, !tbaa !11
  %i.ae = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.148)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.i:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i45 = icmp ugt i64 %i.d, 1
  br i1 %.not.i45, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.val37, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7
  switch i8 %i.ag, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 108, label %bb.j
    i8 109, label %bb.k
    i8 111, label %bb.l
    i8 118, label %bb.m
  ]

bb.j:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47
  %i.ah = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ah, ptr %0, align 16, !tbaa !11
  %i.ai = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.149)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.k:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47
  %i.aj = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.aj, ptr %0, align 16, !tbaa !11
  %i.ak = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.150)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.l:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47
  %i.al = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.al, ptr %0, align 16, !tbaa !11
  %i.am = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.151)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.m:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47
  %i.an = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.an, ptr %0, align 16, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 16, !tbaa !150, !range !111, !noundef !112
  store i8 0, ptr %i.ao, align 16, !tbaa !150
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 737 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36, !range !111, !noundef !112 ; 2 uses
  %2 = trunc nuw i8 %i.ar to i1
  %i.as = icmp ne ptr %1, null                    ; 2 uses
  %3 = or i1 %i.as, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.aq, align 1, !tbaa !150
  %i.at = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN14SwapAndRestoreIbED2Ev.exit48, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %1, align 8, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES8_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr nonnull %i.at)
  br label %_ZN14SwapAndRestoreIbED2Ev.exit48

_ZN14SwapAndRestoreIbED2Ev.exit48:                ; preds = %bb.m, %bb.p
  %.0 = phi ptr [ %i.av, %bb.p ], [ null, %bb.m ]
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !150
  store i8 %i.ap, ptr %i.ao, align 16, !tbaa !150
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.q:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i49 = icmp ugt i64 %i.d, 1
  br i1 %.not.i49, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.val37, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7
  switch i8 %i.ax, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 97, label %bb.r
    i8 101, label %bb.s
    i8 108, label %bb.t
    i8 118, label %bb.u
    i8 86, label %bb.v
  ]

bb.r:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51
  %i.ay = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ay, ptr %0, align 16, !tbaa !11
  %i.az = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA18_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(18) @.str.152)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.s:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51
  %i.ba = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ba, ptr %0, align 16, !tbaa !11
  %i.bb = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.153)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.t:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51
  %i.bc = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bc, ptr %0, align 16, !tbaa !11
  %i.bd = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA16_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.u:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51
  %i.be = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.be, ptr %0, align 16, !tbaa !11
  %i.bf = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.155)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.v:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit51
  %i.bg = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bg, ptr %0, align 16, !tbaa !11
  %i.bh = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.156)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.w:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i52 = icmp ugt i64 %i.d, 1
  br i1 %.not.i52, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54: ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %.val37, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  switch i8 %i.bj, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 111, label %bb.x
    i8 79, label %bb.y
    i8 113, label %bb.z
  ]

bb.x:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54
  %i.bk = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bk, ptr %0, align 16, !tbaa !11
  %i.bl = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.157)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.y:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54
  %i.bm = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bm, ptr %0, align 16, !tbaa !11
  %i.bn = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.158)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.z:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54
  %i.bo = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bo, ptr %0, align 16, !tbaa !11
  %i.bp = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef nonnull align 1 dereferenceable(11) @.str.159)
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.aa:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i55 = icmp ugt i64 %i.d, 1
  br i1 %.not.i55, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit57, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit57: ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.val37, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  switch i8 %i.br, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 101, label %bb.ab
    i8 116, label %bb.ae
  ]

bb.ab:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit57
  %i.bs = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.bs, ptr %0, align 16, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !38 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !57 ; 2 uses
  %i.bx = add i64 %i.bw, -4048
  %i.by = icmp ult i64 %i.bx, -4080
  br i1 %i.by, label %bb.ac, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bz = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ad, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i59

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i59: ; preds = %bb.ac
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !57
  store ptr %i.bz, ptr %i.bt, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA11_KcEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.ab, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i59
  %i.cc = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i59 ], [ %i.bw, %bb.ab ] ; 2 uses
  %i.cd = phi ptr [ %i.bz, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i59 ], [ %i.bu, %bb.ab ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = add nsw i64 %i.cc, 32
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cc ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <4 x i8> <i8 7, i8 1, i8 1, i8 1>, ptr %i.ci, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle8NameTypeE, i64 16), ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr @.str.160, ptr %i.cj, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @.str.160, i64 10), ptr %.sroa.2.0..sroa_idx.i.i.i58, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.ae:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit57
  %i.ck = getelementptr inbounds nuw i8, ptr %.val37, i64 2
  store ptr %i.ck, ptr %0, align 16, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !38 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !57 ; 2 uses
  %i.cp = add i64 %i.co, -4048
  %i.cq = icmp ult i64 %i.cp, -4080
  br i1 %i.cq, label %bb.af, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit62

bb.af:                                            ; preds = %bb.ae
  %i.cr = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ag, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i61

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i61: ; preds = %bb.af
  store ptr %i.cm, ptr %i.cr, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !57
  store ptr %i.cr, ptr %i.cl, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit62

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA10_KcEEEPNS0_4NodeEDpOT0_.exit62: ; preds = %bb.ae, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i61
  %i.cu = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i61 ], [ %i.co, %bb.ae ] ; 2 uses
  %i.cv = phi ptr [ %i.cr, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i61 ], [ %i.cm, %bb.ae ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = add nsw i64 %i.cu, 32
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cu ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store <4 x i8> <i8 7, i8 1, i8 1, i8 1>, ptr %i.da, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle8NameTypeE, i64 16), ptr %i.cz, align 8, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr @.str.161, ptr %i.db, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i60 = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @.str.161, i64 9), ptr %.sroa.2.0..sroa_idx.i.i.i60, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread

bb.ah:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %.not.i63 = icmp ugt i64 %i.d, 1
  br i1 %.not.i63, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit65, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread
end_hunk_0
