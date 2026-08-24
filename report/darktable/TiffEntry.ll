Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TiffEntry?download=true
inline.NumInlined: 267
inline.NumDeleted: 167
begin_hunk_0_@_ZNK8rawspeed9TiffEntry12getSRationalEj:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.b = load i8, ptr %i.a, align 2, !tbaa !29    ; 3 uses
  %.off.i = add i8 %i.b, -8
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed9TiffEntry12getSRationalEj, i32 noundef %i.c) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl i32 %1, 1                            ; 2 uses
  %i.f = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.e)
  %i.g = or disjoint i32 %i.e, 1
  %i.h = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.g)
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.3.0 = phi i64 [ %i.j, %bb.e ], [ 4294967296, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.f, %bb.e ], [ %i.d, %bb.d ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.b = load i8, ptr %i.a, align 2, !tbaa !29    ; 2 uses
  switch i8 %i.b, label %_ZNK8rawspeed9TiffEntry7isFloatEv.exit [
    i8 12, label %bb.b
    i8 11, label %bb.d
    i8 4, label %bb.f
    i8 3, label %bb.f
    i8 9, label %bb.g
    i8 8, label %bb.g
    i8 5, label %_ZNK8rawspeed9TiffEntry11getRationalEj.exit
    i8 10, label %_ZNK8rawspeed9TiffEntry12getSRationalEj.exit
  ]

_ZNK8rawspeed9TiffEntry7isFloatEv.exit:           ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i16, ptr %i.d, align 8, !tbaa !28
  %i.f = zext i16 %i.e to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed9TiffEntry8getFloatEj, i32 noundef %i.c, i32 noundef %i.f) #15
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = shl i32 %1, 3
  %i.j = add i32 %i.h, %i.i                       ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = zext i32 %i.n to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.l, %i.o
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK8rawspeed10ByteStream4peekIdEET_j.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream4peekIdEET_j.exit:       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i16, ptr %i.q, align 4, !tbaa !26
  %i.s = icmp eq i16 %i.r, -8531
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.u = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i32 %i.j, 8
  %i.w = icmp samesign ule i32 %i.v, %i.n
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  %.0.copyload.i.i.i.i = load double, ptr %i.x, align 1 ; 2 uses
  %i.y = bitcast double %.0.copyload.i.i.i.i to i64
  %i.z = tail call i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = bitcast i64 %i.z to double
  %i.ab = select i1 %i.s, double %.0.copyload.i.i.i.i, double %i.aa
  %i.ac = fptrunc double %i.ab to float
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.af = shl i32 %1, 2
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !25 ; 3 uses
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i.i8 = icmp samesign ugt i64 %i.ai, %i.al
  br i1 %.not.i.i.i.i8, label %bb.e, label %_ZNK8rawspeed10ByteStream4peekIfEET_j.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream4peekIfEET_j.exit:       ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !26
  %i.ap = icmp eq i16 %i.ao, -8531
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ar = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i32 %i.ag, 4
  %i.at = icmp samesign ule i32 %i.as, %i.ak
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ah
  %.0.copyload.i.i.i.i9 = load float, ptr %i.au, align 1 ; 2 uses
  %i.av = bitcast float %.0.copyload.i.i.i.i9 to i32
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = bitcast i32 %i.aw to float
  %i.ay = select i1 %i.ap, float %.0.copyload.i.i.i.i9, float %i.ax
  br label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.az = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %i.ba = uitofp i32 %i.az to float
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.bb = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %i.bc = sitofp i32 %i.bb to float
  br label %bb.j

_ZNK8rawspeed9TiffEntry11getRationalEj.exit:      ; preds = %bb.a
  %i.bd = shl i32 %1, 1                           ; 2 uses
  %i.be = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.bd)
  %i.bf = or disjoint i32 %i.bd, 1
  %i.bg = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.bf) ; 2 uses
  %.not7 = icmp eq i32 %i.bg, 0
  br i1 %.not7, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK8rawspeed9TiffEntry11getRationalEj.exit
  %i.bh = uitofp i32 %i.be to float
  %i.bi = uitofp i32 %i.bg to float
  %i.bj = fdiv float %i.bh, %i.bi
  br label %bb.j

