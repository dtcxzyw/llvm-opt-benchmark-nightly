inline.NumInlined: 293
inline.NumDeleted: 146
begin_hunk_0_@_ZN4LIEF3ELF9to_stringILj1476395008EEEPKcNS0_10Relocation4TYPEE:bb.a
  %i.m = phi ptr [ %i.l, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm66ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread12 ], [ @.str.43, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm66ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ @.str.43, %bb.c ]
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not.i.i.i.i.i.i = icmp ugt i32 %0, 1610612770
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612791
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612799
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.not = icmp eq i32 %0, 1610612800
  br i1 %.not.i.i.i.i.i.i.i.i.i.not, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612801
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16

bb.f:                                             ; preds = %bb.c
  %.not.i6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612795 ; 2 uses
  %.add15.i.i = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 840, i64 776
  %.add15.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 856, i64 792
  %.add15.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add15.i.i.sroa.sel.sroa.sel.v
  %i.a = load i32, ptr %.add15.i.i.sroa.sel.sroa.sel, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.a, %0
  %.idx.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 32, i64 0
  %.add16.i.i = or disjoint i64 %.idx.i.i.i.i.i.i.i.i.i.i, %.add15.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

bb.g:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612779 ; 2 uses
  %.add18.i.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 648, i64 520
  %.add18.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i, i64 696, i64 568
  %.add18.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add18.i.i.sroa.sel.sroa.sel.v
  %i.b = load i32, ptr %.add18.i.i.sroa.sel.sroa.sel, align 8
  %.not.i.i7.i.i.i.i.i.i.i = icmp ult i32 %i.b, %0
  %.idx.i.i8.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i, i64 64, i64 0
  %.add19.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i, %.add18.i.i ; 2 uses
  %.ptr32.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add19.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr32.i.i, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp ult i32 %i.d, %0
  %.idx.i.i.i10.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i, i64 32, i64 0
  %.add20.i.i = or disjoint i64 %.add19.i.i, %.idx.i.i.i10.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

