Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtCsc91YB1gQebm_8bitflags6parser9to_writerNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersQNtNtCscgRAwXFJnXP_4core3fmt9FormatterEBS_:bb.a

bb.g:                                             ; preds = %.thread23
  %i.o = load ptr, ptr %i.d, align 8, !dbg !10065, !nonnull !4698, !align !4821, !noundef !4698
  %i.p = call noundef zeroext i1 @_RINvXs6_NtCsc91YB1gQebm_8bitflags6traitshNtNtB8_6parser8WriteHex9write_hexQNtNtCscgRAwXFJnXP_4core3fmt9FormatterECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o), !dbg !10066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10055
  br label %bb.e, !dbg !10056

.peel.next:                                       ; preds = %bb.c, %bb.i
  %i.q = phi ptr [ %i.u, %bb.i ], [ %i.i, %bb.c ]
  %i.r = load i64, ptr %i.f, align 8, !dbg !10045, !noundef !4698
  %i.s = call noundef zeroext i1 @_RNvXNtCscgRAwXFJnXP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3), !dbg !10067
  br i1 %i.s, label %.loopexit, label %bb.h, !dbg !10068

bb.h:                                             ; preds = %.peel.next
  %i.t = call noundef zeroext i1 @_RNvXNtCscgRAwXFJnXP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r), !dbg !10046
  br i1 %i.t, label %.loopexit, label %bb.i, !dbg !10047

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10043
  call void @_RNvXs3_NtCsc91YB1gQebm_8bitflags4iterINtB5_9IterNamesNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !10044
  %i.u = load ptr, ptr %i.b, align 8, !dbg !10043, !noundef !4698 ; 2 uses
  %.not = icmp eq ptr %i.u, null, !dbg !10043
  br i1 %.not, label %._crit_edge, label %.peel.next, !dbg !10043, !llvm.loop !10032

.loopexit:                                        ; preds = %bb.h, %.peel.next, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10048
  br label %bb.e, !dbg !10064
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10069 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !10137
  %i.b = load i8, ptr %i.a, align 1, !dbg !10137, !range !5060, !alias.scope !10118, !noundef !4698
  switch i8 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit
    i8 -40, label %bb.b
  ], !dbg !10137, !prof !5061

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.c, !dbg !10138

bb.c:                                             ; preds = %bb.g, %bb.b
  %.lcssa13 = phi ptr [ %0, %bb.b ], [ %i.o, %bb.g ], !dbg !10139
  %.lcssa = phi i64 [ 1, %bb.b ], [ 2, %bb.g ], !dbg !10139 ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.lcssa13, i64 24, !dbg !10140 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10119), !dbg !10140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10120), !dbg !10141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10121), !dbg !10142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10122), !dbg !10143
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10144, !alias.scope !10123, !nonnull !4698, !noundef !4698
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !10145, !noalias !10124
  %i.g = icmp eq i64 %i.f, 1, !dbg !10146
  br i1 %i.g, label %bb.d, label %.body, !dbg !10146

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !10147
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #51
          to label %.body unwind label %bb.f, !dbg !10148

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10140 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10125), !dbg !10140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10126), !dbg !10149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10127), !dbg !10150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10128), !dbg !10151
  %i.i = load ptr, ptr %i.h, align 8, !dbg !10152, !alias.scope !10129, !nonnull !4698, !noundef !4698
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !10153, !noalias !10130
  %i.k = icmp eq i64 %i.j, 1, !dbg !10154
  br i1 %i.k, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !10154

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i
  fence acquire, !dbg !10155
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.i, !dbg !10156

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10140
  unreachable, !dbg !10140

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.e, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 63, !dbg !10137
  %i.n = load i8, ptr %i.m, align 1, !dbg !10137, !range !5060, !alias.scope !10118, !noundef !4698
  switch i8 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.1 [
    i8 -38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit.1
    i8 -40, label %bb.g
  ], !dbg !10137, !prof !5061

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10139 ; 2 uses
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.1 unwind label %bb.c, !dbg !10138

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.1: ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10140 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10131), !dbg !10140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10132), !dbg !10149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10133), !dbg !10150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10134), !dbg !10151
  %i.q = load ptr, ptr %i.p, align 8, !dbg !10152, !alias.scope !10135, !nonnull !4698, !noundef !4698
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !dbg !10153, !noalias !10136
  %i.s = icmp eq i64 %i.r, 1, !dbg !10154
  br i1 %i.s, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit.1, !dbg !10154

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.1
  fence acquire, !dbg !10155
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit.1 unwind label %bb.i, !dbg !10156

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit.1: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit.i.i.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan.exit
  ret void, !dbg !10139

bb.i:                                             ; preds = %bb.h, %bb.e
  %.lcssa11 = phi i64 [ 1, %bb.e ], [ 2, %bb.h ], !dbg !10139
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10139

.body:                                            ; preds = %bb.c, %bb.d, %bb.i
  %i.u = phi i64 [ %.lcssa11, %bb.i ], [ %.lcssa, %bb.d ], [ %.lcssa, %bb.c ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.v = icmp eq i64 %i.u, 2, !dbg !10139
  br i1 %i.v, label %.critedge, label %bb.j, !dbg !10139

bb.j:                                             ; preds = %.body
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB17_7pl_path9PlRefPathEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(40) %i.w) #45
          to label %.critedge unwind label %bb.k, !dbg !10139

.critedge:                                        ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !10139

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10139
  unreachable, !dbg !10139
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypej2_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10157 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %0)
          to label %bb.b unwind label %.peel.begin, !dbg !10158

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10158
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %bb.c unwind label %.peel.begin, !dbg !10158

