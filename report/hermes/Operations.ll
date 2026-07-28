inline.NumInlined: 2743
inline.NumDeleted: 1013
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE:bb.a
  br label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit

bb.w:                                             ; preds = %bb.u
  %i.bq = fcmp oeq double %i.am, 0.000000e+00
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.bs = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.br, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 39) #18
  br label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit

bb.y:                                             ; preds = %bb.w
  %i.bt = fcmp oeq double %i.am, +inf
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.bv = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bu, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 40) #18
  br label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit

bb.aa:                                            ; preds = %bb.y
  %i.bw = fcmp oeq double %i.am, -inf
  br i1 %i.bw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.by = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bx, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 42) #18
  br label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bz = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.am, ptr noundef nonnull %i.a, i64 noundef 32) #18
  %i.ca = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i64 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i64 } %i.ca, 0
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.cd = extractvalue { i32, i64 } %i.ca, 1
  %i.ce = and i64 %i.cd, 281474976710655
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit

_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit.i, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.sroa.041.3.i = phi ptr [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit.i ], [ %i.bm, %bb.t ], [ %i.bp, %bb.v ], [ %i.bs, %bb.x ], [ %i.bv, %bb.z ], [ %i.by, %bb.ab ], [ %i.cf, %bb.ad ], [ inttoptr (i64 -1 to ptr), %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.d, %bb.e, %bb.f, %bb.i, %bb.h, %bb.c, %bb.b, %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.026.2 = phi ptr [ %.sroa.041.3.i, %_ZN6hermes2vmL14numberToStringERNS0_7RuntimeEd.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.u, %bb.i ], [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.h ], [ inttoptr (i64 -1 to ptr), %bb.j ]
  ret ptr %.sroa.026.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -844424930131968, 0) i64 @_ZN6hermes2vm6typeOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.b = ashr i64 %i.a, 47
  switch i64 %i.b, label %bb.g [
    i64 -12, label %bb.h
    i64 -11, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread
    i64 -6, label %bb.b
    i64 -5, label %bb.b
    i64 -4, label %bb.c
    i64 -3, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -2, label %bb.f
    i64 -1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp ugt i64 %i.a, -844424930131969
  br i1 %i.c, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %bb.f
  %i.d = and i64 %i.a, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, -1140850688
  %i.h = icmp ult i32 %i.g, 150994944
  br i1 %i.h, label %bb.h, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %bb.f, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, %bb.a, %bb.g, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink11 = phi i32 [ 20, %bb.g ], [ 26, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ 18, %bb.a ], [ 25, %bb.e ], [ 24, %bb.d ], [ 21, %bb.c ], [ 22, %bb.b ], [ 27, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.j = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sink11) #18
  %.sroa.09.0.in = ptrtoint ptr %i.j to i64
  %.sroa.09.0 = or i64 %.sroa.09.0.in, -844424930131968
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes2vm12toArrayIndexERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) #18 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.b, i64 %i.c)
  ret i64 %i.d
}

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr nofree readonly captures(address) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32  ; 3 uses
  %.sroa.7.8.extract.shift = lshr i64 %1, 32      ; 6 uses
  %i.a = icmp slt i32 %.sroa.3.8.extract.trunc, 0
  br i1 %i.a, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %.sroa.3.8.extract.trunc, 1073741824
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8, !tbaa !10
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 150994943
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.e, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.h:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.k, align 8, !tbaa !10
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %0, %bb.b ], [ %i.h, %bb.d ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.o, %bb.h ]
  %i.p = and i64 %1, 1073741823
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.8.extract.shift
  %i.s = icmp samesign eq i64 %.sroa.7.8.extract.shift, 0
  br i1 %i.s, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %i.t = load i8, ptr %i.q, align 1, !tbaa !33
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.j, label %.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i64 %.sroa.7.8.extract.shift, 1
  br i1 %i.v, label %bb.m, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

.preheader.i:                                     ; preds = %bb.i, %bb.l
  %.024.i = phi i64 [ %.fr.i, %bb.l ], [ 0, %bb.i ]
  %.0.i = phi ptr [ %i.aa, %bb.l ], [ %i.q, %bb.i ] ; 2 uses
  %i.w = load i8, ptr %.0.i, align 1, !tbaa !33   ; 2 uses
  %i.x = add i8 %i.w, -58
  %or.cond.i = icmp ult i8 %i.x, -10
  br i1 %or.cond.i, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %2 = mul nuw nsw i64 %.024.i, 10
  %3 = and i8 %i.w, 15
  %4 = zext nneg i8 %3 to i64
  %i.y = add nuw nsw i64 %2, %4
  %.fr.i = freeze i64 %i.y                        ; 4 uses
  %i.z = icmp samesign ult i64 %.fr.i, 4294967296
  br i1 %i.z, label %bb.l, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.not.i5 = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i5, label %.critedge.i, label %.preheader.i, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.l
  %.not43.i = icmp eq i64 %.fr.i, 4294967295
  br i1 %.not43.i, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.j
  %.sroa.0.342.i = phi i64 [ 0, %bb.j ], [ %.fr.i, %.critedge.i ]
  %i.ab = or disjoint i64 %.sroa.0.342.i, 4294967296
  br label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