bb.h:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612754 ; 2 uses
  %i.e = select i1 %.not.i6.i.i.i.i.i.i, i64 264, i64 8
  %.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 376, i64 120
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.sroa.sel.sroa.sel.v
  %i.f = load i32, ptr %.sroa.sel.sroa.sel, align 8
  %.not.i.i7.i.i.i.i.i.i = icmp ult i32 %i.f, %0
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 128, i64 0
  %.add22.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.e ; 2 uses
  %.ptr36.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add22.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.ptr36.i.i, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %.not.i.i.i9.i.i.i.i.i.i = icmp ult i32 %i.h, %0
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i, i64 64, i64 0
  %.add23.i.i = or disjoint i64 %.add22.i.i, %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr37.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add23.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.ptr37.i.i, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not.i.i.i.i10.i.i.i.i.i.i = icmp ult i32 %i.j, %0
  %.idx.i.i.i.i11.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i, i64 32, i64 0
  %.add24.i.i = or disjoint i64 %.add23.i.i, %.idx.i.i.i.i11.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.add24.sink50.i.i = phi i64 [ %.add24.i.i, %bb.h ], [ %.add20.i.i, %bb.g ], [ %.add16.i.i, %bb.f ] ; 2 uses
  %.ptr38.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add24.sink50.i.i
  %i.k = load i32, ptr %.ptr38.i.i, align 4
  %.not.i.i.i.i.i12.i.i.i.i.i.i = icmp ult i32 %i.k, %0
  %.idx.i.i.i.i.i13.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i12.i.i.i.i.i.i, i64 16, i64 0
  %.add25.i.i = or disjoint i64 %.idx.i.i.i.i.i13.i.i.i.i.i.i, %.add24.sink50.i.i ; 2 uses
  %.0.i.i.i.i.ptr.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add25.i.i
  %.pre.i.pre.i = load i32, ptr %.0.i.i.i.i.ptr.i.phi.trans.insert.i, align 4
  %i.l = icmp ult i32 %0, %.pre.i.pre.i
  br i1 %i.l, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16: ; preds = %bb.e, %bb.d, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit
  %.0.i.i.i.i14.i.i.idx19 = phi i64 [ 904, %bb.d ], [ %.add25.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ 920, %bb.e ]
  %.0.i.i.i.i14.i.i.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1610612736EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.0.i.i.i.i14.i.i.idx19
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14.i.i.ptr, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread: ; preds = %bb.e, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16
  %i.o = phi ptr [ %i.n, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread16 ], [ @.str.43, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ @.str.43, %bb.e ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN4LIEF3ELF9to_stringILj1744830464EEEPKcNS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not.i.i.i.i.i.i = icmp ugt i32 %0, 1744830467
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.not = icmp eq i32 %0, 1744830468
  br i1 %.not.i.i.i.i.i.i.i.not, label %.thread29, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

bb.c:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1744830465
  %i.a = select i1 %.not.i6.i.i.i.i.i.i, i64 40, i64 8
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sink10.i.i.i.i.i.i = phi i64 [ %i.a, %bb.c ], [ 88, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1744830464EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.sink10.i.i.i.i.i.i ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.c, %0 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %i.d = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i, %.sink10.i.i.i.i.i.i
  %.not.i.i = icmp samesign eq i64 %i.d, 104
  br i1 %.not.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit: ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i
  %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 16, i64 0 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %.pre.i.i = load i32, ptr %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel, align 8
  %.pre.i.i.fr = freeze i32 %.pre.i.i
  %i.e = icmp ult i32 %0, %.pre.i.i.fr
  %i.f = add nuw nsw i64 %.sink10.i.i.i.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel.idx
  %.not = icmp samesign eq i64 %i.f, 104
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit
  %.0.i.i.i.i14.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.idx.i.i.i.i.i.i.i.i.i.sroa.sel.idx.sroa.sel, i64 8
  br label %.thread29

.thread29:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %.0.i.i.i.i14.i.i.sroa.gep, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @__const._ZN4LIEF3ELF9to_stringILj1744830464EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 80), %bb.b ]
  %i.h = load ptr, ptr %i.g, align 8
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread: ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i, %.thread29
  %i.i = phi ptr [ %i.h, %.thread29 ], [ @.str.43, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ @.str.43, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm6ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i ]
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF3ELF9to_stringILj1879048192EEEPKcNS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %1 = alloca %"class.frozen::map.62", align 8    ; 6 uses
  store i32 %0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1768) %1, ptr noundef nonnull align 8 dereferenceable(1768) @__const._ZN4LIEF3ELF9to_stringILj1879048192EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 1768, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = call noundef ptr @_ZN6frozen4bits11lower_boundILm110EPKSt4pairIN4LIEF3ELF10Relocation4TYPEEPKcES6_NS_4impl10CompareKeyISt4lessIS6_EEEEET0_SH_RKT1_RKT2_(ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(1768) %1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm110ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4
  %i.f = load i32, ptr %i.c, align 4
  %.not12.i.i = icmp ult i32 %i.e, %i.f
  br i1 %.not12.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm110ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm110ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm110ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ @.str.43, %bb.b ], [ @.str.43, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF3ELF9to_stringENS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.frozen::map.62", align 8    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.frozen::map.54", align 8    ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.frozen::map.54", align 8    ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.frozen::map.50", align 8    ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.frozen::map.48", align 8    ; 5 uses
  %6 = alloca %"class.frozen::map.46", align 8    ; 13 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.frozen::map.44", align 8    ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.frozen::map.40", align 8    ; 6 uses
  %9 = add i32 %0, -134217728
  %i.h = lshr i32 %9, 27
  switch i32 %i.h, label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 3, label %bb.r
    i32 4, label %bb.u
    i32 5, label %bb.aa
    i32 6, label %bb.ac
    i32 7, label %bb.af
    i32 8, label %bb.an
    i32 9, label %bb.ap
    i32 10, label %bb.ar
    i32 11, label %bb.au
    i32 12, label %bb.bc
    i32 13, label %bb.bg
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217759
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217767
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217769
  %.add.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 680, i64 648
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 134217763 ; 2 uses
  %.add12.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 584, i64 520
  %.add12.i.i.sroa.sel.sroa.sel.v.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 600, i64 536
  %.add12.i.i.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add12.i.i.sroa.sel.sroa.sel.v.i
  %i.i = load i32, ptr %.add12.i.i.sroa.sel.sroa.sel.i, align 8
  %.not.i.i6.i.i.i.i.i.i.i.i = icmp ult i32 %i.i, %0
  %.idx.i.i7.i.i.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i.i.i, i64 32, i64 0
  %.add13.i.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i.i.i, %.add12.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i

bb.f:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 134217743 ; 2 uses
  %i.j = select i1 %.not.i6.i.i.i.i.i.i.i, i64 264, i64 8
  %.sroa.sel.sroa.sel.v.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 376, i64 120
  %.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.sroa.sel.sroa.sel.v.i
  %i.k = load i32, ptr %.sroa.sel.sroa.sel.i, align 8
  %.not.i.i7.i.i.i.i.i.i.i = icmp ult i32 %i.k, %0
  %.idx.i.i8.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i, i64 128, i64 0
  %.add14.i.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i, %i.j ; 2 uses
  %.ptr22.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add14.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr22.i.i.i, i64 48
  %i.m = load i32, ptr %i.l, align 8
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp ult i32 %i.m, %0
  %.idx.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i, i64 64, i64 0
  %.add15.i.i.i = or disjoint i64 %.add14.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr23.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add15.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.ptr23.i.i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.o, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 32, i64 0
  %.add16.i.i.i = or disjoint i64 %.add15.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i.idx.i.i.i = phi i64 [ %.add16.i.i.i, %bb.f ], [ %.add13.i.i.i, %bb.e ], [ %.add.i.i.i, %bb.d ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.sink.i.i.i.i.idx.i.i.i
  %.sink11.i.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sink11.i.i.i.i.i.i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sink.i.i.i.i.add.i.i.i, 696
  br i1 %.not.i.i.i, label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i.i
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.sink.i.i.i.i.add.i.i.i ; 2 uses
  %i.p = load i32, ptr %.ptr.i.i.i, align 4
  %.not27.i.i.i = icmp ult i32 %0, %i.p
  br i1 %.not27.i.i.i, label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1976) %8, ptr noundef nonnull align 8 dereferenceable(1976) @__const._ZN4LIEF3ELF9to_stringILj268435456EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 1976, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = call noundef ptr @_ZN6frozen4bits11lower_boundILm123EPKSt4pairIN4LIEF3ELF10Relocation4TYPEEPKcES6_NS_4impl10CompareKeyISt4lessIS6_EEEEET0_SH_RKT1_RKT2_(ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(1976) %8) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 1976
  %.not.i.i.i31 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i31, label %_ZN4LIEF3ELF9to_stringILj268435456EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.g, align 4
  %i.w = load i32, ptr %i.t, align 4
  %.not12.i.i.i = icmp ult i32 %i.v, %i.w
  br i1 %.not12.i.i.i, label %_ZN4LIEF3ELF9to_stringILj268435456EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %_ZN4LIEF3ELF9to_stringILj268435456EEEPKcNS0_10Relocation4TYPEE.exit

_ZN4LIEF3ELF9to_stringILj268435456EEEPKcNS0_10Relocation4TYPEE.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.z = phi ptr [ %i.y, %bb.k ], [ @.str.43, %bb.j ], [ @.str.43, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i32 = icmp ugt i32 %0, 402653311
  br i1 %.not.i.i.i.i.i.i.i32, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i.i.i39 = icmp ugt i32 %0, 402653436
  br i1 %.not.i.i.i.i.i.i.i.i39, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i.i.i.not.i = icmp eq i32 %0, 402653437
  br i1 %.not.i.i.i.i.i.i.i.i.not.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread14.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i.i.i.i.i.i44 = icmp ugt i32 %0, 402653438
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i44, label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread14.i

bb.p:                                             ; preds = %bb.m
  %.not.i6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 402653344 ; 2 uses
  %.add15.i.i.i40 = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 2120, i64 2056
  %.add15.i.i.sroa.sel.sroa.sel.v.i = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 2136, i64 2072
  %.add15.i.i.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add15.i.i.sroa.sel.sroa.sel.v.i
  %i.aa = load i32, ptr %.add15.i.i.sroa.sel.sroa.sel.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i41 = icmp ult i32 %i.aa, %0
  %.idx.i.i.i.i.i.i.i.i.i.i42 = select i1 %.not.i.i.i.i.i.i.i.i.i.i41, i64 32, i64 0
  %.add16.i.i.i43 = or disjoint i64 %.idx.i.i.i.i.i.i.i.i.i.i42, %.add15.i.i.i40
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i

bb.q:                                             ; preds = %bb.l
  %.not.i6.i.i.i.i.i.i.i33 = icmp samesign ugt i32 %0, 402653247 ; 2 uses
  %.add18.i.i.i = select i1 %.not.i6.i.i.i.i.i.i.i33, i64 1032, i64 8
  %.add18.i.i.sroa.sel.sroa.sel.v.i = select i1 %.not.i6.i.i.i.i.i.i.i33, i64 1528, i64 504
  %.add18.i.i.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add18.i.i.sroa.sel.sroa.sel.v.i
  %i.ab = load i32, ptr %.add18.i.i.sroa.sel.sroa.sel.i, align 8
  %.not.i.i7.i.i.i.i.i.i.i34 = icmp ult i32 %i.ab, %0
  %.idx.i.i8.i.i.i.i.i.i.i35 = select i1 %.not.i.i7.i.i.i.i.i.i.i34, i64 512, i64 0
  %.add19.i.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i35, %.add18.i.i.i ; 2 uses
  %.ptr31.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add19.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.ptr31.i.i.i, i64 240
  %i.ad = load i32, ptr %i.ac, align 8
  %.not.i.i.i9.i.i.i.i.i.i.i36 = icmp ult i32 %i.ad, %0
  %.idx.i.i.i10.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i36, i64 256, i64 0
  %.add20.i.i.i = or disjoint i64 %.add19.i.i.i, %.idx.i.i.i10.i.i.i.i.i.i.i ; 2 uses
  %.ptr32.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add20.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.ptr32.i.i.i, i64 112
  %i.af = load i32, ptr %i.ae, align 8
  %.not.i.i.i.i11.i.i.i.i.i.i.i = icmp ult i32 %i.af, %0
  %.idx.i.i.i.i12.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i11.i.i.i.i.i.i.i, i64 128, i64 0
  %.add21.i.i.i = or disjoint i64 %.add20.i.i.i, %.idx.i.i.i.i12.i.i.i.i.i.i.i ; 2 uses
  %.ptr33.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add21.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.ptr33.i.i.i, i64 48
  %i.ah = load i32, ptr %i.ag, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i37 = icmp ult i32 %i.ah, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i38 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i37, i64 64, i64 0
  %.add22.i.i.i = or disjoint i64 %.add21.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i.i38 ; 2 uses
  %.ptr34.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add22.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.ptr34.i.i.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.aj, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32, i64 0
  %.add23.i.i.i = or disjoint i64 %.add22.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i: ; preds = %bb.q, %bb.p
  %.add23.sink47.i.i.i = phi i64 [ %.add23.i.i.i, %bb.q ], [ %.add16.i.i.i43, %bb.p ] ; 2 uses
  %.ptr35.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add23.sink47.i.i.i
  %i.ak = load i32, ptr %.ptr35.i.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ak, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add24.i.i.i = or disjoint i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.add23.sink47.i.i.i ; 2 uses
  %.0.i.i.i.i.ptr.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.add24.i.i.i
  %.pre.i.pre.i.i = load i32, ptr %.0.i.i.i.i.ptr.i.phi.trans.insert.i.i, align 4
  %i.al = icmp ult i32 %0, %.pre.i.pre.i.i
  br i1 %i.al, label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread14.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread14.i: ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i, %bb.o, %bb.n
  %.0.i.i.i.i14.i.i.idx17.i = phi i64 [ 2184, %bb.n ], [ %.add24.i.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEPKcLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i ], [ 2200, %bb.o ]
  %.0.i.i.i.i14.i.i.ptr.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9to_stringILj402653184EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 %.0.i.i.i.i14.i.i.idx17.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14.i.i.ptr.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZN4LIEF3ELF9to_stringILj134217728EEEPKcNS0_10Relocation4TYPEE.exit

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %7, ptr noundef nonnull align 8 dereferenceable(1512) @__const._ZN4LIEF3ELF9to_stringILj536870912EEEPKcNS0_10Relocation4TYPEE.enums2str, i64 1512, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = call noundef ptr @_ZN6frozen4bits11lower_boundILm94EPKSt4pairIN4LIEF3ELF10Relocation4TYPEEPKcES6_NS_4impl10CompareKeyISt4lessIS6_EEEEET0_SH_RKT1_RKT2_(ptr noundef nonnull %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(1512) %7) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 1512
  %.not.i.i.i45 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i45, label %_ZN4LIEF3ELF9to_stringILj536870912EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.f, align 4
  %i.as = load i32, ptr %i.ap, align 4
  %.not12.i.i.i46 = icmp ult i32 %i.ar, %i.as
  br i1 %.not12.i.i.i46, label %_ZN4LIEF3ELF9to_stringILj536870912EEEPKcNS0_10Relocation4TYPEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZN4LIEF3ELF9to_stringILj536870912EEEPKcNS0_10Relocation4TYPEE.exit
end_hunk_0
