inline.NumInlined: 1584
inline.NumDeleted: 649
begin_hunk_0_@_ZN6hermes2vm15StringPrimitive30createDynamicWithKnownEncodingERNS0_7RuntimeEN4llvh8ArrayRefIDsEEb:bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !16
  br label %_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  tail call void @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EEC1Ej(ptr noundef nonnull align 4 dereferenceable(8) %i.l, i32 noundef %i.a) #16
  %i.m = and i32 %i.b, 16777208
  %i.n = or disjoint i32 %i.m, 67108864
  store i32 %i.n, ptr %i.l, align 4, !tbaa !24
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.p = or i64 %i.o, -844424930131968            ; 4 uses
  %i.q = and i64 %i.o, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp ugt i32 %i.s, 150994943
  br i1 %i.t, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.f:                                             ; preds = %_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj.exit
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.s, 251658240
  %i.w = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.v, %bb.e ], [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 8 uses
  %i.z = icmp sgt i64 %2, 0
  br i1 %i.z, label %iter.check, label %_ZSt4copyIPKDsPcET0_T_S4_S3_.exit

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.0.i, i64 %2
  %i.aa = shl nuw i64 %2, 1
  %scevgep12 = getelementptr i8, ptr %1, i64 %i.aa
  %bound0 = icmp ult ptr %.0.i, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %2, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ab = and i64 %2, 15
  %i.ac = getelementptr i8, ptr %.0.i, i64 %n.vec
  %i.ad = shl nuw i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i, i64 %index ; 2 uses
  %i.af = shl i64 %index, 1
  %next.gep14 = getelementptr i8, ptr %1, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep14, align 2, !tbaa !14, !alias.scope !118
  %wide.load15 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !14, !alias.scope !118
  %i.ah = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ai = trunc <8 x i16> %wide.load15 to <8 x i8>
  %i.aj = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.ah, ptr %next.gep, align 1, !tbaa !24, !alias.scope !121, !noalias !118
  store <8 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !24, !alias.scope !121, !noalias !118
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKDsPcET0_T_S4_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, 9223372036854775804      ; 4 uses
  %i.al = and i64 %2, 3
  %i.am = getelementptr i8, ptr %.0.i, i64 %n.vec19
  %i.an = shl nuw i64 %n.vec19, 1
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %next.gep21 = getelementptr i8, ptr %.0.i, i64 %index20
  %i.ap = shl i64 %index20, 1
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.ap
  %wide.load23 = load <4 x i16>, ptr %next.gep22, align 2, !tbaa !14, !alias.scope !118
  %i.aq = trunc <4 x i16> %wide.load23 to <4 x i8>
  store <4 x i8> %i.aq, ptr %next.gep21, align 1, !tbaa !24, !alias.scope !121, !noalias !118
  %index.next24 = add nuw i64 %index20, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec19
  br i1 %cmp.n25, label %_ZSt4copyIPKDsPcET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %.0.i, %iter.check ], [ %.0.i, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.as = load i16, ptr %.0910.i.i.i.i.i, align 2, !tbaa !14
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %.0811.i.i.i.i.i, align 1, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.aw = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ax = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKDsPcET0_T_S4_S3_.exit, !llvm.loop !125

bb.i:                                             ; preds = %bb.a
  %i.ay = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) ; 2 uses
  %i.az = extractvalue { i32, i64 } %i.ay, 0
  %i.ba = extractvalue { i32, i64 } %i.ay, 1
  br label %_ZSt4copyIPKDsPcET0_T_S4_S3_.exit

