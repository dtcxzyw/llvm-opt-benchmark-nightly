begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 22 uses
  %4 = alloca %"class.v8::internal::ExternalReference", align 8 ; 8 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_ZNK2v88internal17ExternalReference16IsIsolateFieldIdEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i32 @_ZNK2v88internal17ExternalReference25offset_from_root_registerEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 69, ptr %6, align 2
  store i8 1, ptr %5, align 1
  %i.i = trunc i32 %i.e to i8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.i, ptr %7, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.e:                                             ; preds = %bb.c
  store i8 -123, ptr %6, align 2
  store i8 1, ptr %5, align 1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i32 %i.e, ptr %8, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.f:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 4 uses
  %i.p = add i64 %i.o, 2147483648
  %i.q = icmp ult i64 %i.p, 4294967296
  br i1 %i.q, label %bb.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48

bb.h:                                             ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.r = add nsw i64 %i.o, 128
  %i.s = icmp ult i64 %i.r, 256
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 69, ptr %10, align 2
  store i8 1, ptr %9, align 1
  %i.t = trunc i64 %i.o to i8
  store i8 %i.t, ptr %11, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.j:                                             ; preds = %bb.h
  %i.u = trunc nsw i64 %i.o to i32
  store i8 -123, ptr %10, align 2
  store i8 1, ptr %9, align 1
  store i32 %i.u, ptr %11, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48: ; preds = %bb.g, %bb.f
end_hunk_1
begin_hunk_2
  br i1 %i.x, label %bb.k, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48
  %.sroa.01.0.copyload.pre = load i64, ptr %4, align 8
  br label %bb.t

bb.k:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef zeroext i1 @_ZN2v88internal18MacroAssemblerBase32IsAddressableThroughRootRegisterEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  br i1 %i.aa, label %bb.l, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32

bb.l:                                             ; preds = %bb.k
  %i.ac = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 4 uses
  %i.ad = add i64 %i.ac, 2147483648
  %i.ae = icmp ult i64 %i.ad, 4294967296
  br i1 %i.ae, label %bb.n, label %bb.m, !prof !7
end_hunk_2
begin_hunk_3
  unreachable

bb.n:                                             ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  %i.af = add nsw i64 %i.ac, 128
  %i.ag = icmp ult i64 %i.af, 256
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 69, ptr %13, align 2
  store i8 1, ptr %12, align 1
  %i.ah = trunc i64 %i.ac to i8
  store i8 %i.ah, ptr %14, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.p:                                             ; preds = %bb.n
  %i.ai = trunc nsw i64 %i.ac to i32
  store i8 -123, ptr %13, align 2
  store i8 1, ptr %12, align 1
  store i32 %i.ai, ptr %14, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32: ; preds = %bb.k
  %i.aj = call noundef i32 @_ZN2v88internal18MacroAssemblerBase48RootRegisterOffsetForExternalReferenceTableEntryEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ak, 128
  %i.am = icmp ult i64 %i.al, 256                 ; 3 uses
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.aj, -256
  %.sroa.3.0 = select i1 %i.am, i64 4521984, i64 8716288
  %.sroa.5.sroa.4.sroa.0.0 = select i1 %i.am, i32 0, i32 %.sroa.5.sroa.4.0.extract.shift
  %storemerge = select i1 %i.am, i64 2, i64 5
  %.sroa.5.sroa.0.0.insert.ext = and i32 %i.aj, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
end_hunk_3
begin_hunk_4
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 256
  %.cast = inttoptr i64 %storemerge to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %2, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i32 noundef 8) #15
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  store i64 0, ptr %3, align 8
  switch i8 %2, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32._crit_edge [
    i8 4, label %bb.q
    i8 12, label %bb.q
    i8 5, label %bb.s
    i8 13, label %bb.s
  ]

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32._crit_edge: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32
  %.pre = and i8 %2, 7
  br label %bb.r

