Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.01?download=true
inline.NumInlined: 272
inline.NumDeleted: 119
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs80wj1cxFixi_12polars_dtype:bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 32, i64 noundef 8) #28, !dbg !492, !noalias !485
  br label %common.resume, !dbg !488

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.z
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 32, i64 noundef 8) #28, !dbg !501, !noalias !485
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs80wj1cxFixi_12polars_dtype.exit, !dbg !343

bb.ab:                                            ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507), !dbg !343
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !510, !alias.scope !507, !nonnull !12, !noundef !12 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 55, !dbg !513
  %i.al = load i8, ptr %i.ak, align 1, !dbg !513, !range !525, !alias.scope !526, !noalias !507, !noundef !12
  %i.am = icmp eq i8 %i.al, -40, !dbg !537
  br i1 %i.am, label %bb.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i, !dbg !537, !prof !538

bb.ac:                                            ; preds = %bb.ab
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32, !dbg !539
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i unwind label %bb.ad, !dbg !540, !noalias !507, !inline_history !541

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.ac, %bb.ab
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %bb.ah unwind label %bb.ag, !dbg !539, !noalias !507, !inline_history !541

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj) #29
          to label %bb.ae unwind label %bb.aj, !dbg !539, !noalias !507, !inline_history !541

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.ag ], [ %i.ao, %bb.ad ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 79, !dbg !542
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !542, !range !388, !alias.scope !544, !noalias !507, !noundef !12
  %cond.i.i = icmp eq i8 %i.aq, -40, !dbg !542
  br i1 %cond.i.i, label %bb.af, label %bb.al, !dbg !542, !prof !392

bb.af:                                            ; preds = %bb.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 56, !dbg !539
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.al unwind label %bb.aj, !dbg !547, !noalias !507, !inline_history !541

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ah:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 79, !dbg !552
  %i.au = load i8, ptr %i.at, align 1, !dbg !552, !range !388, !alias.scope !554, !noalias !507, !noundef !12
  %cond.i3.i = icmp eq i8 %i.au, -40, !dbg !552
  br i1 %cond.i3.i, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit, !dbg !552, !prof !392

bb.ai:                                            ; preds = %bb.ah
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 56, !dbg !539
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit_crit_edge unwind label %bb.ak, !dbg !557, !inline_history !541

._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit_crit_edge: ; preds = %bb.ai
  %.val.i13.pre = load ptr, ptr %i.ai, align 8, !dbg !510, !alias.scope !507
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit, !dbg !557

bb.aj:                                            ; preds = %bb.af, %bb.ad
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !539, !noalias !507, !inline_history !541
  unreachable, !dbg !539

bb.ak:                                            ; preds = %bb.ai
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %.val1.i12.pre = load ptr, ptr %i.ai, align 8, !dbg !510, !alias.scope !507
  br label %bb.al, !dbg !510

bb.al:                                            ; preds = %bb.ak, %bb.af, %bb.ae
  %.val1.i12 = phi ptr [ %.val1.i12.pre, %bb.ak ], [ %i.aj, %bb.af ], [ %i.aj, %bb.ae ], !dbg !510
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.ak ], [ %.pn.i, %bb.af ], [ %.pn.i, %bb.ae ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12, i64 noundef 80, i64 noundef 8) #28, !dbg !562, !noalias !507
  br label %common.resume, !dbg !510

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit_crit_edge, %bb.ah
  %.val.i13 = phi ptr [ %.val.i13.pre, %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs80wj1cxFixi_12polars_dtype.exit_crit_edge ], [ %i.aj, %bb.ah ], !dbg !510
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i13, i64 noundef 80, i64 noundef 8) #28, !dbg !571, !noalias !507
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs80wj1cxFixi_12polars_dtype.exit, !dbg !343
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder16OptBitmapBuilderECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !320 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !577, !range !14, !noundef !12
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !577
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !577

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs80wj1cxFixi_12polars_dtype.exit, %bb.a
  ret void, !dbg !577

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.d, !dbg !578

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs80wj1cxFixi_12polars_dtype.exit.i.i unwind label %bb.e, !dbg !581

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !578
  unreachable, !dbg !578

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !578

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(56) %0), !dbg !583
  br label %bb.b, !dbg !577
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !585 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55, !dbg !586
  %i.b = load i8, ptr %i.a, align 1, !dbg !586, !range !525, !alias.scope !593, !noundef !12
  %i.c = icmp eq i8 %i.b, -40, !dbg !602
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit, !dbg !602, !prof !538

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !603
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.c, !dbg !604

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(32) %0) #29
          to label %bb.d unwind label %bb.k, !dbg !603

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g, !dbg !603