_ZSt4copyIPKDsPcET0_T_S4_S3_.exit:                ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit, %bb.i
  %.sroa.07.1 = phi i32 [ %i.az, %bb.i ], [ 1, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.sroa.59.1 = phi i64 [ %i.ba, %bb.i ], [ %i.p, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit ], [ %i.p, %middle.block ], [ %i.p, %vec.epilog.middle.block ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.59.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive11sliceEqualsEjjPKS1_(ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 6 uses
  %i.b = and i32 %i.a, 16777216
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr %3, align 4                ; 9 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.g = icmp ugt i32 %i.a, 150994943             ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.a, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit

bb.h:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !56
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.p, %bb.h ]
  %i.q = zext i32 %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q
  %i.s = zext nneg i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp ugt i32 %i.d, 150994943
  br i1 %i.v, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.j:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.d, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.m [
    i32 134217728, label %bb.k
    i32 67108864, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !56
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi ptr [ %i.x, %bb.i ], [ %i.y, %bb.k ], [ %i.z, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = and i32 %i.u, 2147483647
  %.not.i = icmp eq i32 %2, %i.af
  br i1 %.not.i, label %bb.n, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.n:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit
  %.not.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %.0.i.i.i, i64 %i.s)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.p:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.q, label %bb.r, !prof !23

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34

bb.r:                                             ; preds = %bb.p
  %.mask.i.i.i.i.i.i.i.i.i29 = and i32 %i.a, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i29, label %bb.u [
    i32 134217728, label %bb.s
    i32 67108864, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34

bb.u:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i33 = load i64, ptr %i.ak, align 8, !tbaa !56
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i.i33, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.i30 = phi ptr [ %i.ah, %bb.q ], [ %i.ai, %bb.s ], [ %i.aj, %bb.t ], [ %i.ao, %bb.u ]
  %i.ap = zext i32 %1 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 %i.ap ; 2 uses
  %i.ar = zext nneg i32 %2 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = icmp ugt i32 %i.d, 150994943
  br i1 %i.au, label %bb.v, label %bb.w, !prof !23

bb.v:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.w:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEjj.exit34
  %.mask.i.i.i.i.i.i.i.i.i.i35 = and i32 %i.d, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i35, label %bb.z [
    i32 117440512, label %bb.x
    i32 50331648, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.y:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.z:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i39 = load i64, ptr %i.az, align 8, !tbaa !56
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i.i39, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit: ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %.0.i.i.i36 = phi ptr [ %i.aw, %bb.v ], [ %i.ax, %bb.x ], [ %i.ay, %bb.y ], [ %i.bd, %bb.z ]
  %i.be = and i32 %i.at, 2147483647
  %.not.i40 = icmp eq i32 %2, %i.be
  br i1 %.not.i40, label %bb.aa, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.aa:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %.not9.i.i.i.i.i42 = icmp eq i32 %2, 0
  br i1 %.not9.i.i.i.i.i42, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i36, %bb.aa ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %i.aq, %bb.aa ] ; 2 uses
  %i.bg = load i8, ptr %.0810.i.i.i.i.i, align 1, !tbaa !24
  %i.bh = sext i8 %i.bg to i32
  %i.bi = load i16, ptr %.011.i.i.i.i.i, align 2, !tbaa !14
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp eq i32 %i.bh, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 2
  %.not.i.i.i.i.i = icmp ne ptr %i.bl, %i.bf
  %or.cond.not = select i1 %i.bk, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, !llvm.loop !126

bb.ab:                                            ; preds = %bb.a
  br i1 %i.f, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.g, label %bb.ad, label %bb.ae, !prof !23

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit

bb.ae:                                            ; preds = %bb.ac
  %.mask.i.i.i.i.i.i.i.i.i43 = and i32 %i.a, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i43, label %bb.ah [
    i32 117440512, label %bb.af
    i32 50331648, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit

bb.ah:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i47 = load i64, ptr %i.br, align 8, !tbaa !56
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i47, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit: ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah
  %.0.i.i44 = phi ptr [ %i.bo, %bb.ad ], [ %i.bp, %bb.af ], [ %i.bq, %bb.ag ], [ %i.bv, %bb.ah ]
  %i.bw = zext i32 %1 to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i44, i64 %i.bw ; 2 uses
  %i.by = zext nneg i32 %2 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = icmp ugt i32 %i.d, 150994943
  br i1 %i.cb, label %bb.ai, label %bb.aj, !prof !23

bb.ai:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53

bb.aj:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit
  %.mask.i.i.i.i.i.i.i.i.i.i48 = and i32 %i.d, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i48, label %bb.am [
    i32 134217728, label %bb.ak
    i32 67108864, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53

bb.al:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53

bb.am:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i52 = load i64, ptr %i.cg, align 8, !tbaa !56
  %i.ch = and i64 %.sroa.0.0.copyload.i.i.i.i.i52, 281474976710655
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53: ; preds = %bb.ai, %bb.ak, %bb.al, %bb.am
  %.0.i.i.i49 = phi ptr [ %i.cd, %bb.ai ], [ %i.ce, %bb.ak ], [ %i.cf, %bb.al ], [ %i.ck, %bb.am ]
  %i.cl = and i32 %i.ca, 2147483647
  %.not.i54 = icmp eq i32 %2, %i.cl
  br i1 %.not.i54, label %bb.an, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.an:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53
  %.idx.i = shl nuw nsw i64 %i.by, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i
  %.not9.i.i.i.i.i56 = icmp eq i32 %2, 0
  br i1 %.not9.i.i.i.i.i56, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i57
  %.011.i.i.i.i.i58 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i57 ], [ %.0.i.i.i49, %bb.an ] ; 2 uses
  %.0810.i.i.i.i.i59 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i57 ], [ %i.bx, %bb.an ] ; 2 uses
  %i.cn = load i16, ptr %.0810.i.i.i.i.i59, align 2, !tbaa !14
  %i.co = zext i16 %i.cn to i32
  %i.cp = load i8, ptr %.011.i.i.i.i.i58, align 1, !tbaa !24
  %i.cq = sext i8 %i.cp to i32
  %i.cr = icmp eq i32 %i.co, %i.cq                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i59, i64 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i58, i64 1
  %.not.i.i.i.i.i60 = icmp ne ptr %i.cs, %i.cm
  %or.cond101.not = select i1 %i.cr, i1 %.not.i.i.i.i.i60, i1 false
  br i1 %or.cond101.not, label %.lr.ph.i.i.i.i.i57, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, !llvm.loop !127

bb.ao:                                            ; preds = %bb.ab
  br i1 %i.g, label %bb.ap, label %bb.aq, !prof !23

bb.ap:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66

bb.aq:                                            ; preds = %bb.ao
  %.mask.i.i.i.i.i.i.i.i.i61 = and i32 %i.a, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i61, label %bb.at [
    i32 117440512, label %bb.ar
    i32 50331648, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66

bb.as:                                            ; preds = %bb.aq
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66

bb.at:                                            ; preds = %bb.aq
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i65 = load i64, ptr %i.cy, align 8, !tbaa !56
  %i.cz = and i64 %.sroa.0.0.copyload.i.i.i.i65, 281474976710655
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66: ; preds = %bb.ap, %bb.ar, %bb.as, %bb.at
  %.0.i.i62 = phi ptr [ %i.cv, %bb.ap ], [ %i.cw, %bb.ar ], [ %i.cx, %bb.as ], [ %i.dc, %bb.at ]
  %i.dd = zext i32 %1 to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i62, i64 %i.dd
  %i.df = zext nneg i32 %2 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = icmp ugt i32 %i.d, 150994943
  br i1 %i.di, label %bb.au, label %bb.av, !prof !23

bb.au:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72

bb.av:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEjj.exit66
  %.mask.i.i.i.i.i.i.i.i.i.i67 = and i32 %i.d, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i67, label %bb.ay [
    i32 117440512, label %bb.aw
    i32 50331648, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72

bb.ax:                                            ; preds = %bb.av
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72

bb.ay:                                            ; preds = %bb.av
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i71 = load i64, ptr %i.dn, align 8, !tbaa !56
  %i.do = and i64 %.sroa.0.0.copyload.i.i.i.i.i71, 281474976710655
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72: ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay
  %.0.i.i.i68 = phi ptr [ %i.dk, %bb.au ], [ %i.dl, %bb.aw ], [ %i.dm, %bb.ax ], [ %i.dr, %bb.ay ]
  %i.ds = and i32 %i.dh, 2147483647
  %.not.i73 = icmp eq i32 %2, %i.ds
  br i1 %.not.i73, label %bb.az, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.az:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72
  %.not.not.i.i.i.i.i75 = icmp eq i32 %2, 0
  br i1 %.not.not.i.i.i.i.i75, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.idx.i76 = shl nuw nsw i64 %i.df, 1
  %bcmp.i.i.i.i.i77 = tail call i32 @bcmp(ptr %i.de, ptr %.0.i.i.i68, i64 %.idx.i76)
  %.not9.i.i.i.i.i78 = icmp eq i32 %bcmp.i.i.i.i.i77, 0
  br label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %bb.ba, %bb.az, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72, %bb.an, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53, %bb.aa, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit, %bb.o, %bb.n, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit
  %.0 = phi i1 [ false, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit72 ], [ true, %bb.n ], [ %.not9.i.i.i.i.i78, %bb.ba ], [ false, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit ], [ %.not9.i.i.i.i.i, %bb.o ], [ false, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit ], [ true, %bb.aa ], [ true, %bb.az ], [ false, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit53 ], [ true, %bb.an ], [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i57 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(8) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = and i32 %i.c, 2147483647
  %i.e = tail call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive11sliceEqualsEjjPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.d, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsERKNS0_10StringViewE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::ArrayRef.153", align 8 ; 5 uses
  %3 = alloca %"class.llvh::ArrayRef", align 8    ; 5 uses
  %i.a = load i32, ptr %0, align 4                ; 4 uses
  %i.b = and i32 %i.a, 16777216
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp ugt i32 %i.a, 150994943             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7
  br i1 %i.e, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.a, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !56
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %bb.g ]
  %i.p = and i32 %i.f, 2147483647
  %i.q = zext nneg i32 %i.p to i64
  store ptr %.0.i.i.i, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIcEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.t = load i32, ptr %i.d, align 4, !tbaa !7
  br i1 %i.e, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.j:                                             ; preds = %bb.h
  %.mask.i.i.i.i.i.i.i.i.i.i4 = and i32 %i.a, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i4, label %bb.m [
    i32 117440512, label %bb.k
    i32 50331648, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i8 = load i64, ptr %i.y, align 8, !tbaa !56
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i8, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %.0.i.i.i5 = phi ptr [ %i.v, %bb.i ], [ %i.w, %bb.k ], [ %i.x, %bb.l ], [ %i.ac, %bb.m ]
  %i.ad = and i32 %i.t, 2147483647
  %i.ae = zext nneg i32 %i.ad to i64
  store ptr %.0.i.i.i5, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIDsEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit
  %.0 = phi i1 [ %i.s, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit ], [ %i.ag, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIcEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741824
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !56
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp ugt i32 %i.h, 150994943
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm15StringPrimitive7compareEPKS1_:bb.a
  %.0.lcssa.i.i12.i81 = phi ptr [ %.0.i.i.i50, %bb.az ], [ %.07.i.i11.i79, %.lr.ph.i.i9.i77 ] ; 2 uses
  %storemerge.lcssa.i.i13.i82 = phi ptr [ %.0.i.i.i56, %bb.az ], [ %storemerge8.i.i10.i78, %.lr.ph.i.i9.i77 ]
  %i.fn = icmp eq ptr %.0.lcssa.i.i12.i81, %i.ff
  br i1 %i.fn, label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8mismatchIPKDsPKcESt4pairIT_T0_ES5_S5_S6_.exit.i80
  %i.fo = load i16, ptr %.0.lcssa.i.i12.i81, align 2, !tbaa !14
  %i.fp = zext i16 %i.fo to i32
  %i.fq = load i8, ptr %storemerge.lcssa.i.i13.i82, align 1, !tbaa !24
  %i.fr = sext i8 %i.fq to i32
  %i.fs = icmp sgt i32 %i.fp, %i.fr
  %i.ft = select i1 %i.fs, i32 1, i32 -1
  br label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.bc:                                            ; preds = %bb.ak
  br i1 %i.i, label %bb.bd, label %bb.be, !prof !23

bb.bd:                                            ; preds = %bb.bc
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89

bb.be:                                            ; preds = %bb.bc
  %.mask.i.i.i.i.i.i.i.i.i.i84 = and i32 %i.a, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i84, label %bb.bh [
    i32 117440512, label %bb.bf
    i32 50331648, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89

bb.bg:                                            ; preds = %bb.be
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89

bb.bh:                                            ; preds = %bb.be
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i88 = load i64, ptr %i.fy, align 8, !tbaa !56
  %i.fz = and i64 %.sroa.0.0.copyload.i.i.i.i.i88, 281474976710655
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89: ; preds = %bb.bd, %bb.bf, %bb.bg, %bb.bh
  %.0.i.i.i85 = phi ptr [ %i.fv, %bb.bd ], [ %i.fw, %bb.bf ], [ %i.fx, %bb.bg ], [ %i.gc, %bb.bh ] ; 7 uses
  %i.gd = and i32 %i.h, 2147483647                ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !7  ; 2 uses
  %i.gh = icmp ugt i32 %i.d, 150994943
  br i1 %i.gh, label %bb.bi, label %bb.bj, !prof !23

bb.bi:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95

bb.bj:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit89
  %.mask.i.i.i.i.i.i.i.i.i.i90 = and i32 %i.d, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i90, label %bb.bm [
    i32 117440512, label %bb.bk
    i32 50331648, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95

bb.bl:                                            ; preds = %bb.bj
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95

bb.bm:                                            ; preds = %bb.bj
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i94 = load i64, ptr %i.gm, align 8, !tbaa !56
  %i.gn = and i64 %.sroa.0.0.copyload.i.i.i.i.i94, 281474976710655
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !30
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95: ; preds = %bb.bi, %bb.bk, %bb.bl, %bb.bm
  %.0.i.i.i91 = phi ptr [ %i.gj, %bb.bi ], [ %i.gk, %bb.bk ], [ %i.gl, %bb.bl ], [ %i.gq, %bb.bm ] ; 5 uses
  %i.gr = and i32 %i.gg, 2147483647               ; 2 uses
  %.not.i96 = icmp samesign ult i32 %i.gd, %i.gr
  br i1 %.not.i96, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95
  %i.gs = shl i32 %i.gg, 1
  %.idx.i97 = zext i32 %i.gs to i64               ; 2 uses
  %i.gt = getelementptr i8, ptr %.0.i.i.i91, i64 %.idx.i97 ; 2 uses
  %.not6.i.i.i98 = icmp eq i32 %i.gr, 0
  br i1 %.not6.i.i.i98, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i, label %.lr.ph.i.i.preheader.i99

.lr.ph.i.i.preheader.i99:                         ; preds = %bb.bn
  %scevgep.i100 = getelementptr i8, ptr %.0.i.i.i85, i64 %.idx.i97
  br label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %bb.bo, %.lr.ph.i.i.preheader.i99
  %storemerge8.i.i.i102 = phi ptr [ %i.gy, %bb.bo ], [ %.0.i.i.i85, %.lr.ph.i.i.preheader.i99 ] ; 3 uses
  %.07.i.i.i103 = phi ptr [ %i.gx, %bb.bo ], [ %.0.i.i.i91, %.lr.ph.i.i.preheader.i99 ] ; 3 uses
  %i.gu = load i16, ptr %.07.i.i.i103, align 2, !tbaa !14
  %i.gv = load i16, ptr %storemerge8.i.i.i102, align 2, !tbaa !14
  %i.gw = icmp eq i16 %i.gu, %i.gv
  br i1 %i.gw, label %bb.bo, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i101
  %i.gx = getelementptr inbounds nuw i8, ptr %.07.i.i.i103, i64 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i102, i64 2
  %.not.i.i.i108 = icmp eq ptr %i.gx, %i.gt
  br i1 %.not.i.i.i108, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i, label %.lr.ph.i.i.i101, !llvm.loop !134

_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i: ; preds = %.lr.ph.i.i.i101, %bb.bn
  %.0.lcssa.i.i.i104 = phi ptr [ %.0.i.i.i91, %bb.bn ], [ %.07.i.i.i103, %.lr.ph.i.i.i101 ] ; 2 uses
  %storemerge.lcssa.i.i.i105 = phi ptr [ %.0.i.i.i85, %bb.bn ], [ %storemerge8.i.i.i102, %.lr.ph.i.i.i101 ] ; 2 uses
  %i.gz = icmp eq ptr %.0.lcssa.i.i.i104, %i.gt
  br i1 %i.gz, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i, label %bb.bp

_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i: ; preds = %bb.bo, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i
  %storemerge.lcssa.i.i40.i = phi ptr [ %storemerge.lcssa.i.i.i105, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i ], [ %scevgep.i100, %bb.bo ]
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i85, i64 %i.ge
  %i.hb = icmp ne ptr %storemerge.lcssa.i.i40.i, %i.ha
  %..i107 = zext i1 %i.hb to i32
  br label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.bp:                                            ; preds = %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.i
  %i.hc = load i16, ptr %storemerge.lcssa.i.i.i105, align 2, !tbaa !14
  %i.hd = load i16, ptr %.0.lcssa.i.i.i104, align 2, !tbaa !14
  %i.he = icmp ugt i16 %i.hc, %i.hd
  %i.hf = select i1 %i.he, i32 1, i32 -1
  br label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.bq:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit95
  %.idx31.i = shl nuw nsw i64 %i.ge, 1
  %i.hg = getelementptr i8, ptr %.0.i.i.i85, i64 %.idx31.i ; 2 uses
  %.not6.i.i8.i109 = icmp eq i32 %i.gd, 0
  br i1 %.not6.i.i8.i109, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i, label %.lr.ph.i.i9.i110

.lr.ph.i.i9.i110:                                 ; preds = %bb.bq, %bb.br
  %storemerge8.i.i10.i111 = phi ptr [ %i.hl, %bb.br ], [ %.0.i.i.i91, %bb.bq ] ; 3 uses
  %.07.i.i11.i112 = phi ptr [ %i.hk, %bb.br ], [ %.0.i.i.i85, %bb.bq ] ; 3 uses
  %i.hh = load i16, ptr %.07.i.i11.i112, align 2, !tbaa !14
  %i.hi = load i16, ptr %storemerge8.i.i10.i111, align 2, !tbaa !14
  %i.hj = icmp eq i16 %i.hh, %i.hi
  br i1 %i.hj, label %bb.br, label %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i

bb.br:                                            ; preds = %.lr.ph.i.i9.i110
  %i.hk = getelementptr inbounds nuw i8, ptr %.07.i.i11.i112, i64 2 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %storemerge8.i.i10.i111, i64 2
  %.not.i.i16.i115 = icmp eq ptr %i.hk, %i.hg
  br i1 %.not.i.i16.i115, label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %.lr.ph.i.i9.i110, !llvm.loop !134

_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i: ; preds = %.lr.ph.i.i9.i110, %bb.bq
  %.0.lcssa.i.i12.i113 = phi ptr [ %.0.i.i.i85, %bb.bq ], [ %.07.i.i11.i112, %.lr.ph.i.i9.i110 ] ; 2 uses
  %storemerge.lcssa.i.i13.i114 = phi ptr [ %.0.i.i.i91, %bb.bq ], [ %storemerge8.i.i10.i111, %.lr.ph.i.i9.i110 ]
  %i.hm = icmp eq ptr %.0.lcssa.i.i12.i113, %i.hg
  br i1 %i.hm, label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i
  %i.hn = load i16, ptr %.0.lcssa.i.i12.i113, align 2, !tbaa !14
  %i.ho = load i16, ptr %storemerge.lcssa.i.i13.i114, align 2, !tbaa !14
  %i.hp = icmp ugt i16 %i.hn, %i.ho
  %i.hq = select i1 %i.hp, i32 1, i32 -1
  br label %_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

_ZN6hermes2vm16stringRefCompareIccEEiN4llvh8ArrayRefIT_EENS3_IT0_EE.exit: ; preds = %bb.br, %bb.ba, %bb.ai, %bb.r, %bb.bs, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i, %bb.bp, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i, %bb.bb, %_ZSt8mismatchIPKDsPKcESt4pairIT_T0_ES5_S5_S6_.exit.i80, %bb.ay, %_ZSt8mismatchIPKcPKDsESt4pairIT_T0_ES5_S5_S6_.exit.thread.i, %bb.aj, %_ZSt8mismatchIPKcPKDsESt4pairIT_T0_ES5_S5_S6_.exit.i, %bb.ag, %_ZSt8mismatchIPKDsPKcESt4pairIT_T0_ES5_S5_S6_.exit.thread.i, %bb.s, %_ZSt8mismatchIPKcS1_ESt4pairIT_T0_ES3_S3_S4_.exit20.i, %bb.p, %_ZSt8mismatchIPKcS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i
  %.0 = phi i32 [ -1, %bb.ai ], [ -1, %bb.ba ], [ -1, %bb.r ], [ %i.au, %bb.p ], [ %..i, %_ZSt8mismatchIPKcS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i ], [ %i.bf, %bb.s ], [ -1, %_ZSt8mismatchIPKcS1_ESt4pairIT_T0_ES3_S3_S4_.exit20.i ], [ %i.cy, %bb.ag ], [ %..i46, %_ZSt8mismatchIPKDsPKcESt4pairIT_T0_ES5_S5_S6_.exit.thread.i ], [ %i.dn, %bb.aj ], [ -1, %_ZSt8mismatchIPKcPKDsESt4pairIT_T0_ES5_S5_S6_.exit.i ], [ %i.fe, %bb.ay ], [ %..i73, %_ZSt8mismatchIPKcPKDsESt4pairIT_T0_ES5_S5_S6_.exit.thread.i ], [ %i.ft, %bb.bb ], [ -1, %_ZSt8mismatchIPKDsPKcESt4pairIT_T0_ES5_S5_S6_.exit.i80 ], [ %i.hf, %bb.bp ], [ %..i107, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit.thread.i ], [ %i.hq, %bb.bs ], [ -1, %_ZSt8mismatchIPKDsS1_ESt4pairIT_T0_ES3_S3_S4_.exit17.i ], [ -1, %bb.br ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6concatERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::CallResult.181", align 8 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !56 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %2, align 8, !tbaa !56 ; 2 uses
  %i.c = and i64 %.sroa.0.0.copyload.i.i23, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = and i32 %i.f, 2147483647                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %i.i, 2147483647                 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %narrow = add nuw i32 %i.j, %i.g                ; 4 uses
  %i.k = zext nneg i32 %narrow to i64
  %i.l = icmp ugt i32 %narrow, 268435456
  br i1 %i.l, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !40
  store ptr @.str, ptr %3, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !41
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = icmp samesign ugt i32 %narrow, 255
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.b, align 4              ; 2 uses
  %i.t = lshr i32 %i.s, 24
  %i.u = add nsw i32 %i.t, -5
  %spec.select.i = icmp ult i32 %i.u, 2
  br i1 %spec.select.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.w = tail call noundef zeroext i1 @_ZN6hermes2vm7HadesGC22canAllocExternalMemoryEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, i32 noundef %narrow) #16
  br i1 %i.w, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit26, !prof !13

_ZN6hermes2vm11TwineChar16C2EPKc.exit26:          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 45, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !40
  store ptr @.str.1, ptr %4, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.aa, align 8, !tbaa !41
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call ptr @_ZN6hermes2vm30internalConcatStringPrimitivesERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %2)
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = or i64 %i.ad, -844424930131968
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = and i32 %i.s, 16777216
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = and i32 %i.ah, 16777216
  %i.aj = icmp eq i32 %i.ai, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi i1 [ false, %bb.h ], [ %i.aj, %bb.i ]
  call void @_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.181") align 8 %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, i64 %i.k, i32 0, i1 noundef zeroext %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !135, !range !140, !noundef !28
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !56
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = and i32 %i.ar, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %1, i32 noundef %i.as)
  %.sroa.0.0.copyload.i.i.i27 = load i64, ptr %2, align 8, !tbaa !56
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i27, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = and i32 %i.aw, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %2, i32 noundef %i.ax)
  %i.ay = load i64, ptr %5, align 8, !tbaa !141
  %i.az = inttoptr i64 %i.ay to ptr
  %.sroa.0.0.copyload.i.i.i28 = load i64, ptr %i.az, align 8, !tbaa !56
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i28, 281474976710655
  %i.bb = or disjoint i64 %i.ba, -844424930131968
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.041.0 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]
  %.sroa.8.0 = phi i64 [ %i.bb, %bb.k ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit26, %bb.g, %bb.l, %bb.b, %bb.a
  %.sroa.041.2 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.q, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.g ], [ %i.ab, %_ZN6hermes2vm11TwineChar16C2EPKc.exit26 ], [ %.sroa.041.0, %bb.l ]
  %.sroa.8.2 = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ %.sroa.0.0.copyload.i.i23, %bb.a ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ae, %bb.g ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit26 ], [ %.sroa.8.0, %bb.l ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm30internalConcatStringPrimitivesERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !56
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 16777216
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %2, align 8, !tbaa !56
  %i.f = and i64 %.sroa.0.0.copyload.i.i29, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 16777216
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.c, -33554432
  %.not43 = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 100663296
  br i1 %.not43, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = and i32 %i.l, 2147483647
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !56
  %i.p = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !54
  %i.t = icmp eq i64 %i.s, %i.n
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @_ZN6hermes2vm23BufferedStringPrimitiveIcE6appendENS0_6HandleIS2_EERNS0_7RuntimeENS3_INS0_15StringPrimitiveEEE(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2)
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call ptr @_ZN6hermes2vm23BufferedStringPrimitiveIcE6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES7_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %2)
  br label %bb.k

bb.g:                                             ; preds = %bb.b, %bb.a
  %.mask.i.i.i.i.i.i.i.i30 = and i32 %i.c, -16777216
  %.not = icmp eq i32 %.mask.i.i.i.i.i.i.i.i30, 83886080
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = and i32 %i.x, 2147483647
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.aa, align 8, !tbaa !56
  %i.ab = and i64 %.sroa.0.0.copyload.i32, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @_ZN6hermes2vm23BufferedStringPrimitiveIDsE6appendENS0_6HandleIS2_EERNS0_7RuntimeENS3_INS0_15StringPrimitiveEEE(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ah = tail call ptr @_ZN6hermes2vm23BufferedStringPrimitiveIDsE6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES7_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.e, %bb.j, %bb.f
  %.sroa.025.2 = phi ptr [ %i.v, %bb.f ], [ %i.u, %bb.e ], [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  ret ptr %.sroa.025.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::CallResult.181") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2, i32 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_1
