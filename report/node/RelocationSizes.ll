inline.NumInlined: 236
inline.NumDeleted: 119
begin_hunk_0_@_ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE:bb.a

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612791
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612799
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.not = icmp eq i32 %0, 1610612800
  br i1 %.not.i.i.i.i.i.i.i.i.i.not, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1610612801
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8

bb.f:                                             ; preds = %bb.c
  %.not.i6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612795 ; 2 uses
  %.add15.i.i = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 420, i64 388
  %.add15.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 428, i64 396
  %.add15.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add15.i.i.sroa.sel.sroa.sel.v
  %i.a = load i32, ptr %.add15.i.i.sroa.sel.sroa.sel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.a, %0
  %.idx.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add16.i.i = or disjoint i64 %.idx.i.i.i.i.i.i.i.i.i.i, %.add15.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit

bb.g:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612779 ; 2 uses
  %.add18.i.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 324, i64 260
  %.add18.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i, i64 348, i64 284
  %.add18.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add18.i.i.sroa.sel.sroa.sel.v
  %i.b = load i32, ptr %.add18.i.i.sroa.sel.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i.i = icmp ult i32 %i.b, %0
  %.idx.i.i8.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i, i64 32, i64 0
  %.add19.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i, %.add18.i.i ; 2 uses
  %.ptr32.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add19.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr32.i.i, i64 8
  %i.d = load i32, ptr %i.c, align 4
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp ult i32 %i.d, %0
  %.idx.i.i.i10.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i, i64 16, i64 0
  %.add20.i.i = or disjoint i64 %.add19.i.i, %.idx.i.i.i10.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit

bb.h:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1610612754 ; 2 uses
  %i.e = select i1 %.not.i6.i.i.i.i.i.i, i64 132, i64 4
  %.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 188, i64 60
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.sroa.sel.sroa.sel.v
  %i.f = load i32, ptr %.sroa.sel.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i = icmp ult i32 %i.f, %0
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 64, i64 0
  %.add22.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.e ; 2 uses
  %.ptr36.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add22.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.ptr36.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 4
  %.not.i.i.i9.i.i.i.i.i.i = icmp ult i32 %i.h, %0
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i, i64 32, i64 0
  %.add23.i.i = or disjoint i64 %.add22.i.i, %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr37.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add23.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.ptr37.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %.not.i.i.i.i10.i.i.i.i.i.i = icmp ult i32 %i.j, %0
  %.idx.i.i.i.i11.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i, i64 16, i64 0
  %.add24.i.i = or disjoint i64 %.add23.i.i, %.idx.i.i.i.i11.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.add24.sink50.i.i = phi i64 [ %.add24.i.i, %bb.h ], [ %.add20.i.i, %bb.g ], [ %.add16.i.i, %bb.f ] ; 2 uses
  %.ptr38.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add24.sink50.i.i
  %i.k = load i32, ptr %.ptr38.i.i, align 4
  %.not.i.i.i.i.i12.i.i.i.i.i.i = icmp ult i32 %i.k, %0
  %.idx.i.i.i.i.i13.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i12.i.i.i.i.i.i, i64 8, i64 0
  %.add25.i.i = or disjoint i64 %.idx.i.i.i.i.i13.i.i.i.i.i.i, %.add24.sink50.i.i ; 2 uses
  %.0.i.i.i.i.ptr.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.add25.i.i
  %.pre.i.pre.i = load i32, ptr %.0.i.i.i.i.ptr.i.phi.trans.insert.i, align 4
  %i.l = icmp ult i32 %0, %.pre.i.pre.i
  br i1 %i.l, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8: ; preds = %bb.e, %bb.d, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit
  %.0.i.i.i.i14.i.i.idx11 = phi i64 [ 452, %bb.d ], [ %.add25.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit ], [ 460, %bb.e ]
  %.0.i.i.i.i14.i.i.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF11get_R_RISCVENS0_10Relocation4TYPEE.SIZES, i64 %.0.i.i.i.i14.i.i.idx11
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14.i.i.ptr, i64 4
  %i.n = load i32, ptr %i.m, align 4
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread: ; preds = %bb.e, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8
  %i.o = phi i32 [ %i.n, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread8 ], [ -1, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm58ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit ], [ -1, %bb.e ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i.i.i.i.i = icmp ugt i32 %0, 1879048233
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %0, 1879048355
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1879048395
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6frozen4bits10LowerBoundIN4LIEF3ELF10Relocation4TYPEENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_iELm5EEET_SH_St17integral_constantImXT0_EESI_IbLb0EE.exit.i.i.i.i.i.i.i.i, label %bb.d

_ZN6frozen4bits10LowerBoundIN4LIEF3ELF10Relocation4TYPEENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_iELm5EEET_SH_St17integral_constantImXT0_EESI_IbLb0EE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 1879048399
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1879048397
  %i.a = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 468, i64 452
  %.add.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 484, i64 %i.a
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1879048359 ; 2 uses
  %.add12.i.i = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 420, i64 388
  %.add12.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 428, i64 396
  %.add12.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.add12.i.i.sroa.sel.sroa.sel.v
  %i.b = load i32, ptr %.add12.i.i.sroa.sel.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i.i.i = icmp ult i32 %i.b, %0
  %.idx.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add13.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i.i, %.add12.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1879048339 ; 2 uses
  %.add14.i.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 324, i64 260
  %.add14.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i, i64 348, i64 284
  %.add14.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.add14.i.i.sroa.sel.sroa.sel.v
  %i.c = load i32, ptr %.add14.i.i.sroa.sel.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i.i = icmp ult i32 %i.c, %0
  %.idx.i.i8.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i, i64 32, i64 0
  %.add15.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i, %.add14.i.i ; 2 uses
  %.ptr26.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.add15.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr26.i.i, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp ult i32 %i.e, %0
  %.idx.i.i.i10.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i, i64 16, i64 0
  %.add16.i.i = or disjoint i64 %.add15.i.i, %.idx.i.i.i10.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i

bb.f:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp samesign ugt i32 %0, 1879048217 ; 2 uses
  %i.f = select i1 %.not.i6.i.i.i.i.i.i, i64 132, i64 4
  %.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 188, i64 60
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.sroa.sel.sroa.sel.v
  %i.g = load i32, ptr %.sroa.sel.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i = icmp ult i32 %i.g, %0
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 64, i64 0
  %.add17.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.f ; 2 uses
  %.ptr29.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.add17.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr29.i.i, i64 24
  %i.i = load i32, ptr %i.h, align 4
  %.not.i.i.i9.i.i.i.i.i.i = icmp ult i32 %i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i, i64 32, i64 0
  %.add18.i.i = or disjoint i64 %.add17.i.i, %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr30.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.add18.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.ptr30.i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %.not.i.i.i.i10.i.i.i.i.i.i = icmp ult i32 %i.k, %0
  %.idx.i.i.i.i11.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i, i64 16, i64 0
  %.add19.i.i = or disjoint i64 %.add18.i.i, %.idx.i.i.i.i11.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %_ZN6frozen4bits10LowerBoundIN4LIEF3ELF10Relocation4TYPEENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_iELm5EEET_SH_St17integral_constantImXT0_EESI_IbLb0EE.exit.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add19.i.i, %bb.f ], [ %.add16.i.i, %bb.e ], [ %.add13.i.i, %bb.d ], [ %.add.i.i, %_ZN6frozen4bits10LowerBoundIN4LIEF3ELF10Relocation4TYPEENS_4impl10CompareKeyISt4lessIS5_EEEE9doitfirstIPKSt4pairIS5_iELm5EEET_SH_St17integral_constantImXT0_EESI_IbLb0EE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.sink.i.i.i.i.idx.i.i
  %.sink13.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sink13.i.i.i.i.i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 8, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %.sink.i.i.i.i.add.i.i, 492
  br i1 %.not.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_SH4ENS0_10Relocation4TYPEE.SIZES, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.l = load i32, ptr %.ptr.i.i, align 4
  %.not34.i.i = icmp ult i32 %0, %i.l
  br i1 %.not34.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread: ; preds = %bb.g, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i, %bb.h
  %i.o = phi i32 [ %i.n, %bb.h ], [ -1, %bb.g ], [ -1, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm61ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4LIEF3ELF14get_reloc_sizeENS0_10Relocation4TYPEE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.frozen::map.8", align 4     ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.frozen::map.10", align 4    ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.frozen::map.4", align 4     ; 6 uses
  %4 = alloca %"class.frozen::map.0", align 4     ; 13 uses
  %5 = add i32 %0, -134217728
  %i.d = lshr i32 %5, 27
  switch i32 %i.d, label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit [
    i32 0, label %bb.b
    i32 4, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.r
    i32 5, label %bb.x
    i32 6, label %bb.af
    i32 7, label %bb.ai
    i32 8, label %bb.aq
    i32 11, label %bb.as
    i32 13, label %bb.ba
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217759
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217767
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %0, 134217769
  %.add.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 340, i64 324
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 134217763 ; 2 uses
  %.add12.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 292, i64 260
  %.add12.i.i.sroa.sel.sroa.sel.v.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 300, i64 268
  %.add12.i.i.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.add12.i.i.sroa.sel.sroa.sel.v.i
  %i.e = load i32, ptr %.add12.i.i.sroa.sel.sroa.sel.i, align 4
  %.not.i.i6.i.i.i.i.i.i.i.i = icmp ult i32 %i.e, %0
  %.idx.i.i7.i.i.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add13.i.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i.i.i, %.add12.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

bb.f:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 134217743 ; 2 uses
  %i.f = select i1 %.not.i6.i.i.i.i.i.i.i, i64 132, i64 4
  %.sroa.sel.sroa.sel.v.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 188, i64 60
  %.sroa.sel.sroa.sel.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.sroa.sel.sroa.sel.v.i
  %i.g = load i32, ptr %.sroa.sel.sroa.sel.i, align 4
  %.not.i.i7.i.i.i.i.i.i.i = icmp ult i32 %i.g, %0
  %.idx.i.i8.i.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i.i, i64 64, i64 0
  %.add14.i.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i, %i.f ; 2 uses
  %.ptr22.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.add14.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr22.i.i.i, i64 24
  %i.i = load i32, ptr %i.h, align 4
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp ult i32 %i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i, i64 32, i64 0
  %.add15.i.i.i = or disjoint i64 %.add14.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr23.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.add15.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.ptr23.i.i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.k, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add16.i.i.i = or disjoint i64 %.add15.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i.idx.i.i.i = phi i64 [ %.add16.i.i.i, %bb.f ], [ %.add13.i.i.i, %bb.e ], [ %.add.i.i.i, %bb.d ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.sink.i.i.i.i.idx.i.i.i
  %.sink11.i.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sink11.i.i.i.i.i.i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 8, i64 0
  %.sink.i.i.i.i.add.i.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sink.i.i.i.i.add.i.i.i, 348
  br i1 %.not.i.i.i, label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm43ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.SIZES, i64 %.sink.i.i.i.i.add.i.i.i ; 2 uses
  %i.l = load i32, ptr %.ptr.i.i.i, align 4
  %.not27.i.i.i = icmp ult i32 %0, %i.l
  br i1 %.not27.i.i.i, label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr.i.i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4
  br label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(324) %4, ptr noundef nonnull align 4 dereferenceable(324) @__const._ZN4LIEF3ELF9get_R_X86ENS0_10Relocation4TYPEE.SIZES, i64 324, i1 false)
  %.not.i.i.i.i.i.i.i24 = icmp ugt i32 %0, 671088673
  br i1 %.not.i.i.i.i.i.i.i24, label %bb.j, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.thread30.i.i.i

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i.i35 = icmp ugt i32 %0, 671088677
  br i1 %.not.i.i.i.i.i.i.i.i35, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i.i.i.i.i39 = icmp ugt i32 %0, 671088680
  br i1 %.not.i.i.i.i.i.i.i.i.i39, label %bb.l, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i.i.not.i = icmp eq i32 %0, 671088681
  br i1 %.not.i.i.i.i.i.i.i.i.i.not.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread6.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread6.i: ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 308
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %.not.i6.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 671088675
  %i.p = select i1 %.not.i6.i.i.i.i.i.i.i.i, i64 276, i64 260
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.thread30.i.i.i: ; preds = %bb.i
  %.not.i6.i.i.i.i.i.i.i25 = icmp samesign ugt i32 %0, 671088657 ; 2 uses
  %i.q = select i1 %.not.i6.i.i.i.i.i.i.i25, i64 132, i64 4
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i.i25, i64 188, i64 60
  %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.r = load i32, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %.not.i.i7.i.i.i.i.i.i.i26 = icmp ult i32 %i.r, %0
  %.idx.i.i8.i.i.i.i.i.i.i27 = select i1 %.not.i.i7.i.i.i.i.i.i.i26, i64 64, i64 0
  %.add16.i.i.i28 = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i.i27, %i.q ; 2 uses
  %.ptr23.i.i.i29 = getelementptr inbounds nuw i8, ptr %4, i64 %.add16.i.i.i28
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr23.i.i.i29, i64 24
  %i.t = load i32, ptr %i.s, align 4
  %.not.i.i.i9.i.i.i.i.i.i.i30 = icmp ult i32 %i.t, %0
  %.idx.i.i.i10.i.i.i.i.i.i.i = select i1 %.not.i.i.i9.i.i.i.i.i.i.i30, i64 32, i64 0
  %.add17.i.i.i = or disjoint i64 %.add16.i.i.i28, %.idx.i.i.i10.i.i.i.i.i.i.i ; 2 uses
  %.ptr24.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.add17.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.ptr24.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i31 = icmp ult i32 %i.v, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i32 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i31, i64 16, i64 0
  %.add18.i.i.i = or disjoint i64 %.add17.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i32 ; 2 uses
  %.ptr25.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.add18.i.i.i
  %i.w = load i32, ptr %.ptr25.i.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i33 = icmp ult i32 %i.w, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i34 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i33, i64 8, i64 0
  %.add19.i.i.i = or disjoint i64 %.add18.i.i.i, %.idx.i.i.i.i.i.i.i.i.i.i.i.i34
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 324
  br label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sink12.i.i.i.i.i.i.i.i = phi i64 [ 316, %bb.l ], [ %i.p, %bb.m ], [ 292, %bb.k ] ; 2 uses
  %.ptr20.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sink12.i.i.i.i.i.i.i.i
  %i.y = load i32, ptr %.ptr20.i.i.i, align 4
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.y, %0
  %.idx.i.i.i.i.i.i.i.i.i.i36 = select i1 %.not.i6.i.i.i.i.i.i.i.i.i, i64 8, i64 0
  %.add15.i.i.i37 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i36, %.sink12.i.i.i.i.i.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 324
  %.not.i.i.i38 = icmp eq i64 %.add15.i.i.i37, 324
  br i1 %.not.i.i.i38, label %_ZN4LIEF3ELF9get_R_X86ENS0_10Relocation4TYPEE.exit, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i

_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i: ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.thread30.i.i.i
  %i.aa = phi ptr [ %i.x, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.thread30.i.i.i ], [ %i.z, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i ]
  %.0.i.i.i.i.idx33.i.i.i = phi i64 [ %.add19.i.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.thread30.i.i.i ], [ %.add15.i.i.i37, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i ]
  %.0.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i.i.i.i.idx33.i.i.i ; 2 uses
  %.pre.i.i.i = load i32, ptr %.0.i.i.i.i.ptr.i.i.i, align 4
  %i.ab = icmp ult i32 %0, %.pre.i.i.i
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %.0.i.i.i.i.ptr.i.i.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 324
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4LIEF3ELF9get_R_X86ENS0_10Relocation4TYPEE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread6.i
  %.not27.i.i8.i = phi ptr [ %i.o, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread6.i ], [ %i.ac, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i ]
  %spec.select.i.i.sroa.sel.i = getelementptr inbounds nuw i8, ptr %.not27.i.i8.i, i64 4
  %i.af = load i32, ptr %spec.select.i.i.sroa.sel.i, align 4
  br label %_ZN4LIEF3ELF9get_R_X86ENS0_10Relocation4TYPEE.exit

_ZN4LIEF3ELF9get_R_X86ENS0_10Relocation4TYPEE.exit: ; preds = %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i, %bb.n
  %i.ag = phi i32 [ %i.af, %bb.n ], [ -1, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.i ], [ -1, %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm40ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_iERKT_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(988) %3, ptr noundef nonnull align 4 dereferenceable(988) @__const._ZN4LIEF3ELF13get_R_AARCH64ENS0_10Relocation4TYPEE.SIZES, i64 988, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = call noundef ptr @_ZN6frozen4bits11lower_boundILm123EPKSt4pairIN4LIEF3ELF10Relocation4TYPEEiES6_NS_4impl10CompareKeyISt4lessIS6_EEEEET0_SF_RKT1_RKT2_(ptr noundef nonnull %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(988) %3) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 988
  %.not.i.i.i40 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i40, label %_ZN4LIEF3ELF13get_R_AARCH64ENS0_10Relocation4TYPEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = load i32, ptr %i.ai, align 4
  %.not12.i.i.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not12.i.i.i, label %_ZN4LIEF3ELF13get_R_AARCH64ENS0_10Relocation4TYPEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.an = load i32, ptr %i.am, align 4
  br label %_ZN4LIEF3ELF13get_R_AARCH64ENS0_10Relocation4TYPEE.exit

_ZN4LIEF3ELF13get_R_AARCH64ENS0_10Relocation4TYPEE.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ao = phi i32 [ %i.an, %bb.q ], [ -1, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4LIEF3ELF9get_R_X64ENS0_10Relocation4TYPEE.exit

bb.r:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i41 = icmp ugt i32 %0, 402653311
  br i1 %.not.i.i.i.i.i.i.i41, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i.i.i.i51 = icmp ugt i32 %0, 402653436
  br i1 %.not.i.i.i.i.i.i.i.i51, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.i.i.i.not.i = icmp eq i32 %0, 402653437
  br i1 %.not.i.i.i.i.i.i.i.i.not.i, label %_ZNK6frozen3mapIN4LIEF3ELF10Relocation4TYPEEiLm138ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_iERKT_.exit.thread6.i, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