bb.d:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !603 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605), !dbg !603
  %i.g = load ptr, ptr %i.f, align 8, !dbg !608, !alias.scope !605, !noundef !12 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !608
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit, label %bb.e, !dbg !608

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !611, !noalias !627
  %i.j = icmp eq i64 %i.i, 1, !dbg !632
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit, !dbg !632

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !633
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #30
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.k, !dbg !636

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs80wj1cxFixi_12polars_dtype.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !603 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637), !dbg !603
  %i.m = load ptr, ptr %i.l, align 8, !dbg !640, !alias.scope !637, !noundef !12 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !640
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit3, label %bb.i, !dbg !640

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !642, !noalias !647
  %i.p = icmp eq i64 %i.o, 1, !dbg !652
  br i1 %i.p, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit3, !dbg !652

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !653
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #30, !dbg !655
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit3, !dbg !655

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit3: ; preds = %bb.h, %bb.i, %bb.j
  ret void, !dbg !603

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !603
  unreachable, !dbg !603

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %.pn, !dbg !603
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping11with_hasher(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([640 x i8]) align 128 captures(none) dereferenceable(640) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !656 {
bb.a:
  %i.a = alloca [128 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !662
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !663
  store ptr @_RNvNtNtCs2mZqlW55729_12polars_utils5parma3raw15EMPTY_ALLOC_LOC, ptr %i.b, align 32, !dbg !663
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !663
  store ptr null, ptr %i.c, align 8, !dbg !663
  store i32 0, ptr %i.a, align 128, !dbg !663
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !663
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 4, !dbg !663
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !663
  store i64 0, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !663
  %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !663
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx, align 16, !dbg !663
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !663
  store i64 0, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx, align 8, !dbg !663
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !663
  %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !663
  store i32 0, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx, align 16, !dbg !663
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 52, !dbg !663
  store i8 0, ptr %i.d, align 4, !dbg !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %4, i8 0, i64 17, i1 false), !dbg !663
  %i.e = invoke noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs80wj1cxFixi_12polars_dtype(i64 noundef 0)
          to label %bb.c unwind label %bb.b, !dbg !673

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils5parma3raw8RawTableemEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 128 dereferenceable(128) %i.a) #29
          to label %bb.e unwind label %bb.d, !dbg !693

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !694
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(464) %i.g, i8 0, i64 464, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %0, ptr noundef nonnull align 128 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !694
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !694
  store i64 %i.e, ptr %.sroa.438.0..sroa_idx, align 16, !dbg !694
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !694
  store i64 0, ptr %.sroa.539.0..sroa_idx, align 8, !dbg !694
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !694
  store i64 %1, ptr %i.h, align 32, !dbg !694
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !694
  store i64 0, ptr %i.i, align 8, !dbg !694
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !694
  store ptr %2, ptr %i.j, align 16, !dbg !694
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !694
  store i64 %3, ptr %i.k, align 8, !dbg !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !693
  ret void, !dbg !695

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !696
  unreachable, !dbg !696

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f, !dbg !696
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping18set_max_categories(ptr noalias nofree noundef align 128 captures(none) dereferenceable(640) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !697 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !698
  %i.b = load atomic i64, ptr %i.a monotonic, align 8, !dbg !710
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !713 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !dbg !713, !noundef !12
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b), !dbg !714
  %.not = icmp ult i64 %1, %.sroa.0.0.i, !dbg !720
  br i1 %.not, label %bb.b, label %bb.c, !dbg !720, !prof !538

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #31, !dbg !721
  unreachable, !dbg !721

bb.c:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 32, !dbg !722
  ret void, !dbg !723
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([640 x i8]) align 128 captures(none) dereferenceable(640) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !724 {
bb.a:
  %i.a = alloca [128 x i8], align 128             ; 14 uses
  %i.b = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !725
  %i.c = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !740
  %i.d = icmp eq i8 %i.c, 2, !dbg !754
  br i1 %i.d, label %_RNvMs3_NtCsk79RHlfmHDk_8foldhash4fastNtB5_19SeedableRandomState6random.exit, label %bb.b, !dbg !754, !prof !755

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #30, !dbg !756
  br label %_RNvMs3_NtCsk79RHlfmHDk_8foldhash4fastNtB5_19SeedableRandomState6random.exit, !dbg !756

_RNvMs3_NtCsk79RHlfmHDk_8foldhash4fastNtB5_19SeedableRandomState6random.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757), !dbg !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !761, !noalias !763
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !765
  store ptr @_RNvNtNtCs2mZqlW55729_12polars_utils5parma3raw15EMPTY_ALLOC_LOC, ptr %i.e, align 32, !dbg !765, !noalias !763
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !765
  store ptr null, ptr %i.f, align 8, !dbg !765, !noalias !763
  store i32 0, ptr %i.a, align 128, !dbg !765, !noalias !763
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !765
  store i8 0, ptr %.sroa.414.0..sroa_idx.i, align 4, !dbg !765, !noalias !763
  %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !765
  store i64 0, ptr %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !dbg !765, !noalias !763
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !765
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx.i, align 16, !dbg !765, !noalias !763
  %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !765
  store i64 0, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !dbg !765, !noalias !763
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !765
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !765
  store i32 0, ptr %i.g, align 16, !dbg !765, !noalias !763
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52, !dbg !765
  store i8 0, ptr %.sroa.413.0..sroa_idx.i, align 4, !dbg !765, !noalias !763
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %2, i8 0, i64 17, i1 false), !dbg !765, !noalias !763
  %i.h = invoke noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs80wj1cxFixi_12polars_dtype(i64 noundef 0)
          to label %_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping11with_hasher.exit unwind label %bb.c, !dbg !768, !noalias !763