bb.q:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32
  %scevgep177 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %17 = and i8 %2, 7                              ; 2 uses
  %i.an = or disjoint i8 %17, 32
  store i8 %i.an, ptr %scevgep177, align 1
  %i.ao = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.ao)
  %cond = icmp eq i8 %2, 5
  br i1 %cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32._crit_edge
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32._crit_edge ], [ %17, %bb.q ]
  %.fca.1.load183 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.q ]
  %i.ap = lshr i8 %2, 3
  store i8 %.pre-phi, ptr %16, align 2
  %i.aq = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.aq)
  store i8 %i.ap, ptr %15, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.s:                                             ; preds = %bb.q, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32
  %18 = phi i64 [ 1, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32 ], [ 1, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32 ], [ 2, %bb.q ] ; 2 uses
  %19 = and i8 %2, 7
  %i.ar = or disjoint i8 %19, 64
  store i8 %i.ar, ptr %16, align 2
  %i.as = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = lshr i8 %2, 3
  store i8 %i.at, ptr %15, align 1
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 %18
  store i8 0, ptr %20, align 1
  %21 = add nuw nsw i64 %18, 1
  %22 = inttoptr i64 %21 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.t:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge, %bb.a
  %.sroa.01.0.copyload = phi i64 [ %.sroa.01.0.copyload.pre, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge ], [ %1, %bb.a ]
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2, i64 %.sroa.01.0.copyload)
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  store i64 0, ptr %3, align 8
  switch i8 %2, label %._crit_edge [
    i8 4, label %bb.u
    i8 12, label %bb.u
    i8 5, label %bb.w
    i8 13, label %bb.w
  ]

._crit_edge:                                      ; preds = %bb.t
  %.pre187 = and i8 %2, 7
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.t
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 3
  %25 = and i8 %2, 7                              ; 2 uses
  %i.au = or disjoint i8 %25, 32
  store i8 %i.au, ptr %scevgep, align 1
  %i.av = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.av)
  %cond191 = icmp eq i8 %2, 5
  br i1 %cond191, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.pre-phi188 = phi i8 [ %.pre187, %._crit_edge ], [ %25, %bb.u ]
  %.fca.1.load184 = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.u ]
  %i.aw = lshr i8 %2, 3
  store i8 %.pre-phi188, ptr %24, align 2
  %i.ax = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.ax)
  store i8 %i.aw, ptr %23, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.t
  %26 = phi i64 [ 1, %bb.t ], [ 1, %bb.t ], [ 2, %bb.u ] ; 2 uses
  %27 = and i8 %2, 7
  %i.ay = or disjoint i8 %27, 64
  store i8 %i.ay, ptr %24, align 2
  %i.az = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = lshr i8 %2, 3
  store i8 %i.ba, ptr %23, align 1
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 %26
  store i8 0, ptr %28, align 1
  %29 = add nuw nsw i64 %26, 1
  %30 = inttoptr i64 %29 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56: ; preds = %bb.i, %bb.j, %bb.w, %bb.v, %bb.s, %bb.r, %bb.p, %bb.o, %bb.e, %bb.d
  %.fca.1.load = phi ptr [ inttoptr (i64 2 to ptr), %bb.i ], [ inttoptr (i64 5 to ptr), %bb.j ], [ %30, %bb.w ], [ %.fca.1.load184, %bb.v ], [ %22, %bb.s ], [ %.fca.1.load183, %bb.r ], [ inttoptr (i64 5 to ptr), %bb.p ], [ inttoptr (i64 2 to ptr), %bb.o ], [ inttoptr (i64 5 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.d ]
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

end_hunk_5
begin_hunk_6

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit: ; preds = %bb.b, %bb.c
  %i.b = icmp slt i32 %3, 256
  br i1 %i.b, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 3 uses
  store i64 0, ptr %7, align 8
  switch i8 %2, label %._crit_edge68 [
    i8 4, label %bb.e
    i8 12, label %bb.e
    i8 5, label %bb.g
    i8 13, label %bb.g
  ]

._crit_edge68:                                    ; preds = %bb.d
  %.pre = and i8 %2, 7
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.d
  %scevgep67 = getelementptr inbounds nuw i8, ptr %7, i64 3
  %11 = and i8 %2, 7                              ; 2 uses
  %i.c = or disjoint i8 %11, 32
  store i8 %i.c, ptr %scevgep67, align 1
  %i.d = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.d)
  %cond = icmp eq i8 %2, 5
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge68
  %.pre-phi = phi i8 [ %.pre, %._crit_edge68 ], [ %11, %bb.e ]
  %12 = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge68 ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %13 = lshr i8 %2, 3
  store i8 %.pre-phi, ptr %10, align 2
  %14 = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %14)
  store i8 %13, ptr %9, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.d
  %i.e = phi i64 [ 1, %bb.d ], [ 1, %bb.d ], [ 2, %bb.e ] ; 2 uses
  %15 = and i8 %2, 7
  %16 = or disjoint i8 %15, 64
  store i8 %16, ptr %10, align 2
  %i.f = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = lshr i8 %2, 3
  store i8 %i.g, ptr %9, align 1
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 %i.e
  store i8 0, ptr %17, align 1
  %18 = add nuw nsw i64 %i.e, 1
  %19 = inttoptr i64 %18 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20: ; preds = %bb.f, %bb.g
  %20 = phi ptr [ %12, %bb.f ], [ %19, %bb.g ]
  %21 = and i32 %3, 255
  %22 = load i64, ptr %7, align 8
  %.sroa.024.0.insert.ext = zext nneg i32 %21 to i64
  tail call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %22, ptr %20, i64 %.sroa.024.0.insert.ext) #15
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 3 uses
  store i64 0, ptr %8, align 8
  switch i8 %2, label %._crit_edge [
    i8 4, label %bb.i
    i8 12, label %bb.i
    i8 5, label %bb.k
    i8 13, label %bb.k
  ]

