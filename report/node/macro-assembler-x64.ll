begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ExternalReference", align 8 ; 8 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_ZNK2v88internal17ExternalReference16IsIsolateFieldIdEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i32 @_ZNK2v88internal17ExternalReference25offset_from_root_registerEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i32 %i.e to i8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.e:                                             ; preds = %bb.c
  %.sroa.26.sroa.0.0.extract.trunc193 = trunc i32 %i.e to i8
  %.sroa.26.sroa.14.0.extract.shift196 = and i32 %i.e, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.f:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 5 uses
  %i.p = add i64 %i.o, 2147483648
  %i.q = icmp ult i64 %i.p, 4294967296
  br i1 %i.q, label %bb.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i64 %i.o, 128
  %i.s = icmp ult i64 %i.r, 256
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = trunc i64 %i.o to i8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.j:                                             ; preds = %bb.h
  %i.u = trunc nsw i64 %i.o to i32
  %.sroa.26.sroa.0.0.extract.trunc192 = trunc i64 %i.o to i8
  %.sroa.26.sroa.14.0.extract.shift194 = and i32 %i.u, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48: ; preds = %bb.g, %bb.f
end_hunk_1
begin_hunk_2
  br i1 %i.x, label %bb.k, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48
  %.sroa.01.0.copyload.pre = load i64, ptr %3, align 8
  br label %bb.t

bb.k:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef zeroext i1 @_ZN2v88internal18MacroAssemblerBase32IsAddressableThroughRootRegisterEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  br i1 %i.aa, label %bb.l, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32

bb.l:                                             ; preds = %bb.k
  %i.ac = call noundef i64 @_ZN2v88internal18MacroAssemblerBase38RootRegisterOffsetForExternalReferenceEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 5 uses
  %i.ad = add i64 %i.ac, 2147483648
  %i.ae = icmp ult i64 %i.ad, 4294967296
  br i1 %i.ae, label %bb.n, label %bb.m, !prof !7
end_hunk_2
begin_hunk_3
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = add nsw i64 %i.ac, 128
  %i.ag = icmp ult i64 %i.af, 256
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = trunc i64 %i.ac to i8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.p:                                             ; preds = %bb.n
  %i.ai = trunc nsw i64 %i.ac to i32
  %.sroa.26.sroa.0.0.extract.trunc = trunc i64 %i.ac to i8
  %.sroa.26.sroa.14.0.extract.shift = and i32 %i.ai, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32: ; preds = %bb.k
  %i.aj = call noundef i32 @_ZN2v88internal18MacroAssemblerBase48RootRegisterOffsetForExternalReferenceTableEntryEPNS0_7IsolateERKNS0_17ExternalReferenceE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3) #15 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %i.ak, 128
  %i.am = icmp ult i64 %i.al, 256                 ; 3 uses
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.aj, -256
  %.sroa.5.sroa.4.sroa.0.0 = select i1 %i.am, i32 0, i32 %.sroa.5.sroa.4.0.extract.shift
  %.sroa.3.0 = select i1 %i.am, i64 4521984, i64 8716288
  %storemerge = select i1 %i.am, i64 2, i64 5
  %.sroa.5.sroa.0.0.insert.ext = and i32 %i.aj, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
end_hunk_3
begin_hunk_4
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 256
  %.cast = inttoptr i64 %storemerge to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %2, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i32 noundef 8) #15
  %.pre = and i8 %2, 7                            ; 3 uses
  switch i8 %2, label %bb.r [
    i8 4, label %bb.q
    i8 12, label %bb.q
    i8 5, label %bb.s
    i8 13, label %bb.s
  ]

bb.q:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32
  %i.an = or disjoint i8 %.pre, 32
  %i.ao = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.ao)
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32, %bb.q
  %.pre-phi = phi i8 [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32 ], [ %i.an, %bb.q ]
  %.fca.1.load183 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32 ], [ inttoptr (i64 2 to ptr), %bb.q ]
  %i.ap = lshr i8 %2, 3
  %i.aq = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.s:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit32
  %i.ar = or disjoint i8 %.pre, 64
  %i.as = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = lshr i8 %2, 3
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.t:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge, %bb.a
  %.sroa.01.0.copyload = phi i64 [ %.sroa.01.0.copyload.pre, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit48._crit_edge ], [ %1, %bb.a ]
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2, i64 %.sroa.01.0.copyload)
  %.pre187 = and i8 %2, 7                         ; 3 uses
  switch i8 %2, label %bb.v [
    i8 4, label %bb.u
    i8 12, label %bb.u
    i8 5, label %bb.w
    i8 13, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.au = or disjoint i8 %.pre187, 32
  %i.av = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.av)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pre-phi188 = phi i8 [ 0, %bb.t ], [ %i.au, %bb.u ]
  %.fca.1.load184 = phi ptr [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 2 to ptr), %bb.u ]
  %i.aw = lshr i8 %2, 3
  %i.ax = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