bb.c:                                             ; preds = %_RNvMs3_NtCsk79RHlfmHDk_8foldhash4fastNtB5_19SeedableRandomState6random.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils5parma3raw8RawTableemEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 128 dereferenceable(128) %i.a) #29
          to label %bb.e unwind label %bb.d, !dbg !773, !noalias !763

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !774, !noalias !763
  unreachable, !dbg !774

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i, !dbg !774

_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping11with_hasher.exit: ; preds = %_RNvMs3_NtCsk79RHlfmHDk_8foldhash4fastNtB5_19SeedableRandomState6random.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !775
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(464) %i.k, i8 0, i64 464, i1 false), !alias.scope !757, !noalias !776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %0, ptr noundef nonnull align 128 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !775, !noalias !776
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !775
  store i64 %i.h, ptr %.sroa.438.0..sroa_idx.i, align 16, !dbg !775, !alias.scope !757, !noalias !776
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !775
  store i64 0, ptr %.sroa.539.0..sroa_idx.i, align 8, !dbg !775, !alias.scope !757, !noalias !776
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !775
  store i64 %1, ptr %i.l, align 32, !dbg !775, !alias.scope !757, !noalias !776
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !775
  store i64 0, ptr %i.m, align 8, !dbg !775, !alias.scope !757, !noalias !776
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !775
  store ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %i.n, align 16, !dbg !775, !alias.scope !757, !noalias !776
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !775
  store i64 %i.b, ptr %i.o, align 8, !dbg !775, !alias.scope !757, !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !773, !noalias !763
  ret void, !dbg !777
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping8to_arrow(ptr noundef nonnull align 128 %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !778 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 3 uses
  %i.d = alloca [112 x i8], align 8               ; 17 uses
  %i.e = alloca [272 x i8], align 8               ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [272 x i8], align 8               ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !779
  %i.j = load atomic i64, ptr %i.i monotonic, align 8, !dbg !788
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !790
  %i.l = load i64, ptr %i.k, align 32, !dbg !790, !noundef !12
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.j), !dbg !791 ; 7 uses
  br i1 %1, label %bb.c, label %bb.b, !dbg !793

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !796
  call void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array4utf814mutable_valuesINtB5_22MutableUtf8ValuesArrayxE3newCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a), !dbg !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !810
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !810 ; 3 uses
  store i64 -9223372036854775808, ptr %i.m, align 8, !dbg !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !811
  invoke void @_RNvMs0_NtNtNtCs8774dFTUdNv_12polars_arrow5array4utf87mutableINtB5_16MutableUtf8ArrayxE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d, i64 noundef %.sroa.0.0.i, i64 noundef 0)
          to label %.preheader69 unwind label %.loopexit.split-lp71, !dbg !812

