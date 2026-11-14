Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16VoxelManipulator8setFlagsERK9VoxelAreah:bb.a
  %i.bf = phi i32 [ %.pre35, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph28 ]
  %i.bg = add nsw i32 %.02026, 1
  %i.bh = sext i16 %i.bc to i32
  %.not22.not = icmp slt i32 %.02026, %i.bh
  br i1 %.not22.not, label %.lr.ph28, label %._crit_edge29.loopexit, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !25
  %i.bl = or i8 %i.bk, %2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bm = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge29, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator10clearFlagsERK9VoxelAreah(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !41   ; 2 uses
  %.not30 = icmp sgt i16 %i.h, %i.j
  br i1 %.not30, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.k = sext i16 %i.h to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.s = xor i8 %2, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i16, ptr %i.m, align 4, !tbaa !40  ; 2 uses
  %i.u = icmp sgt i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph33, %._crit_edge29
  %i.v = phi i16 [ %i.j, %.lr.ph33 ], [ %i.aa, %._crit_edge29 ]
  %i.w = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ab, %._crit_edge29 ] ; 2 uses
  %i.x = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ac, %._crit_edge29 ] ; 2 uses
  %.02131 = phi i32 [ %i.k, %.lr.ph33 ], [ %i.ad, %._crit_edge29 ] ; 3 uses
  %i.y = load i16, ptr %i.l, align 2, !tbaa !35   ; 2 uses
  %.not2225 = icmp sgt i16 %i.y, %i.x
  br i1 %.not2225, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.c
  %i.z = sext i16 %i.y to i32
  %.pre36 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre38 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre40 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre44 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %.lr.ph28

._crit_edge29.loopexit:                           ; preds = %._crit_edge
  %.pre42 = load i16, ptr %i.i, align 2, !tbaa !41
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.c
  %i.aa = phi i16 [ %.pre42, %._crit_edge29.loopexit ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = phi i16 [ %i.bd, %._crit_edge29.loopexit ], [ %i.w, %bb.c ]
  %i.ac = phi i16 [ %i.bd, %._crit_edge29.loopexit ], [ %i.x, %bb.c ]
  %i.ad = add nsw i32 %.02131, 1
  %i.ae = sext i16 %i.aa to i32
  %.not.not = icmp slt i32 %.02131, %i.ae
  br i1 %.not.not, label %bb.c, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, !llvm.loop !147

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %._crit_edge
  %i.af = phi i32 [ %i.bc, %._crit_edge ], [ %.pre44, %.lr.ph28.preheader ] ; 2 uses
  %i.ag = phi i16 [ %i.bd, %._crit_edge ], [ %i.w, %.lr.ph28.preheader ]
  %i.ah = phi i16 [ %i.be, %._crit_edge ], [ %.pre40, %.lr.ph28.preheader ] ; 2 uses
  %i.ai = phi i16 [ %i.bf, %._crit_edge ], [ %.pre38, %.lr.ph28.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bg, %._crit_edge ], [ %.pre36, %.lr.ph28.preheader ] ; 2 uses
  %.02026 = phi i32 [ %i.bh, %._crit_edge ], [ %i.z, %.lr.ph28.preheader ] ; 3 uses
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.ak = load i16, ptr %1, align 4, !tbaa !36
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = sext i16 %i.ah to i32                   ; 2 uses
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = load i16, ptr %i.o, align 4, !tbaa !32
  %i.ap = sext i16 %i.ao to i32
  %i.aq = sub i32 %.02131, %i.ap
  %i.ar = mul i32 %i.aq, %i.af
  %i.as = add i32 %i.ar, %.02026
  %i.at = sext i16 %i.ai to i32
  %i.au = sub i32 %i.as, %i.at
  %i.av = mul i32 %i.au, %i.aj                    ; 2 uses
  %i.aw = add nsw i32 %i.an, %i.av
  %i.ax = add nsw i32 %i.aw, %i.b
  %i.ay = add i32 %i.av, %i.al
  %i.az = sub i32 %i.ay, %i.am
  %i.ba = sext i32 %i.az to i64
  %i.bb = sext i32 %i.ax to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre35 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre37 = load i16, ptr %i.r, align 2, !tbaa !35
  %.pre39 = load i16, ptr %i.n, align 8, !tbaa !36
  %.pre41 = load i16, ptr %i.m, align 4, !tbaa !40
  %.pre43 = load i32, ptr %i.q, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph28
  %i.bc = phi i32 [ %.pre43, %._crit_edge.loopexit ], [ %i.af, %.lr.ph28 ]
  %i.bd = phi i16 [ %.pre41, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph28 ] ; 4 uses
  %i.be = phi i16 [ %.pre39, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph28 ]
  %i.bf = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph28 ]
  %i.bg = phi i32 [ %.pre35, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph28 ]
  %i.bh = add nsw i32 %.02026, 1
  %i.bi = sext i16 %i.bd to i32
  %.not22.not = icmp slt i32 %.02026, %i.bi
  br i1 %.not22.not, label %.lr.ph28, label %._crit_edge29.loopexit, !llvm.loop !148

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !25
  %i.bm = and i8 %i.bl, %i.s
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !149

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge29, %bb.b, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !42
  %i.k = load i64, ptr %i.e, align 8, !tbaa !25
  store i64 %i.k, ptr %i.c, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !39
  store ptr %i.e, ptr %i.b, align 8, !tbaa !42
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.e, align 8, !tbaa !25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %2 = icmp ult i64 %1, 100
  br i1 %2, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %3

