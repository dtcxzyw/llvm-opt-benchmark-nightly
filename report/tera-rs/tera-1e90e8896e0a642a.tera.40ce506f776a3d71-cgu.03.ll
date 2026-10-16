Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.03?download=true
inline.NumInlined: 632
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1322 {
bb.a:
    #dbg_value(ptr %0, !6733, !DIExpression(), !27410)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !27411

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6738, !DIExpression(), !27407)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1l_.exit unwind label %bb.d, !dbg !27412

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6738, !DIExpression(), !27409)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !27413
  ret void, !dbg !27411

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27411
  unreachable, !dbg !27411

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !27411
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1324 {
bb.a:
    #dbg_value(ptr %0, !6747, !DIExpression(), !27418)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !27419

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6752, !DIExpression(), !27415)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1l_.exit unwind label %bb.d, !dbg !27420

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6752, !DIExpression(), !27417)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !27421
  ret void, !dbg !27419

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27419
  unreachable, !dbg !27419

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !27419
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1326 {
bb.a:
    #dbg_value(ptr %0, !6760, !DIExpression(), !27430)
  %i.a = load i64, ptr %0, align 8, !dbg !27431, !range !1959, !noundef !1505
  %i.b = icmp eq i64 %i.a, -1, !dbg !27431
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !27431

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !27431

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2007, !DIExpression(), !27423)
    #dbg_value(ptr %0, !2012, !DIExpression(), !27425)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !27432

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2019, !DIExpression(), !27427)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !27433

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27432
  unreachable, !dbg !27432

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !27432

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !2019, !DIExpression(), !27429)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !27434
  br label %bb.b, !dbg !27431
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterNtNtBK_6string6StringNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIterB1X_ENCINvMse_NtBG_3setINtB40_8BTreeSetB1X_E16from_sorted_iterB3f_E0EEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !104 {
bb.a:
    #dbg_value(ptr %0, !1961, !DIExpression(), !27458)
    #dbg_value(ptr %0, !1968, !DIExpression(), !27436)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27460
    #dbg_value(ptr %i.a, !1975, !DIExpression(), !27438)
    #dbg_value(ptr %i.a, !1982, !DIExpression(), !27440)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMse_NtNtNtB1g_11collections5btree3setINtB2t_8BTreeSetB1X_E16from_sorted_iterB19_E0EECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.b, !dbg !27461

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtB16_11collections5btree7set_val9SetValZSTEEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #19
          to label %common.resume.i unwind label %bb.f, !dbg !27460

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMse_NtNtNtB1g_11collections5btree3setINtB2t_8BTreeSetB1X_E16from_sorted_iterB19_E0EECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.a
    #dbg_value(ptr %0, !1989, !DIExpression(), !27442)
  %i.c = load i64, ptr %0, align 8, !dbg !27462, !range !1995, !alias.scope !27459, !noundef !1505
  %switch.i.i = icmp ugt i64 %i.c, -3, !dbg !27462
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1G_6string6StringENCINvMse_NtNtNtB1G_11collections5btree3setINtB2T_8BTreeSetB2n_E16from_sorted_iterB1z_E0EEECs5yXxDE1DkoT_4tera.exit, label %bb.c, !dbg !27462

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMse_NtNtNtB1g_11collections5btree3setINtB2t_8BTreeSetB1X_E16from_sorted_iterB19_E0EECs5yXxDE1DkoT_4tera.exit.i
    #dbg_value(ptr %0, !1997, !DIExpression(), !27449)
    #dbg_value(ptr %0, !2007, !DIExpression(), !27451)
    #dbg_value(ptr %0, !2012, !DIExpression(), !27453)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtBG_11collections5btree7set_val9SetValZSTEECs5yXxDE1DkoT_4tera.exit.i.i.i unwind label %bb.d, !dbg !27463

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2019, !DIExpression(), !27455)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i unwind label %bb.e, !dbg !27464

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27463
  unreachable, !dbg !27463

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !27460

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtBG_11collections5btree7set_val9SetValZSTEECs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.c
    #dbg_value(ptr %0, !2019, !DIExpression(), !27457)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0), !dbg !27465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1G_6string6StringENCINvMse_NtNtNtB1G_11collections5btree3setINtB2T_8BTreeSetB2n_E16from_sorted_iterB1z_E0EEECs5yXxDE1DkoT_4tera.exit, !dbg !27466

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27460
  unreachable, !dbg !27460

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1G_6string6StringENCINvMse_NtNtNtB1G_11collections5btree3setINtB2T_8BTreeSetB2n_E16from_sorted_iterB1z_E0EEECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMse_NtNtNtB1g_11collections5btree3setINtB2t_8BTreeSetB1X_E16from_sorted_iterB19_E0EECs5yXxDE1DkoT_4tera.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtBG_11collections5btree7set_val9SetValZSTEECs5yXxDE1DkoT_4tera.exit.i.i.i
  ret void, !dbg !27467
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27468 {
bb.a:
    #dbg_value(ptr %0, !27621, !DIExpression(), !27623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27624), !dbg !27823
    #dbg_value(ptr %0, !27626, !DIExpression(), !27473)
  %i.a = load i8, ptr %0, align 8, !dbg !27824, !range !27632, !alias.scope !27624, !noundef !1505 ; 4 uses
  %i.b = icmp ne i8 %i.a, 10, !dbg !27824
  tail call void @llvm.assume(i1 %i.b), !dbg !27824
  %i.c = add nsw i8 %i.a, -2, !dbg !27824
  %i.d = icmp samesign ugt i8 %i.a, 1, !dbg !27824
  %narrow.i = select i1 %i.d, i8 %i.c, i8 8, !dbg !27824
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.i
    i8 10, label %bb.k
  ], !dbg !27824

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27824 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27633), !dbg !27824
    #dbg_value(ptr %i.e, !27635, !DIExpression(), !27478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27641), !dbg !27825
    #dbg_value(ptr %i.e, !27643, !DIExpression(), !27483)
    #dbg_value(ptr %i.e, !27646, !DIExpression(), !27486)
    #dbg_value(i64 1, !27654, !DIExpression(), !27489)
    #dbg_value(i8 1, !27660, !DIExpression(), !27489)
    #dbg_value(i64 1, !27662, !DIExpression(), !27492)
    #dbg_value(i8 1, !27667, !DIExpression(), !27492)
  %i.f = load ptr, ptr %i.e, align 8, !dbg !27826, !alias.scope !27671, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.f, !27659, !DIExpression(), !27495)
    #dbg_value(ptr %i.f, !27666, !DIExpression(), !27492)
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !27827, !noalias !27671
  %i.g = icmp eq i64 %1, 1, !dbg !27828
  br i1 %i.g, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27828

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !27676, !DIExpression(), !27498)
  fence acquire, !dbg !27829
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #24, !dbg !27830
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27830

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27824
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !27824, !alias.scope !27624, !nonnull !1505, !noundef !1505
    #dbg_value(ptr poison, !27681, !DIExpression(), !27501)
    #dbg_value(ptr poison, !27687, !DIExpression(), !27509)
    #dbg_value(ptr %.val.i, !27688, !DIExpression(), !27510)
    #dbg_value(i64 16, !27689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27511)
    #dbg_value(i64 16, !27689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27511)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27513)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27515)
    #dbg_value(ptr %.val.i, !2385, !DIExpression(), !27513)
    #dbg_value(ptr %.val.i, !2391, !DIExpression(), !27515)
    #dbg_value(ptr %.val.i, !2394, !DIExpression(), !27517)
    #dbg_value(ptr %.val.i, !2400, !DIExpression(), !27519)
    #dbg_value(i64 16, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27513)
    #dbg_value(i64 16, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27515)
    #dbg_value(i64 16, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27517)
    #dbg_value(i64 16, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27519)
    #dbg_value(i64 16, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27513)
    #dbg_value(i64 16, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27515)
    #dbg_value(i64 16, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27517)
    #dbg_value(i64 16, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27519)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 16) #23, !dbg !27831, !noalias !27624
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27824

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27824
  %.val1.i = load ptr, ptr %i.i, align 8, !dbg !27824, !alias.scope !27624, !nonnull !1505, !noundef !1505
    #dbg_value(ptr poison, !27701, !DIExpression(), !27522)
    #dbg_value(ptr poison, !27707, !DIExpression(), !27530)
    #dbg_value(ptr %.val1.i, !27708, !DIExpression(), !27531)
    #dbg_value(i64 16, !27709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27532)
    #dbg_value(i64 16, !27709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27532)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27534)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27536)
    #dbg_value(ptr %.val1.i, !2385, !DIExpression(), !27534)
    #dbg_value(ptr %.val1.i, !2391, !DIExpression(), !27536)
    #dbg_value(ptr %.val1.i, !2394, !DIExpression(), !27538)
    #dbg_value(ptr %.val1.i, !2400, !DIExpression(), !27540)
    #dbg_value(i64 16, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27534)
    #dbg_value(i64 16, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27536)
    #dbg_value(i64 16, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27538)
    #dbg_value(i64 16, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27540)
    #dbg_value(i64 16, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27534)
    #dbg_value(i64 16, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27536)
    #dbg_value(i64 16, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27538)
    #dbg_value(i64 16, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27540)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 16, i64 noundef 16) #23, !dbg !27832, !noalias !27624
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27824

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27720), !dbg !27824
    #dbg_value(ptr %0, !27722, !DIExpression(), !27545)
  %i.j = icmp eq i8 %i.a, 0, !dbg !27833
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, label %bb.g, !dbg !27833

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27833 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27728), !dbg !27833
    #dbg_value(ptr %i.k, !27730, !DIExpression(), !27550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27736), !dbg !27834
    #dbg_value(ptr %i.k, !27737, !DIExpression(), !27555)
    #dbg_value(ptr %i.k, !27739, !DIExpression(), !27559)
    #dbg_value(i64 1, !27748, !DIExpression(), !27562)
    #dbg_value(i8 1, !27750, !DIExpression(), !27562)
    #dbg_value(i64 1, !27752, !DIExpression(), !27565)
    #dbg_value(i8 1, !27754, !DIExpression(), !27565)
  %i.l = load ptr, ptr %i.k, align 8, !dbg !27835, !alias.scope !27756, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.l, !27749, !DIExpression(), !27568)
    #dbg_value(ptr %i.l, !27753, !DIExpression(), !27565)
  %2 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !27836, !noalias !27756
  %i.m = icmp eq i64 %2, 1, !dbg !27837
  br i1 %i.m, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27837

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !27676, !DIExpression(), !27570)
  fence acquire, !dbg !27838
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #24, !dbg !27839
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27839

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27824 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27761), !dbg !27824
    #dbg_value(ptr %i.n, !27763, !DIExpression(), !27575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27769), !dbg !27840
    #dbg_value(ptr %i.n, !27770, !DIExpression(), !27580)
    #dbg_value(ptr %i.n, !27772, !DIExpression(), !27583)
    #dbg_value(i64 1, !27779, !DIExpression(), !27586)
    #dbg_value(i8 1, !27781, !DIExpression(), !27586)
    #dbg_value(i64 1, !27783, !DIExpression(), !27589)
    #dbg_value(i8 1, !27785, !DIExpression(), !27589)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !27841, !alias.scope !27787, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.o, !27780, !DIExpression(), !27592)
    #dbg_value(ptr %i.o, !27784, !DIExpression(), !27589)
  %3 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !dbg !27842, !noalias !27787
  %i.p = icmp eq i64 %3, 1, !dbg !27843
  br i1 %i.p, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27843