_ZNK8rawspeed9TiffEntry12getSRationalEj.exit:     ; preds = %bb.a
  %i.bk = shl i32 %1, 1                           ; 2 uses
  %i.bl = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.bk)
  %i.bm = or disjoint i32 %i.bk, 1
  %i.bn = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getI32Ej(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.bm) ; 2 uses
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8rawspeed9TiffEntry12getSRationalEj.exit
  %i.bo = sitofp i32 %i.bl to float
  %i.bp = sitofp i32 %i.bn to float
  %i.bq = fdiv float %i.bo, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8rawspeed9TiffEntry12getSRationalEj.exit, %bb.h, %_ZNK8rawspeed9TiffEntry11getRationalEj.exit, %bb.g, %bb.f, %_ZNK8rawspeed10ByteStream4peekIfEET_j.exit, %_ZNK8rawspeed10ByteStream4peekIdEET_j.exit
  %.0 = phi float [ 0.000000e+00, %_ZNK8rawspeed9TiffEntry11getRationalEj.exit ], [ %i.ac, %_ZNK8rawspeed10ByteStream4peekIdEET_j.exit ], [ %i.ay, %_ZNK8rawspeed10ByteStream4peekIfEET_j.exit ], [ %i.ba, %bb.f ], [ %i.bc, %bb.g ], [ 0.000000e+00, %_ZNK8rawspeed9TiffEntry12getSRationalEj.exit ], [ %i.bj, %bb.h ], [ %i.bq, %bb.i ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.b = load i8, ptr %i.a, align 2, !tbaa !29    ; 2 uses
  %.off = add i8 %i.b, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZNK8rawspeed10ByteStream10peekBufferEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev, i32 noundef %i.c) #15
  unreachable

_ZNK8rawspeed10ByteStream10peekBufferEj.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %i.h = icmp uge i32 %i.e, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp sgt i32 %i.e, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = sub nuw i32 %i.e, %i.g
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = lshr i64 %i.k, 2                         ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK8rawspeed10ByteStream10peekBufferEj.exit
  %i.t = and i64 %i.k, 2147483644
  %scevgep.i.i.i = getelementptr i8, ptr %i.o, i64 %i.t ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.af, %bb.g ] ; 9 uses
  %i.u = load i8, ptr %.02946.i.i.i, align 1, !tbaa !42
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !42
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !42
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !42
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ag = add nsw i64 %.047.i.i.i, -1
  %i.ah = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.ah, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !44

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNK8rawspeed10ByteStream10peekBufferEj.exit
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.r, %_ZNK8rawspeed10ByteStream10peekBufferEj.exit ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.o, %_ZNK8rawspeed10ByteStream10peekBufferEj.exit ] ; 5 uses
  %i.ai = sub i64 %i.q, %.pre-phi.i.i.i
  switch i64 %i.ai, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !42
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.1.i.i.i = phi ptr [ %i.al, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.am = load i8, ptr %.1.i.i.i, align 1, !tbaa !42
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.2.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ap = load i8, ptr %.2.i.i.i, align 1, !tbaa !42
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.c, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.p, %bb.k ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.h ], [ %i.at, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit30 ], [ %i.as, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit28 ], [ %i.ar, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !48
  %i.aw = ptrtoint ptr %.028.i.i.i to i64
  %i.ax = sub i64 %i.aw, %i.r                     ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %.noexc4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !51

.noexc4.i:                                        ; preds = %bb.m
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.m
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #24 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !52
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.au, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ] ; 3 uses
  switch i64 %i.ax, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.be = load i8, ptr %i.o, align 1, !tbaa !42
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.o, i64 %i.ax, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  store i8 0, ptr %i.bf, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, i64 } @_ZNK8rawspeed9TiffEntry14getRootIfdDataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0717 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %.not18 = icmp eq ptr %.0717, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0719 = phi ptr [ %.07, %bb.b ], [ %.0717, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.0719, align 8, !tbaa !11
  %.not15 = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed11TiffRootIFDE, i64 16)
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.0719, i64 16
  %.07 = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq ptr %.07, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed9TiffEntry14getRootIfdDataEv) #15
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0719, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0719, i64 112
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed9TiffEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed9TiffEntryD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed17TiffEntryWithDataD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

end_hunk_0
