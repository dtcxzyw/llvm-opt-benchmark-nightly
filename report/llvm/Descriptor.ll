Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Descriptor?download=true
inline.NumInlined: 549
inline.NumDeleted: 334
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEEPKNS_4TypeENS0_8PrimTypeESt8optionalIjEmbbbb:bb.a

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread16: ; preds = %bb.a
  store ptr @_ZL11ctorArrayTyIN5clang6interp10FixedPointEEvPNS1_5BlockEPSt4bytebbbbbPKNS1_10DescriptorE, ptr %i.ad, align 8, !tbaa !32
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store ptr null, ptr %i.ad, align 8, !tbaa !32
  %i.ae = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEENS0_8PrimTypeESt8optionalIjEbbNS1_11UnknownSizeE, i64 %i.ae
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit: ; preds = %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread16, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread14, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread
  %.0.i12 = phi ptr [ @_ZL11dtorArrayTyIN5clang6interp10FixedPointEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread16 ], [ @_ZL11dtorArrayTyIN5clang6interp13MemberPointerEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread14 ], [ @_ZL11dtorArrayTyIN5clang6interp7PointerEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread ], [ %switch.load, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i12, ptr %i.af, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEENS0_8PrimTypeESt8optionalIjEbbNS1_11UnknownSizeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 55)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  %i.c = load i64, ptr %1, align 8
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call noundef i64 @_ZN5clang6interp8primSizeENS0_8PrimTypeE(i8 noundef zeroext %2) #16
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = and i64 %3, 4294967296
  %.not = icmp eq i64 %i.j, 0
  %.0.i = select i1 %.not, i32 0, i32 %.sroa.0.0.extract.trunc ; 2 uses
  store i32 %.0.i, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = add i32 %.0.i, 16
  store i32 %i.l, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i8 %2, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.b, ptr %i.o, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.p, align 2, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %i.a, ptr %i.q, align 1, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.r, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.s, align 1, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 0, ptr %i.t, align 2, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  switch i8 %2, label %bb.b [
    i8 0, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 1, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 2, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 3, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 4, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 5, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 6, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 7, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 8, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 9, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 12, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 10, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit
    i8 13, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread
    i8 14, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread10
    i8 11, label %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread12
  ]

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread: ; preds = %bb.a
  store ptr @_ZL11ctorArrayTyIN5clang6interp7PointerEEvPNS1_5BlockEPSt4bytebbbbbPKNS1_10DescriptorE, ptr %i.u, align 8, !tbaa !32
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread10: ; preds = %bb.a
  store ptr @_ZL11ctorArrayTyIN5clang6interp13MemberPointerEEvPNS1_5BlockEPSt4bytebbbbbPKNS1_10DescriptorE, ptr %i.u, align 8, !tbaa !32
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread12: ; preds = %bb.a
  store ptr @_ZL11ctorArrayTyIN5clang6interp10FixedPointEEvPNS1_5BlockEPSt4bytebbbbbPKNS1_10DescriptorE, ptr %i.u, align 8, !tbaa !32
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

bb.b:                                             ; preds = %bb.a
  unreachable

_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store ptr null, ptr %i.u, align 8, !tbaa !32
  %i.v = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEENS0_8PrimTypeESt8optionalIjEbbNS1_11UnknownSizeE, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit

_ZL16getDtorArrayPrimN5clang6interp8PrimTypeE.exit: ; preds = %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread12, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread10, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread
  %.0.i8 = phi ptr [ @_ZL11dtorArrayTyIN5clang6interp10FixedPointEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread12 ], [ @_ZL11dtorArrayTyIN5clang6interp13MemberPointerEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread10 ], [ @_ZL11dtorArrayTyIN5clang6interp7PointerEEvPNS1_5BlockEPSt4bytePKNS1_10DescriptorE, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit.thread ], [ %switch.load, %_ZL16getCtorArrayPrimN5clang6interp8PrimTypeE.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i8, ptr %i.w, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEEPKNS_4TypeEPKS1_St8optionalIjEjbbb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 55), (56, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32
  %i.a = zext i1 %6 to i8
  %i.b = zext i1 %7 to i8
  %i.c = zext i1 %8 to i8
  %i.d = load i64, ptr %1, align 8
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = add i32 %i.h, 16                         ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = mul i32 %i.i, %5                         ; 2 uses
  store i32 %i.k, ptr %i.j, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = and i64 %4, 4294967296
  %.not13 = icmp eq i64 %i.m, 0
  %.0.i = select i1 %.not13, i32 0, i32 %.sroa.0.0.extract.trunc ; 2 uses
  store i32 %.0.i, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.k, i32 8)
  %i.p = add i32 %i.o, %.0.i
  store i32 %i.p, ptr %i.n, align 4, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.s, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.a, ptr %i.t, align 1, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %i.c, ptr %i.u, align 2, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %i.b, ptr %i.v, align 1, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.x, align 1, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 0, ptr %i.y, align 2, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL13ctorArrayDescPN5clang6interp5BlockEPSt4bytebbbbbPKNS0_10DescriptorE, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %.not = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not, ptr null, ptr @_ZL13dtorArrayDescPN5clang6interp5BlockEPSt4bytePKNS0_10DescriptorE
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL13ctorArrayDescPN5clang6interp5BlockEPSt4bytebbbbbPKNS0_10DescriptorE(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %._crit_edge, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = udiv i32 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = add i32 %i.j, 16
  %.not46 = icmp ugt i32 %i.e, %i.b
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  %i.l = select i1 %5, i16 18, i16 2
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 49
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 50
  %i.o = select i1 %6, i16 32, i16 0
  %i.p = select i1 %4, i16 512, i16 0
  %i.q = or disjoint i16 %i.o, %i.p
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.j ]
  %.04247 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.j ] ; 3 uses
  %i.r = zext i32 %.04247 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 4 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.u = add i32 %.04247, 16
  store i32 %i.u, ptr %i.s, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.x = load i16, ptr %i.w, align 4
  %i.y = and i16 %i.x, -23
  %i.z = or disjoint i16 %i.l, %i.y               ; 2 uses
  store i16 %i.z, ptr %i.w, align 4
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.m, align 1, !tbaa !26, !range !40, !noundef !41
  %i.ab = zext nneg i8 %i.aa to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi i16 [ 1, %bb.b ], [ %i.ab, %bb.c ]
  %i.ad = and i16 %i.z, -6
  %i.ae = or i16 %i.ac, %i.ad                     ; 2 uses
  store i16 %i.ae, ptr %i.w, align 4
  br i1 %3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.n, align 2, !tbaa !27, !range !40, !noundef !41
  %i.ag = shl nuw nsw i8 %i.af, 6
  %i.ah = zext nneg i8 %i.ag to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.masked = phi i16 [ 64, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %i.ai = and i16 %i.ae, -865
  %i.aj = or i16 %.masked, %i.ai                  ; 2 uses
  %i.ak = or i16 %i.q, %i.aj                      ; 2 uses
  %i.al = or disjoint i16 %i.ak, 256
  store i16 %i.al, ptr %i.w, align 4
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !35  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %.not44 = icmp eq ptr %i.ao, null
  br i1 %.not44, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aq = trunc i16 %i.aj to i1
  %i.ar = icmp samesign ugt i16 %.masked, 63
  %i.as = and i16 %i.ak, 32
  %.not45 = icmp eq i16 %i.as, 0
  br i1 %.not45, label %bb.h, label %_ZNK5clang6interp10Descriptor7isUnionEv.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !30, !range !40, !noundef !41
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  %.not1.i = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %.not1.i, label %_ZNK5clang6interp10Descriptor7isUnionEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !42, !range !40, !noundef !41
  %i.bb = trunc nuw i8 %i.ba to i1
  br label %_ZNK5clang6interp10Descriptor7isUnionEv.exit

_ZNK5clang6interp10Descriptor7isUnionEv.exit:     ; preds = %bb.i, %bb.h, %bb.g
  %i.bc = phi i1 [ true, %bb.g ], [ false, %bb.h ], [ %i.bb, %bb.i ]
  tail call void %i.ao(ptr noundef %0, ptr noundef nonnull %i.ap, i1 noundef zeroext %i.aq, i1 noundef zeroext %i.ar, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %i.bc, ptr noundef nonnull %i.am) #16
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp10Descriptor7isUnionEv.exit, %bb.f
  %i.bd = add nuw i32 %.048, 1                    ; 2 uses
  %i.be = add i32 %i.k, %.04247
  %.not = icmp eq i32 %i.bd, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !62
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL13dtorArrayDescPN5clang6interp5BlockEPSt4bytePKNS0_10DescriptorE(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %._crit_edge, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = udiv i32 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = add i32 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %.not16 = icmp ugt i32 %i.e, %i.b
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, %.lr.ph
  %.018 = phi i32 [ %i.s, %.lr.ph ], [ 0, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ] ; 2 uses
  %.01517 = phi i32 [ %i.r, %.lr.ph ], [ 0, %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit ]
  %i.n = zext i32 %.018 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !35
  tail call void %i.m(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef %i.q) #16
  %i.r = add nuw i32 %.01517, 1                   ; 2 uses
  %i.s = add i32 %i.k, %.018
  %.not = icmp eq i32 %i.r, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEEPKS1_St8optionalIjEbNS1_11UnknownSizeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 55), (56, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %i.a = zext i1 %4 to i8
  %i.b = load i64, ptr %1, align 8
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = add i32 %i.f, 16
  store i32 %i.g, ptr %i.d, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = and i64 %3, 4294967296
  %.not5 = icmp eq i64 %i.j, 0
  %.0.i = select i1 %.not5, i32 0, i32 %.sroa.0.0.extract.trunc ; 2 uses
  store i32 %.0.i, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = add i32 %.0.i, 8
  store i32 %i.l, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.p, align 1, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.q, align 2, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %i.a, ptr %i.r, align 1, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.s, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 1, ptr %i.t, align 1, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 0, ptr %i.u, align 2, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL13ctorArrayDescPN5clang6interp5BlockEPSt4bytebbbbbPKNS0_10DescriptorE, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  %.not = icmp eq ptr %i.y, null
  %i.z = select i1 %.not, ptr null, ptr @_ZL13dtorArrayDescPN5clang6interp5BlockEPSt4bytePKNS0_10DescriptorE
  store ptr %i.z, ptr %i.w, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5clang6interp10DescriptorC2ERKN4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEEPKNS0_6RecordESt8optionalIjEbbbb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 55), (56, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, i64 %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  %i.c = zext i1 %6 to i8
  %i.d = zext i1 %7 to i8
  %i.e = load i64, ptr %1, align 8
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 556
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66
  %i.l = add i32 %i.k, %i.i
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.l, i32 8) ; 3 uses
  store i32 %i.m, ptr %i.g, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.m, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = and i64 %3, 4294967296
  %.not = icmp eq i64 %i.p, 0
  %.0.i = select i1 %.not, i32 0, i32 %.sroa.0.0.extract.trunc ; 2 uses
  store i32 %.0.i, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = add i32 %i.m, %.0.i
  store i32 %i.r, ptr %i.q, align 4, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.a, ptr %i.v, align 1, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %i.c, ptr %i.w, align 2, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %i.b, ptr %i.x, align 1, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.d, ptr %i.y, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 0, ptr %i.z, align 1, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 0, ptr %i.aa, align 2, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL10ctorRecordPN5clang6interp5BlockEPSt4bytebbbbbPKNS0_10DescriptorE, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i = shl nuw nsw i64 %i.ag, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i
  %.not61.i = icmp eq i32 %i.af, 0
  br i1 %.not61.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.03262.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.03262.i = phi ptr [ %i.ai, %bb.b ], [ %i.ad, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03262.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %.not41.i = icmp eq ptr %i.am, null
  br i1 %.not41.i, label %bb.b, label %_ZL15needsRecordDtorPKN5clang6interp6RecordE.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !68 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx74.i = mul nuw nsw i64 %i.ar, 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx74.i
  %.not4263.i = icmp eq i32 %i.aq, 0
  br i1 %.not4263.i, label %._crit_edge67.i, label %.lr.ph66.i

bb.c:                                             ; preds = %.lr.ph66.i
  %i.at = getelementptr inbounds nuw i8, ptr %.04064.i, i64 24 ; 2 uses
  %.not42.i = icmp eq ptr %i.at, %i.as
  br i1 %.not42.i, label %._crit_edge67.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %._crit_edge.i, %bb.c
  %.04064.i = phi ptr [ %i.at, %bb.c ], [ %i.ao, %._crit_edge.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04064.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %.not43.i = icmp eq ptr %i.ax, null
  br i1 %.not43.i, label %bb.c, label %_ZL15needsRecordDtorPKN5clang6interp6RecordE.exit

._crit_edge67.i:                                  ; preds = %bb.c, %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !67 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
end_hunk_0