bb.w:                                             ; preds = %bb.t, %bb.t
  %i.ay = or disjoint i8 %.pre187, 64
  %i.az = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = lshr i8 %2, 3
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit56: ; preds = %bb.i, %bb.j, %bb.w, %bb.v, %bb.s, %bb.r, %bb.p, %bb.o, %bb.e, %bb.d
  %.sroa.16.0 = phi i8 [ 69, %bb.d ], [ -123, %bb.e ], [ 69, %bb.i ], [ -123, %bb.j ], [ 69, %bb.o ], [ -123, %bb.p ], [ %.pre, %bb.r ], [ %i.ar, %bb.s ], [ %.pre187, %bb.v ], [ %i.ay, %bb.w ]
  %.sroa.6.0 = phi i8 [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %bb.p ], [ %i.ap, %bb.r ], [ %i.at, %bb.s ], [ %i.aw, %bb.v ], [ %i.ba, %bb.w ]
  %.sroa.26.sroa.0.2 = phi i8 [ %i.i, %bb.d ], [ %.sroa.26.sroa.0.0.extract.trunc193, %bb.e ], [ %i.t, %bb.i ], [ %.sroa.26.sroa.0.0.extract.trunc192, %bb.j ], [ %i.ah, %bb.o ], [ %.sroa.26.sroa.0.0.extract.trunc, %bb.p ], [ %.pre-phi, %bb.r ], [ 0, %bb.s ], [ %.pre-phi188, %bb.v ], [ 0, %bb.w ]
  %.sroa.26.sroa.14.sroa.0.0 = phi i32 [ 0, %bb.d ], [ %.sroa.26.sroa.14.0.extract.shift196, %bb.e ], [ 0, %bb.i ], [ %.sroa.26.sroa.14.0.extract.shift194, %bb.j ], [ 0, %bb.o ], [ %.sroa.26.sroa.14.0.extract.shift, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.v ], [ 0, %bb.w ]
  %.fca.1.load = phi ptr [ inttoptr (i64 2 to ptr), %bb.d ], [ inttoptr (i64 5 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.i ], [ inttoptr (i64 5 to ptr), %bb.j ], [ inttoptr (i64 2 to ptr), %bb.o ], [ inttoptr (i64 5 to ptr), %bb.p ], [ %.fca.1.load183, %bb.r ], [ inttoptr (i64 2 to ptr), %bb.s ], [ %.fca.1.load184, %bb.v ], [ inttoptr (i64 2 to ptr), %bb.w ]
  %.sroa.26.sroa.0.0.insert.ext = zext i8 %.sroa.26.sroa.0.2 to i32
  %.sroa.26.sroa.0.0.insert.insert = or disjoint i32 %.sroa.26.sroa.14.sroa.0.0, %.sroa.26.sroa.0.0.insert.ext
  %.sroa.26.0.insert.ext = zext i32 %.sroa.26.sroa.0.0.insert.insert to i64
  %.sroa.26.0.insert.shift = shl nuw nsw i64 %.sroa.26.0.insert.ext, 24
  %.sroa.16.0.insert.ext = zext i8 %.sroa.16.0 to i64
  %.sroa.16.0.insert.shift = shl nuw nsw i64 %.sroa.16.0.insert.ext, 16
  %.sroa.16.0.insert.insert = or disjoint i64 %.sroa.26.0.insert.shift, %.sroa.16.0.insert.shift
  %.sroa.6.0.insert.ext = zext nneg i8 %.sroa.6.0 to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.16.0.insert.insert, %.sroa.6.0.insert.shift
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.6.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

end_hunk_5
begin_hunk_6

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit: ; preds = %bb.b, %bb.c
  %i.b = icmp slt i32 %3, 256
  %.pre = and i8 %2, 7                            ; 8 uses
  br i1 %i.b, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  switch i8 %2, label %bb.g [
    i8 4, label %bb.e
    i8 12, label %bb.e
    i8 5, label %bb.f
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.c = or disjoint i8 %.pre, 32
  %i.d = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.d)
  %7 = zext nneg i8 %i.c to i64
  %8 = shl nuw nsw i64 %7, 24
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d
  %9 = or disjoint i8 %.pre, 64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.e = phi i64 [ 0, %bb.d ], [ %8, %bb.e ], [ 0, %bb.f ]
  %.pre.sink = phi i8 [ %.pre, %bb.d ], [ %.pre, %bb.e ], [ %9, %bb.f ]
  %10 = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.f ]
  %i.f = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = lshr i8 %2, 3
  %11 = and i32 %3, 255
  %.sroa.383.0.insert.ext = zext i8 %.pre.sink to i64
  %.sroa.383.0.insert.shift = shl nuw nsw i64 %.sroa.383.0.insert.ext, 16
  %.sroa.383.0.insert.insert = or disjoint i64 %i.e, %.sroa.383.0.insert.shift
  %.sroa.282.0.insert.ext = zext nneg i8 %i.g to i64
  %.sroa.282.0.insert.shift = shl nuw nsw i64 %.sroa.282.0.insert.ext, 8
  %.sroa.282.0.insert.insert = or disjoint i64 %.sroa.383.0.insert.insert, %.sroa.282.0.insert.shift
  %.sroa.024.0.insert.ext = zext nneg i32 %11 to i64
  tail call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.282.0.insert.insert, ptr nonnull %10, i64 %.sroa.024.0.insert.ext) #15
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit
  switch i8 %2, label %bb.k [
    i8 4, label %bb.i
    i8 12, label %bb.i
    i8 5, label %bb.j
    i8 13, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.h = or disjoint i8 %.pre, 32
  %i.i = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.i)
  %12 = zext nneg i8 %i.h to i64
  %13 = shl nuw nsw i64 %12, 24
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  %14 = or disjoint i8 %.pre, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %i.j = phi i64 [ 0, %bb.h ], [ %13, %bb.i ], [ 0, %bb.j ]
  %.pre.sink79 = phi i8 [ %.pre, %bb.h ], [ %.pre, %bb.i ], [ %14, %bb.j ]
  %15 = phi ptr [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 2 to ptr), %bb.i ], [ inttoptr (i64 2 to ptr), %bb.j ]
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %2, 3
  %.sroa.3.0.insert.ext = zext i8 %.pre.sink79 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i64 %i.j, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext nneg i8 %i.l to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i32 %3 to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2.0.insert.insert, ptr nonnull %15, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}