.preheader69:                                     ; preds = %bb.b
  %.not = icmp eq i64 %.sroa.0.0.i, 0, !dbg !814
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !832

.lr.ph:                                           ; preds = %.preheader69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  br label %bb.d, !dbg !832

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !834
  store i8 39, ptr %i.g, align 8, !dbg !834
  call void @_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7builderINtB2_29BinaryViewArrayGenericBuildereE3newCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g), !dbg !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !836
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.t unwind label %.loopexit.split-lp, !dbg !837

._crit_edge:                                      ; preds = %bb.q, %.preheader69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !845
  call void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array4utf87mutableINtB4_9Utf8ArrayxEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_16MutableUtf8ArrayxEE4fromCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b), !dbg !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !852
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !853, !noalias !873
  %i.w = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 112, 129) 112, i64 noundef 8) #28, !dbg !876, !noalias !873 ; 3 uses
  %i.x = icmp eq ptr %i.w, null, !dbg !877
  br i1 %i.x, label %bb.f, label %bb.i, !dbg !878, !prof !538

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.020.075 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.q ] ; 2 uses
  %i.y = add nuw i64 %.sroa.020.075, 1, !dbg !879 ; 2 uses
  %i.z = and i64 %.sroa.020.075, 4294967295, !dbg !891
  %i.aa = invoke noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs80wj1cxFixi_12polars_dtype(i64 noundef range(i64 0, 4294967296) %i.z)
          to label %.noexc unwind label %.loopexit70, !dbg !895

.noexc:                                           ; preds = %bb.d
  %i.ab = invoke noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.n, i64 noundef %i.aa)
          to label %.noexc33 unwind label %.loopexit70, !dbg !903 ; 4 uses

.noexc33:                                         ; preds = %.noexc
  %.not.i32 = icmp eq ptr %i.ab, null, !dbg !904
  br i1 %.not.i32, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit.thread, label %bb.e, !dbg !910

bb.e:                                             ; preds = %.noexc33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24, !dbg !911
  %i.ad = load atomic i8, ptr %i.ac acquire, align 8, !dbg !917
  %i.ae = icmp eq i8 %i.ad, 0, !dbg !919
  br i1 %i.ae, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit.thread, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit, !dbg !920

bb.f:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #32
          to label %.noexc34 unwind label %bb.g, !dbg !921

.noexc34:                                         ; preds = %bb.f
  unreachable, !dbg !921

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4utf89Utf8ArrayxEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #29
          to label %.body.thread50 unwind label %bb.h, !dbg !922

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #27, !dbg !923
  unreachable, !dbg !923

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !dbg !924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !926
  br label %bb.j, !dbg !927