bb.j:                                             ; preds = %bb.i
    #dbg_value(i8 2, !27676, !DIExpression(), !27594)
  fence acquire, !dbg !27844
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9drop_slowB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #24, !dbg !27845
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27845

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27824 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27792), !dbg !27824
    #dbg_value(ptr %i.q, !27794, !DIExpression(), !27599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27800), !dbg !27846
    #dbg_value(ptr %i.q, !27801, !DIExpression(), !27604)
    #dbg_value(ptr %i.q, !27803, !DIExpression(), !27607)
    #dbg_value(i64 1, !27810, !DIExpression(), !27610)
    #dbg_value(i8 1, !27812, !DIExpression(), !27610)
    #dbg_value(i64 1, !27814, !DIExpression(), !27613)
    #dbg_value(i8 1, !27816, !DIExpression(), !27613)
  %i.r = load ptr, ptr %i.q, align 8, !dbg !27847, !alias.scope !27818, !nonnull !1505, !noundef !1505
    #dbg_value(ptr %i.r, !27811, !DIExpression(), !27616)
    #dbg_value(ptr %i.r, !27815, !DIExpression(), !27613)
  %4 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !27848, !noalias !27818
  %i.s = icmp eq i64 %4, 1, !dbg !27849
  br i1 %i.s, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27849