bb.n:                                             ; preds = %bb.a
  %.not.i6 = icmp samesign ult i32 %.sroa.3.8.extract.trunc, 1073741824
  br i1 %.not.i6, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i7 = load i64, ptr %0, align 8, !tbaa !10
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i7, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr               ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 150994943
  br i1 %i.af, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.q:                                             ; preds = %bb.o
  %.mask.i.i.i.i.i.i.i.i.i8 = and i32 %i.ae, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i8, label %bb.t [
    i32 117440512, label %bb.r
    i32 50331648, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.t:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.0.copyload.i.i.i2.i10 = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i2.i10, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit: ; preds = %bb.n, %bb.p, %bb.r, %bb.s, %bb.t
  %.0.i.sink.i9 = phi ptr [ %0, %bb.n ], [ %i.ah, %bb.p ], [ %i.ai, %bb.r ], [ %i.aj, %bb.s ], [ %i.ao, %bb.t ]
  %i.ap = and i64 %1, 1073741823
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i9, i64 %i.ap ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.7.8.extract.shift, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %i.as = icmp eq i64 %.sroa.7.8.extract.shift, 0
  br i1 %i.as, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit
  %i.at = load i16, ptr %i.aq, align 2, !tbaa !46
  %i.au = icmp eq i16 %i.at, 48
  br i1 %i.au, label %bb.v, label %.preheader.i11

bb.v:                                             ; preds = %bb.u
  %i.av = icmp eq i64 %.sroa.7.8.extract.shift, 1
  br i1 %i.av, label %bb.y, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

.preheader.i11:                                   ; preds = %bb.u, %bb.x
  %.024.i12 = phi i64 [ %.fr.i15, %bb.x ], [ 0, %bb.u ]
  %.0.i13 = phi ptr [ %i.ba, %bb.x ], [ %i.aq, %bb.u ] ; 2 uses
  %i.aw = load i16, ptr %.0.i13, align 2, !tbaa !46 ; 2 uses
  %i.ax = add i16 %i.aw, -58
  %or.cond.i14 = icmp ult i16 %i.ax, -10
  br i1 %or.cond.i14, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.w

bb.w:                                             ; preds = %.preheader.i11
  %5 = mul nuw nsw i64 %.024.i12, 10
  %6 = and i16 %i.aw, 15
  %7 = zext nneg i16 %6 to i64
  %i.ay = add nuw nsw i64 %5, %7
  %.fr.i15 = freeze i64 %i.ay                     ; 4 uses
  %i.az = icmp samesign ult i64 %.fr.i15, 4294967296
  br i1 %i.az, label %bb.x, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i13, i64 2 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ba, %i.ar
  br i1 %.not.i17, label %.critedge.i18, label %.preheader.i11, !llvm.loop !48

.critedge.i18:                                    ; preds = %bb.x
  %.not43.i19 = icmp eq i64 %.fr.i15, 4294967295
  br i1 %.not43.i19, label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit, label %bb.y

bb.y:                                             ; preds = %.critedge.i18, %bb.v
  %.sroa.0.342.i20 = phi i64 [ 0, %bb.v ], [ %.fr.i15, %.critedge.i18 ]
  %i.bb = or disjoint i64 %.sroa.0.342.i20, 4294967296
  br label %_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit

_ZN6hermes12toArrayIndexIPKcEENS_8OptValueIjEET_S5_.exit: ; preds = %bb.w, %.preheader.i11, %bb.k, %.preheader.i, %bb.y, %.critedge.i18, %bb.v, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, %bb.m, %.critedge.i, %bb.j, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %.sroa.0.0.in = phi i64 [ 0, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit ], [ %i.ab, %bb.m ], [ 0, %.critedge.i ], [ 0, %bb.j ], [ 0, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit ], [ 0, %bb.k ], [ %i.bb, %bb.y ], [ 0, %.critedge.i18 ], [ 0, %bb.v ], [ 0, %.preheader.i ], [ 0, %.preheader.i11 ], [ 0, %bb.w ]
  ret i64 %.sroa.0.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 9223372036854775807
  %i.b = icmp eq i64 %i.a, 9221120237041090560
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 9223372036854775807
  %i.d = icmp eq i64 %i.c, 9221120237041090560
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.unshifted = xor i64 %1, %0
  %.not = icmp ult i64 %.not.unshifted, 281474976710656
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.mask.i = and i64 %0, -281474976710656
  switch i64 %.mask.i, label %bb.g [
    i64 -844424930131968, label %bb.e
    i64 -562949953421312, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = and i64 %0, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = and i64 %1, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef %i.h) #18
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = and i64 %0, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = and i64 %1, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !49
  %i.t = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.n, i32 %i.p, ptr nonnull %i.q, i32 %i.s) #18
  %i.u = icmp eq i32 %i.t, 0
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %0, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.e
  %.0 = phi i1 [ %i.v, %bb.g ], [ true, %bb.b ], [ %i.i, %bb.e ], [ %i.u, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm15isSameValueZeroENS0_11HermesValueES1_(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, -1970324836974592
  %i.b = icmp ult i64 %1, -1970324836974592
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast i64 %0 to double
  %i.d = bitcast i64 %1 to double
  %i.e = fcmp oeq double %i.c, %i.d
  br i1 %i.e, label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = and i64 %0, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 9221120237041090560
  br i1 %i.g, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %1, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 9221120237041090560
  br i1 %i.i, label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.unshifted.i = xor i64 %1, %0
  %.not.i = icmp ult i64 %.not.unshifted.i, 281474976710656
  br i1 %.not.i, label %bb.f, label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit

bb.f:                                             ; preds = %bb.e
  %.mask.i.i = and i64 %0, -281474976710656
  switch i64 %.mask.i.i, label %bb.i [
    i64 -844424930131968, label %bb.g
    i64 -562949953421312, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = and i64 %0, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = and i64 %1, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %i.k, ptr noundef %i.m) #18
  br label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit

bb.h:                                             ; preds = %bb.f
  %i.o = and i64 %0, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = and i64 %1, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !49
  %i.y = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.s, i32 %i.u, ptr nonnull %i.v, i32 %i.x) #18
  %i.z = icmp eq i32 %i.y, 0
  br label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit

bb.i:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %0, %1
  br label %_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit

_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.aa, %bb.i ], [ true, %bb.d ], [ %i.n, %bb.g ], [ %i.z, %bb.h ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm11isPrimitiveENS0_11HermesValueE(i64 %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, -281474976710656
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19ordinaryToPrimitiveENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_13PreferredTypeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  store ptr %i.c, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !56
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !58
  store ptr %3, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 28, ptr %0, i32 0, ptr noundef null) #18 ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  %i.n = extractvalue { i32, i64 } %i.l, 1        ; 3 uses
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %.critedge37, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp ult ptr %i.r, %i.t
end_hunk_0
begin_hunk_1_@_ZN6hermes17parseIntWithRadixILb0ENS_2vm10StringViewEEENS_8OptValueIdEET0_i:bb.a
_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i63, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i53
  %.sroa.0.0.i87 = phi ptr [ %i.aw, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i63 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i53 ] ; 4 uses
  %.sroa.3.0.i85 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i63 ], [ %i.bp, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i53 ] ; 3 uses
  %.sroa.3.0.i55 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i63 ], [ %i.br, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i53 ] ; 6 uses
  %.sroa.0.0.i56 = phi ptr [ %i.az, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i63 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i53 ] ; 6 uses
  %i.bs = ashr i32 %2, 1
  %i.bt = sext i32 %i.bs to i64                   ; 7 uses
  %.not.i66 = icmp eq ptr %.sroa.0.0.i87, null    ; 3 uses
  br i1 %.not.i66, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %bb.ak