end_hunk_6
begin_hunk_7
define hidden void @_ZN2v88internal14MacroAssembler12CheckMarkBitENS0_8RegisterES2_S2_NS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp eq i8 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

end_hunk_7
begin_hunk_8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  store i64 0, ptr %7, align 8
  %.pre = and i8 %2, 7                            ; 5 uses
  switch i8 %2, label %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge [
    i8 12, label %bb.d
    i8 4, label %bb.d
end_hunk_8
begin_hunk_9

_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge: ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit, %bb.d
  %i.f = phi i64 [ 2, %bb.d ], [ 1, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit ] ; 2 uses
  %.pre179 = lshr i8 %2, 3                        ; 2 uses
  %i.g = or disjoint i8 %.pre, 64                 ; 2 uses
  store i8 %i.g, ptr %i.c, align 2
  %i.h = icmp samesign ult i8 %2, 16
end_hunk_9
begin_hunk_10
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 262143, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i64 3, i32 noundef 5, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 %3, i64 63, i32 noundef 8) #15
  switch i8 %2, label %bb.g [
    i8 12, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  %i.l = or disjoint i8 %.pre, 32
  %8 = zext nneg i8 %i.l to i64
  %9 = shl nuw nsw i64 %8, 24
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge, %bb.e, %bb.f
  %i.m = phi i64 [ 0, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ %9, %bb.e ], [ 0, %bb.f ]
  %storemerge = phi i8 [ %.pre, %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ %.pre, %bb.e ], [ %i.g, %bb.f ]
  %10 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal14MacroAssembler27MemoryChunkHeaderFromObjectENS0_8RegisterES2_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.f ]
  %.sroa.3.0.insert.ext = zext i8 %storemerge to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i64 %i.m, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext nneg i8 %.pre179 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  tail call void @_ZN2v88internal9Assembler3btqENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2.0.insert.insert, ptr nonnull %10, i8 %3) #15
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret void
}
end_hunk_10