bb.l:                                             ; preds = %bb.k
    #dbg_value(i8 2, !27676, !DIExpression(), !27618)
  fence acquire, !dbg !27850
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #24, !dbg !27851
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit, !dbg !27851

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  ret void, !dbg !27823
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !111 {
bb.a:
    #dbg_value(ptr %0, !2007, !DIExpression(), !27858)
    #dbg_value(ptr %0, !2012, !DIExpression(), !27853)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !27859

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2019, !DIExpression(), !27855)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.c, !dbg !27860

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !27859
  unreachable, !dbg !27859

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !27859

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !2019, !DIExpression(), !27857)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !27861
  ret void, !dbg !27862
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27863 {
bb.a:
    #dbg_value(ptr %0, !28625, !DIExpression(), !28627)
  %i.a = load i64, ptr %0, align 8, !dbg !29124, !range !28628, !noundef !1505
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29124 ; 15 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.n
    i64 3, label %bb.s
    i64 4, label %bb.x
    i64 5, label %bb.ae
    i64 6, label %bb.aj
    i64 7, label %bb.aw
    i64 8, label %bb.be
    i64 9, label %bb.bm
    i64 10, label %bb.bu
    i64 11, label %bb.cl
    i64 12, label %bb.cy
    i64 13, label %bb.df
  ], !dbg !29124

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !28630, !DIExpression(), !27866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28636), !dbg !29125
    #dbg_value(ptr %i.b, !28638, !DIExpression(), !27871)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29126, !alias.scope !28636, !nonnull !1505, !noundef !1505 ; 5 uses
    #dbg_value(ptr %i.c, !28645, !DIExpression(), !27874)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %bb.d unwind label %bb.c, !dbg !29127, !noalias !28636, !inline_history !27875

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !29127
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #19
          to label %.body.i unwind label %bb.e, !dbg !29127, !noalias !28636, !inline_history !27875

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !29127
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast15BinaryOperationEEB1g_.exit unwind label %bb.f, !dbg !29127, !noalias !28636, !inline_history !27875

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !dbg !29127, !noalias !28636, !inline_history !27875
  unreachable, !dbg !29127

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !29126