.preheader228:                                    ; preds = %bb.bl, %bb.bk
  %i.bu = phi i64 [ %i.fb, %bb.bk ], [ %i.fe, %bb.bl ] ; 2 uses
  %.sroa.069.1138 = phi ptr [ %.sroa.069.1.jt4, %bb.bk ], [ %.sroa.069.1.jt3, %bb.bl ] ; 4 uses
  %.sroa.7.1130 = phi ptr [ %.sroa.7.1.jt4, %bb.bk ], [ %.sroa.7.1.jt3, %bb.bl ] ; 3 uses
  %.135.jt4 = phi double [ %i.fc, %bb.bk ], [ %i.ff, %bb.bl ] ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %bb.bk

spec.select.si.unfold.false.jt3:                  ; preds = %bb.bl, %bb.bm
  %i.bw = phi i64 [ %i.fi, %bb.bm ], [ %i.fe, %bb.bl ] ; 2 uses
  %.246147 = phi i64 [ %.246.jt2, %bb.bm ], [ %.246.jt3, %bb.bl ]
  %.sroa.069.1139 = phi ptr [ %.sroa.069.1.jt2, %bb.bm ], [ %.sroa.069.1.jt3, %bb.bl ] ; 5 uses
  %.sroa.7.1131 = phi ptr [ %.sroa.7.1.jt2, %bb.bm ], [ %.sroa.7.1.jt3, %bb.bl ] ; 4 uses
  %.135.jt3 = phi double [ 2.000000e+00, %bb.bm ], [ %i.ff, %bb.bl ] ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.ag, label %bb.bl