3:                                                ; preds = %.lr.ph.i
  %4 = icmp ult i64 %1, 1000
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %5

5:                                                ; preds = %3
  %6 = icmp ult i64 %1, 10000
  br i1 %6, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %1, 100000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %7
  %9 = icmp ult i64 %1, 1000000
  br i1 %9, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %10

10:                                               ; preds = %.lr.ph.i.1
  %11 = icmp ult i64 %1, 10000000
  br i1 %11, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %12

12:                                               ; preds = %10
  %13 = icmp ult i64 %1, 100000000
  br i1 %13, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %14

14:                                               ; preds = %12
  %15 = icmp ult i64 %1, 1000000000
  br i1 %15, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %14
  %16 = icmp ult i64 %1, 10000000000
  br i1 %16, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %17

17:                                               ; preds = %.lr.ph.i.2
  %18 = icmp ult i64 %1, 100000000000
  br i1 %18, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %19

19:                                               ; preds = %17
  %20 = icmp ult i64 %1, 1000000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %19
  %i.b = icmp ult i64 %1, 10000000000000
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.a
  %21 = icmp ult i64 %1, 100000000000000
  br i1 %21, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %1, 1000000000000000
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %22 = icmp ult i64 %1, 10000000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = icmp ult i64 %1, 100000000000000000
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %23 = icmp ult i64 %1, 1000000000000000000
  br i1 %23, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %24 = icmp ult i64 %1, -8446744073709551616
  %spec.select = select i1 %24, i64 19, i64 20
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %7, %14, %.lr.ph.i.a, %bb.e, %5, %12, %19, %bb.d, %3, %10, %17, %bb.c, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.b, %bb.f, %bb.a
  %.022.i = phi i64 [ 17, %bb.e ], [ %spec.select, %bb.g ], [ 18, %bb.f ], [ 1, %bb.a ], [ 2, %.lr.ph.i ], [ 6, %.lr.ph.i.1 ], [ 10, %.lr.ph.i.2 ], [ 14, %bb.b ], [ 3, %3 ], [ 7, %10 ], [ 11, %17 ], [ 15, %bb.c ], [ 4, %5 ], [ 8, %12 ], [ 12, %19 ], [ 16, %bb.d ], [ 5, %7 ], [ 9, %14 ], [ 13, %.lr.ph.i.a ]
  %25 = and i64 %.022.i, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %25, i8 noundef signext 0)
  %i.f = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.g = icmp ugt i64 %1, 99
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.n, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.x, %.lr.ph.i4 ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = urem i64 %.020.i, 100
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = udiv i64 %.020.i, 100                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25
  %i.r = zext i32 %.01819.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !25
  %i.t = load i8, ptr %i.o, align 2, !tbaa !25
  %i.u = add i32 %.01819.i, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !25
  %i.x = add i32 %.01819.i, -2
  %i.y = icmp ugt i64 %.020.i, 9999
  br i1 %i.y, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !150

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.n, %.lr.ph.i4 ] ; 3 uses
  %i.z = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.aa = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !25
  %i.af = load i8, ptr %i.ab, align 2, !tbaa !25
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ag = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ah, %bb.i ], [ %i.af, %bb.h ]
  store i8 %storemerge.i, ptr %i.f, align 1, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !47
  %i.d = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !151
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !42
  %i.i = load i64, ptr %i.a, align 8, !tbaa !151
  store i64 %i.i, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !25
  store i8 %i.k, ptr %i.j, align 1, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18, !inline_history !152
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !152
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.b
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4core8vector3dIsEE", !12, i64 0, !12, i64 2, !12, i64 4}
!15 = !{!"_ZTSN4core8vector3dIiEE", !6, i64 0, !6, i64 4, !6, i64 8}
!16 = !{!"_ZTS9VoxelArea", !14, i64 0, !14, i64 6, !15, i64 12}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS7MapNode", !17, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!"_ZTS16VoxelManipulator", !16, i64 8, !18, i64 32, !19, i64 40}
!21 = !{!20, !18, i64 32}
!22 = !{!20, !19, i64 40}
!23 = !{!15, !6, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!20, !12, i64 16}
!27 = !{!20, !12, i64 10}
!28 = !{!20, !12, i64 12}
!29 = !{!20, !12, i64 18}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!20, !12, i64 8}
!32 = !{!16, !12, i64 4}
!33 = !{!16, !6, i64 16}
!34 = !{!16, !6, i64 12}
!35 = !{!16, !12, i64 2}
!36 = !{!16, !12, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !24, i64 8, !5, i64 16}
!39 = !{!38, !24, i64 8}
!40 = !{!16, !12, i64 8}
!41 = !{!16, !12, i64 10}
!42 = !{!38, !19, i64 0}
!43 = !{!14, !12, i64 4}
!44 = !{!14, !12, i64 2}
!45 = !{!14, !12, i64 0}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = !{!37, !19, i64 0}
!48 = !{ptr @_ZN16VoxelManipulatorD2Ev}
!49 = distinct !{null, null, null, null}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = !{!15, !6, i64 4}
!54 = !{!15, !6, i64 8}
!55 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!56 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!57 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!58 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !24, i64 8}
!59 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!60 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!61 = !{!"_ZTSSt6locale", !60, i64 0}
!62 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !55, i64 24, !56, i64 28, !56, i64 32, !57, i64 40, !58, i64 48, !5, i64 64, !6, i64 192, !59, i64 200, !61, i64 208}
!63 = !{!"p1 _ZTSSo", !17, i64 0}
!64 = !{!"bool", !5, i64 0}
!65 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!66 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!67 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!68 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!69 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !62, i64 0, !63, i64 216, !5, i64 224, !64, i64 225, !65, i64 232, !66, i64 240, !67, i64 248, !68, i64 256}
!70 = !{!69, !66, i64 240}
!71 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!72 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!73 = !{!"p1 int", !17, i64 0}
!74 = !{!"p1 short", !17, i64 0}
!75 = !{!"_ZTSSt5ctypeIcE", !71, i64 0, !72, i64 16, !64, i64 24, !73, i64 32, !73, i64 40, !74, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!76 = !{!75, !5, i64 56}
!77 = !{!20, !12, i64 14}
!78 = !{!62, !24, i64 16}
!79 = !{!"p1 _ZTS15ContentFeatures", !17, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 8}
!82 = !{!80, !79, i64 0}
!83 = !{!"any p2 pointer", !17, i64 0}
!84 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !83, i64 0}
!85 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!86 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !85, i64 0}
!87 = !{!"float", !5, i64 0}
!88 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !87, i64 0, !24, i64 8}
!89 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !84, i64 0, !24, i64 8, !86, i64 16, !24, i64 24, !88, i64 32, !85, i64 48}
!90 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !89, i64 0}
!91 = !{!"_ZTS16ContentParamType", !5, i64 0}
!92 = !{!"_ZTS17ContentParamType2", !5, i64 0}
!93 = !{!"_ZTS12NodeDrawType", !5, i64 0}
!94 = !{!"_ZTS9AlphaMode", !5, i64 0}
!95 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!96 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !99, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseItSaItEE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorItSaItEE", !103, i64 0}
!105 = !{!"_ZTS16PointabilityType", !5, i64 0}
!106 = !{!"_ZTS10LiquidType", !5, i64 0}
!107 = !{!"_ZTS11NodeBoxType", !5, i64 0}
!108 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !17, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !109, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !111, i64 0}
!113 = !{!"_ZTSN4core8vector3dIfEE", !87, i64 0, !87, i64 4, !87, i64 8}
!114 = !{!"_ZTSN4core8aabbox3dIfEE", !113, i64 0, !113, i64 12}
!115 = !{!"p1 _ZTS16NodeBoxConnected", !17, i64 0}
!116 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!117 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0}
!118 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0, !117, i64 8}
!119 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !118, i64 0}
!120 = !{!"_ZTS7NodeBox", !107, i64 0, !112, i64 8, !114, i64 32, !114, i64 56, !114, i64 80, !119, i64 104}
!121 = !{!"_ZTS9SoundSpec", !38, i64 0, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !64, i64 48, !64, i64 49}
!122 = !{!"_ZTS15ContentFeatures", !64, i64 0, !64, i64 1, !64, i64 2, !64, i64 3, !38, i64 8, !90, i64 40, !91, i64 96, !92, i64 97, !93, i64 98, !38, i64 104, !87, i64 136, !5, i64 144, !5, i64 528, !5, i64 912, !94, i64 1296, !95, i64 1300, !38, i64 1304, !5, i64 1336, !5, i64 1337, !100, i64 1344, !104, i64 1368, !95, i64 1392, !64, i64 1396, !5, i64 1397, !5, i64 1398, !64, i64 1399, !64, i64 1400, !5, i64 1401, !64, i64 1402, !64, i64 1403, !105, i64 1404, !64, i64 1405, !64, i64 1406, !64, i64 1407, !64, i64 1408, !6, i64 1412, !38, i64 1416, !5, i64 1448, !106, i64 1449, !64, i64 1450, !38, i64 1456, !12, i64 1488, !38, i64 1496, !12, i64 1528, !5, i64 1530, !64, i64 1531, !5, i64 1532, !5, i64 1533, !64, i64 1534, !120, i64 1536, !120, i64 1656, !120, i64 1776, !121, i64 1896, !121, i64 1952, !121, i64 2008, !64, i64 2064, !64, i64 2065}
!123 = !{!122, !106, i64 1449}
!124 = !{!122, !5, i64 1401}
!125 = !{!122, !64, i64 1399}
!126 = !{i8 0, i8 2}
!127 = !{}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = !{!16, !12, i64 6}
!131 = distinct !{!131, !30, !136, !137}
!132 = distinct !{!132, !30, !137, !136}
!133 = distinct !{!133, !30, !46}
!134 = distinct !{!134, !30, !46}
!135 = distinct !{!135, !30}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!139 = distinct !{!139, !30, !46}
!140 = distinct !{!140, !30}
!141 = distinct !{!141, !30}
!142 = !{!"_ZTS7MapNode", !12, i64 0, !5, i64 2, !5, i64 3}
!143 = !{!142, !12, i64 0}
!144 = distinct !{!144, !30}
!145 = distinct !{!145, !30}
!146 = distinct !{!146, !30}
!147 = distinct !{!147, !30}
!148 = distinct !{!148, !30}
!149 = distinct !{!149, !30}
!150 = distinct !{!150, !30}
!151 = !{!24, !24, i64 0}
!152 = !{ptr @_ZN13BaseExceptionD2Ev}
end_hunk_0