common.resume:                                    ; preds = %bb.dg, %bb.de, %bb.cx, %.body.i45, %.body.i39, %.body.i34, %.body.i29, %.body.i24, %.body.i20, %.body.i16, %bb.w, %bb.r, %bb.m, %bb.h, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.i, %bb.h ], [ %eh.lpad-body.i.i, %bb.m ], [ %eh.lpad-body.i.i6, %bb.r ], [ %eh.lpad-body.i.i7, %bb.w ], [ %eh.lpad-body.i17, %.body.i16 ], [ %eh.lpad-body.i21, %.body.i20 ], [ %eh.lpad-body.i25, %.body.i24 ], [ %eh.lpad-body.i30, %.body.i29 ], [ %eh.lpad-body.i35, %.body.i34 ], [ %eh.lpad-body.i40, %.body.i39 ], [ %eh.lpad-body.i46, %.body.i45 ], [ %eh.lpad-body.i.i8, %bb.cx ], [ %eh.lpad-body.i.i13, %bb.de ], [ %i.ee, %bb.dg ]
  resume { ptr, i32 } %common.resume.op, !dbg !29124

.body.i:                                          ; preds = %bb.c, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %bb.c ]
    #dbg_value(ptr poison, !28649, !DIExpression(), !27883)
    #dbg_value(ptr %i.c, !28651, !DIExpression(), !27884)
    #dbg_value(i64 8, !28652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27885)
    #dbg_value(i64 136, !28652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27885)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27887)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27889)
    #dbg_value(ptr %i.c, !2385, !DIExpression(), !27887)
    #dbg_value(ptr %i.c, !2391, !DIExpression(), !27889)
    #dbg_value(ptr %i.c, !2394, !DIExpression(), !27891)
    #dbg_value(ptr %i.c, !2400, !DIExpression(), !27893)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27887)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27889)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27891)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27893)
    #dbg_value(i64 136, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27887)
    #dbg_value(i64 136, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27889)
    #dbg_value(i64 136, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27891)
    #dbg_value(i64 136, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27893)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 136, i64 noundef 8) #23, !dbg !29128, !noalias !28636, !inline_history !27894
  br label %common.resume, !dbg !29126

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast15BinaryOperationEEB1g_.exit: ; preds = %bb.d
    #dbg_value(ptr poison, !28649, !DIExpression(), !27896)
    #dbg_value(ptr %i.c, !28651, !DIExpression(), !27897)
    #dbg_value(i64 8, !28652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27898)
    #dbg_value(i64 136, !28652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27898)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27900)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27902)
    #dbg_value(ptr %i.c, !2385, !DIExpression(), !27900)
    #dbg_value(ptr %i.c, !2391, !DIExpression(), !27902)
    #dbg_value(ptr %i.c, !2394, !DIExpression(), !27904)
    #dbg_value(ptr %i.c, !2400, !DIExpression(), !27906)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27900)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27902)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27904)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27906)
    #dbg_value(i64 136, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27900)
    #dbg_value(i64 136, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27902)
    #dbg_value(i64 136, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27904)
    #dbg_value(i64 136, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27906)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 136, i64 noundef 8) #23, !dbg !29129, !noalias !28636, !inline_history !27894
  br label %bb.dh, !dbg !29124