bb.c:                                             ; preds = %bb.b
  ret void, !dbg !10158

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ], !dbg !10158
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.loopexit, label %bb.d, !dbg !10158

bb.d:                                             ; preds = %.peel.begin
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.d) #45
          to label %.loopexit unwind label %bb.e, !dbg !10158

.loopexit:                                        ; preds = %bb.d, %.peel.begin
  resume { ptr, i32 } %i.c, !dbg !10158

bb.e:                                             ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10158
  unreachable, !dbg !10158
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypej3_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10159 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.f, !dbg !10160

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10160
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.f, !dbg !10160

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10160
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.f, !dbg !10160

bb.d:                                             ; preds = %bb.c
  ret void, !dbg !10160

bb.e:                                             ; preds = %.lr.ph
  %i.c = add i64 %.sroa.0.18, 1, !dbg !10160      ; 2 uses
  %i.d = icmp eq i64 %i.c, 3, !dbg !10160
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !10160

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], !dbg !10160
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], !dbg !10160
  %i.f = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !10160

.lr.ph:                                           ; preds = %bb.f, %bb.e
  %.sroa.0.18 = phi i64 [ %i.c, %bb.e ], [ %.lcssa, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.18, !dbg !10160
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.g) #45
          to label %bb.e unwind label %bb.g, !dbg !10160

._crit_edge:                                      ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f, !dbg !10160

bb.g:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10160
  unreachable, !dbg !10160
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive08OutPathsNCBJ_0EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !247 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !10164

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !10165

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.e, !dbg !10166

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10164
  unreachable, !dbg !10164

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10167

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10167
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(80) %i.d) #45
          to label %bb.g unwind label %bb.f, !dbg !10167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10167
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtB4_6option6OptionTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtB18_7pl_path9PlRefPathEEj2_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(80) %i.e), !dbg !10167
  ret void, !dbg !10167

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10167
  unreachable, !dbg !10167

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !10167
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB2d_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEEB2V_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10168 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10182
  store i32 2, ptr %i.b, align 8, !dbg !10182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10183, !noalias !10181
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !10184
  %i.d = load i64, ptr %i.c, align 8, !dbg !10184, !range !5075, !noalias !10181, !noundef !4698
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !dbg !10185, !noalias !10181

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !dbg !10185, !noalias !10181
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !10186 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEEEB2A_(ptr noalias noundef align 8 dereferenceable(80) %i.f)
          to label %_RNvXNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB1S_4sync3ArcNtNtNtBa_9scheduler14current_thread6HandleEENtNtNtB1m_3ops4drop4Drop4dropB2A_.exit unwind label %bb.c, !dbg !10187, !noalias !10181

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !10187
  invoke void @_RNvXs3_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !dbg !10188, !noalias !10181

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10189
  unreachable, !dbg !10189

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i, !dbg !10189

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEEEB2A_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #45
          to label %.thread.i.i unwind label %bb.d, !dbg !10190

_RNvXNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB1S_4sync3ArcNtNtNtBa_9scheduler14current_thread6HandleEENtNtNtB1m_3ops4drop4Drop4dropB2A_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !10187
  call void @_RNvXs3_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !10191, !noalias !10181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10190, !noalias !10181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10192
  ret void, !dbg !10193
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future05GuardINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB2d_4sync3ArcNtNtNtNtBR_9scheduler12multi_thread6handle6HandleEEEB2V_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10194 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10208
  store i32 2, ptr %i.b, align 8, !dbg !10208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10209, !noalias !10207
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !10210
  %i.d = load i64, ptr %i.c, align 8, !dbg !10210, !range !5075, !noalias !10207, !noundef !4698
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !dbg !10211, !noalias !10207

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !dbg !10211, !noalias !10207
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !10212 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEEEB2A_(ptr noalias noundef align 8 dereferenceable(80) %i.f)
          to label %_RNvXNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB1S_4sync3ArcNtNtNtNtBa_9scheduler12multi_thread6handle6HandleEENtNtNtB1m_3ops4drop4Drop4dropB2A_.exit unwind label %bb.c, !dbg !10213, !noalias !10207

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !10213
  invoke void @_RNvXs3_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !dbg !10214, !noalias !10207

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !10215
  unreachable, !dbg !10215

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i, !dbg !10215

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEEEB2A_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #45
          to label %.thread.i.i unwind label %bb.d, !dbg !10216

_RNvXNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EEINtNtB1S_4sync3ArcNtNtNtNtBa_9scheduler12multi_thread6handle6HandleEENtNtNtB1m_3ops4drop4Drop4dropB2A_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !10213
  call void @_RNvXs3_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !10217, !noalias !10207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10216, !noalias !10207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10218
  ret void, !dbg !10219
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCINvMNtNtBT_2fs12open_optionsNtB3b_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00EENtNtB1X_8schedule16BlockingScheduleEECsfcROwRM8ZtH_11polars_plan(ptr nofree captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10220 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10234
  store i32 2, ptr %i.b, align 8, !dbg !10234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10235, !noalias !10233
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !10236
  %i.d = load i64, ptr %i.c, align 8, !dbg !10236, !range !5075, !noalias !10233, !noundef !4698
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !dbg !10237, !noalias !10233

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !dbg !10237, !noalias !10233
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !10238 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCINvMNtNtBP_2fs12open_optionsNtB2Q_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00EEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %_RNvXNCNvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtNtBa_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCINvMNtNtBc_2fs12open_optionsNtB2A_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00EENtNtB1m_8schedule16BlockingScheduleENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.c, !dbg !10239, !noalias !10233

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10239
end_hunk_0
