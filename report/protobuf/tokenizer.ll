inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12ParseIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  switch i8 %i.e, label %bb.d [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.042 = phi i32 [ 16, %bb.c ], [ 10, %bb.a ], [ 8, %bb.b ] ; 3 uses
  %.041 = phi i64 [ 1152921504606846976, %bb.c ], [ 1844674407370955162, %bb.a ], [ 2305843009213693952, %bb.b ]
  %.032 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.036 = phi i64 [ 0, %bb.d ], [ %.137, %bb.f ]  ; 2 uses
  %.133 = phi ptr [ %.032, %bb.d ], [ %i.h, %bb.f ] ; 2 uses
  %i.g = load i8, ptr %.133, align 1, !tbaa !14   ; 3 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.133, i64 1 ; 3 uses
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %i.l = sext i8 %i.k to i32
  %.not48 = icmp sgt i32 %.042, %i.l              ; 2 uses
  %.not49 = icmp ne i8 %i.g, 48                   ; 2 uses
  %i.m = sext i8 %i.k to i64
  %spec.select53 = select i1 %.not49, i32 3, i32 0
  %i.n = and i1 %.not49, %.not48
  %.137 = select i1 %i.n, i64 %i.m, i64 %.036     ; 3 uses
  %.030 = select i1 %.not48, i32 %spec.select53, i32 1
  switch i32 %.030, label %.thread [
    i32 0, label %bb.e
    i32 3, label %split
  ], !llvm.loop !96

split:                                            ; preds = %bb.f
  %.pre = load i8, ptr %i.h, align 1, !tbaa !14   ; 2 uses
  %.not5060 = icmp eq i8 %.pre, 0
  br i1 %.not5060, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %split
  %i.o = zext nneg i32 %.042 to i64               ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.33562, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %.not50 = icmp eq i8 %i.q, 0
  br i1 %.not50, label %._crit_edge, label %bb.h, !llvm.loop !97

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.r = phi i8 [ %.pre, %.lr.ph ], [ %i.q, %bb.g ]
  %.33562 = phi ptr [ %i.h, %.lr.ph ], [ %i.p, %bb.g ]
  %.33961 = phi i64 [ %.137, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = sext i8 %i.u to i32                      ; 2 uses
  %.not51 = icmp sgt i32 %.042, %i.v
  %.not52 = icmp ult i64 %.33961, %.041
  %or.cond54 = select i1 %.not51, i1 %.not52, i1 false
  br i1 %or.cond54, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = mul i64 %.33961, %i.o
  %i.x = zext nneg i32 %i.v to i64
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %.not57 = icmp ult i64 %i.y, %i.o
  br i1 %.not57, label %.thread, label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.g, %split
  %.339.lcssa = phi i64 [ %.137, %split ], [ %i.y, %bb.g ], [ %.036, %bb.e ] ; 2 uses
  %i.z = icmp ugt i64 %.339.lcssa, %1
  br i1 %i.z, label %.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store i64 %.339.lcssa, ptr %2, align 8, !tbaa !53
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.i, %._crit_edge, %bb.j
  %.5 = phi i1 [ false, %bb.h ], [ false, %._crit_edge ], [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6google8protobuf2io9Tokenizer10ParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = call noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit [
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  br label %_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit

_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer13TryParseFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = call noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef %i.b, ptr noundef nonnull %i.a)
  store double %i.c, ptr %1, align 8, !tbaa !99
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !98
  %.pre = load i8, ptr %i.h, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.i = phi i8 [ %i.g, %bb.b ], [ %i.e, %bb.a ], [ %.pre, %bb.c ]
  %i.j = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  switch i8 %i.i, label %bb.f [
    i8 102, label %bb.e
    i8 70, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.b, align 1, !tbaa !14
  %i.t = icmp ne i8 %i.s, 45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i1 [ false, %bb.f ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %i.u
}

declare noundef double @_ZN6google8protobuf2io14NoLocaleStrtodEPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer17ParseStringAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.b, %bb.c
  %i.l = load i64, ptr %i.i, align 8
  %i.m = select i1 %i.j, i64 15, i64 %i.l
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.pn = phi ptr [ %i.o, %bb.e ], [ %.pn.be, %.backedge ] ; 9 uses
  %.054 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  %i.r = load i8, ptr %.054, align 1, !tbaa !14   ; 3 uses
  switch i8 %i.r, label %bb.ay [
    i8 0, label %.loopexit
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14    ; 8 uses
  %.not62 = icmp eq i8 %i.t, 0
  br i1 %.not62, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = and i8 %i.t, -8
  %i.v = icmp eq i8 %i.u, 48
  br i1 %i.v, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i8 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pn, i64 3 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = and i8 %i.aa, -8
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = shl i8 %i.y, 3
  %i.ae = zext nneg i8 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = add i8 %i.ag, %i.ad
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.155 = phi ptr [ %i.z, %bb.j ], [ %i.s, %bb.i ] ; 2 uses
  %.052 = phi i8 [ %i.ah, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14  ; 2 uses
  %i.ak = and i8 %i.aj, -8
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = shl i8 %.052, 3
  %i.an = zext nneg i8 %i.aj to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = add i8 %i.ap, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi ptr [ %i.ai, %bb.l ], [ %.155, %bb.k ]
  %.153 = phi i8 [ %i.aq, %bb.l ], [ %.052, %bb.k ]
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.i                 ; 2 uses
  br i1 %i.au, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.av = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.n, %bb.m
  %i.aw = load i64, ptr %i.i, align 8
  %i.ax = select i1 %i.au, i64 15, i64 %i.aw
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.az = phi ptr [ %.pre.i, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %.153, ptr %i.ba, align 1, !tbaa !14
  store i64 %i.as, ptr %i.e, align 8, !tbaa !11
  %i.bb = load ptr, ptr %1, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !14
  br label %.backedge

bb.p:                                             ; preds = %bb.h
  switch i8 %i.t, label %bb.av [
    i8 120, label %bb.q
    i8 88, label %bb.q
    i8 117, label %bb.x
    i8 85, label %bb.x
    i8 97, label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
    i8 98, label %bb.ao
    i8 102, label %bb.ap
    i8 110, label %bb.aq
    i8 114, label %bb.ar
    i8 116, label %bb.as
    i8 118, label %bb.at
    i8 92, label %bb.au
    i8 34, label %bb.au
    i8 39, label %bb.au
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 3 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 3 uses
  %i.bf = add i8 %i.be, -48
  %or.cond.i = icmp ult i8 %i.bf, 10
  %i.bg = and i8 %i.be, -33
  %i.bh = add i8 %i.bg, -65
  %i.bi = icmp ult i8 %i.bh, 6
  %i.bj = or i1 %or.cond.i, %i.bi
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = zext i8 %i.be to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3 = phi ptr [ %i.bd, %bb.r ], [ %i.s, %bb.q ] ; 2 uses
  %.0 = phi i8 [ %i.bm, %bb.r ], [ 0, %bb.q ]     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14  ; 3 uses
  %i.bp = add i8 %i.bo, -48
  %or.cond.i63 = icmp ult i8 %i.bp, 10
  %i.bq = and i8 %i.bo, -33
  %i.br = add i8 %i.bq, -65
  %i.bs = icmp ult i8 %i.br, 6
  %i.bt = or i1 %or.cond.i63, %i.bs
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = shl i8 %.0, 4
  %i.bv = zext i8 %i.bo to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = add i8 %i.bx, %i.bu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi ptr [ %i.bn, %bb.t ], [ %.3, %bb.s ]
  %.1 = phi i8 [ %i.by, %bb.t ], [ %.0, %bb.s ]
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.i                 ; 2 uses
  br i1 %i.cc, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64: ; preds = %bb.v, %bb.u
  %i.ce = load i64, ptr %i.i, align 8
  %i.cf = select i1 %i.cc, i64 15, i64 %i.ce
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i65 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64, %bb.w
  %i.ch = phi ptr [ %.pre.i65, %bb.w ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i64 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store i8 %.1, ptr %i.ci, align 1, !tbaa !14
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !11
  %i.cj = load ptr, ptr %1, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ca
  store i8 0, ptr %i.ck, align 1, !tbaa !14
  br label %.backedge

bb.x:                                             ; preds = %bb.p, %bb.p
  %switch.selectcmp.i.i = icmp eq i8 %i.t, 85
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  %switch.selectcmp4.i.i = icmp eq i8 %i.t, 117
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 4, i32 %switch.select.i.i ; 2 uses
  %i.cl = icmp eq i32 %switch.select5.i.i, 0
  br i1 %i.cl, label %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %.ptr = getelementptr inbounds nuw i8, ptr %.pn, i64 3
  %i.cm = or disjoint i32 %switch.select5.i.i, 3
  %.add = zext nneg i32 %i.cm to i64              ; 10 uses
  %.ptr83 = getelementptr inbounds nuw i8, ptr %.pn, i64 %.add ; 7 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.preheader.i.i
  %i.cn = phi i32 [ %i.cu, %bb.y ], [ 0, %.lr.ph.preheader.i.i ]
  %.01315.i.i = phi ptr [ %i.cv, %bb.y ], [ %.ptr, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.co = load i8, ptr %.01315.i.i, align 1, !tbaa !14 ; 2 uses
  %.not20.i.i = icmp eq i8 %i.co, 0
  br i1 %.not20.i.i, label %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.cp = shl i32 %i.cn, 4
  %i.cq = zext i8 %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add i32 %i.cp, %i.ct                    ; 16 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.cv, %.ptr83
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i, !llvm.loop !101

_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i: ; preds = %bb.y
  %i.cw = and i32 %i.cu, -1024
  %i.cx = icmp eq i32 %i.cw, 55296
  br i1 %i.cx, label %bb.z, label %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit

bb.z:                                             ; preds = %_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i
  %i.cy = load i8, ptr %.ptr83, align 1, !tbaa !14
  %i.cz = icmp eq i8 %i.cy, 92
  br i1 %i.cz, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %.ptr83, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dc = icmp eq i8 %i.db, 117
  br i1 %i.dc, label %.lr.ph.i18.preheader.i, label %.thread

.lr.ph.i18.preheader.i:                           ; preds = %bb.aa
  %.01315.i19.ptr.i = getelementptr inbounds nuw i8, ptr %.ptr83, i64 2
  %i.dd = load i8, ptr %.01315.i19.ptr.i, align 1, !tbaa !14 ; 2 uses
  %.not20.i20.i = icmp eq i8 %i.dd, 0
  br i1 %.not20.i20.i, label %.thread, label %.lr.ph.i18.1.i

.lr.ph.i18.1.i:                                   ; preds = %.lr.ph.i18.preheader.i
  %.01315.i19.ptr.1.i = getelementptr inbounds nuw i8, ptr %.ptr83, i64 3
  %i.de = load i8, ptr %.01315.i19.ptr.1.i, align 1, !tbaa !14 ; 2 uses
  %.not20.i20.1.i = icmp eq i8 %i.de, 0
  br i1 %.not20.i20.1.i, label %.thread, label %.lr.ph.i18.2.i

.lr.ph.i18.2.i:                                   ; preds = %.lr.ph.i18.1.i
  %.01315.i19.ptr.2.i = getelementptr inbounds nuw i8, ptr %.ptr83, i64 4
  %i.df = load i8, ptr %.01315.i19.ptr.2.i, align 1, !tbaa !14 ; 2 uses
  %.not20.i20.2.i = icmp eq i8 %i.df, 0
  br i1 %.not20.i20.2.i, label %.thread, label %.lr.ph.i18.3.i

.lr.ph.i18.3.i:                                   ; preds = %.lr.ph.i18.2.i
  %.01315.i19.ptr.3.i = getelementptr inbounds nuw i8, ptr %.ptr83, i64 5
  %i.dg = load i8, ptr %.01315.i19.ptr.3.i, align 1, !tbaa !14 ; 2 uses
  %.not20.i20.3.i = icmp eq i8 %i.dg, 0
  br i1 %.not20.i20.3.i, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i18.3.i
  %i.dh = zext i8 %i.dd to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = sext i8 %i.dj to i32
  %i.dl = shl nsw i32 %i.dk, 8
  %i.dm = zext i8 %i.de to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = sext i8 %i.do to i32
  %i.dq = shl nsw i32 %i.dp, 4
  %i.dr = add nsw i32 %i.dq, %i.dl
  %i.ds = zext i8 %i.df to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dv = sext i8 %i.du to i32
  %i.dw = add nsw i32 %i.dr, %i.dv
  %i.dx = shl nsw i32 %i.dw, 4
  %i.dy = zext i8 %i.dg to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @_ZN6google8protobuf2io12_GLOBAL__N_111kAsciiToIntE, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.eb = sext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.dx, %i.eb                ; 2 uses
  %i.ed = and i32 %i.ec, -1024
  %i.ee = icmp eq i32 %i.ed, 56320
  br i1 %i.ee, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ef = shl nuw nsw i32 %i.cu, 10
  %i.eg = add nsw i32 %i.ef, -56613888
  %i.eh = add nuw nsw i32 %i.eg, %i.ec
  %.add82 = add nuw nsw i64 %.add, 6
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.ab, %bb.ac, %.lr.ph.i18.3.i, %.lr.ph.i18.2.i, %.lr.ph.i18.1.i, %.lr.ph.i18.preheader.i, %bb.z
  %.179.ph = phi i32 [ %i.cu, %bb.aa ], [ %i.cu, %bb.ab ], [ %i.eh, %bb.ac ], [ %i.cu, %.lr.ph.i18.3.i ], [ %i.cu, %.lr.ph.i18.2.i ], [ %i.cu, %.lr.ph.i18.1.i ], [ %i.cu, %.lr.ph.i18.preheader.i ], [ %i.cu, %bb.z ]
  %.0.i.idx.ph = phi i64 [ %.add, %bb.aa ], [ %.add, %bb.ab ], [ %.add82, %bb.ac ], [ %.add, %.lr.ph.i18.3.i ], [ %.add, %.lr.ph.i18.2.i ], [ %.add, %.lr.ph.i18.1.i ], [ %.add, %.lr.ph.i18.preheader.i ], [ %.add, %bb.z ]
  %.0.i.ptr97 = getelementptr inbounds nuw i8, ptr %.pn, i64 %.0.i.idx.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br label %bb.ah

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit: ; preds = %_ZN6google8protobuf2ioL13ReadHexDigitsEPKciPj.exit.i
  %.0.i.ptr = getelementptr inbounds nuw i8, ptr %.pn, i64 %.add ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ei = icmp ult i32 %i.cu, 128
  br i1 %i.ei, label %bb.am, label %bb.af

_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread: ; preds = %.lr.ph.i.i, %bb.x
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ek = add i64 %i.ej, 1                        ; 3 uses
  %i.el = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.i                 ; 2 uses
  br i1 %i.em, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67

bb.ad:                                            ; preds = %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread
  %i.en = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.en)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67: ; preds = %bb.ad, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit.thread
  %i.eo = load i64, ptr %i.i, align 8
  %i.ep = select i1 %i.em, i64 15, i64 %i.eo
  %i.eq = icmp ugt i64 %i.ek, %i.ep
  br i1 %i.eq, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ej, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i68 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67, %bb.ae
  %i.er = phi ptr [ %.pre.i68, %bb.ae ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i67 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store i8 %i.t, ptr %i.es, align 1, !tbaa !14
  store i64 %i.ek, ptr %i.e, align 8, !tbaa !11
  %i.et = load ptr, ptr %1, align 8, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ek
  store i8 0, ptr %i.eu, align 1, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77
  %.pn.be = phi ptr [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66 ], [ %.054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit77 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74 ], [ %.054, %bb.az ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit69 ], [ %i.gg, %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  br label %bb.f, !llvm.loop !102

bb.af:                                            ; preds = %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %i.ev = icmp ult i32 %i.cu, 2048
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = shl nuw nsw i32 %i.cu, 2
  %i.ex = and i32 %i.ew, 7936
  %i.ey = and i32 %i.cu, 63
  %i.ez = or disjoint i32 %i.ey, %i.ex
  %i.fa = or disjoint i32 %i.ez, 49280
  br label %bb.am

bb.ah:                                            ; preds = %.thread, %bb.af
  %.17998105 = phi i32 [ %.179.ph, %.thread ], [ %i.cu, %bb.af ] ; 10 uses
  %.0.i.ptr100104 = phi ptr [ %.0.i.ptr97, %.thread ], [ %.0.i.ptr, %bb.af ] ; 3 uses
  %i.fb = icmp ult i32 %.17998105, 65536
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = shl nuw nsw i32 %.17998105, 4
  %i.fd = and i32 %i.fc, 983040
  %i.fe = shl nuw nsw i32 %.17998105, 2
  %i.ff = and i32 %i.fe, 16128
  %i.fg = and i32 %.17998105, 63
  %i.fh = or disjoint i32 %i.fg, %i.ff
  %i.fi = or disjoint i32 %i.fh, %i.fd
  %i.fj = or disjoint i32 %i.fi, 14712960
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.fk = icmp ult i32 %.17998105, 1114112
  br i1 %i.fk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = shl nuw nsw i32 %.17998105, 6
  %i.fm = and i32 %i.fl, 117440512
  %i.fn = shl nuw nsw i32 %.17998105, 4
  %i.fo = and i32 %i.fn, 4128768
  %i.fp = shl nuw nsw i32 %.17998105, 2
  %i.fq = and i32 %i.fp, 16128
  %i.fr = and i32 %.17998105, 63
  %i.fs = or disjoint i32 %i.fr, %i.fo
  %i.ft = or disjoint i32 %i.fs, %i.fm
  %i.fu = or disjoint i32 %i.ft, %i.fq
  %i.fv = or disjoint i32 %i.fu, -260013952
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.17998105 to i64
  %i.fw = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.fw, ptr %2, align 8, !tbaa !14
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !76
  %i.fx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef nonnull %1, ptr nonnull @.str.25, i64 6, ptr nonnull %2, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit
  %.0.i.ptr101 = phi ptr [ %.0.i.ptr100104, %bb.ak ], [ %.0.i.ptr, %bb.ag ], [ %.0.i.ptr100104, %bb.ai ], [ %.0.i.ptr, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %i.fy = phi i32 [ %i.fv, %bb.ak ], [ %i.fa, %bb.ag ], [ %i.fj, %bb.ai ], [ %i.cu, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ]
  %.0.i70 = phi i64 [ 4, %bb.ak ], [ 2, %bb.ag ], [ 3, %bb.ai ], [ 1, %_ZN6google8protobuf2ioL17FetchUnicodePointEPKcPj.exit ] ; 3 uses
  %i.fz = call noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef %i.fy)
  store i32 %i.fz, ptr %i.a, align 4, !tbaa !3
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !11
  %i.gb = sub i64 4611686018427387903, %i.ga
  %i.gc = icmp ult i64 %i.gb, %.0.i70
  br i1 %i.gc, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.am
  %i.gd = sub nsw i64 0, %.0.i70
  %i.ge = getelementptr inbounds i8, ptr %i.q, i64 %i.gd
  %i.gf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.ge, i64 noundef %.0.i70) ; 0 uses
  br label %_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf2ioL10AppendUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %.0.i.ptr99 = phi ptr [ %.0.i.ptr100104, %bb.al ], [ %.0.i.ptr101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.gg = getelementptr inbounds i8, ptr %.0.i.ptr99, i64 -1
  br label %.backedge

bb.ao:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ap:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.aq:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.ar:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.as:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.at:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.au:                                            ; preds = %bb.p, %bb.p, %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

bb.av:                                            ; preds = %bb.p
  br label %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit

_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit: ; preds = %bb.p, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i71 = phi i8 [ 63, %bb.av ], [ 7, %bb.p ], [ 8, %bb.ao ], [ 12, %bb.ap ], [ 10, %bb.aq ], [ 13, %bb.ar ], [ 9, %bb.as ], [ 11, %bb.at ], [ %i.t, %bb.au ]
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.gi = add i64 %i.gh, 1                        ; 3 uses
  %i.gj = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i                 ; 2 uses
  br i1 %i.gk, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

bb.aw:                                            ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gl = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72: ; preds = %bb.aw, %_ZN6google8protobuf2io12_GLOBAL__N_115TranslateEscapeEc.exit
  %i.gm = load i64, ptr %i.i, align 8
  %i.gn = select i1 %i.gk, i64 15, i64 %i.gm
  %i.go = icmp ugt i64 %i.gi, %i.gn
  br i1 %i.go, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gh, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i73 = load ptr, ptr %1, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72, %bb.ax
  %i.gp = phi ptr [ %.pre.i73, %bb.ax ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i8 %.0.i71, ptr %i.gq, align 1, !tbaa !14
  store i64 %i.gi, ptr %i.e, align 8, !tbaa !11
  %i.gr = load ptr, ptr %1, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi
  store i8 0, ptr %i.gs, align 1, !tbaa !14
  br label %.backedge

bb.ay:                                            ; preds = %bb.f, %bb.g
  %i.gt = load ptr, ptr %0, align 8, !tbaa !50
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !14
  %i.gv = icmp eq i8 %i.r, %i.gu
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !14
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !11  ; 4 uses
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  %i.hb = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.i                 ; 2 uses
  br i1 %i.hc, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i75
end_hunk_0
