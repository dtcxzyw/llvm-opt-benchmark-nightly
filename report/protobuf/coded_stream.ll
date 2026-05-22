inline.NumInlined: 268
inline.NumDeleted: 134
begin_hunk_0_@_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm:bb.a
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.u = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.u, label %.preheader, label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit, !llvm.loop !37

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread: ; preds = %.preheader
  %i.v = zext nneg i32 %.012.i to i64             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013.i, ptr align 1 %i.l, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread, %bb.b
  %storemerge = phi ptr [ %i.w, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.j, %bb.b ]
  %.0 = phi ptr [ %i.a, %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit.thread ], [ %i.d, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !16
  %i.x = load i64, ptr %.0, align 1
  store i64 %i.x, ptr %1, align 8, !tbaa !46
  br label %_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit

_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi.exit: ; preds = %bb.c, %bb.d
  %.04 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream16ReadVarint32SlowEPj(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.a, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.a, 1
  %i.b = trunc i64 %.fca.0.extract to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !3
  %i.c = trunc i8 %.fca.1.extract to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 24 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 9
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt ptr %i.d, %i.e
  br i1 %i.k, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %.not = icmp sgt i8 %i.m, -1
  br i1 %.not, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28    ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i8 %i.o to i64
  %i.r = shl nuw nsw i64 %i.q, 7
  %i.s = load i8, ptr %i.e, align 1, !tbaa !28
  %i.t = zext i8 %i.s to i64
  %i.u = add nsw i64 %i.r, -128
  %i.v = add nsw i64 %i.u, %i.t
  store i64 %i.v, ptr %i.a, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28    ; 4 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i64
  %i.ae = zext i8 %i.o to i64
  %i.af = shl nuw nsw i64 %i.ae, 7
  %i.ag = add nsw i64 %i.af, -16512
  %i.ah = add nsw i64 %i.ag, %i.ab
  %i.ai = add nsw i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !28  ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = shl nuw nsw i64 %i.an, 21
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i64
  %i.ar = zext i8 %i.o to i64
  %i.as = shl nuw nsw i64 %i.ar, 7
  %i.at = zext i8 %i.y to i64
  %i.au = shl nuw nsw i64 %i.at, 14
  %i.av = add nuw nsw i64 %i.as, -2113664
  %i.aw = add nsw i64 %i.av, %i.au
  %i.ax = add nsw i64 %i.aw, %i.ao
  %i.ay = add nsw i64 %i.ax, %i.aq
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28  ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = zext nneg i8 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 28
  %i.bf = load i8, ptr %i.e, align 1, !tbaa !28
  %i.bg = zext i8 %i.bf to i64
  %i.bh = zext i8 %i.o to i64
  %i.bi = shl nuw nsw i64 %i.bh, 7
  %i.bj = zext i8 %i.y to i64
  %i.bk = shl nuw nsw i64 %i.bj, 14
  %i.bl = zext i8 %i.al to i64
  %i.bm = shl nuw nsw i64 %i.bl, 21
  %i.bn = add nuw nsw i64 %i.bi, -270549120
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = add nsw i64 %i.bp, %i.be
  %i.br = add nsw i64 %i.bq, %i.bg
  store i64 %i.br, ptr %i.a, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm6EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm7EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm8EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm9EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !28
  %i.cl = icmp sgt i8 %i.ck, -1
  br i1 %i.cl, label %bb.u, label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.u:                                             ; preds = %bb.t
  %i.cm = call fastcc noundef ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm10EEEPKhS5_Pm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.0.pn.ph = phi ptr [ %i.cm, %bb.u ], [ %i.w, %bb.e ], [ %i.aj, %bb.g ], [ %i.az, %bb.i ], [ %i.bs, %bb.k ], [ %i.bw, %bb.m ], [ %i.ca, %bb.o ], [ %i.ce, %bb.q ], [ %i.ci, %bb.s ]
  store ptr %.0.pn.ph, ptr %0, align 8, !tbaa !16
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit: ; preds = %bb.t, %bb.v
  %.sroa.016.0 = phi i64 [ %i.cn, %bb.v ], [ 0, %bb.t ]
  %.sroa.4.0 = phi i8 [ 1, %bb.v ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.x

bb.w:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.co = call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream16ReadVarint64SlowEPm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.b)
  %i.cp = zext i1 %i.co to i8
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit ], [ %i.cq, %bb.w ]
  %.sroa.4.1 = phi i8 [ %.sroa.4.0, %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit ], [ %i.cp, %bb.w ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.016.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1, 4294967296) i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp sgt i32 %i.g, 9
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt ptr %i.b, %i.c
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %.not = icmp sgt i8 %i.k, -1
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.l = add i32 %1, -128
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !28    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 7
  %i.r = add i32 %i.l, %i.q                       ; 2 uses
  %.not.i = icmp sgt i8 %i.o, -1
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.r, -16384
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.u = load i8, ptr %i.n, align 1, !tbaa !28    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 14
  %i.x = add i32 %i.s, %i.w                       ; 2 uses
  %.not24.i = icmp sgt i8 %i.u, -1
  br i1 %.not24.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i32 %i.x, -2097152
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !28   ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 21
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %.not25.i = icmp sgt i8 %i.aa, -1
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add i32 %i.ad, -268435456
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !28   ; 2 uses
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl i32 %i.ah, 28
  %i.aj = add i32 %i.ae, %i.ai                    ; 6 uses
  %.not26.i = icmp sgt i8 %i.ag, -1
  br i1 %.not26.i, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.al = load i8, ptr %i.af, align 1, !tbaa !28
  %.not27.i = icmp sgt i8 %i.al, -1
  br i1 %.not27.i, label %bb.h, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !28
  %.not27.i.1 = icmp sgt i8 %i.an, -1
  br i1 %.not27.i.1, label %bb.h, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !28
  %.not27.i.2 = icmp sgt i8 %i.ap, -1
  br i1 %.not27.i.2, label %bb.h, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !28
  %.not27.i.3 = icmp sgt i8 %i.ar, -1
  br i1 %.not27.i.3, label %bb.h, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !28
  %.not27.i.4 = icmp sgt i8 %i.at, -1
  br i1 %.not27.i.4, label %bb.h, label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint32FromArrayEjPKhPj.exit

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.2 = phi ptr [ %i.n, %bb.d ], [ %i.t, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.ak, %.preheader.preheader ], [ %i.am, %.preheader.1 ], [ %i.ao, %.preheader.2 ], [ %i.aq, %.preheader.3 ], [ %i.as, %.preheader.4 ]
  %.023.i = phi i32 [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.ad, %bb.f ], [ %i.aj, %bb.g ], [ %i.aj, %.preheader.preheader ], [ %i.aj, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aj, %.preheader.4 ]
  %i.au = zext i32 %.023.i to i64
  store ptr %.2, ptr %0, align 8, !tbaa !16
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint32FromArrayEjPKhPj.exit

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.av = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.av, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.av, 1
  %i.aw = trunc i8 %.fca.1.extract.i to i1
  %i.ax = and i64 %.fca.0.extract.i, 4294967295
  %i.ay = select i1 %i.aw, i64 %i.ax, i64 -1
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint32FromArrayEjPKhPj.exit

_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint32FromArrayEjPKhPj.exit: ; preds = %.preheader.4, %bb.h, %bb.i
  %.1 = phi i64 [ %i.ay, %bb.i ], [ %i.au, %bb.h ], [ -1, %.preheader.4 ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, -2147483648) i32 @_ZN6google8protobuf2io16CodedInputStream23ReadVarintSizeAsIntSlowEv(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.a, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.a, 1
  %i.b = trunc i8 %.fca.1.extract to i1
  %i.c = icmp ult i64 %.fca.0.extract, 2147483648
  %or.cond.not = select i1 %i.b, i1 %i.c, i1 false
  %i.d = trunc nuw nsw i64 %.fca.0.extract to i32
  %.0 = select i1 %or.cond.not, i32 %i.d, i32 -1
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf2io16CodedInputStream27ReadVarintSizeAsIntFallbackEv(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 24 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt ptr %i.c, %i.d
  br i1 %i.j, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %.not4 = icmp sgt i8 %i.l, -1
  br i1 %.not4, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28    ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i8 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 7
  %i.r = load i8, ptr %i.d, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i64
  %i.t = add nsw i64 %i.q, -128
  %i.u = add nsw i64 %i.t, %i.s
  store i64 %i.u, ptr %i.a, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %_ZN6google8protobuf2io12_GLOBAL__N_121ReadVarint64FromArrayEPKhPm.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28    ; 4 uses
end_hunk_0