bb.j:                                             ; preds = %bb.z, %bb.i
  %.sroa.3.0 = phi ptr [ @4, %bb.z ], [ @3, %bb.i ], !dbg !928
  %.sroa.0.0 = phi ptr [ %i.cb, %bb.z ], [ %i.w, %bb.i ], !dbg !928
  %i.ah = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !929
  %i.ai = insertvalue { ptr, ptr } %i.ah, ptr %.sroa.3.0, 1, !dbg !929
  ret { ptr, ptr } %i.ai, !dbg !929

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ab, align 8, !dbg !930, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !930
  %i.al = load i64, ptr %i.ak, align 8, !dbg !930, !noundef !12
  br label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit.thread, !dbg !940

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit.thread: ; preds = %bb.e, %.noexc33, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit
  %.sroa.39.0 = phi i64 [ %i.al, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit ], [ 0, %.noexc33 ], [ 0, %bb.e ], !dbg !943 ; 5 uses
  %.sroa.08.0 = phi ptr [ %i.aj, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit ], [ inttoptr (i64 1 to ptr), %.noexc33 ], [ inttoptr (i64 1 to ptr), %bb.e ], !dbg !943
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.sroa.39.0)
          to label %.noexc36 unwind label %.loopexit70, !dbg !944

.noexc36:                                         ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCs80wj1cxFixi_12polars_dtype.exit.thread
  %i.am = load i64, ptr %i.p, align 8, !dbg !970, !alias.scope !973, !noalias !980, !noundef !12 ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !985
  call void @llvm.assume(i1 %i.an), !dbg !987
  %.not.i.i.i = icmp eq i64 %.sroa.39.0, 0, !dbg !988
  br i1 %.not.i.i.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs80wj1cxFixi_12polars_dtype.exit.i.i, label %bb.k, !dbg !988

bb.k:                                             ; preds = %.noexc36
  %i.ao = load ptr, ptr %i.q, align 8, !dbg !990, !alias.scope !973, !noalias !980, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am, !dbg !1003
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %.sroa.08.0, i64 %.sroa.39.0, i1 false), !dbg !1009, !noalias !1012
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !dbg !1013, !alias.scope !973, !noalias !980
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1014

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %bb.k, %.noexc36
  %i.aq = phi i64 [ %.pre.i.i.i, %bb.k ], [ %i.am, %.noexc36 ], !dbg !1013
  %i.ar = add i64 %i.aq, %.sroa.39.0, !dbg !1013
  store i64 %i.ar, ptr %i.p, align 8, !dbg !1013, !alias.scope !973, !noalias !980
  call void @llvm.experimental.noalias.scope.decl(metadata !1015), !dbg !1018
  %i.as = load i64, ptr %i.r, align 8, !dbg !1019, !alias.scope !1033, !noalias !1034, !noundef !12 ; 4 uses
  %i.at = load ptr, ptr %i.s, align 8, !dbg !1036, !alias.scope !1033, !noalias !1034, !nonnull !12 ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as, !dbg !1036
  %i.av = getelementptr i8, ptr %i.au, i64 -8, !dbg !1036
  %i.aw = load i64, ptr %i.av, align 8, !dbg !1043, !noalias !1045, !noundef !12
  %i.ax = load i64, ptr %i.d, align 8, !dbg !1046, !range !99, !alias.scope !1057, !noalias !1034, !noundef !12
  %i.ay = icmp eq i64 %i.as, %i.ax, !dbg !1060
  br i1 %i.ay, label %bb.l, label %bb.m, !dbg !1060

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs80wj1cxFixi_12polars_dtype.exit.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %.noexc37 unwind label %.loopexit70, !dbg !1061

.noexc37:                                         ; preds = %bb.l
  %.pre.i4.i.i = load ptr, ptr %i.s, align 8, !dbg !1062, !alias.scope !1057, !noalias !1034
end_hunk_0