bb.g:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.b, align 8, !dbg !29124, !nonnull !1505, !noundef !1505 ; 3 uses
    #dbg_value(ptr poison, !28662, !DIExpression(), !27909)
    #dbg_value(ptr poison, !28669, !DIExpression(), !27912)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs5yXxDE1DkoT_4tera5utils7SpannedNtNtBG_5value5ValueEEBG_.exit unwind label %bb.h, !dbg !29130

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !28675, !DIExpression(), !27919)
    #dbg_value(ptr %.val, !28676, !DIExpression(), !27920)
    #dbg_value(i64 8, !28677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27921)
    #dbg_value(i64 24, !28677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27921)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27923)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27925)
    #dbg_value(ptr %.val, !2385, !DIExpression(), !27923)
    #dbg_value(ptr %.val, !2391, !DIExpression(), !27925)
    #dbg_value(ptr %.val, !2394, !DIExpression(), !27927)
    #dbg_value(ptr %.val, !2400, !DIExpression(), !27929)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27923)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27925)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27927)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27929)
    #dbg_value(i64 24, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27923)
    #dbg_value(i64 24, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27925)
    #dbg_value(i64 24, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27927)
    #dbg_value(i64 24, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27929)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 24, i64 noundef 8) #23, !dbg !29131
  br label %common.resume, !dbg !29130

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs5yXxDE1DkoT_4tera5utils7SpannedNtNtBG_5value5ValueEEBG_.exit: ; preds = %bb.g
    #dbg_value(ptr poison, !28675, !DIExpression(), !27931)
    #dbg_value(ptr %.val, !28676, !DIExpression(), !27932)
    #dbg_value(i64 8, !28677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27933)
    #dbg_value(i64 24, !28677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27933)
    #dbg_value(ptr poison, !2381, !DIExpression(), !27935)
    #dbg_value(ptr poison, !2388, !DIExpression(), !27937)
    #dbg_value(ptr %.val, !2385, !DIExpression(), !27935)
    #dbg_value(ptr %.val, !2391, !DIExpression(), !27937)
    #dbg_value(ptr %.val, !2394, !DIExpression(), !27939)
    #dbg_value(ptr %.val, !2400, !DIExpression(), !27941)
    #dbg_value(i64 8, !2386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27935)
    #dbg_value(i64 8, !2392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27937)
    #dbg_value(i64 8, !2398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27939)
    #dbg_value(i64 8, !2401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27941)
    #dbg_value(i64 24, !2386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27935)
    #dbg_value(i64 24, !2392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27937)
    #dbg_value(i64 24, !2398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27939)
    #dbg_value(i64 24, !2401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27941)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 24, i64 noundef 8) #23, !dbg !29132
  br label %bb.dh, !dbg !29124

end_hunk_0
