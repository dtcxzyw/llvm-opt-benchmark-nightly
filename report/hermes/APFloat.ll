inline.NumInlined: 1817
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv:bb.a

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.b
  %.06 = phi i64 [ 0, %bb.d ], [ 32767, %bb.f ], [ %i.k, %bb.b ], [ %.lobit, %bb.c ], [ 32767, %bb.e ]
  %.05 = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.f ], [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ 0, %bb.e ]
  %.0 = phi i64 [ 0, %bb.d ], [ %i.ag, %bb.f ], [ %i.u, %bb.b ], [ %i.u, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %.05, ptr %i.a, align 16, !tbaa !22
  %i.ah = lshr i8 %i.c, 3
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl i64 %i.ai, 63
  %i.ak = shl i64 %.06, 48
  %i.al = and i64 %i.ak, 9223090561878065152
  %i.am = or disjoint i64 %i.al, %i.aj
  %i.an = and i64 %.0, 281474976710655
  %i.ao = or disjoint i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !22
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, ptr nonnull %i.a, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = load i8, ptr %i.a, align 2               ; 3 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7                           ; 2 uses
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !19
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 127                    ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i = select i1 %i.o, ptr %i.q, ptr %i.p
  %i.r = load i64, ptr %.0.i.i, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = icmp eq i32 %i.j, 1
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.s, 23
  %.lobit = and i32 %i.u, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.f [
    i8 3, label %bb.g
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add i32 %i.x, -64
  %i.z = icmp ult i32 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.i7 = select i1 %i.z, ptr %i.ab, ptr %i.aa
  %i.ac = load i64, ptr %.0.i.i7, align 8, !tbaa !22
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.b
  %.04 = phi i32 [ 0, %bb.d ], [ 255, %bb.f ], [ %i.j, %bb.b ], [ %.lobit, %bb.c ], [ 255, %bb.e ]
  %.0 = phi i32 [ 0, %bb.d ], [ %i.ad, %bb.f ], [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ 0, %bb.e ]
  %i.ae = lshr i8 %i.b, 3
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 31
  %i.ai = shl i32 %.04, 23
  %i.aj = and i32 %i.ai, 2139095040
  %i.ak = or disjoint i32 %i.aj, %i.ah
  %i.al = and i32 %.0, 8388607
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 32, ptr %i.ao, align 8, !tbaa !20
  store i64 %i.an, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = load i8, ptr %i.a, align 2               ; 3 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7                           ; 2 uses
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !19
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, 15                     ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i = select i1 %i.o, ptr %i.q, ptr %i.p
  %i.r = load i64, ptr %.0.i.i, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = icmp eq i32 %i.j, 1
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.s, 10
  %.lobit = and i32 %i.u, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.f [
    i8 3, label %bb.g
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add i32 %i.x, -64
  %i.z = icmp ult i32 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.i7 = select i1 %i.z, ptr %i.ab, ptr %i.aa
  %i.ac = load i64, ptr %.0.i.i7, align 8, !tbaa !22
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.b
  %.04 = phi i32 [ 0, %bb.d ], [ 31, %bb.f ], [ %i.j, %bb.b ], [ %.lobit, %bb.c ], [ 31, %bb.e ]
  %.0 = phi i32 [ 0, %bb.d ], [ %i.ad, %bb.f ], [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ 0, %bb.e ]
  %i.ae = lshr i8 %i.b, 3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 15
  %i.ah = shl nsw i32 %.04, 10
  %i.ai = and i32 %i.ah, 31744
  %i.aj = and i32 %.0, 1023
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.ak, align 8, !tbaa !20
  %.masked8 = and i32 %i.ag, 32768
  %.masked = or disjoint i32 %i.ai, %.masked8
  %i.al = or disjoint i32 %.masked, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  store i64 %i.am, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 7 uses
  %i.d = icmp eq ptr %i.c, @_ZN4llvhL11semIEEEhalfE
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = load i8, ptr %i.e, align 2, !noalias !100 ; 3 uses
  %i.g = and i8 %i.f, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.g, 0
  %i.h = and i8 %i.f, 7                           ; 2 uses
  %i.i = icmp ne i8 %i.h, 3
  %i.j = and i1 %spec.select.i.not.i.i, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i16, ptr %i.k, align 8, !tbaa !19, !noalias !100
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.m, 15                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = icmp eq i32 %i.n, 1
  br i1 %i.s, label %bb.d, label %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i32 %i.r, 10
  %.lobit.i = and i32 %i.t, 1
  br label %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit

bb.e:                                             ; preds = %bb.b
  switch i8 %i.h, label %bb.g [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit
    i8 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc i64 %i.w to i32
  br label %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.04.i = phi i32 [ 0, %bb.e ], [ 31, %bb.g ], [ %i.n, %bb.c ], [ %.lobit.i, %bb.d ], [ 31, %bb.f ]
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.x, %bb.g ], [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ 0, %bb.f ]
  %i.y = lshr i8 %i.f, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 15
  %i.ab = shl nsw i32 %.04.i, 10
  %i.ac = and i32 %i.ab, 31744
  %i.ad = and i32 %.0.i, 1023
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.ae, align 8, !tbaa !20, !alias.scope !100
  %.masked8.i = and i32 %i.aa, 32768
  %.masked.i = or disjoint i32 %i.ac, %.masked8.i
  %i.af = or disjoint i32 %.masked.i, %i.ad
  %i.ag = zext nneg i32 %i.af to i64
  store i64 %i.ag, ptr %0, align 8, !tbaa !18, !alias.scope !100
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq ptr %i.c, @_ZN4llvhL13semIEEEsingleE
  br i1 %i.ah, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = load i8, ptr %i.ai, align 2, !noalias !103 ; 3 uses
  %i.ak = and i8 %i.aj, 6
  %spec.select.i.not.i.i1 = icmp ne i8 %i.ak, 0
  %i.al = and i8 %i.aj, 7                         ; 2 uses
  %i.am = icmp ne i8 %i.al, 3
  %i.an = and i1 %spec.select.i.not.i.i1, %i.am
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !19, !noalias !103
  %i.aq = sext i16 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, 127                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  %i.aw = icmp eq i32 %i.ar, 1
  br i1 %i.aw, label %bb.k, label %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = lshr i32 %i.av, 23
  %.lobit.i6 = and i32 %i.ax, 1
  br label %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit

bb.l:                                             ; preds = %bb.i
  switch i8 %i.al, label %bb.n [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = trunc i64 %i.ba to i32
  br label %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.04.i2 = phi i32 [ 0, %bb.l ], [ 255, %bb.n ], [ %i.ar, %bb.j ], [ %.lobit.i6, %bb.k ], [ 255, %bb.m ]
  %.0.i3 = phi i32 [ 0, %bb.l ], [ %i.bb, %bb.n ], [ %i.av, %bb.j ], [ %i.av, %bb.k ], [ 0, %bb.m ]
  %i.bc = lshr i8 %i.aj, 3
  %i.bd = and i8 %i.bc, 1
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = shl nuw i32 %i.be, 31
  %i.bg = shl i32 %.04.i2, 23
  %i.bh = and i32 %i.bg, 2139095040
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = and i32 %.0.i3, 8388607
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 32, ptr %i.bm, align 8, !tbaa !20, !alias.scope !103
  store i64 %i.bl, ptr %0, align 8, !tbaa !18, !alias.scope !103
  br label %bb.aj

bb.o:                                             ; preds = %bb.h
  %i.bn = icmp eq ptr %i.c, @_ZN4llvhL13semIEEEdoubleE
  br i1 %i.bn, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bp = load i8, ptr %i.bo, align 2, !noalias !106 ; 3 uses
  %i.bq = and i8 %i.bp, 6
  %spec.select.i.not.i.i7 = icmp ne i8 %i.bq, 0
  %i.br = and i8 %i.bp, 7                         ; 2 uses
  %i.bs = icmp ne i8 %i.br, 3
  %i.bt = and i1 %spec.select.i.not.i.i7, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !19, !noalias !106
  %i.bw = sext i16 %i.bv to i64
  %i.bx = add nsw i64 %i.bw, 1023                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cb = icmp eq i64 %i.bx, 1
  br i1 %i.cb, label %bb.r, label %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cc = lshr i64 %i.ca, 52
  %.lobit.i12 = and i64 %i.cc, 1
  br label %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit

bb.s:                                             ; preds = %bb.p
  switch i8 %i.br, label %bb.u [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit
    i8 0, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  br label %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.04.i8 = phi i64 [ 0, %bb.s ], [ 2047, %bb.u ], [ %i.bx, %bb.q ], [ %.lobit.i12, %bb.r ], [ 2047, %bb.t ]
  %.0.i9 = phi i64 [ 0, %bb.s ], [ %i.cf, %bb.u ], [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ 0, %bb.t ]
  %i.cg = lshr i8 %i.bp, 3
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = shl i64 %i.ch, 63
  %i.cj = shl i64 %.04.i8, 52
  %i.ck = and i64 %i.cj, 9218868437227405312
  %i.cl = or disjoint i64 %i.ck, %i.ci
  %i.cm = and i64 %.0.i9, 4503599627370495
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.co, align 8, !tbaa !20, !alias.scope !106
  store i64 %i.cn, ptr %0, align 8, !tbaa !18, !alias.scope !106
  br label %bb.aj

bb.v:                                             ; preds = %bb.o
  %i.cp = icmp eq ptr %i.c, @_ZN4llvhL11semIEEEquadE
  br i1 %i.cp, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cr = load i8, ptr %i.cq, align 2, !noalias !109 ; 3 uses
  %i.cs = and i8 %i.cr, 6
  %spec.select.i.not.i.i13 = icmp ne i8 %i.cs, 0
  %i.ct = and i8 %i.cr, 7                         ; 2 uses
  %i.cu = icmp ne i8 %i.ct, 3
  %i.cv = and i1 %spec.select.i.not.i.i13, %i.cu
  br i1 %i.cv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !19, !noalias !109
  %i.cy = sext i16 %i.cx to i64
  %i.cz = add nsw i64 %i.cy, 16383                ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !109 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !22, !noalias !109 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !22, !noalias !109 ; 3 uses
  %i.df = icmp eq i64 %i.cz, 1
  br i1 %i.df, label %bb.y, label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

bb.y:                                             ; preds = %bb.x
  %i.dg = lshr i64 %i.de, 48
  %.lobit.i16 = and i64 %i.dg, 1
  br label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

bb.z:                                             ; preds = %bb.w
  switch i8 %i.ct, label %bb.ab [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit
    i8 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !109 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !22, !noalias !109
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !22, !noalias !109
  br label %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit: ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.06.i = phi i64 [ 0, %bb.z ], [ 32767, %bb.ab ], [ %i.cz, %bb.x ], [ %.lobit.i16, %bb.y ], [ 32767, %bb.aa ]
  %.05.i = phi i64 [ 0, %bb.z ], [ %i.dj, %bb.ab ], [ %i.dc, %bb.x ], [ %i.dc, %bb.y ], [ 0, %bb.aa ]
  %.0.i14 = phi i64 [ 0, %bb.z ], [ %i.dl, %bb.ab ], [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ 0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !109
  store i64 %.05.i, ptr %i.b, align 16, !tbaa !22, !noalias !109
  %i.dm = lshr i8 %i.cr, 3
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = shl i64 %i.dn, 63
  %i.dp = shl i64 %.06.i, 48
  %i.dq = and i64 %i.dp, 9223090561878065152
  %i.dr = or disjoint i64 %i.dq, %i.do
  %i.ds = and i64 %.0.i14, 281474976710655
  %i.dt = or disjoint i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !22, !noalias !109
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, ptr nonnull %i.b, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !109
  br label %bb.aj

bb.ac:                                            ; preds = %bb.v
  %i.dv = icmp eq ptr %i.c, @_ZN4llvhL24semPPCDoubleDoubleLegacyE
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZNK4llvh6detail9IEEEFloat36convertPPCDoubleDoubleAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dx = load i8, ptr %i.dw, align 2, !noalias !112 ; 3 uses
  %i.dy = and i8 %i.dx, 6
  %spec.select.i.not.i.i17 = icmp ne i8 %i.dy, 0
  %i.dz = and i8 %i.dx, 7                         ; 2 uses
  %i.ea = icmp ne i8 %i.dz, 3
  %i.eb = and i1 %spec.select.i.not.i.i17, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !19, !noalias !112
  %i.ee = sext i16 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 16383                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7, !noalias !112
  %i.ei = add i32 %i.eh, -64
  %i.ej = icmp ult i32 %i.ei, -128
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !112
  %.0.i.i.i21 = select i1 %i.ej, ptr %i.el, ptr %i.ek
  %i.em = load i64, ptr %.0.i.i.i21, align 8, !tbaa !22, !noalias !112 ; 2 uses
  %i.en = icmp eq i64 %i.ef, 1
  %.lobit.i22 = lshr i64 %i.em, 63
  %i.eo = and i64 %i.ef, 32767
  %i.ep = select i1 %i.en, i64 %.lobit.i22, i64 %i.eo
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.dz, label %bb.ai [
    i8 3, label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit
    i8 0, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7, !noalias !112
  %i.es = add i32 %i.er, -64
  %i.et = icmp ult i32 %i.es, -128
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !112
  %.0.i.i7.i20 = select i1 %i.et, ptr %i.ev, ptr %i.eu
  %i.ew = load i64, ptr %.0.i.i7.i20, align 8, !tbaa !22, !noalias !112
  br label %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit

_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.04.i18 = phi i64 [ 0, %bb.ag ], [ 32767, %bb.ai ], [ %i.ep, %bb.af ], [ 32767, %bb.ah ]
  %.0.i19 = phi i64 [ 0, %bb.ag ], [ %i.ew, %bb.ai ], [ %i.em, %bb.af ], [ -9223372036854775808, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !112
  store i64 %.0.i19, ptr %i.a, align 16, !tbaa !22, !noalias !112
  %i.ex = lshr i8 %i.dx, 3
  %i.ey = and i8 %i.ex, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 15
  %i.fb = add nuw nsw i64 %.04.i18, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !22, !noalias !112
  call void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 80, ptr nonnull %i.a, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !112
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvh6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv.exit, %bb.ad, %_ZNK4llvh6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit, %_ZNK4llvh6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef float @_ZNK4llvh6detail9IEEEFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load i64, ptr %.in.i.i, align 8, !tbaa !18
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.g = trunc i64 %i.e to i32
  %i.h = bitcast i32 %i.g to float
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret float %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
end_hunk_0