bb.ad:                                            ; preds = %bb.bo
  %i.by = icmp eq i64 %i.fn, 0
  br i1 %i.by, label %bb.ah, label %bb.bm

.lr.ph:                                           ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, %bb.bn
  %i.bz = phi i64 [ %i.fk, %bb.bn ], [ %i.ev, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 2 uses
  %.sroa.7.1126245 = phi ptr [ %.sroa.7.1.jt0, %bb.bn ], [ %.sroa.7.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 4 uses
  %.sroa.069.1134244 = phi ptr [ %.sroa.069.1.jt0, %bb.bn ], [ %.sroa.069.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 5 uses
  %.246142243 = phi i64 [ %.246.jt0, %bb.bn ], [ %.145, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ]
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.ai, label %bb.bn

bb.ae:                                            ; preds = %._crit_edge, %bb.bo
  %i.cb = phi i64 [ %i.fn, %bb.bo ], [ %.lcssa237, %._crit_edge ] ; 2 uses
  %.246148 = phi i64 [ %.246.jt1, %bb.bo ], [ %.246142.lcssa, %._crit_edge ]
  %.sroa.069.1140 = phi ptr [ %.sroa.069.1.jt1, %bb.bo ], [ %.sroa.069.1134.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.7.1132 = phi ptr [ %.sroa.7.1.jt1, %bb.bo ], [ %.sroa.7.1126.lcssa, %._crit_edge ] ; 4 uses
  %i.cc = phi double [ %i.fq, %bb.bo ], [ 1.000000e+00, %._crit_edge ] ; 3 uses
  %.1.jt1 = phi i64 [ %i.fr, %bb.bo ], [ 52, %._crit_edge ]
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %bb.aj, label %bb.bo

bb.af:                                            ; preds = %.preheader228
  %.not.i66.jt4 = icmp eq ptr %.sroa.069.1138, null ; 2 uses
  br i1 %.not.i66.jt4, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt4, label %bb.al

bb.ag:                                            ; preds = %spec.select.si.unfold.false.jt3
  %.not.i66.jt3 = icmp eq ptr %.sroa.069.1139, null ; 3 uses
  br i1 %.not.i66.jt3, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt3, label %bb.am

bb.ah:                                            ; preds = %bb.ad
  %.not.i66.jt2 = icmp eq ptr %.sroa.069.1.jt1, null ; 3 uses
  br i1 %.not.i66.jt2, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2, label %bb.an

bb.ai:                                            ; preds = %.lr.ph
  %.not.i66.jt0 = icmp eq ptr %.sroa.069.1134244, null ; 3 uses
  br i1 %.not.i66.jt0, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0, label %bb.ao

bb.aj:                                            ; preds = %bb.ae
  %.not.i66.jt1 = icmp eq ptr %.sroa.069.1140, null ; 3 uses
  br i1 %.not.i66.jt1, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1, label %bb.ap

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.ce = icmp eq ptr %.sroa.0.0.i87, %.sroa.0.0.i56
  br i1 %i.ce, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.aq

bb.al:                                            ; preds = %bb.af
  %i.cf = icmp eq ptr %.sroa.069.1138, %.sroa.0.0.i56
  br i1 %i.cf, label %.thread158, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4

bb.am:                                            ; preds = %bb.ag
  %i.cg = icmp eq ptr %.sroa.069.1139, %.sroa.0.0.i56
  br i1 %i.cg, label %.thread166, label %bb.ar

bb.an:                                            ; preds = %bb.ah
  %i.ch = icmp eq ptr %.sroa.069.1.jt1, %.sroa.0.0.i56
  br i1 %i.ch, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.as

bb.ao:                                            ; preds = %bb.ai
  %i.ci = icmp eq ptr %.sroa.069.1134244, %.sroa.0.0.i56
  br i1 %i.ci, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.at

bb.ap:                                            ; preds = %bb.aj
  %i.cj = icmp eq ptr %.sroa.069.1140, %.sroa.0.0.i56
  br i1 %i.cj, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.au

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.ck = icmp eq ptr %.sroa.3.0.i85, %.sroa.3.0.i55
  br i1 %i.ck, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.av

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt4: ; preds = %bb.af
  %i.cl = icmp eq ptr %.sroa.7.1130, %.sroa.3.0.i55
  br i1 %i.cl, label %.thread158, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt3: ; preds = %bb.ag
  %i.cm = icmp eq ptr %.sroa.7.1131, %.sroa.3.0.i55
  br i1 %i.cm, label %.thread166, label %bb.aw

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2: ; preds = %bb.ah
  %i.cn = icmp eq ptr %.sroa.7.1.jt1, %.sroa.3.0.i55
  br i1 %i.cn, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.ax

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0: ; preds = %bb.ai
  %i.co = icmp eq ptr %.sroa.7.1126245, %.sroa.3.0.i55
  br i1 %i.co, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.ay

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1: ; preds = %bb.aj
  %i.cp = icmp eq ptr %.sroa.7.1132, %.sroa.3.0.i55
  br i1 %i.cp, label %_ZN4llvh13isPowerOf2_32Ej.exit.thread, label %bb.az

bb.aq:                                            ; preds = %bb.ak
  %i.cq = load i8, ptr %.sroa.0.0.i87, align 1, !tbaa !33
  %i.cr = zext i8 %i.cq to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

bb.ar:                                            ; preds = %bb.am
  %i.cs = load i8, ptr %.sroa.069.1139, align 1, !tbaa !33
  %i.ct = zext i8 %i.cs to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt3

bb.as:                                            ; preds = %bb.an
  %i.cu = load i8, ptr %.sroa.069.1.jt1, align 1, !tbaa !33
  %i.cv = zext i8 %i.cu to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt2

bb.at:                                            ; preds = %bb.ao
  %i.cw = load i8, ptr %.sroa.069.1134244, align 1, !tbaa !33
  %i.cx = zext i8 %i.cw to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt0

bb.au:                                            ; preds = %bb.ap
  %i.cy = load i8, ptr %.sroa.069.1140, align 1, !tbaa !33
  %i.cz = zext i8 %i.cy to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt1

bb.av:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit
  %i.da = load i16, ptr %.sroa.3.0.i85, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

bb.aw:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt3
  %i.db = load i16, ptr %.sroa.7.1131, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt3

bb.ax:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2
  %i.dc = load i16, ptr %.sroa.7.1.jt1, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt2

bb.ay:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0
  %i.dd = load i16, ptr %.sroa.7.1126245, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt0

bb.az:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1
  %i.de = load i16, ptr %.sroa.7.1132, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt1

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit: ; preds = %bb.aq, %bb.av
  %i.df = phi i16 [ %i.cr, %bb.aq ], [ %i.da, %bb.av ] ; 2 uses
  %i.dg = trunc i16 %i.df to i8                   ; 2 uses
  %i.dh = add i8 %i.dg, -48
  %or.cond = icmp ult i8 %i.dh, 10
  br i1 %or.cond, label %bb.ba, label %bb.bf

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt3: ; preds = %bb.ar, %bb.aw
  %i.di = phi i16 [ %i.db, %bb.aw ], [ %i.ct, %bb.ar ] ; 2 uses
  %i.dj = trunc i16 %i.di to i8                   ; 2 uses
  %i.dk = add i8 %i.dj, -48
  %or.cond.jt3 = icmp ult i8 %i.dk, 10
  br i1 %or.cond.jt3, label %bb.bb, label %bb.bg

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt2: ; preds = %bb.as, %bb.ax
  %i.dl = phi i16 [ %i.dc, %bb.ax ], [ %i.cv, %bb.as ] ; 2 uses
  %i.dm = trunc i16 %i.dl to i8                   ; 2 uses
  %i.dn = add i8 %i.dm, -48
  %or.cond.jt2 = icmp ult i8 %i.dn, 10
  br i1 %or.cond.jt2, label %bb.bc, label %bb.bh

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt0: ; preds = %bb.at, %bb.ay
  %i.do = phi i16 [ %i.dd, %bb.ay ], [ %i.cx, %bb.at ] ; 2 uses
  %i.dp = trunc i16 %i.do to i8                   ; 2 uses
  %i.dq = add i8 %i.dp, -48
  %or.cond.jt0 = icmp ult i8 %i.dq, 10
  br i1 %or.cond.jt0, label %bb.bd, label %bb.bi

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt1: ; preds = %bb.au, %bb.az
  %i.dr = phi i16 [ %i.de, %bb.az ], [ %i.cz, %bb.au ] ; 2 uses
  %i.ds = trunc i16 %i.dr to i8                   ; 2 uses
  %i.dt = add i8 %i.ds, -48
  %or.cond.jt1 = icmp ult i8 %i.dt, 10
  br i1 %or.cond.jt1, label %bb.be, label %bb.bj

bb.ba:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %.mask = and i16 %i.df, 255
  %i.du = zext nneg i16 %.mask to i64
  %i.dv = add nuw nsw i64 %i.du, 4294967248
  %3 = and i64 %i.dv, 4294967295
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.bb:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt3
  %.mask.jt3 = and i16 %i.di, 255
  %i.dw = zext nneg i16 %.mask.jt3 to i64
  %i.dx = add nuw nsw i64 %i.dw, 4294967248
  %4 = and i64 %i.dx, 4294967295
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3

bb.bc:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt2
  %.mask.jt2 = and i16 %i.dl, 255
  %i.dy = zext nneg i16 %.mask.jt2 to i64
  %i.dz = add nuw nsw i64 %i.dy, 4294967248
  %5 = and i64 %i.dz, 4294967295
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2

bb.bd:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt0
  %.mask.jt0 = and i16 %i.do, 255
  %i.ea = zext nneg i16 %.mask.jt0 to i64
  %i.eb = add nuw nsw i64 %i.ea, 4294967248
  %6 = and i64 %i.eb, 4294967295
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0

bb.be:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt1
  %.mask.jt1 = and i16 %i.dr, 255
  %i.ec = zext nneg i16 %.mask.jt1 to i64
  %i.ed = add nuw nsw i64 %i.ec, 4294967248
  %7 = and i64 %i.ed, 4294967295
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1

bb.bf:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.ee = or i8 %i.dg, 32
  %i.ef = sext i8 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, -87
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.bg:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt3
  %i.eh = or i8 %i.dj, 32
  %i.ei = sext i8 %i.eh to i64
  %i.ej = add nsw i64 %i.ei, -87
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3

bb.bh:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt2
  %i.ek = or i8 %i.dm, 32
  %i.el = sext i8 %i.ek to i64
  %i.em = add nsw i64 %i.el, -87
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2

bb.bi:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt0
  %i.en = or i8 %i.dp, 32
  %i.eo = sext i8 %i.en to i64
  %i.ep = add nsw i64 %i.eo, -87
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0

bb.bj:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.jt1
  %i.eq = or i8 %i.ds, 32
  %i.er = sext i8 %i.eq to i64
  %i.es = add nsw i64 %i.er, -87
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1

_ZN6hermes2vm10StringView14const_iteratorppEv.exit: ; preds = %bb.bf, %bb.ba
  %.145 = phi i64 [ %3, %bb.ba ], [ %i.eg, %bb.bf ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i87, i64 1
  %.sroa.7.2.idx = select i1 %.not.i66, i64 2, i64 0
  %.sroa.7.2 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i85, i64 %.sroa.7.2.idx ; 2 uses
  %.sroa.069.2 = select i1 %.not.i66, ptr null, ptr %i.et ; 2 uses
  %i.eu = and i64 %.145, %i.bt
  %.not242 = icmp eq i64 %i.eu, 0
  %i.ev = lshr i64 %i.bt, 1                       ; 2 uses
  br i1 %.not242, label %.lr.ph, label %._crit_edge

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4: ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt4, %bb.al
  %.sroa.7.2.idx.jt4 = phi i64 [ 2, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt4 ], [ 0, %bb.al ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.069.1138, i64 1
  %.sroa.7.2.jt4 = getelementptr inbounds nuw i8, ptr %.sroa.7.1130, i64 %.sroa.7.2.idx.jt4
  %.sroa.069.2.jt4 = select i1 %.not.i66.jt4, ptr null, ptr %i.ew
  br label %bb.bk

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3: ; preds = %bb.bg, %bb.bb
  %.145.jt3 = phi i64 [ %4, %bb.bb ], [ %i.ej, %bb.bg ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.069.1139, i64 1
  %.sroa.7.2.idx.jt3 = select i1 %.not.i66.jt3, i64 2, i64 0
  %.sroa.7.2.jt3 = getelementptr inbounds nuw i8, ptr %.sroa.7.1131, i64 %.sroa.7.2.idx.jt3
  %.sroa.069.2.jt3 = select i1 %.not.i66.jt3, ptr null, ptr %i.ex
  br label %bb.bl

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2: ; preds = %bb.bh, %bb.bc
  %.145.jt2 = phi i64 [ %5, %bb.bc ], [ %i.em, %bb.bh ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.069.1.jt1, i64 1
  %.sroa.7.2.idx.jt2 = select i1 %.not.i66.jt2, i64 2, i64 0
  %.sroa.7.2.jt2 = getelementptr inbounds nuw i8, ptr %.sroa.7.1.jt1, i64 %.sroa.7.2.idx.jt2
  %.sroa.069.2.jt2 = select i1 %.not.i66.jt2, ptr null, ptr %i.ey
  br label %bb.bm

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0: ; preds = %bb.bi, %bb.bd
  %.145.jt0 = phi i64 [ %6, %bb.bd ], [ %i.ep, %bb.bi ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.069.1134244, i64 1
  %.sroa.7.2.idx.jt0 = select i1 %.not.i66.jt0, i64 2, i64 0
  %.sroa.7.2.jt0 = getelementptr inbounds nuw i8, ptr %.sroa.7.1126245, i64 %.sroa.7.2.idx.jt0
  %.sroa.069.2.jt0 = select i1 %.not.i66.jt0, ptr null, ptr %i.ez
  br label %bb.bn

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1: ; preds = %bb.bj, %bb.be
  %.145.jt1 = phi i64 [ %7, %bb.be ], [ %i.es, %bb.bj ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.069.1140, i64 1
  %.sroa.7.2.idx.jt1 = select i1 %.not.i66.jt1, i64 2, i64 0
  %.sroa.7.2.jt1 = getelementptr inbounds nuw i8, ptr %.sroa.7.1132, i64 %.sroa.7.2.idx.jt1
  %.sroa.069.2.jt1 = select i1 %.not.i66.jt1, ptr null, ptr %i.fa
  br label %bb.bo

bb.bk:                                            ; preds = %.preheader228, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4
  %.sroa.7.1.jt4 = phi ptr [ %.sroa.7.1130, %.preheader228 ], [ %.sroa.7.2.jt4, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4 ]
  %.sroa.069.1.jt4 = phi ptr [ %.sroa.069.1138, %.preheader228 ], [ %.sroa.069.2.jt4, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4 ]
  %.137.jt4 = phi i64 [ %i.bu, %.preheader228 ], [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt4 ]
  %i.fb = lshr i64 %.137.jt4, 1
  %i.fc = fmul double %.135.jt4, 2.000000e+00
  br label %.preheader228

bb.bl:                                            ; preds = %spec.select.si.unfold.false.jt3, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3
  %.sroa.7.1.jt3 = phi ptr [ %.sroa.7.1131, %spec.select.si.unfold.false.jt3 ], [ %.sroa.7.2.jt3, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3 ] ; 2 uses
  %.sroa.069.1.jt3 = phi ptr [ %.sroa.069.1139, %spec.select.si.unfold.false.jt3 ], [ %.sroa.069.2.jt3, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3 ] ; 2 uses
  %.246.jt3 = phi i64 [ %.246147, %spec.select.si.unfold.false.jt3 ], [ %.145.jt3, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3 ] ; 2 uses
  %.137.jt3 = phi i64 [ %i.bw, %spec.select.si.unfold.false.jt3 ], [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt3 ] ; 2 uses
  %i.fd = and i64 %.137.jt3, %.246.jt3
  %.not227 = icmp eq i64 %i.fd, 0
  %i.fe = lshr i64 %.137.jt3, 1                   ; 2 uses
  %i.ff = fmul double %.135.jt3, 2.000000e+00     ; 2 uses
  br i1 %.not227, label %spec.select.si.unfold.false.jt3, label %.preheader228

bb.bm:                                            ; preds = %bb.ad, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2
  %.sroa.7.1.jt2 = phi ptr [ %.sroa.7.1.jt1, %bb.ad ], [ %.sroa.7.2.jt2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2 ]
  %.sroa.069.1.jt2 = phi ptr [ %.sroa.069.1.jt1, %bb.ad ], [ %.sroa.069.2.jt2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2 ]
  %.246.jt2 = phi i64 [ %.246.jt1, %bb.ad ], [ %.145.jt2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2 ] ; 2 uses
  %.137.jt2 = phi i64 [ %i.fn, %bb.ad ], [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt2 ] ; 2 uses
  %i.fg = and i64 %.137.jt2, %.246.jt2
  %i.fh = icmp ne i64 %i.fg, 0                    ; 2 uses
  %i.fi = lshr i64 %.137.jt2, 1
  br label %spec.select.si.unfold.false.jt3

bb.bn:                                            ; preds = %.lr.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0
  %.sroa.7.1.jt0 = phi ptr [ %.sroa.7.1126245, %.lr.ph ], [ %.sroa.7.2.jt0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0 ] ; 2 uses
  %.sroa.069.1.jt0 = phi ptr [ %.sroa.069.1134244, %.lr.ph ], [ %.sroa.069.2.jt0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0 ] ; 2 uses
  %.246.jt0 = phi i64 [ %.246142243, %.lr.ph ], [ %.145.jt0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0 ] ; 3 uses
  %.137.jt0 = phi i64 [ %i.bz, %.lr.ph ], [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt0 ] ; 2 uses
  %i.fj = and i64 %.137.jt0, %.246.jt0
  %.not = icmp eq i64 %i.fj, 0
  %i.fk = lshr i64 %.137.jt0, 1                   ; 2 uses
  br i1 %.not, label %.lr.ph, label %._crit_edge

bb.bo:                                            ; preds = %bb.ae, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1
  %.sroa.7.1.jt1 = phi ptr [ %.sroa.7.1132, %bb.ae ], [ %.sroa.7.2.jt1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1 ] ; 5 uses
  %.sroa.069.1.jt1 = phi ptr [ %.sroa.069.1140, %bb.ae ], [ %.sroa.069.2.jt1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1 ] ; 6 uses
  %.246.jt1 = phi i64 [ %.246148, %bb.ae ], [ %.145.jt1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1 ] ; 3 uses
  %.137.jt1 = phi i64 [ %i.cb, %bb.ae ], [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.jt1 ] ; 2 uses
  %i.fl = and i64 %.137.jt1, %.246.jt1
  %i.fm = icmp ne i64 %i.fl, 0                    ; 2 uses
  %i.fn = lshr i64 %.137.jt1, 1                   ; 3 uses
  %i.fo = fmul double %i.cc, 2.000000e+00
  %i.fp = uitofp i1 %i.fm to double
  %i.fq = fadd double %i.fo, %i.fp                ; 6 uses
  store double %i.fq, ptr %i.a, align 8, !tbaa !62
  %i.fr = add i64 %.1.jt1, -1                     ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.ad, label %bb.ae

._crit_edge:                                      ; preds = %bb.bn, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit
  %.246142.lcssa = phi i64 [ %.145, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ], [ %.246.jt0, %bb.bn ]
  %.sroa.069.1134.lcssa = phi ptr [ %.sroa.069.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ], [ %.sroa.069.1.jt0, %bb.bn ]
  %.sroa.7.1126.lcssa = phi ptr [ %.sroa.7.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ], [ %.sroa.7.1.jt0, %bb.bn ]
  %.lcssa237 = phi i64 [ %i.ev, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ], [ %i.fk, %bb.bn ]
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !62
  br label %bb.ae

.thread166:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt3, %bb.am
  %i.ft = uitofp i1 %i.fm to double
  %i.fu = select i1 %i.fh, double %i.ft, double 0.000000e+00
  %i.fv = fadd double %i.fu, %i.fq
  %i.fw = fmul double %.135.jt3, %i.fv
  br label %_ZN4llvh13isPowerOf2_32Ej.exit.thread

.thread158:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt4, %bb.al
  %i.fx = uitofp i1 %i.fh to double
  %i.fy = fadd double %i.fq, %i.fx
  %i.fz = fmul double %.135.jt4, %i.fy
  br label %_ZN4llvh13isPowerOf2_32Ej.exit.thread

_ZN4llvh13isPowerOf2_32Ej.exit.thread:            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0, %bb.ao, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1, %bb.ap, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, %bb.ak, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2, %bb.an, %bb.b, %.thread158, %.thread166, %bb.a
  %.sroa.080.0 = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ], [ %i.fw, %.thread166 ], [ %i.fz, %.thread158 ], [ %i.c, %bb.b ], [ 0.000000e+00, %bb.ak ], [ %i.cc, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1 ], [ %i.fq, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2 ], [ %i.fq, %bb.an ], [ %i.cc, %bb.ap ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0 ]
  %.sroa.3.0 = phi i8 [ 0, %bb.a ], [ 1, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ], [ 1, %.thread166 ], [ 1, %.thread158 ], [ 1, %bb.b ], [ 1, %bb.ak ], [ 1, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt1 ], [ 1, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt2 ], [ 1, %bb.an ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 1, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.jt0 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.080.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { double, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !10 ; 3 uses
  %i.a = ashr i64 %.sroa.0.0.copyload.i.i, 47
  switch i64 %i.a, label %bb.j [
    i64 -9, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit13
    i64 -10, label %bb.h
    i64 -11, label %bb.i
    i64 -2, label %bb.b
    i64 -1, label %bb.b
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i64 -3, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i64 -12, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, i32 noundef 2) ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = extractvalue { i32, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.d) #18
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = extractvalue { i32, i64 } %i.o, 1
  br label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.r = tail call fastcc noundef double @_ZN6hermes2vmL14stringToNumberERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1)
  br label %bb.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 31, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !32
  store ptr @.str.3, ptr %2, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !34
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.y = uitofp i1 %i.x to double
  br label %bb.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit13:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 31, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !32
  store ptr @.str.4, ptr %3, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !34
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f
  %.0 = phi double [ %i.y, %bb.h ], [ +qnan, %bb.g ], [ %i.r, %bb.f ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.ae = fcmp uno double %.0, 0.000000e+00
  %i.af = bitcast double %.0 to i64
  %.sroa.0.0.i = select i1 %i.ae, i64 9221120237041090560, i64 %i.af, !prof !11
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.b, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.019.1 = phi i32 [ 0, %bb.b ], [ %i.ad, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13 ], [ 1, %bb.i ], [ %i.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.p, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 1, %bb.a ]
  %.sroa.7.1 = phi i64 [ undef, %bb.b ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13 ], [ %.sroa.0.0.i, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.q, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.sroa.0.0.copyload.i.i, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.019.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
end_hunk_1