._crit_edge:                                      ; preds = %bb.h
  %.pre71 = and i8 %2, 7
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.h
  %scevgep = getelementptr inbounds nuw i8, ptr %8, i64 3
  %25 = and i8 %2, 7                              ; 2 uses
  %i.h = or disjoint i8 %25, 32
  store i8 %i.h, ptr %scevgep, align 1
  %i.i = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.i)
  %cond78 = icmp eq i8 %2, 5
  br i1 %cond78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.pre-phi72 = phi i8 [ %.pre71, %._crit_edge ], [ %25, %bb.i ]
  %26 = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.i ]
  %27 = lshr i8 %2, 3
  store i8 %.pre-phi72, ptr %24, align 2
  %28 = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %28)
  store i8 %27, ptr %23, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.h
  %i.j = phi i64 [ 1, %bb.h ], [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %29 = and i8 %2, 7
  %30 = or disjoint i8 %29, 64
  store i8 %30, ptr %24, align 2
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %2, 3
  store i8 %i.l, ptr %23, align 1
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %i.j
  store i8 0, ptr %31, align 1
  %32 = add nuw nsw i64 %i.j, 1
  %33 = inttoptr i64 %32 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.j, %bb.k
  %34 = phi ptr [ %26, %bb.j ], [ %33, %bb.k ]
  %35 = load i64, ptr %8, align 8
  %.sroa.0.0.insert.ext = zext nneg i32 %3 to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %35, ptr %34, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #15
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}
end_hunk_6
begin_hunk_7
define hidden void @_ZN2v88internal14MacroAssembler12CheckMarkBitENS0_8RegisterES2_S2_NS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

end_hunk_7
begin_hunk_8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  store i64 0, ptr %7, align 8
  %.pre = and i8 %2, 7                            ; 4 uses
  switch i8 %2, label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge [
    i8 12, label %bb.d
    i8 4, label %bb.d
end_hunk_8
begin_hunk_9

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge: ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit, %bb.d
  %i.f = phi i64 [ 2, %bb.d ], [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit ] ; 2 uses
  %.pre179 = lshr i8 %2, 3                        ; 3 uses
  %i.g = or disjoint i8 %.pre, 64                 ; 2 uses
  store i8 %i.g, ptr %i.c, align 2
  %i.h = icmp samesign ult i8 %2, 16
end_hunk_9
begin_hunk_10
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 262143, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i64 3, i32 noundef 5, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 63, i32 noundef 8) #15
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 3 uses
  store i64 0, ptr %8, align 8
  switch i8 %2, label %bb.f [
    i8 12, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.g
    i8 13, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %scevgep178 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.l = or disjoint i8 %.pre, 32
  store i8 %i.l, ptr %scevgep178, align 1
  %cond = icmp eq i8 %2, 5
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %11 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ]
  store i8 %.pre, ptr %10, align 2
  store i8 %.pre179, ptr %9, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.g:                                             ; preds = %bb.e, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %i.m = phi i64 [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ 2, %bb.e ] ; 2 uses
  store i8 %i.g, ptr %10, align 2
  store i8 %.pre179, ptr %9, align 1
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 %i.m
  store i8 0, ptr %12, align 1
  %13 = add nuw nsw i64 %i.m, 1
  %14 = inttoptr i64 %13 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %bb.g
  %15 = phi ptr [ %11, %bb.f ], [ %14, %bb.g ]
  %16 = load i64, ptr %8, align 8
  tail call void @_ZN2v88internal9Assembler3btqENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %16, ptr %15, i8 %3) #15
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}
end_hunk_10
