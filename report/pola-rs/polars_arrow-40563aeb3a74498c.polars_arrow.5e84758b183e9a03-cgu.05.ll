Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.05?download=true
inline.NumInlined: 2467
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file35iter_recordbatch_blocks_from_footers0_0ENtB1X_5BlockINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B5s_IB5q_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB5d_EB6c_EINtNtNtB4_6traits7collect12FromIteratorIB5q_B5d_B6c_EE9from_iterBQ_E0B7c_EB3O_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !8927
  store i64 18, ptr %0, align 8, !dbg !8926, !alias.scope !8914, !noalias !8915
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECs8774dFTUdNv_12polars_arrow.exit, !dbg !8928

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8922
  ret void, !dbg !8930

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !8931
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e, !dbg !8932

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.g, !dbg !8933

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !8934
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECs8774dFTUdNv_12polars_arrow.exit, !dbg !8934

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !8932
  unreachable, !dbg !8932

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !8935
  unreachable, !dbg !8935

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9, !dbg !8935

bb.i:                                             ; preds = %.body
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.h, !dbg !8936
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stablejNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8937 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9063
  %.val13 = load i64, ptr %i.a, align 8, !dbg !9064, !noundef !1998 ; 3 uses
  %.val14 = load i64, ptr %0, align 8, !dbg !9064 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i = load ptr, ptr %.0.val, align 8, !dbg !9065, !nonnull !1998, !align !2172, !noundef !1998 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16, !dbg !9066
  %i.c = load i64, ptr %i.b, align 8, !dbg !9066, !noundef !1998 ; 20 uses
  %i.d = icmp ult i64 %.val13, %i.c, !dbg !9067
  br i1 %i.d, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i, label %bb.b, !dbg !9067

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val13, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9067
  unreachable, !dbg !9067

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i: ; preds = %bb.a
  %i.e = icmp ult i64 %.val14, %i.c, !dbg !9068
  br i1 %i.e, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit, label %bb.c, !dbg !9068

bb.c:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val14, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9068
  unreachable, !dbg !9068

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8, !dbg !9069
  %i.g = load ptr, ptr %i.f, align 8, !dbg !9069, !nonnull !1998, !noundef !1998 ; 10 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val13, !dbg !9070
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val14, !dbg !9071
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9040), !dbg !9072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9041), !dbg !9072
  %i.j = load i64, ptr %i.h, align 8, !dbg !9073, !alias.scope !9040, !noalias !9041, !noundef !1998
  %i.k = load i64, ptr %i.i, align 8, !dbg !9074, !alias.scope !9041, !noalias !9040, !noundef !1998
  %i.l = icmp ult i64 %i.j, %i.k, !dbg !9073      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9075
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9076
  %.val10 = load i64, ptr %i.m, align 8, !dbg !9077, !noundef !1998 ; 3 uses
  %.val11 = load i64, ptr %i.n, align 8, !dbg !9077 ; 3 uses
  %i.o = icmp ult i64 %.val10, %i.c, !dbg !9078
  br i1 %i.o, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i16, label %bb.d, !dbg !9078

bb.d:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val10, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9078
  unreachable, !dbg !9078

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i16: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit
  %i.p = icmp ult i64 %.val11, %i.c, !dbg !9079
  br i1 %i.p, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit17, label %bb.e, !dbg !9079

bb.e:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i16
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val11, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9079
  unreachable, !dbg !9079

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit17: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i16
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val10, !dbg !9080
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val11, !dbg !9081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9044), !dbg !9082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9045), !dbg !9082
  %i.s = load i64, ptr %i.q, align 8, !dbg !9083, !alias.scope !9044, !noalias !9045, !noundef !1998
  %i.t = load i64, ptr %i.r, align 8, !dbg !9084, !alias.scope !9045, !noalias !9044, !noundef !1998
  %i.u = icmp ult i64 %i.s, %i.t, !dbg !9083      ; 2 uses
  %i.v = zext i1 %i.l to i64, !dbg !9085
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v, !dbg !9086 ; 2 uses
  %i.x = xor i1 %i.l, true, !dbg !9087
  %i.y = zext i1 %i.x to i64, !dbg !9087
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y, !dbg !9088 ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2, !dbg !9089
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa, !dbg !9090 ; 3 uses
  %i.ac = select i1 %i.u, i64 2, i64 3, !dbg !9091
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac, !dbg !9092 ; 3 uses
  %.val7 = load i64, ptr %i.ab, align 8, !dbg !9093, !noundef !1998 ; 4 uses
  %.val8 = load i64, ptr %i.w, align 8, !dbg !9093 ; 4 uses
  %i.ae = icmp ult i64 %.val7, %i.c, !dbg !9094
  br i1 %i.ae, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i19, label %bb.f, !dbg !9094

bb.f:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit17
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val7, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9094
  unreachable, !dbg !9094

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i19: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit17
  %i.af = icmp ult i64 %.val8, %i.c, !dbg !9095
  br i1 %i.af, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit20, label %bb.g, !dbg !9095

bb.g:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i19
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val8, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9095
  unreachable, !dbg !9095

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit20: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val7, !dbg !9096
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val8, !dbg !9097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9050), !dbg !9098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9051), !dbg !9098
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !9099, !alias.scope !9050, !noalias !9051, !noundef !1998
  %i.aj = load i64, ptr %i.ah, align 8, !dbg !9100, !alias.scope !9051, !noalias !9050, !noundef !1998
  %i.ak = icmp ult i64 %i.ai, %i.aj, !dbg !9099   ; 3 uses
  %.val4 = load i64, ptr %i.ad, align 8, !dbg !9101, !noundef !1998 ; 3 uses
  %.val5 = load i64, ptr %i.z, align 8, !dbg !9101 ; 3 uses
  %i.al = icmp ult i64 %.val4, %i.c, !dbg !9102
  br i1 %i.al, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i22, label %bb.h, !dbg !9102

bb.h:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit20
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val4, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9102
  unreachable, !dbg !9102

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i22: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit20
  %i.am = icmp ult i64 %.val5, %i.c, !dbg !9103
  br i1 %i.am, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit23, label %bb.i, !dbg !9103

bb.i:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i22
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val5, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9103
  unreachable, !dbg !9103

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit23: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i22
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val4, !dbg !9104
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val5, !dbg !9105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9052), !dbg !9106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9053), !dbg !9106
  %i.ap = load i64, ptr %i.an, align 8, !dbg !9107, !alias.scope !9052, !noalias !9053, !noundef !1998
  %i.aq = load i64, ptr %i.ao, align 8, !dbg !9108, !alias.scope !9053, !noalias !9052, !noundef !1998
  %i.ar = icmp ult i64 %i.ap, %i.aq, !dbg !9107   ; 3 uses
  %i.as = select i1 %i.ar, ptr %i.ab, ptr %i.z, !dbg !9109, !unpredictable !1998
  %i.at = select i1 %i.ak, ptr %i.w, ptr %i.as, !dbg !9110, !unpredictable !1998 ; 3 uses
  %i.au = select i1 %i.ak, ptr %i.z, ptr %i.ab, !dbg !9111, !unpredictable !1998
  %i.av = select i1 %i.ar, ptr %i.ad, ptr %i.au, !dbg !9112, !unpredictable !1998 ; 3 uses
  %.val1 = load i64, ptr %i.av, align 8, !dbg !9113, !noundef !1998 ; 3 uses
  %.val2 = load i64, ptr %i.at, align 8, !dbg !9113 ; 3 uses
  %i.aw = icmp ult i64 %.val1, %i.c, !dbg !9114
  br i1 %i.aw, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i25, label %bb.j, !dbg !9114

bb.j:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit23
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9114
  unreachable, !dbg !9114

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i25: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit23
  %i.ax = icmp ult i64 %.val2, %i.c, !dbg !9115
  br i1 %i.ax, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit26, label %bb.k, !dbg !9115

bb.k:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i25
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !9115
  unreachable, !dbg !9115

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0B18_.exit26: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i25
  %i.ay = select i1 %i.ar, ptr %i.z, ptr %i.ad, !dbg !9116, !unpredictable !1998
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val1, !dbg !9117
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val2, !dbg !9118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9054), !dbg !9119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9055), !dbg !9119
  %i.bb = load i64, ptr %i.az, align 8, !dbg !9120, !alias.scope !9054, !noalias !9055, !noundef !1998
  %i.bc = load i64, ptr %i.ba, align 8, !dbg !9121, !alias.scope !9055, !noalias !9054, !noundef !1998
  %i.bd = icmp ult i64 %i.bb, %i.bc, !dbg !9120   ; 2 uses
  %i.be = select i1 %i.bd, ptr %i.av, ptr %i.at, !dbg !9122, !unpredictable !1998
  %i.bf = select i1 %i.bd, ptr %i.at, ptr %i.av, !dbg !9123, !unpredictable !1998
  %i.bg = select i1 %i.ak, i64 %.val7, i64 %.val8, !dbg !9124, !unpredictable !1998
  store i64 %i.bg, ptr %1, align 8, !dbg !9124
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9125
  %i.bi = load i64, ptr %i.be, align 8, !dbg !9126
  store i64 %i.bi, ptr %i.bh, align 8, !dbg !9126
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9127
  %i.bk = load i64, ptr %i.bf, align 8, !dbg !9128
  store i64 %i.bk, ptr %i.bj, align 8, !dbg !9128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9129
  %i.bm = load i64, ptr %i.ay, align 8, !dbg !9130
  store i64 %i.bm, ptr %i.bl, align 8, !dbg !9130
  ret void, !dbg !9131
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stablejNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9132 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9252
  %.val8.i = load i64, ptr %i.a, align 8, !dbg !9253, !alias.scope !9239, !noalias !9240, !noundef !1998
  %.val9.i = load i64, ptr %0, align 8, !dbg !9253, !alias.scope !9240, !noalias !9239, !noundef !1998
  %i.b = icmp ult i64 %.val8.i, %.val9.i, !dbg !9254 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9255
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9256
  %.val6.i = load i64, ptr %i.c, align 8, !dbg !9257, !alias.scope !9239, !noalias !9240, !noundef !1998
  %.val7.i = load i64, ptr %i.d, align 8, !dbg !9257, !alias.scope !9240, !noalias !9239, !noundef !1998
  %i.e = icmp ult i64 %.val6.i, %.val7.i, !dbg !9258 ; 2 uses
  %i.f = zext i1 %i.b to i64, !dbg !9259
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f, !dbg !9260 ; 2 uses
  %i.h = xor i1 %i.b, true, !dbg !9261
  %i.i = zext i1 %i.h to i64, !dbg !9261
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i, !dbg !9262 ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2, !dbg !9263
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k, !dbg !9264 ; 3 uses
  %i.m = select i1 %i.e, i64 2, i64 3, !dbg !9265
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m, !dbg !9266 ; 3 uses
  %.val4.i = load i64, ptr %i.l, align 8, !dbg !9267, !alias.scope !9239, !noalias !9240, !noundef !1998 ; 2 uses
  %.val5.i = load i64, ptr %i.g, align 8, !dbg !9267, !alias.scope !9240, !noalias !9239, !noundef !1998 ; 2 uses
  %i.o = icmp ult i64 %.val4.i, %.val5.i, !dbg !9268 ; 2 uses
  %.val2.i = load i64, ptr %i.n, align 8, !dbg !9269, !alias.scope !9239, !noalias !9240, !noundef !1998
  %.val3.i = load i64, ptr %i.j, align 8, !dbg !9269, !alias.scope !9240, !noalias !9239, !noundef !1998
  %i.p = icmp ult i64 %.val2.i, %.val3.i, !dbg !9270 ; 3 uses
  %i.q = select i1 %i.p, ptr %i.l, ptr %i.j, !dbg !9271, !unpredictable !1998
  %i.r = select i1 %i.o, ptr %i.g, ptr %i.q, !dbg !9272, !unpredictable !1998 ; 3 uses
  %i.s = select i1 %i.o, ptr %i.j, ptr %i.l, !dbg !9273, !unpredictable !1998
  %i.t = select i1 %i.p, ptr %i.n, ptr %i.s, !dbg !9274, !unpredictable !1998 ; 3 uses
  %.val.i = load i64, ptr %i.t, align 8, !dbg !9275, !alias.scope !9239, !noalias !9240, !noundef !1998
  %.val1.i = load i64, ptr %i.r, align 8, !dbg !9275, !alias.scope !9240, !noalias !9239, !noundef !1998
  %i.u = icmp ult i64 %.val.i, %.val1.i, !dbg !9276 ; 2 uses
  %i.v = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val5.i), !dbg !9277 ; 3 uses
  store i64 %i.v, ptr %2, align 8, !dbg !9278
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9279
  %.val12.i = load i64, ptr %i.t, align 8, !dbg !9280
  %.val13.i = load i64, ptr %i.r, align 8, !dbg !9280
  %i.x = select i1 %i.u, i64 %.val12.i, i64 %.val13.i, !dbg !9281, !unpredictable !1998
  store i64 %i.x, ptr %i.w, align 8, !dbg !9280
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9282
  %.val14.i = load i64, ptr %i.r, align 8, !dbg !9283
  %.val15.i = load i64, ptr %i.t, align 8, !dbg !9283
  %i.z = select i1 %i.u, i64 %.val14.i, i64 %.val15.i, !dbg !9284, !unpredictable !1998
  store i64 %i.z, ptr %i.y, align 8, !dbg !9283
  %i.aa = getelementptr i8, ptr %2, i64 24, !dbg !9285 ; 2 uses
  %.val16.i = load i64, ptr %i.j, align 8, !dbg !9286
  %.val17.i = load i64, ptr %i.n, align 8, !dbg !9286
  %i.ab = select i1 %i.p, i64 %.val16.i, i64 %.val17.i, !dbg !9287, !unpredictable !1998 ; 3 uses
  store i64 %i.ab, ptr %i.aa, align 8, !dbg !9286
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9288 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 32, !dbg !9289 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9290
  %.val8.i1 = load i64, ptr %i.ae, align 8, !dbg !9291, !alias.scope !9243, !noalias !9244, !noundef !1998
  %.val9.i2 = load i64, ptr %i.ac, align 8, !dbg !9291, !alias.scope !9244, !noalias !9243, !noundef !1998
  %i.af = icmp ult i64 %.val8.i1, %.val9.i2, !dbg !9292 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9293
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9294
  %.val6.i3 = load i64, ptr %i.ag, align 8, !dbg !9295, !alias.scope !9243, !noalias !9244, !noundef !1998
  %.val7.i4 = load i64, ptr %i.ah, align 8, !dbg !9295, !alias.scope !9244, !noalias !9243, !noundef !1998
  %i.ai = icmp ult i64 %.val6.i3, %.val7.i4, !dbg !9296 ; 2 uses
  %i.aj = zext i1 %i.af to i64, !dbg !9297
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj, !dbg !9298 ; 2 uses
  %i.al = xor i1 %i.af, true, !dbg !9299
  %i.am = zext i1 %i.al to i64, !dbg !9299
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am, !dbg !9300 ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2, !dbg !9301
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ao, !dbg !9302 ; 3 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3, !dbg !9303
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aq, !dbg !9304 ; 3 uses
  %.val4.i5 = load i64, ptr %i.ap, align 8, !dbg !9305, !alias.scope !9243, !noalias !9244, !noundef !1998 ; 2 uses
  %.val5.i6 = load i64, ptr %i.ak, align 8, !dbg !9305, !alias.scope !9244, !noalias !9243, !noundef !1998 ; 2 uses
  %i.as = icmp ult i64 %.val4.i5, %.val5.i6, !dbg !9306 ; 2 uses
  %.val2.i7 = load i64, ptr %i.ar, align 8, !dbg !9307, !alias.scope !9243, !noalias !9244, !noundef !1998
  %.val3.i8 = load i64, ptr %i.an, align 8, !dbg !9307, !alias.scope !9244, !noalias !9243, !noundef !1998
  %i.at = icmp ult i64 %.val2.i7, %.val3.i8, !dbg !9308 ; 3 uses
  %i.au = select i1 %i.at, ptr %i.ap, ptr %i.an, !dbg !9309, !unpredictable !1998
  %i.av = select i1 %i.as, ptr %i.ak, ptr %i.au, !dbg !9310, !unpredictable !1998 ; 3 uses
  %i.aw = select i1 %i.as, ptr %i.an, ptr %i.ap, !dbg !9311, !unpredictable !1998
  %i.ax = select i1 %i.at, ptr %i.ar, ptr %i.aw, !dbg !9312, !unpredictable !1998 ; 3 uses
  %.val.i9 = load i64, ptr %i.ax, align 8, !dbg !9313, !alias.scope !9243, !noalias !9244, !noundef !1998
  %.val1.i10 = load i64, ptr %i.av, align 8, !dbg !9313, !alias.scope !9244, !noalias !9243, !noundef !1998
  %i.ay = icmp ult i64 %.val.i9, %.val1.i10, !dbg !9314 ; 2 uses
  %i.az = tail call i64 @llvm.umin.i64(i64 %.val4.i5, i64 %.val5.i6), !dbg !9315 ; 3 uses
  store i64 %i.az, ptr %i.ad, align 8, !dbg !9316
  %i.ba = getelementptr i8, ptr %2, i64 40, !dbg !9317
  %.val12.i11 = load i64, ptr %i.ax, align 8, !dbg !9318
  %.val13.i12 = load i64, ptr %i.av, align 8, !dbg !9318
  %i.bb = select i1 %i.ay, i64 %.val12.i11, i64 %.val13.i12, !dbg !9319, !unpredictable !1998
  store i64 %i.bb, ptr %i.ba, align 8, !dbg !9318
  %i.bc = getelementptr i8, ptr %2, i64 48, !dbg !9320
  %.val14.i13 = load i64, ptr %i.av, align 8, !dbg !9321
  %.val15.i14 = load i64, ptr %i.ax, align 8, !dbg !9321
  %i.bd = select i1 %i.ay, i64 %.val14.i13, i64 %.val15.i14, !dbg !9322, !unpredictable !1998
  store i64 %i.bd, ptr %i.bc, align 8, !dbg !9321
  %i.be = getelementptr i8, ptr %2, i64 56, !dbg !9323 ; 2 uses
  %.val16.i15 = load i64, ptr %i.an, align 8, !dbg !9324
  %.val17.i16 = load i64, ptr %i.ar, align 8, !dbg !9324
  %i.bf = select i1 %i.at, i64 %.val16.i15, i64 %.val17.i16, !dbg !9325, !unpredictable !1998 ; 3 uses
  store i64 %i.bf, ptr %i.be, align 8, !dbg !9324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9245), !dbg !9326
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !9327
  %i.bh = icmp ult i64 %i.az, %i.v, !dbg !9328    ; 2 uses
  %i.bi = xor i1 %i.bh, true, !dbg !9329
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.v), !dbg !9330
  store i64 %i.bj, ptr %1, align 8, !dbg !9331, !noalias !9246
  %i.bk = zext i1 %i.bh to i64, !dbg !9332
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bk, !dbg !9333 ; 2 uses
  %i.bm = zext i1 %i.bi to i64, !dbg !9334
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bm, !dbg !9335 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9336
  %i.bp = icmp ult i64 %i.bf, %i.ab, !dbg !9337   ; 2 uses
  %i.bq = xor i1 %i.bp, true, !dbg !9338
  %i.br = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.ab), !dbg !9339
  store i64 %i.br, ptr %i.bg, align 8, !dbg !9340, !noalias !9247
  %.neg.i.i = sext i1 %i.bq to i64, !dbg !9341
  %i.bs = getelementptr [8 x i8], ptr %i.be, i64 %.neg.i.i, !dbg !9342 ; 2 uses
  %.neg15.i.i = sext i1 %i.bp to i64, !dbg !9343
  %i.bt = getelementptr [8 x i8], ptr %i.aa, i64 %.neg15.i.i, !dbg !9344 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9345
  %.sroa.011.0.val.i.1 = load i64, ptr %i.bl, align 8, !dbg !9346, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.06.0.val.i.1 = load i64, ptr %i.bn, align 8, !dbg !9346, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1, !dbg !9328 ; 2 uses
  %i.bw = xor i1 %i.bv, true, !dbg !9329
  %i.bx = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.1, i64 %.sroa.06.0.val.i.1), !dbg !9330
  store i64 %i.bx, ptr %i.bo, align 8, !dbg !9331, !noalias !9246
  %i.by = zext i1 %i.bv to i64, !dbg !9332
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.by, !dbg !9333 ; 2 uses
  %i.ca = zext i1 %i.bw to i64, !dbg !9334
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ca, !dbg !9335 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9336
  %.sroa.017.0.val.i.1 = load i64, ptr %i.bs, align 8, !dbg !9347, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.015.0.val.i.1 = load i64, ptr %i.bt, align 8, !dbg !9347, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1, !dbg !9337 ; 2 uses
  %i.ce = xor i1 %i.cd, true, !dbg !9338
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.1, i64 %.sroa.015.0.val.i.1), !dbg !9339
  store i64 %i.cf, ptr %i.bu, align 8, !dbg !9340, !noalias !9247
  %.neg.i.i.1 = sext i1 %i.ce to i64, !dbg !9341
  %i.cg = getelementptr [8 x i8], ptr %i.bs, i64 %.neg.i.i.1, !dbg !9342 ; 2 uses
  %.neg15.i.i.1 = sext i1 %i.cd to i64, !dbg !9343
  %i.ch = getelementptr [8 x i8], ptr %i.bt, i64 %.neg15.i.i.1, !dbg !9344 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !9345
  %.sroa.011.0.val.i.2 = load i64, ptr %i.bz, align 8, !dbg !9346, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.06.0.val.i.2 = load i64, ptr %i.cb, align 8, !dbg !9346, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.cj = icmp ult i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2, !dbg !9328 ; 2 uses
  %i.ck = xor i1 %i.cj, true, !dbg !9329
  %i.cl = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.2, i64 %.sroa.06.0.val.i.2), !dbg !9330
  store i64 %i.cl, ptr %i.cc, align 8, !dbg !9331, !noalias !9246
  %i.cm = zext i1 %i.cj to i64, !dbg !9332
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cm, !dbg !9333 ; 2 uses
  %i.co = zext i1 %i.ck to i64, !dbg !9334
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.co, !dbg !9335 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9336
  %.sroa.017.0.val.i.2 = load i64, ptr %i.cg, align 8, !dbg !9347, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.015.0.val.i.2 = load i64, ptr %i.ch, align 8, !dbg !9347, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.cr = icmp ult i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2, !dbg !9337 ; 2 uses
  %i.cs = xor i1 %i.cr, true, !dbg !9338
  %i.ct = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.2, i64 %.sroa.015.0.val.i.2), !dbg !9339
  store i64 %i.ct, ptr %i.ci, align 8, !dbg !9340, !noalias !9247
  %.neg.i.i.2 = sext i1 %i.cs to i64, !dbg !9341
  %i.cu = getelementptr [8 x i8], ptr %i.cg, i64 %.neg.i.i.2, !dbg !9342 ; 2 uses
  %.neg15.i.i.2 = sext i1 %i.cr to i64, !dbg !9343
  %i.cv = getelementptr [8 x i8], ptr %i.ch, i64 %.neg15.i.i.2, !dbg !9344 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9345
  %.sroa.011.0.val.i.3 = load i64, ptr %i.cn, align 8, !dbg !9346, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.06.0.val.i.3 = load i64, ptr %i.cp, align 8, !dbg !9346, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.cx = icmp ult i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3, !dbg !9328 ; 2 uses
  %i.cy = xor i1 %i.cx, true, !dbg !9329
  %i.cz = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.3, i64 %.sroa.06.0.val.i.3), !dbg !9330
  store i64 %i.cz, ptr %i.cq, align 8, !dbg !9331, !noalias !9246
  %i.da = zext i1 %i.cx to i64, !dbg !9332
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da, !dbg !9333
  %i.dc = zext i1 %i.cy to i64, !dbg !9334
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dc, !dbg !9335
  %.sroa.017.0.val.i.3 = load i64, ptr %i.cu, align 8, !dbg !9347, !alias.scope !9248, !noalias !9249, !noundef !1998 ; 2 uses
  %.sroa.015.0.val.i.3 = load i64, ptr %i.cv, align 8, !dbg !9347, !alias.scope !9250, !noalias !9251, !noundef !1998 ; 2 uses
  %i.de = icmp ult i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3, !dbg !9337 ; 2 uses
  %i.df = xor i1 %i.de, true, !dbg !9338
  %i.dg = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.3, i64 %.sroa.015.0.val.i.3), !dbg !9339
  store i64 %i.dg, ptr %i.cw, align 8, !dbg !9340, !noalias !9247
  %.neg.i.i.3 = sext i1 %i.df to i64, !dbg !9341
  %i.dh = getelementptr [8 x i8], ptr %i.cu, i64 %.neg.i.i.3, !dbg !9342
  %.neg15.i.i.3 = sext i1 %i.de to i64, !dbg !9343
  %i.di = getelementptr [8 x i8], ptr %i.cv, i64 %.neg15.i.i.3, !dbg !9344
  %i.dj = getelementptr i8, ptr %i.di, i64 8, !dbg !9348
  %i.dk = getelementptr i8, ptr %i.dh, i64 8, !dbg !9349
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generaljNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow:bb.a
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.1.i, !dbg !9878

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.cg = add nuw nsw i64 %.sroa.05.08.1.i, 1, !dbg !9879 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cg, %i.bs, !dbg !9861
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i, !dbg !9862

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9758), !dbg !9880
  %i.ch = add nsw i64 %1, -1, !dbg !9881          ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch, !dbg !9882
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch, !dbg !9883
  %i.ck = getelementptr i8, ptr %i.bv, i64 -8, !dbg !9884
  br label %.lr.ph.i.i, !dbg !9885

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cl = getelementptr i8, ptr %i.cw, i64 8, !dbg !9886 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cv, i64 8, !dbg !9887
  %i.cn = and i64 %1, 1, !dbg !9888
  %i.co = icmp eq i64 %i.cn, 0, !dbg !9888
  br i1 %i.co, label %bb.k, label %bb.j, !dbg !9889

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.012.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.bv, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %i.ck, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.cj, %.loopexit.1.i ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %i.ci, %.loopexit.1.i ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.04.013.i.i, 1, !dbg !9890 ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.011.i.i, align 8, !dbg !9891, !alias.scope !9759, !noalias !9760, !noundef !1998 ; 2 uses
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.012.i.i, align 8, !dbg !9891, !alias.scope !9761, !noalias !9762, !noundef !1998 ; 2 uses
  %.not = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i, !dbg !9892 ; 2 uses
  %i.cq = call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.i, i64 %.sroa.06.0.val.i.i), !dbg !9893
  store i64 %i.cq, ptr %.sroa.0.014.i.i, align 8, !dbg !9894, !alias.scope !9744, !noalias !9763
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0, !dbg !9895
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.011.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx, !dbg !9895 ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8, !dbg !9896
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx, !dbg !9896 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8, !dbg !9897 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.09.i.i, align 8, !dbg !9898, !alias.scope !9759, !noalias !9760, !noundef !1998 ; 2 uses
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.010.i.i, align 8, !dbg !9898, !alias.scope !9761, !noalias !9762, !noundef !1998 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i, !dbg !9899 ; 2 uses
  %i.ct = xor i1 %i.cs, true, !dbg !9900
  %i.cu = call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.i, i64 %.sroa.015.0.val.i.i), !dbg !9901
  store i64 %i.cu, ptr %.sroa.019.08.i.i, align 8, !dbg !9902, !alias.scope !9744, !noalias !9764
  %.neg.i.i.i = sext i1 %i.ct to i64, !dbg !9903
  %i.cv = getelementptr [8 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i, !dbg !9904 ; 2 uses
  %.neg15.i.i.i = sext i1 %i.cs to i64, !dbg !9905
  %i.cw = getelementptr [8 x i8], ptr %.sroa.015.010.i.i, i64 %.neg15.i.i.i, !dbg !9906 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -8, !dbg !9907
  %exitcond.not.i.i = icmp eq i64 %i.cp, %i.d, !dbg !9908
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !9885

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not25 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cl, !dbg !9909 ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not25, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, !dbg !9910
  %i.cy = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !dbg !9911, !alias.scope !9765, !noalias !9744
  store i64 %i.cy, ptr %i.cr, align 8, !dbg !9911, !alias.scope !9744, !noalias !9765
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not25, i64 8, i64 0, !dbg !9912
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx, !dbg !9912
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not25, i64 0, i64 8, !dbg !9913
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx, !dbg !9913
  br label %bb.k, !dbg !9914

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ], !dbg !9915
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ], !dbg !9916
  %i.cz = icmp ne ptr %.sroa.06.1.i.i, %i.cl, !dbg !9917
  %i.da = icmp ne ptr %.sroa.011.1.i.i, %i.cm
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da, !dbg !9917, !prof !2232
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit, !dbg !9917, !prof !2232

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #35
          to label %.noexc.i unwind label %bb.m, !dbg !9918, !noalias !9766

.noexc.i:                                         ; preds = %bb.l
  unreachable, !dbg !9918

bb.m:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = shl nuw nsw i64 %1, 3, !dbg !9919
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dc, i1 false), !dbg !9919, !alias.scope !9766, !noalias !9767
  resume { ptr, i32 } %i.db, !dbg !9920

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i, !dbg !9865
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3, !dbg !9866
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !9866 ; 3 uses
  %i.df = load i64, ptr %i.dd, align 8, !dbg !9867, !alias.scope !9744, !noalias !9745 ; 4 uses
  store i64 %i.df, ptr %i.de, align 8, !dbg !9867, !alias.scope !9745, !noalias !9744
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8, !dbg !9868 ; 2 uses
  %.val10.i.i = load i64, ptr %i.dg, align 8, !dbg !9869, !alias.scope !9755, !noalias !9756, !noundef !1998 ; 2 uses
  %i.dh = icmp ult i64 %i.df, %.val10.i.i, !dbg !9870
  br i1 %i.dh, label %.preheader.i.preheader, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i, !dbg !9869

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i64 %.val10.i.i, ptr %i.de, align 8, !dbg !9871, !alias.scope !9745, !noalias !9744
  %i.di = icmp eq i64 %.sroa.05.08.i, 1, !dbg !9872
  br i1 %i.di, label %._crit_edge, label %.lr.ph, !dbg !9872

.preheader.i:                                     ; preds = %.lr.ph
  store i64 %.val8.i48.i, ptr %.sroa.0.0.i47.i30, align 8, !dbg !9871, !alias.scope !9745, !noalias !9744
  %i.dj = icmp eq ptr %i.dk, %i.a, !dbg !9872
  br i1 %i.dj, label %._crit_edge, label %.lr.ph, !dbg !9872

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i47.i30 = phi ptr [ %i.dk, %.preheader.i ], [ %i.dg, %.preheader.i.preheader ] ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i30, i64 -8, !dbg !9873 ; 3 uses
  %.val8.i48.i = load i64, ptr %i.dk, align 8, !dbg !9874, !alias.scope !9755, !noalias !9756, !noundef !1998 ; 2 uses
  %i.dl = icmp ult i64 %i.df, %.val8.i48.i, !dbg !9875
  br i1 %i.dl, label %.preheader.i, label %._crit_edge, !dbg !9874

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i47.i30, %.lr.ph ], !dbg !9876
  store i64 %i.df, ptr %.sroa.0.0.i47.lcssa.i, align 8, !dbg !9877, !alias.scope !9745, !noalias !9757
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i, !dbg !9878

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dm = add nuw nsw i64 %.sroa.05.08.i, 1, !dbg !9879 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dm, %i.d, !dbg !9861
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !9862

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9921
  ret void, !dbg !9922
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_networkjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB21_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9923 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = icmp samesign ult i64 %1, 2, !dbg !11530
  br i1 %i.b, label %bb.ev, label %bb.b, !dbg !11530

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32, !dbg !11531
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !11531

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11532
  %i.d = lshr i64 %1, 1, !dbg !11533              ; 3 uses
  %i.e = icmp samesign ult i64 %1, 18, !dbg !11534 ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d, !dbg !11535
  %.val15 = load ptr, ptr %2, align 8             ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e, !dbg !11536

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !11537
  unreachable, !dbg !11537

bb.e:                                             ; preds = %bb.et, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.et ], !dbg !11538 ; 3 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.et ], !dbg !11538 ; 32 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12, !dbg !11539
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !11539

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8, !dbg !11540
  br i1 %i.i, label %bb.ct, label %bb.es, !dbg !11540

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11247), !dbg !11541
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96, !dbg !11542 ; 4 uses
  %.val1.i.i = load i64, ptr %i.j, align 8, !dbg !11543, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i.i = load i64, ptr %.sroa.02.0, align 8, !dbg !11543, !alias.scope !11247 ; 5 uses
  %.val3.i.i.i = load ptr, ptr %.val15, align 8, !dbg !11544, !noalias !11247, !nonnull !1998, !align !2172, !noundef !1998 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16, !dbg !11545
  %i.l = load i64, ptr %i.k, align 8, !dbg !11545, !noalias !11247, !noundef !1998 ; 180 uses
  %i.m = icmp ult i64 %.val1.i.i, %i.l, !dbg !11546
  br i1 %i.m, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i, label %bb.h, !dbg !11546

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11546, !noalias !11247
  unreachable, !dbg !11546

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i: ; preds = %bb.g
  %i.n = icmp ult i64 %.val2.i.i, %i.l, !dbg !11547
  br i1 %i.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i, label %bb.i, !dbg !11547

bb.i:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11547, !noalias !11247
  unreachable, !dbg !11547

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8, !dbg !11548
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11548, !noalias !11247, !nonnull !1998, !noundef !1998 ; 90 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i.i, !dbg !11549
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i.i, !dbg !11550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11248), !dbg !11551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11249), !dbg !11551
  %i.s = load i64, ptr %i.q, align 8, !dbg !11552, !alias.scope !11248, !noalias !11250, !noundef !1998
  %i.t = load i64, ptr %i.r, align 8, !dbg !11553, !alias.scope !11249, !noalias !11251, !noundef !1998
  %i.u = icmp ult i64 %i.s, %i.t, !dbg !11552     ; 2 uses
  %i.v = select i1 %i.u, i64 %.val2.i.i, i64 %.val1.i.i, !dbg !11554, !unpredictable !1998 ; 6 uses
  %i.w = select i1 %i.u, i64 %.val1.i.i, i64 %.val2.i.i, !dbg !11555, !unpredictable !1998 ; 6 uses
  store i64 %i.w, ptr %.sroa.02.0, align 8, !dbg !11555, !alias.scope !11247
  store i64 %i.v, ptr %i.j, align 8, !dbg !11556, !alias.scope !11247
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8, !dbg !11557 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80, !dbg !11558 ; 8 uses
  %.val1.i45.i = load i64, ptr %i.y, align 8, !dbg !11559, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i46.i = load i64, ptr %i.x, align 8, !dbg !11559, !alias.scope !11247 ; 5 uses
  %i.z = icmp ult i64 %.val1.i45.i, %i.l, !dbg !11560
  br i1 %i.z, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i, label %bb.j, !dbg !11560

bb.j:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i45.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11560, !noalias !11247
  unreachable, !dbg !11560

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i
  %i.aa = icmp ult i64 %.val2.i46.i, %i.l, !dbg !11561
  br i1 %i.aa, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i, label %bb.k, !dbg !11561

bb.k:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i46.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11561, !noalias !11247
  unreachable, !dbg !11561

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i45.i, !dbg !11562
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i46.i, !dbg !11563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11252), !dbg !11564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11253), !dbg !11564
  %i.ad = load i64, ptr %i.ab, align 8, !dbg !11565, !alias.scope !11252, !noalias !11254, !noundef !1998
  %i.ae = load i64, ptr %i.ac, align 8, !dbg !11566, !alias.scope !11253, !noalias !11255, !noundef !1998
  %i.af = icmp ult i64 %i.ad, %i.ae, !dbg !11565  ; 2 uses
  %i.ag = select i1 %i.af, i64 %.val2.i46.i, i64 %.val1.i45.i, !dbg !11567, !unpredictable !1998 ; 6 uses
  %i.ah = select i1 %i.af, i64 %.val1.i45.i, i64 %.val2.i46.i, !dbg !11568, !unpredictable !1998 ; 6 uses
  store i64 %i.ah, ptr %i.x, align 8, !dbg !11568, !alias.scope !11247
  store i64 %i.ag, ptr %i.y, align 8, !dbg !11569, !alias.scope !11247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16, !dbg !11570 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 72, !dbg !11571 ; 9 uses
  %.val1.i50.i = load i64, ptr %i.aj, align 8, !dbg !11572, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i51.i = load i64, ptr %i.ai, align 8, !dbg !11572, !alias.scope !11247 ; 5 uses
  %i.ak = icmp ult i64 %.val1.i50.i, %i.l, !dbg !11573
  br i1 %i.ak, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i, label %bb.l, !dbg !11573

bb.l:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i50.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11573, !noalias !11247
  unreachable, !dbg !11573

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i
  %i.al = icmp ult i64 %.val2.i51.i, %i.l, !dbg !11574
  br i1 %i.al, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i, label %bb.m, !dbg !11574

bb.m:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i51.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11574, !noalias !11247
  unreachable, !dbg !11574

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i50.i, !dbg !11575
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i51.i, !dbg !11576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11256), !dbg !11577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11257), !dbg !11577
  %i.ao = load i64, ptr %i.am, align 8, !dbg !11578, !alias.scope !11256, !noalias !11258, !noundef !1998
  %i.ap = load i64, ptr %i.an, align 8, !dbg !11579, !alias.scope !11257, !noalias !11259, !noundef !1998
  %i.aq = icmp ult i64 %i.ao, %i.ap, !dbg !11578  ; 2 uses
  %i.ar = select i1 %i.aq, i64 %.val2.i51.i, i64 %.val1.i50.i, !dbg !11580, !unpredictable !1998 ; 6 uses
  %i.as = select i1 %i.aq, i64 %.val1.i50.i, i64 %.val2.i51.i, !dbg !11581, !unpredictable !1998 ; 6 uses
  store i64 %i.as, ptr %i.ai, align 8, !dbg !11581, !alias.scope !11247
  store i64 %i.ar, ptr %i.aj, align 8, !dbg !11582, !alias.scope !11247
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24, !dbg !11583 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56, !dbg !11584 ; 8 uses
  %.val1.i55.i = load i64, ptr %i.au, align 8, !dbg !11585, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i56.i = load i64, ptr %i.at, align 8, !dbg !11585, !alias.scope !11247 ; 5 uses
  %i.av = icmp ult i64 %.val1.i55.i, %i.l, !dbg !11586
  br i1 %i.av, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i, label %bb.n, !dbg !11586

bb.n:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i55.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11586, !noalias !11247
  unreachable, !dbg !11586

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i
  %i.aw = icmp ult i64 %.val2.i56.i, %i.l, !dbg !11587
  br i1 %i.aw, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i, label %bb.o, !dbg !11587

bb.o:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i56.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11587, !noalias !11247
  unreachable, !dbg !11587

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i55.i, !dbg !11588
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i56.i, !dbg !11589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11260), !dbg !11590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11261), !dbg !11590
  %i.az = load i64, ptr %i.ax, align 8, !dbg !11591, !alias.scope !11260, !noalias !11262, !noundef !1998
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !11592, !alias.scope !11261, !noalias !11263, !noundef !1998
  %i.bb = icmp ult i64 %i.az, %i.ba, !dbg !11591  ; 2 uses
  %i.bc = select i1 %i.bb, i64 %.val2.i56.i, i64 %.val1.i55.i, !dbg !11593, !unpredictable !1998 ; 6 uses
  %i.bd = select i1 %i.bb, i64 %.val1.i55.i, i64 %.val2.i56.i, !dbg !11594, !unpredictable !1998 ; 6 uses
  store i64 %i.bd, ptr %i.at, align 8, !dbg !11594, !alias.scope !11247
  store i64 %i.bc, ptr %i.au, align 8, !dbg !11595, !alias.scope !11247
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40, !dbg !11596 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 88, !dbg !11597 ; 7 uses
  %.val1.i60.i = load i64, ptr %i.bf, align 8, !dbg !11598, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i61.i = load i64, ptr %i.be, align 8, !dbg !11598, !alias.scope !11247 ; 5 uses
  %i.bg = icmp ult i64 %.val1.i60.i, %i.l, !dbg !11599
  br i1 %i.bg, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i, label %bb.p, !dbg !11599

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i60.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11599, !noalias !11247
  unreachable, !dbg !11599

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i
  %i.bh = icmp ult i64 %.val2.i61.i, %i.l, !dbg !11600
  br i1 %i.bh, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i, label %bb.q, !dbg !11600

bb.q:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i61.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11600, !noalias !11247
  unreachable, !dbg !11600

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i60.i, !dbg !11601
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i61.i, !dbg !11602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11264), !dbg !11603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11265), !dbg !11603
  %i.bk = load i64, ptr %i.bi, align 8, !dbg !11604, !alias.scope !11264, !noalias !11266, !noundef !1998
  %i.bl = load i64, ptr %i.bj, align 8, !dbg !11605, !alias.scope !11265, !noalias !11267, !noundef !1998
  %i.bm = icmp ult i64 %i.bk, %i.bl, !dbg !11604  ; 2 uses
  %i.bn = select i1 %i.bm, i64 %.val2.i61.i, i64 %.val1.i60.i, !dbg !11606, !unpredictable !1998 ; 6 uses
  %i.bo = select i1 %i.bm, i64 %.val1.i60.i, i64 %.val2.i61.i, !dbg !11607, !unpredictable !1998 ; 6 uses
  store i64 %i.bo, ptr %i.be, align 8, !dbg !11607, !alias.scope !11247
  store i64 %i.bn, ptr %i.bf, align 8, !dbg !11608, !alias.scope !11247
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48, !dbg !11609 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64, !dbg !11610 ; 9 uses
  %.val1.i65.i = load i64, ptr %i.bq, align 8, !dbg !11611, !alias.scope !11247, !noundef !1998 ; 5 uses
  %.val2.i66.i = load i64, ptr %i.bp, align 8, !dbg !11611, !alias.scope !11247 ; 5 uses
  %i.br = icmp ult i64 %.val1.i65.i, %i.l, !dbg !11612
  br i1 %i.br, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i, label %bb.r, !dbg !11612

bb.r:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i65.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11612, !noalias !11247
  unreachable, !dbg !11612

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i
  %i.bs = icmp ult i64 %.val2.i66.i, %i.l, !dbg !11613
  br i1 %i.bs, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i, label %bb.s, !dbg !11613

bb.s:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i66.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11613, !noalias !11247
  unreachable, !dbg !11613

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val1.i65.i, !dbg !11614
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i66.i, !dbg !11615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11268), !dbg !11616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11269), !dbg !11616
  %i.bv = load i64, ptr %i.bt, align 8, !dbg !11617, !alias.scope !11268, !noalias !11270, !noundef !1998
  %i.bw = load i64, ptr %i.bu, align 8, !dbg !11618, !alias.scope !11269, !noalias !11271, !noundef !1998
  %i.bx = icmp ult i64 %i.bv, %i.bw, !dbg !11617  ; 2 uses
  %i.by = select i1 %i.bx, i64 %.val2.i66.i, i64 %.val1.i65.i, !dbg !11619, !unpredictable !1998 ; 6 uses
  %i.bz = select i1 %i.bx, i64 %.val1.i65.i, i64 %.val2.i66.i, !dbg !11620, !unpredictable !1998 ; 6 uses
  store i64 %i.bz, ptr %i.bp, align 8, !dbg !11620, !alias.scope !11247
  store i64 %i.by, ptr %i.bq, align 8, !dbg !11621, !alias.scope !11247
  %i.ca = icmp ult i64 %i.bz, %i.l, !dbg !11622
  br i1 %i.ca, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i, label %bb.t, !dbg !11622

bb.t:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11622, !noalias !11247
  unreachable, !dbg !11622

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i
  %i.cb = icmp ult i64 %i.ah, %i.l, !dbg !11623
  br i1 %i.cb, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i, label %bb.u, !dbg !11623

bb.u:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11623, !noalias !11247
  unreachable, !dbg !11623

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bz, !dbg !11624
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ah, !dbg !11625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11272), !dbg !11626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11273), !dbg !11626
  %i.ce = load i64, ptr %i.cc, align 8, !dbg !11627, !alias.scope !11272, !noalias !11274, !noundef !1998
  %i.cf = load i64, ptr %i.cd, align 8, !dbg !11628, !alias.scope !11273, !noalias !11275, !noundef !1998
  %i.cg = icmp ult i64 %i.ce, %i.cf, !dbg !11627  ; 2 uses
  %i.ch = select i1 %i.cg, i64 %i.ah, i64 %i.bz, !dbg !11629, !unpredictable !1998 ; 6 uses
  %i.ci = select i1 %i.cg, i64 %i.bz, i64 %i.ah, !dbg !11630, !unpredictable !1998 ; 6 uses
  store i64 %i.ci, ptr %i.x, align 8, !dbg !11630, !alias.scope !11247
  store i64 %i.ch, ptr %i.bp, align 8, !dbg !11631, !alias.scope !11247
  %i.cj = icmp ult i64 %i.bd, %i.l, !dbg !11632
  br i1 %i.cj, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i, label %bb.v, !dbg !11632

bb.v:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11632, !noalias !11247
  unreachable, !dbg !11632

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i
  %i.ck = icmp ult i64 %i.as, %i.l, !dbg !11633
  br i1 %i.ck, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i, label %bb.w, !dbg !11633

bb.w:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11633, !noalias !11247
  unreachable, !dbg !11633

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bd, !dbg !11634
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.as, !dbg !11635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11276), !dbg !11636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11277), !dbg !11636
  %i.cn = load i64, ptr %i.cl, align 8, !dbg !11637, !alias.scope !11276, !noalias !11278, !noundef !1998
  %i.co = load i64, ptr %i.cm, align 8, !dbg !11638, !alias.scope !11277, !noalias !11279, !noundef !1998
  %i.cp = icmp ult i64 %i.cn, %i.co, !dbg !11637  ; 2 uses
  %i.cq = select i1 %i.cp, i64 %i.as, i64 %i.bd, !dbg !11639, !unpredictable !1998 ; 6 uses
  %i.cr = select i1 %i.cp, i64 %i.bd, i64 %i.as, !dbg !11640, !unpredictable !1998 ; 6 uses
  store i64 %i.cr, ptr %i.ai, align 8, !dbg !11640, !alias.scope !11247
  store i64 %i.cq, ptr %i.at, align 8, !dbg !11641, !alias.scope !11247
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32, !dbg !11642 ; 9 uses
  %.val2.i81.i = load i64, ptr %i.cs, align 8, !dbg !11643, !alias.scope !11247 ; 5 uses
  %i.ct = icmp ult i64 %i.bn, %i.l, !dbg !11644
  br i1 %i.ct, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i, label %bb.x, !dbg !11644

bb.x:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11644, !noalias !11247
  unreachable, !dbg !11644

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i
  %i.cu = icmp ult i64 %.val2.i81.i, %i.l, !dbg !11645
  br i1 %i.cu, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i, label %bb.y, !dbg !11645

bb.y:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i81.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11645, !noalias !11247
  unreachable, !dbg !11645

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn, !dbg !11646
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.val2.i81.i, !dbg !11647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11280), !dbg !11648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11281), !dbg !11648
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !11649, !alias.scope !11280, !noalias !11282, !noundef !1998
  %i.cy = load i64, ptr %i.cw, align 8, !dbg !11650, !alias.scope !11281, !noalias !11283, !noundef !1998
  %i.cz = icmp ult i64 %i.cx, %i.cy, !dbg !11649  ; 2 uses
  %i.da = select i1 %i.cz, i64 %.val2.i81.i, i64 %i.bn, !dbg !11651, !unpredictable !1998 ; 6 uses
  %i.db = select i1 %i.cz, i64 %i.bn, i64 %.val2.i81.i, !dbg !11652, !unpredictable !1998 ; 6 uses
  store i64 %i.db, ptr %i.cs, align 8, !dbg !11652, !alias.scope !11247
  store i64 %i.da, ptr %i.bf, align 8, !dbg !11653, !alias.scope !11247
  %i.dc = icmp ult i64 %i.ar, %i.l, !dbg !11654
  br i1 %i.dc, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i, label %bb.z, !dbg !11654

bb.z:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11654, !noalias !11247
  unreachable, !dbg !11654

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i
  %i.dd = icmp ult i64 %i.bc, %i.l, !dbg !11655
  br i1 %i.dd, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i, label %bb.aa, !dbg !11655

bb.aa:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11655, !noalias !11247
  unreachable, !dbg !11655

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ar, !dbg !11656
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc, !dbg !11657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11284), !dbg !11658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11285), !dbg !11658
  %i.dg = load i64, ptr %i.de, align 8, !dbg !11659, !alias.scope !11284, !noalias !11286, !noundef !1998
  %i.dh = load i64, ptr %i.df, align 8, !dbg !11660, !alias.scope !11285, !noalias !11287, !noundef !1998
  %i.di = icmp ult i64 %i.dg, %i.dh, !dbg !11659  ; 2 uses
  %i.dj = select i1 %i.di, i64 %i.bc, i64 %i.ar, !dbg !11661, !unpredictable !1998 ; 6 uses
  %i.dk = select i1 %i.di, i64 %i.ar, i64 %i.bc, !dbg !11662, !unpredictable !1998 ; 6 uses
  store i64 %i.dk, ptr %i.au, align 8, !dbg !11662, !alias.scope !11247
  store i64 %i.dj, ptr %i.aj, align 8, !dbg !11663, !alias.scope !11247
  %i.dl = icmp ult i64 %i.ag, %i.l, !dbg !11664
  br i1 %i.dl, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i, label %bb.ab, !dbg !11664

bb.ab:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11664, !noalias !11247
  unreachable, !dbg !11664

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i
  %i.dm = icmp ult i64 %i.by, %i.l, !dbg !11665
  br i1 %i.dm, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i, label %bb.ac, !dbg !11665

bb.ac:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11665, !noalias !11247
  unreachable, !dbg !11665

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ag, !dbg !11666
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.by, !dbg !11667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11288), !dbg !11668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11289), !dbg !11668
  %i.dp = load i64, ptr %i.dn, align 8, !dbg !11669, !alias.scope !11288, !noalias !11290, !noundef !1998
  %i.dq = load i64, ptr %i.do, align 8, !dbg !11670, !alias.scope !11289, !noalias !11291, !noundef !1998
  %i.dr = icmp ult i64 %i.dp, %i.dq, !dbg !11669  ; 2 uses
  %i.ds = select i1 %i.dr, i64 %i.by, i64 %i.ag, !dbg !11671, !unpredictable !1998 ; 6 uses
  %i.dt = select i1 %i.dr, i64 %i.ag, i64 %i.by, !dbg !11672, !unpredictable !1998 ; 6 uses
  store i64 %i.dt, ptr %i.bq, align 8, !dbg !11672, !alias.scope !11247
  store i64 %i.ds, ptr %i.y, align 8, !dbg !11673, !alias.scope !11247
  %i.du = icmp ult i64 %i.db, %i.l, !dbg !11674
  br i1 %i.du, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i, label %bb.ad, !dbg !11674

bb.ad:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11674, !noalias !11247
  unreachable, !dbg !11674

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i
  %i.dv = icmp ult i64 %i.w, %i.l, !dbg !11675
  br i1 %i.dv, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i, label %bb.ae, !dbg !11675

bb.ae:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11675, !noalias !11247
  unreachable, !dbg !11675

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.db, !dbg !11676
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.w, !dbg !11677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11292), !dbg !11678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11293), !dbg !11678
  %i.dy = load i64, ptr %i.dw, align 8, !dbg !11679, !alias.scope !11292, !noalias !11294, !noundef !1998
  %i.dz = load i64, ptr %i.dx, align 8, !dbg !11680, !alias.scope !11293, !noalias !11295, !noundef !1998
  %i.ea = icmp ult i64 %i.dy, %i.dz, !dbg !11679  ; 2 uses
  %i.eb = select i1 %i.ea, i64 %i.w, i64 %i.db, !dbg !11681, !unpredictable !1998 ; 6 uses
  %i.ec = select i1 %i.ea, i64 %i.db, i64 %i.w, !dbg !11682, !unpredictable !1998 ; 6 uses
  store i64 %i.ec, ptr %.sroa.02.0, align 8, !dbg !11682, !alias.scope !11247
  store i64 %i.eb, ptr %i.cs, align 8, !dbg !11683, !alias.scope !11247
  %i.ed = icmp ult i64 %i.cr, %i.l, !dbg !11684
  br i1 %i.ed, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i, label %bb.af, !dbg !11684

bb.af:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11684, !noalias !11247
  unreachable, !dbg !11684

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i
  %i.ee = icmp ult i64 %i.ci, %i.l, !dbg !11685
  br i1 %i.ee, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i, label %bb.ag, !dbg !11685

bb.ag:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11685, !noalias !11247
  unreachable, !dbg !11685

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cr, !dbg !11686
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ci, !dbg !11687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11296), !dbg !11688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11297), !dbg !11688
  %i.eh = load i64, ptr %i.ef, align 8, !dbg !11689, !alias.scope !11296, !noalias !11298, !noundef !1998
  %i.ei = load i64, ptr %i.eg, align 8, !dbg !11690, !alias.scope !11297, !noalias !11299, !noundef !1998
  %i.ej = icmp ult i64 %i.eh, %i.ei, !dbg !11689  ; 2 uses
  %i.ek = select i1 %i.ej, i64 %i.ci, i64 %i.cr, !dbg !11691, !unpredictable !1998 ; 6 uses
  %i.el = select i1 %i.ej, i64 %i.cr, i64 %i.ci, !dbg !11692, !unpredictable !1998 ; 6 uses
  store i64 %i.el, ptr %i.x, align 8, !dbg !11692, !alias.scope !11247
  store i64 %i.ek, ptr %i.ai, align 8, !dbg !11693, !alias.scope !11247
  %i.em = icmp ult i64 %i.ch, %i.l, !dbg !11694
  br i1 %i.em, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i, label %bb.ah, !dbg !11694

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11694, !noalias !11247
  unreachable, !dbg !11694

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i
  %i.en = icmp ult i64 %i.cq, %i.l, !dbg !11695
  br i1 %i.en, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i, label %bb.ai, !dbg !11695

bb.ai:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11695, !noalias !11247
  unreachable, !dbg !11695

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ch, !dbg !11696
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cq, !dbg !11697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11300), !dbg !11698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11301), !dbg !11698
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !11699, !alias.scope !11300, !noalias !11302, !noundef !1998
  %i.er = load i64, ptr %i.ep, align 8, !dbg !11700, !alias.scope !11301, !noalias !11303, !noundef !1998
  %i.es = icmp ult i64 %i.eq, %i.er, !dbg !11699  ; 2 uses
  %i.et = select i1 %i.es, i64 %i.cq, i64 %i.ch, !dbg !11701, !unpredictable !1998 ; 6 uses
  %i.eu = select i1 %i.es, i64 %i.ch, i64 %i.cq, !dbg !11702, !unpredictable !1998 ; 6 uses
  store i64 %i.eu, ptr %i.at, align 8, !dbg !11702, !alias.scope !11247
  store i64 %i.et, ptr %i.bp, align 8, !dbg !11703, !alias.scope !11247
  %i.ev = icmp ult i64 %i.dt, %i.l, !dbg !11704
  br i1 %i.ev, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i, label %bb.aj, !dbg !11704

bb.aj:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dt, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11704, !noalias !11247
  unreachable, !dbg !11704

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i
  %i.ew = icmp ult i64 %i.dk, %i.l, !dbg !11705
  br i1 %i.ew, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i, label %bb.ak, !dbg !11705

bb.ak:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11705, !noalias !11247
  unreachable, !dbg !11705

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dt, !dbg !11706
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dk, !dbg !11707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11304), !dbg !11708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11305), !dbg !11708
  %i.ez = load i64, ptr %i.ex, align 8, !dbg !11709, !alias.scope !11304, !noalias !11306, !noundef !1998
  %i.fa = load i64, ptr %i.ey, align 8, !dbg !11710, !alias.scope !11305, !noalias !11307, !noundef !1998
  %i.fb = icmp ult i64 %i.ez, %i.fa, !dbg !11709  ; 2 uses
  %i.fc = select i1 %i.fb, i64 %i.dk, i64 %i.dt, !dbg !11711, !unpredictable !1998 ; 6 uses
  %i.fd = select i1 %i.fb, i64 %i.dt, i64 %i.dk, !dbg !11712, !unpredictable !1998 ; 6 uses
  store i64 %i.fd, ptr %i.au, align 8, !dbg !11712, !alias.scope !11247
  store i64 %i.fc, ptr %i.bq, align 8, !dbg !11713, !alias.scope !11247
  %i.fe = icmp ult i64 %i.ds, %i.l, !dbg !11714
  br i1 %i.fe, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i, label %bb.al, !dbg !11714

bb.al:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11714, !noalias !11247
  unreachable, !dbg !11714

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i
  %i.ff = icmp ult i64 %i.dj, %i.l, !dbg !11715
  br i1 %i.ff, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i, label %bb.am, !dbg !11715

bb.am:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11715, !noalias !11247
  unreachable, !dbg !11715

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ds, !dbg !11716
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dj, !dbg !11717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11308), !dbg !11718
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11309), !dbg !11718
  %i.fi = load i64, ptr %i.fg, align 8, !dbg !11719, !alias.scope !11308, !noalias !11310, !noundef !1998
  %i.fj = load i64, ptr %i.fh, align 8, !dbg !11720, !alias.scope !11309, !noalias !11311, !noundef !1998
  %i.fk = icmp ult i64 %i.fi, %i.fj, !dbg !11719  ; 2 uses
  %i.fl = select i1 %i.fk, i64 %i.dj, i64 %i.ds, !dbg !11721, !unpredictable !1998 ; 6 uses
  %i.fm = select i1 %i.fk, i64 %i.ds, i64 %i.dj, !dbg !11722, !unpredictable !1998 ; 6 uses
  store i64 %i.fm, ptr %i.aj, align 8, !dbg !11722, !alias.scope !11247
  store i64 %i.fl, ptr %i.y, align 8, !dbg !11723, !alias.scope !11247
  %i.fn = icmp ult i64 %i.v, %i.l, !dbg !11724
  br i1 %i.fn, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i, label %bb.an, !dbg !11724

bb.an:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11724, !noalias !11247
  unreachable, !dbg !11724

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i
  %i.fo = icmp ult i64 %i.da, %i.l, !dbg !11725
  br i1 %i.fo, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i, label %bb.ao, !dbg !11725

bb.ao:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11725, !noalias !11247
  unreachable, !dbg !11725

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v, !dbg !11726
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.da, !dbg !11727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11312), !dbg !11728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11313), !dbg !11728
  %i.fr = load i64, ptr %i.fp, align 8, !dbg !11729, !alias.scope !11312, !noalias !11314, !noundef !1998
  %i.fs = load i64, ptr %i.fq, align 8, !dbg !11730, !alias.scope !11313, !noalias !11315, !noundef !1998
  %i.ft = icmp ult i64 %i.fr, %i.fs, !dbg !11729  ; 2 uses
  %i.fu = select i1 %i.ft, i64 %i.da, i64 %i.v, !dbg !11731, !unpredictable !1998 ; 6 uses
  %i.fv = select i1 %i.ft, i64 %i.v, i64 %i.da, !dbg !11732, !unpredictable !1998 ; 6 uses
  store i64 %i.fv, ptr %i.bf, align 8, !dbg !11732, !alias.scope !11247
  store i64 %i.fu, ptr %i.j, align 8, !dbg !11733, !alias.scope !11247
  %i.fw = icmp ult i64 %i.et, %i.l, !dbg !11734
  br i1 %i.fw, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i, label %bb.ap, !dbg !11734

bb.ap:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.et, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11734, !noalias !11247
  unreachable, !dbg !11734

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i
  %i.fx = icmp ult i64 %i.eb, %i.l, !dbg !11735
  br i1 %i.fx, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i, label %bb.aq, !dbg !11735

bb.aq:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11735, !noalias !11247
  unreachable, !dbg !11735

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.et, !dbg !11736
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.eb, !dbg !11737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11316), !dbg !11738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11317), !dbg !11738
  %i.ga = load i64, ptr %i.fy, align 8, !dbg !11739, !alias.scope !11316, !noalias !11318, !noundef !1998
  %i.gb = load i64, ptr %i.fz, align 8, !dbg !11740, !alias.scope !11317, !noalias !11319, !noundef !1998
  %i.gc = icmp ult i64 %i.ga, %i.gb, !dbg !11739  ; 2 uses
  %i.gd = select i1 %i.gc, i64 %i.eb, i64 %i.et, !dbg !11741, !unpredictable !1998 ; 6 uses
  %i.ge = select i1 %i.gc, i64 %i.et, i64 %i.eb, !dbg !11742, !unpredictable !1998 ; 6 uses
  store i64 %i.ge, ptr %i.cs, align 8, !dbg !11742, !alias.scope !11247
  store i64 %i.gd, ptr %i.bp, align 8, !dbg !11743, !alias.scope !11247
  %i.gf = icmp ult i64 %i.fm, %i.l, !dbg !11744
  br i1 %i.gf, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i, label %bb.ar, !dbg !11744

bb.ar:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11744, !noalias !11247
  unreachable, !dbg !11744

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i
  %i.gg = icmp ult i64 %i.bo, %i.l, !dbg !11745
  br i1 %i.gg, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i, label %bb.as, !dbg !11745

bb.as:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11745, !noalias !11247
  unreachable, !dbg !11745

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fm, !dbg !11746
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bo, !dbg !11747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11320), !dbg !11748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11321), !dbg !11748
  %i.gj = load i64, ptr %i.gh, align 8, !dbg !11749, !alias.scope !11320, !noalias !11322, !noundef !1998
  %i.gk = load i64, ptr %i.gi, align 8, !dbg !11750, !alias.scope !11321, !noalias !11323, !noundef !1998
  %i.gl = icmp ult i64 %i.gj, %i.gk, !dbg !11749  ; 2 uses
  %i.gm = select i1 %i.gl, i64 %i.bo, i64 %i.fm, !dbg !11751, !unpredictable !1998 ; 6 uses
  %i.gn = select i1 %i.gl, i64 %i.fm, i64 %i.bo, !dbg !11752, !unpredictable !1998 ; 6 uses
  store i64 %i.gn, ptr %i.be, align 8, !dbg !11752, !alias.scope !11247
  store i64 %i.gm, ptr %i.aj, align 8, !dbg !11753, !alias.scope !11247
  %i.go = icmp ult i64 %i.fv, %i.l, !dbg !11754
  br i1 %i.go, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i, label %bb.at, !dbg !11754

bb.at:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fv, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11754, !noalias !11247
  unreachable, !dbg !11754

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i
  %i.gp = icmp ult i64 %i.fc, %i.l, !dbg !11755
  br i1 %i.gp, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i, label %bb.au, !dbg !11755

bb.au:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11755, !noalias !11247
  unreachable, !dbg !11755

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fv, !dbg !11756
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fc, !dbg !11757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11324), !dbg !11758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11325), !dbg !11758
  %i.gs = load i64, ptr %i.gq, align 8, !dbg !11759, !alias.scope !11324, !noalias !11326, !noundef !1998
  %i.gt = load i64, ptr %i.gr, align 8, !dbg !11760, !alias.scope !11325, !noalias !11327, !noundef !1998
  %i.gu = icmp ult i64 %i.gs, %i.gt, !dbg !11759  ; 2 uses
  %i.gv = select i1 %i.gu, i64 %i.fc, i64 %i.fv, !dbg !11761, !unpredictable !1998 ; 6 uses
  %i.gw = select i1 %i.gu, i64 %i.fv, i64 %i.fc, !dbg !11762, !unpredictable !1998 ; 6 uses
  store i64 %i.gw, ptr %i.bq, align 8, !dbg !11762, !alias.scope !11247
  store i64 %i.gv, ptr %i.bf, align 8, !dbg !11763, !alias.scope !11247
  %i.gx = icmp ult i64 %i.fu, %i.l, !dbg !11764
  br i1 %i.gx, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i, label %bb.av, !dbg !11764

bb.av:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fu, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11764, !noalias !11247
  unreachable, !dbg !11764

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i
  %i.gy = icmp ult i64 %i.fl, %i.l, !dbg !11765
  br i1 %i.gy, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit144.i, label %bb.aw, !dbg !11765

bb.aw:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fl, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11765, !noalias !11247
  unreachable, !dbg !11765

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit144.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fu, !dbg !11766
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fl, !dbg !11767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11328), !dbg !11768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11329), !dbg !11768
  %i.hb = load i64, ptr %i.gz, align 8, !dbg !11769, !alias.scope !11328, !noalias !11330, !noundef !1998
  %i.hc = load i64, ptr %i.ha, align 8, !dbg !11770, !alias.scope !11329, !noalias !11331, !noundef !1998
  %i.hd = icmp ult i64 %i.hb, %i.hc, !dbg !11769  ; 2 uses
  %i.he = select i1 %i.hd, i64 %i.fl, i64 %i.fu, !dbg !11771, !unpredictable !1998
  %i.hf = select i1 %i.hd, i64 %i.fu, i64 %i.fl, !dbg !11772, !unpredictable !1998 ; 6 uses
  store i64 %i.hf, ptr %i.y, align 8, !dbg !11772, !alias.scope !11247
  store i64 %i.he, ptr %i.j, align 8, !dbg !11773, !alias.scope !11247
  %i.hg = icmp ult i64 %i.gn, %i.l, !dbg !11774
  br i1 %i.hg, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i148.i, label %bb.ax, !dbg !11774

bb.ax:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit144.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gn, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11774, !noalias !11247
  unreachable, !dbg !11774

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i148.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit144.i
  %i.hh = icmp ult i64 %i.ec, %i.l, !dbg !11775
  br i1 %i.hh, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit149.i, label %bb.ay, !dbg !11775

bb.ay:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i148.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11775, !noalias !11247
  unreachable, !dbg !11775

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit149.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i148.i
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gn, !dbg !11776
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ec, !dbg !11777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11332), !dbg !11778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11333), !dbg !11778
  %i.hk = load i64, ptr %i.hi, align 8, !dbg !11779, !alias.scope !11332, !noalias !11334, !noundef !1998
  %i.hl = load i64, ptr %i.hj, align 8, !dbg !11780, !alias.scope !11333, !noalias !11335, !noundef !1998
  %i.hm = icmp ult i64 %i.hk, %i.hl, !dbg !11779  ; 2 uses
  %i.hn = select i1 %i.hm, i64 %i.ec, i64 %i.gn, !dbg !11781, !unpredictable !1998 ; 6 uses
  %i.ho = select i1 %i.hm, i64 %i.gn, i64 %i.ec, !dbg !11782, !unpredictable !1998 ; 6 uses
  store i64 %i.ho, ptr %.sroa.02.0, align 8, !dbg !11782, !alias.scope !11247
  store i64 %i.hn, ptr %i.be, align 8, !dbg !11783, !alias.scope !11247
  %i.hp = icmp ult i64 %i.gw, %i.l, !dbg !11784
  br i1 %i.hp, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i153.i, label %bb.az, !dbg !11784

bb.az:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit149.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11784, !noalias !11247
  unreachable, !dbg !11784

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i153.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit149.i
  %i.hq = icmp ult i64 %i.eu, %i.l, !dbg !11785
  br i1 %i.hq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit154.i, label %bb.ba, !dbg !11785

bb.ba:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i153.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11785, !noalias !11247
  unreachable, !dbg !11785

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit154.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i153.i
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gw, !dbg !11786
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.eu, !dbg !11787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11336), !dbg !11788
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11337), !dbg !11788
  %i.ht = load i64, ptr %i.hr, align 8, !dbg !11789, !alias.scope !11336, !noalias !11338, !noundef !1998
  %i.hu = load i64, ptr %i.hs, align 8, !dbg !11790, !alias.scope !11337, !noalias !11339, !noundef !1998
  %i.hv = icmp ult i64 %i.ht, %i.hu, !dbg !11789  ; 2 uses
  %i.hw = select i1 %i.hv, i64 %i.eu, i64 %i.gw, !dbg !11791, !unpredictable !1998 ; 6 uses
  %i.hx = select i1 %i.hv, i64 %i.gw, i64 %i.eu, !dbg !11792, !unpredictable !1998 ; 6 uses
  store i64 %i.hx, ptr %i.at, align 8, !dbg !11792, !alias.scope !11247
  store i64 %i.hw, ptr %i.bq, align 8, !dbg !11793, !alias.scope !11247
  %i.hy = icmp ult i64 %i.fd, %i.l, !dbg !11794
  br i1 %i.hy, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i158.i, label %bb.bb, !dbg !11794

bb.bb:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit154.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fd, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11794, !noalias !11247
  unreachable, !dbg !11794

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i158.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit154.i
  %i.hz = icmp ult i64 %i.ge, %i.l, !dbg !11795
  br i1 %i.hz, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit159.i, label %bb.bc, !dbg !11795

bb.bc:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i158.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ge, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11795, !noalias !11247
  unreachable, !dbg !11795

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit159.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i158.i
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fd, !dbg !11796
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ge, !dbg !11797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11340), !dbg !11798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11341), !dbg !11798
  %i.ic = load i64, ptr %i.ia, align 8, !dbg !11799, !alias.scope !11340, !noalias !11342, !noundef !1998
  %i.id = load i64, ptr %i.ib, align 8, !dbg !11800, !alias.scope !11341, !noalias !11343, !noundef !1998
  %i.ie = icmp ult i64 %i.ic, %i.id, !dbg !11799  ; 2 uses
  %i.if = select i1 %i.ie, i64 %i.ge, i64 %i.fd, !dbg !11801, !unpredictable !1998 ; 6 uses
  %i.ig = select i1 %i.ie, i64 %i.fd, i64 %i.ge, !dbg !11802, !unpredictable !1998 ; 6 uses
  store i64 %i.ig, ptr %i.cs, align 8, !dbg !11802, !alias.scope !11247
  store i64 %i.if, ptr %i.au, align 8, !dbg !11803, !alias.scope !11247
  %i.ih = icmp ult i64 %i.gv, %i.l, !dbg !11804
  br i1 %i.ih, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i163.i, label %bb.bd, !dbg !11804

bb.bd:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit159.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gv, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11804, !noalias !11247
  unreachable, !dbg !11804

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i163.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit159.i
  %i.ii = icmp ult i64 %i.gd, %i.l, !dbg !11805
  br i1 %i.ii, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit164.i, label %bb.be, !dbg !11805

bb.be:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i163.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gd, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11805, !noalias !11247
  unreachable, !dbg !11805

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit164.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i163.i
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gv, !dbg !11806
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gd, !dbg !11807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11344), !dbg !11808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11345), !dbg !11808
  %i.il = load i64, ptr %i.ij, align 8, !dbg !11809, !alias.scope !11344, !noalias !11346, !noundef !1998
  %i.im = load i64, ptr %i.ik, align 8, !dbg !11810, !alias.scope !11345, !noalias !11347, !noundef !1998
  %i.in = icmp ult i64 %i.il, %i.im, !dbg !11809  ; 2 uses
  %i.io = select i1 %i.in, i64 %i.gd, i64 %i.gv, !dbg !11811, !unpredictable !1998 ; 6 uses
  %i.ip = select i1 %i.in, i64 %i.gv, i64 %i.gd, !dbg !11812, !unpredictable !1998 ; 6 uses
  store i64 %i.ip, ptr %i.bp, align 8, !dbg !11812, !alias.scope !11247
  store i64 %i.io, ptr %i.bf, align 8, !dbg !11813, !alias.scope !11247
  %i.iq = icmp ult i64 %i.hf, %i.l, !dbg !11814
  br i1 %i.iq, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i168.i, label %bb.bf, !dbg !11814

bb.bf:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit164.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11814, !noalias !11247
  unreachable, !dbg !11814

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i168.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit164.i
  %i.ir = icmp ult i64 %i.gm, %i.l, !dbg !11815
  br i1 %i.ir, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit169.i, label %bb.bg, !dbg !11815

bb.bg:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i168.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11815, !noalias !11247
  unreachable, !dbg !11815

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit169.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i168.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hf, !dbg !11816
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gm, !dbg !11817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11348), !dbg !11818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11349), !dbg !11818
  %i.iu = load i64, ptr %i.is, align 8, !dbg !11819, !alias.scope !11348, !noalias !11350, !noundef !1998
  %i.iv = load i64, ptr %i.it, align 8, !dbg !11820, !alias.scope !11349, !noalias !11351, !noundef !1998
  %i.iw = icmp ult i64 %i.iu, %i.iv, !dbg !11819  ; 2 uses
  %i.ix = select i1 %i.iw, i64 %i.gm, i64 %i.hf, !dbg !11821, !unpredictable !1998 ; 6 uses
  %i.iy = select i1 %i.iw, i64 %i.hf, i64 %i.gm, !dbg !11822, !unpredictable !1998 ; 6 uses
  store i64 %i.iy, ptr %i.aj, align 8, !dbg !11822, !alias.scope !11247
  store i64 %i.ix, ptr %i.y, align 8, !dbg !11823, !alias.scope !11247
  %i.iz = icmp ult i64 %i.el, %i.l, !dbg !11824
  br i1 %i.iz, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i173.i, label %bb.bh, !dbg !11824

bb.bh:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit169.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11824, !noalias !11247
  unreachable, !dbg !11824

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i173.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit169.i
  %i.ja = icmp ult i64 %i.ho, %i.l, !dbg !11825
  br i1 %i.ja, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit174.i, label %bb.bi, !dbg !11825

bb.bi:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i173.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11825, !noalias !11247
  unreachable, !dbg !11825

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit174.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i173.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.el, !dbg !11826
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ho, !dbg !11827
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11352), !dbg !11828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11353), !dbg !11828
  %i.jd = load i64, ptr %i.jb, align 8, !dbg !11829, !alias.scope !11352, !noalias !11354, !noundef !1998
  %i.je = load i64, ptr %i.jc, align 8, !dbg !11830, !alias.scope !11353, !noalias !11355, !noundef !1998
  %i.jf = icmp ult i64 %i.jd, %i.je, !dbg !11829  ; 2 uses
  %i.jg = select i1 %i.jf, i64 %i.ho, i64 %i.el, !dbg !11831, !unpredictable !1998 ; 6 uses
  %i.jh = select i1 %i.jf, i64 %i.el, i64 %i.ho, !dbg !11832, !unpredictable !1998
  store i64 %i.jh, ptr %.sroa.02.0, align 8, !dbg !11832, !alias.scope !11247
  store i64 %i.jg, ptr %i.x, align 8, !dbg !11833, !alias.scope !11247
  %i.ji = icmp ult i64 %i.hn, %i.l, !dbg !11834
  br i1 %i.ji, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i178.i, label %bb.bj, !dbg !11834

bb.bj:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit174.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hn, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11834, !noalias !11247
  unreachable, !dbg !11834

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i178.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit174.i
  %i.jj = icmp ult i64 %i.ek, %i.l, !dbg !11835
  br i1 %i.jj, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit179.i, label %bb.bk, !dbg !11835

bb.bk:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i178.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11835, !noalias !11247
  unreachable, !dbg !11835

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit179.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i178.i
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hn, !dbg !11836
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ek, !dbg !11837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11356), !dbg !11838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11357), !dbg !11838
  %i.jm = load i64, ptr %i.jk, align 8, !dbg !11839, !alias.scope !11356, !noalias !11358, !noundef !1998
  %i.jn = load i64, ptr %i.jl, align 8, !dbg !11840, !alias.scope !11357, !noalias !11359, !noundef !1998
  %i.jo = icmp ult i64 %i.jm, %i.jn, !dbg !11839  ; 2 uses
  %i.jp = select i1 %i.jo, i64 %i.ek, i64 %i.hn, !dbg !11841, !unpredictable !1998 ; 6 uses
  %i.jq = select i1 %i.jo, i64 %i.hn, i64 %i.ek, !dbg !11842, !unpredictable !1998 ; 6 uses
  store i64 %i.jq, ptr %i.ai, align 8, !dbg !11842, !alias.scope !11247
  store i64 %i.jp, ptr %i.be, align 8, !dbg !11843, !alias.scope !11247
  %i.jr = icmp ult i64 %i.iy, %i.l, !dbg !11844
  br i1 %i.jr, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i183.i, label %bb.bl, !dbg !11844

bb.bl:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit179.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.iy, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11844, !noalias !11247
  unreachable, !dbg !11844

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i183.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit179.i
  %i.js = icmp ult i64 %i.ip, %i.l, !dbg !11845
  br i1 %i.js, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit184.i, label %bb.bm, !dbg !11845

bb.bm:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i183.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ip, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11845, !noalias !11247
  unreachable, !dbg !11845

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit184.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i183.i
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.iy, !dbg !11846
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ip, !dbg !11847
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11360), !dbg !11848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11361), !dbg !11848
  %i.jv = load i64, ptr %i.jt, align 8, !dbg !11849, !alias.scope !11360, !noalias !11362, !noundef !1998
  %i.jw = load i64, ptr %i.ju, align 8, !dbg !11850, !alias.scope !11361, !noalias !11363, !noundef !1998
  %i.jx = icmp ult i64 %i.jv, %i.jw, !dbg !11849  ; 2 uses
  %i.jy = select i1 %i.jx, i64 %i.ip, i64 %i.iy, !dbg !11851, !unpredictable !1998 ; 6 uses
  %i.jz = select i1 %i.jx, i64 %i.iy, i64 %i.ip, !dbg !11852, !unpredictable !1998 ; 6 uses
  store i64 %i.jz, ptr %i.bp, align 8, !dbg !11852, !alias.scope !11247
  store i64 %i.jy, ptr %i.aj, align 8, !dbg !11853, !alias.scope !11247
  %i.ka = icmp ult i64 %i.hw, %i.l, !dbg !11854
  br i1 %i.ka, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i188.i, label %bb.bn, !dbg !11854

bb.bn:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit184.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hw, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11854, !noalias !11247
  unreachable, !dbg !11854

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i188.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit184.i
  %i.kb = icmp ult i64 %i.if, %i.l, !dbg !11855
  br i1 %i.kb, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit189.i, label %bb.bo, !dbg !11855

bb.bo:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i188.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.if, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11855, !noalias !11247
  unreachable, !dbg !11855

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit189.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i188.i
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hw, !dbg !11856
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.if, !dbg !11857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11364), !dbg !11858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11365), !dbg !11858
  %i.ke = load i64, ptr %i.kc, align 8, !dbg !11859, !alias.scope !11364, !noalias !11366, !noundef !1998
  %i.kf = load i64, ptr %i.kd, align 8, !dbg !11860, !alias.scope !11365, !noalias !11367, !noundef !1998
  %i.kg = icmp ult i64 %i.ke, %i.kf, !dbg !11859  ; 2 uses
  %i.kh = select i1 %i.kg, i64 %i.if, i64 %i.hw, !dbg !11861, !unpredictable !1998 ; 6 uses
  %i.ki = select i1 %i.kg, i64 %i.hw, i64 %i.if, !dbg !11862, !unpredictable !1998 ; 6 uses
  store i64 %i.ki, ptr %i.au, align 8, !dbg !11862, !alias.scope !11247
  store i64 %i.kh, ptr %i.bq, align 8, !dbg !11863, !alias.scope !11247
  %i.kj = icmp ult i64 %i.io, %i.l, !dbg !11864
  br i1 %i.kj, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i193.i, label %bb.bp, !dbg !11864

bb.bp:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit189.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.io, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11864, !noalias !11247
  unreachable, !dbg !11864

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i193.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit189.i
  %i.kk = icmp ult i64 %i.ix, %i.l, !dbg !11865
  br i1 %i.kk, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit194.i, label %bb.bq, !dbg !11865

bb.bq:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i193.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11865, !noalias !11247
  unreachable, !dbg !11865

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit194.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i193.i
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.io, !dbg !11866
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ix, !dbg !11867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11368), !dbg !11868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11369), !dbg !11868
  %i.kn = load i64, ptr %i.kl, align 8, !dbg !11869, !alias.scope !11368, !noalias !11370, !noundef !1998
  %i.ko = load i64, ptr %i.km, align 8, !dbg !11870, !alias.scope !11369, !noalias !11371, !noundef !1998
  %i.kp = icmp ult i64 %i.kn, %i.ko, !dbg !11869  ; 2 uses
  %i.kq = select i1 %i.kp, i64 %i.ix, i64 %i.io, !dbg !11871, !unpredictable !1998
  %i.kr = select i1 %i.kp, i64 %i.io, i64 %i.ix, !dbg !11872, !unpredictable !1998 ; 6 uses
  store i64 %i.kr, ptr %i.y, align 8, !dbg !11872, !alias.scope !11247
  store i64 %i.kq, ptr %i.bf, align 8, !dbg !11873, !alias.scope !11247
  %i.ks = icmp ult i64 %i.hx, %i.l, !dbg !11874
  br i1 %i.ks, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i198.i, label %bb.br, !dbg !11874

bb.br:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit194.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hx, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11874, !noalias !11247
  unreachable, !dbg !11874

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i198.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit194.i
  %i.kt = icmp ult i64 %i.jg, %i.l, !dbg !11875
  br i1 %i.kt, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit199.i, label %bb.bs, !dbg !11875

bb.bs:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i198.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11875, !noalias !11247
  unreachable, !dbg !11875

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit199.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i198.i
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hx, !dbg !11876
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.jg, !dbg !11877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11372), !dbg !11878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11373), !dbg !11878
  %i.kw = load i64, ptr %i.ku, align 8, !dbg !11879, !alias.scope !11372, !noalias !11374, !noundef !1998
  %i.kx = load i64, ptr %i.kv, align 8, !dbg !11880, !alias.scope !11373, !noalias !11375, !noundef !1998
  %i.ky = icmp ult i64 %i.kw, %i.kx, !dbg !11879  ; 2 uses
  %i.kz = select i1 %i.ky, i64 %i.jg, i64 %i.hx, !dbg !11881, !unpredictable !1998 ; 6 uses
  %i.la = select i1 %i.ky, i64 %i.hx, i64 %i.jg, !dbg !11882, !unpredictable !1998 ; 6 uses
  store i64 %i.la, ptr %i.x, align 8, !dbg !11882, !alias.scope !11247
  store i64 %i.kz, ptr %i.at, align 8, !dbg !11883, !alias.scope !11247
  %i.lb = icmp ult i64 %i.ig, %i.l, !dbg !11884
  br i1 %i.lb, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i203.i, label %bb.bt, !dbg !11884

bb.bt:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit199.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11884, !noalias !11247
  unreachable, !dbg !11884

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i203.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit199.i
  %i.lc = icmp ult i64 %i.jq, %i.l, !dbg !11885
  br i1 %i.lc, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit204.i, label %bb.bu, !dbg !11885

bb.bu:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i203.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jq, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11885, !noalias !11247
  unreachable, !dbg !11885

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit204.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i203.i
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ig, !dbg !11886
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.jq, !dbg !11887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11376), !dbg !11888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11377), !dbg !11888
  %i.lf = load i64, ptr %i.ld, align 8, !dbg !11889, !alias.scope !11376, !noalias !11378, !noundef !1998
  %i.lg = load i64, ptr %i.le, align 8, !dbg !11890, !alias.scope !11377, !noalias !11379, !noundef !1998
  %i.lh = icmp ult i64 %i.lf, %i.lg, !dbg !11889  ; 2 uses
  %i.li = select i1 %i.lh, i64 %i.jq, i64 %i.ig, !dbg !11891, !unpredictable !1998 ; 6 uses
  %i.lj = select i1 %i.lh, i64 %i.ig, i64 %i.jq, !dbg !11892, !unpredictable !1998 ; 6 uses
  store i64 %i.lj, ptr %i.ai, align 8, !dbg !11892, !alias.scope !11247
  store i64 %i.li, ptr %i.cs, align 8, !dbg !11893, !alias.scope !11247
  %i.lk = icmp ult i64 %i.jz, %i.l, !dbg !11894
  br i1 %i.lk, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i208.i, label %bb.bv, !dbg !11894

bb.bv:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit204.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jz, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11894, !noalias !11247
  unreachable, !dbg !11894

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i208.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit204.i
  %i.ll = icmp ult i64 %i.jp, %i.l, !dbg !11895
  br i1 %i.ll, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit209.i, label %bb.bw, !dbg !11895

bb.bw:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i208.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jp, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11895, !noalias !11247
  unreachable, !dbg !11895

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit209.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i208.i
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.jz, !dbg !11896
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.jp, !dbg !11897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11380), !dbg !11898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11381), !dbg !11898
  %i.lo = load i64, ptr %i.lm, align 8, !dbg !11899, !alias.scope !11380, !noalias !11382, !noundef !1998
  %i.lp = load i64, ptr %i.ln, align 8, !dbg !11900, !alias.scope !11381, !noalias !11383, !noundef !1998
  %i.lq = icmp ult i64 %i.lo, %i.lp, !dbg !11899  ; 2 uses
  %i.lr = select i1 %i.lq, i64 %i.jp, i64 %i.jz, !dbg !11901, !unpredictable !1998 ; 6 uses
  %i.ls = select i1 %i.lq, i64 %i.jz, i64 %i.jp, !dbg !11902, !unpredictable !1998 ; 6 uses
  store i64 %i.ls, ptr %i.be, align 8, !dbg !11902, !alias.scope !11247
  store i64 %i.lr, ptr %i.bp, align 8, !dbg !11903, !alias.scope !11247
  %i.lt = icmp ult i64 %i.kr, %i.l, !dbg !11904
  br i1 %i.lt, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i213.i, label %bb.bx, !dbg !11904

bb.bx:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit209.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kr, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11904, !noalias !11247
  unreachable, !dbg !11904

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i213.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit209.i
  %i.lu = icmp ult i64 %i.jy, %i.l, !dbg !11905
  br i1 %i.lu, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit214.i, label %bb.by, !dbg !11905

bb.by:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i213.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jy, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11905, !noalias !11247
  unreachable, !dbg !11905

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit214.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i213.i
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kr, !dbg !11906
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.jy, !dbg !11907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11384), !dbg !11908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11385), !dbg !11908
  %i.lx = load i64, ptr %i.lv, align 8, !dbg !11909, !alias.scope !11384, !noalias !11386, !noundef !1998
  %i.ly = load i64, ptr %i.lw, align 8, !dbg !11910, !alias.scope !11385, !noalias !11387, !noundef !1998
  %i.lz = icmp ult i64 %i.lx, %i.ly, !dbg !11909  ; 2 uses
  %i.ma = select i1 %i.lz, i64 %i.jy, i64 %i.kr, !dbg !11911, !unpredictable !1998
  %i.mb = select i1 %i.lz, i64 %i.kr, i64 %i.jy, !dbg !11912, !unpredictable !1998 ; 6 uses
  store i64 %i.mb, ptr %i.aj, align 8, !dbg !11912, !alias.scope !11247
  store i64 %i.ma, ptr %i.y, align 8, !dbg !11913, !alias.scope !11247
  %i.mc = icmp ult i64 %i.lj, %i.l, !dbg !11914
  br i1 %i.mc, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i218.i, label %bb.bz, !dbg !11914

bb.bz:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit214.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.lj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11914, !noalias !11247
  unreachable, !dbg !11914

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i218.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit214.i
  %i.md = icmp ult i64 %i.la, %i.l, !dbg !11915
  br i1 %i.md, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit219.i, label %bb.ca, !dbg !11915

bb.ca:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i218.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11915, !noalias !11247
  unreachable, !dbg !11915

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit219.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i218.i
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lj, !dbg !11916
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.la, !dbg !11917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11388), !dbg !11918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11389), !dbg !11918
  %i.mg = load i64, ptr %i.me, align 8, !dbg !11919, !alias.scope !11388, !noalias !11390, !noundef !1998
  %i.mh = load i64, ptr %i.mf, align 8, !dbg !11920, !alias.scope !11389, !noalias !11391, !noundef !1998
  %i.mi = icmp ult i64 %i.mg, %i.mh, !dbg !11919  ; 2 uses
  %i.mj = select i1 %i.mi, i64 %i.la, i64 %i.lj, !dbg !11921, !unpredictable !1998 ; 6 uses
  %i.mk = select i1 %i.mi, i64 %i.lj, i64 %i.la, !dbg !11922, !unpredictable !1998
  store i64 %i.mk, ptr %i.x, align 8, !dbg !11922, !alias.scope !11247
  store i64 %i.mj, ptr %i.ai, align 8, !dbg !11923, !alias.scope !11247
  %i.ml = icmp ult i64 %i.li, %i.l, !dbg !11924
  br i1 %i.ml, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i223.i, label %bb.cb, !dbg !11924

bb.cb:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit219.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.li, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11924, !noalias !11247
  unreachable, !dbg !11924

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i223.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit219.i
  %i.mm = icmp ult i64 %i.kz, %i.l, !dbg !11925
  br i1 %i.mm, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit224.i, label %bb.cc, !dbg !11925

bb.cc:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i223.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11925, !noalias !11247
  unreachable, !dbg !11925

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit224.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i223.i
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.li, !dbg !11926
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kz, !dbg !11927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11392), !dbg !11928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11393), !dbg !11928
  %i.mp = load i64, ptr %i.mn, align 8, !dbg !11929, !alias.scope !11392, !noalias !11394, !noundef !1998
  %i.mq = load i64, ptr %i.mo, align 8, !dbg !11930, !alias.scope !11393, !noalias !11395, !noundef !1998
  %i.mr = icmp ult i64 %i.mp, %i.mq, !dbg !11929  ; 2 uses
  %i.ms = select i1 %i.mr, i64 %i.kz, i64 %i.li, !dbg !11931, !unpredictable !1998 ; 6 uses
  %i.mt = select i1 %i.mr, i64 %i.li, i64 %i.kz, !dbg !11932, !unpredictable !1998 ; 6 uses
  store i64 %i.mt, ptr %i.at, align 8, !dbg !11932, !alias.scope !11247
  store i64 %i.ms, ptr %i.cs, align 8, !dbg !11933, !alias.scope !11247
  %i.mu = icmp ult i64 %i.ki, %i.l, !dbg !11934
  br i1 %i.mu, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i228.i, label %bb.cd, !dbg !11934

bb.cd:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit224.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ki, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11934, !noalias !11247
  unreachable, !dbg !11934

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i228.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit224.i
  %i.mv = icmp ult i64 %i.ls, %i.l, !dbg !11935
  br i1 %i.mv, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit229.i, label %bb.ce, !dbg !11935

bb.ce:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i228.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ls, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11935, !noalias !11247
  unreachable, !dbg !11935

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit229.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i228.i
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ki, !dbg !11936
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ls, !dbg !11937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11396), !dbg !11938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11397), !dbg !11938
  %i.my = load i64, ptr %i.mw, align 8, !dbg !11939, !alias.scope !11396, !noalias !11398, !noundef !1998
  %i.mz = load i64, ptr %i.mx, align 8, !dbg !11940, !alias.scope !11397, !noalias !11399, !noundef !1998
  %i.na = icmp ult i64 %i.my, %i.mz, !dbg !11939  ; 2 uses
  %i.nb = select i1 %i.na, i64 %i.ls, i64 %i.ki, !dbg !11941, !unpredictable !1998 ; 6 uses
  %i.nc = select i1 %i.na, i64 %i.ki, i64 %i.ls, !dbg !11942, !unpredictable !1998 ; 6 uses
  store i64 %i.nc, ptr %i.be, align 8, !dbg !11942, !alias.scope !11247
  store i64 %i.nb, ptr %i.au, align 8, !dbg !11943, !alias.scope !11247
  %i.nd = icmp ult i64 %i.kh, %i.l, !dbg !11944
  br i1 %i.nd, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i233.i, label %bb.cf, !dbg !11944

bb.cf:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit229.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kh, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11944, !noalias !11247
  unreachable, !dbg !11944

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i233.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit229.i
  %i.ne = icmp ult i64 %i.lr, %i.l, !dbg !11945
  br i1 %i.ne, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit234.i, label %bb.cg, !dbg !11945

bb.cg:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i233.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.lr, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11945, !noalias !11247
  unreachable, !dbg !11945

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit234.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i233.i
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kh, !dbg !11946
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lr, !dbg !11947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11400), !dbg !11948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11401), !dbg !11948
  %i.nh = load i64, ptr %i.nf, align 8, !dbg !11949, !alias.scope !11400, !noalias !11402, !noundef !1998
  %i.ni = load i64, ptr %i.ng, align 8, !dbg !11950, !alias.scope !11401, !noalias !11403, !noundef !1998
  %i.nj = icmp ult i64 %i.nh, %i.ni, !dbg !11949  ; 2 uses
  %i.nk = select i1 %i.nj, i64 %i.lr, i64 %i.kh, !dbg !11951, !unpredictable !1998 ; 6 uses
  %i.nl = select i1 %i.nj, i64 %i.kh, i64 %i.lr, !dbg !11952, !unpredictable !1998 ; 6 uses
  store i64 %i.nl, ptr %i.bp, align 8, !dbg !11952, !alias.scope !11247
  store i64 %i.nk, ptr %i.bq, align 8, !dbg !11953, !alias.scope !11247
  %i.nm = icmp ult i64 %i.mt, %i.l, !dbg !11954
  br i1 %i.nm, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i238.i, label %bb.ch, !dbg !11954

bb.ch:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit234.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mt, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11954, !noalias !11247
  unreachable, !dbg !11954

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i238.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit234.i
  %i.nn = icmp ult i64 %i.mj, %i.l, !dbg !11955
  br i1 %i.nn, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit239.i, label %bb.ci, !dbg !11955

bb.ci:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i238.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11955, !noalias !11247
  unreachable, !dbg !11955

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit239.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i238.i
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mt, !dbg !11956
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mj, !dbg !11957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11404), !dbg !11958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11405), !dbg !11958
  %i.nq = load i64, ptr %i.no, align 8, !dbg !11959, !alias.scope !11404, !noalias !11406, !noundef !1998
  %i.nr = load i64, ptr %i.np, align 8, !dbg !11960, !alias.scope !11405, !noalias !11407, !noundef !1998
  %i.ns = icmp ult i64 %i.nq, %i.nr, !dbg !11959  ; 2 uses
  %i.nt = select i1 %i.ns, i64 %i.mj, i64 %i.mt, !dbg !11961, !unpredictable !1998 ; 6 uses
  %i.nu = select i1 %i.ns, i64 %i.mt, i64 %i.mj, !dbg !11962, !unpredictable !1998
  store i64 %i.nu, ptr %i.ai, align 8, !dbg !11962, !alias.scope !11247
  store i64 %i.nt, ptr %i.at, align 8, !dbg !11963, !alias.scope !11247
  %i.nv = icmp ult i64 %i.nc, %i.l, !dbg !11964
  br i1 %i.nv, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i243.i, label %bb.cj, !dbg !11964

bb.cj:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit239.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11964, !noalias !11247
  unreachable, !dbg !11964

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i243.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit239.i
  %i.nw = icmp ult i64 %i.ms, %i.l, !dbg !11965
  br i1 %i.nw, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit244.i, label %bb.ck, !dbg !11965

bb.ck:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i243.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ms, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11965, !noalias !11247
  unreachable, !dbg !11965

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit244.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i243.i
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nc, !dbg !11966
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ms, !dbg !11967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11408), !dbg !11968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11409), !dbg !11968
  %i.nz = load i64, ptr %i.nx, align 8, !dbg !11969, !alias.scope !11408, !noalias !11410, !noundef !1998
  %i.oa = load i64, ptr %i.ny, align 8, !dbg !11970, !alias.scope !11409, !noalias !11411, !noundef !1998
  %i.ob = icmp ult i64 %i.nz, %i.oa, !dbg !11969  ; 2 uses
  %i.oc = select i1 %i.ob, i64 %i.ms, i64 %i.nc, !dbg !11971, !unpredictable !1998 ; 6 uses
  %i.od = select i1 %i.ob, i64 %i.nc, i64 %i.ms, !dbg !11972, !unpredictable !1998 ; 6 uses
  store i64 %i.od, ptr %i.cs, align 8, !dbg !11972, !alias.scope !11247
  store i64 %i.oc, ptr %i.be, align 8, !dbg !11973, !alias.scope !11247
  %i.oe = icmp ult i64 %i.nb, %i.l, !dbg !11974
  br i1 %i.oe, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i248.i, label %bb.cl, !dbg !11974

bb.cl:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit244.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11974, !noalias !11247
  unreachable, !dbg !11974

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i248.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit244.i
  %i.of = icmp ult i64 %i.nl, %i.l, !dbg !11975
  br i1 %i.of, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit249.i, label %bb.cm, !dbg !11975

bb.cm:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i248.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nl, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11975, !noalias !11247
  unreachable, !dbg !11975

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit249.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i248.i
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nb, !dbg !11976
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nl, !dbg !11977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11412), !dbg !11978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11413), !dbg !11978
  %i.oi = load i64, ptr %i.og, align 8, !dbg !11979, !alias.scope !11412, !noalias !11414, !noundef !1998
  %i.oj = load i64, ptr %i.oh, align 8, !dbg !11980, !alias.scope !11413, !noalias !11415, !noundef !1998
  %i.ok = icmp ult i64 %i.oi, %i.oj, !dbg !11979  ; 2 uses
  %i.ol = select i1 %i.ok, i64 %i.nl, i64 %i.nb, !dbg !11981, !unpredictable !1998
  %i.om = select i1 %i.ok, i64 %i.nb, i64 %i.nl, !dbg !11982, !unpredictable !1998 ; 6 uses
  store i64 %i.om, ptr %i.bp, align 8, !dbg !11982, !alias.scope !11247
  store i64 %i.ol, ptr %i.au, align 8, !dbg !11983, !alias.scope !11247
  %i.on = icmp ult i64 %i.mb, %i.l, !dbg !11984
  br i1 %i.on, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i253.i, label %bb.cn, !dbg !11984

bb.cn:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit249.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mb, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11984, !noalias !11247
  unreachable, !dbg !11984

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i253.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit249.i
  %i.oo = icmp ult i64 %i.nk, %i.l, !dbg !11985
  br i1 %i.oo, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit254.i, label %bb.co, !dbg !11985

bb.co:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i253.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11985, !noalias !11247
  unreachable, !dbg !11985

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit254.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i253.i
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mb, !dbg !11986
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nk, !dbg !11987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11416), !dbg !11988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11417), !dbg !11988
  %i.or = load i64, ptr %i.op, align 8, !dbg !11989, !alias.scope !11416, !noalias !11418, !noundef !1998
  %i.os = load i64, ptr %i.oq, align 8, !dbg !11990, !alias.scope !11417, !noalias !11419, !noundef !1998
  %i.ot = icmp ult i64 %i.or, %i.os, !dbg !11989  ; 2 uses
  %i.ou = select i1 %i.ot, i64 %i.nk, i64 %i.mb, !dbg !11991, !unpredictable !1998
  %i.ov = select i1 %i.ot, i64 %i.mb, i64 %i.nk, !dbg !11992, !unpredictable !1998
  store i64 %i.ov, ptr %i.bq, align 8, !dbg !11992, !alias.scope !11247
  store i64 %i.ou, ptr %i.aj, align 8, !dbg !11993, !alias.scope !11247
  %i.ow = icmp ult i64 %i.od, %i.l, !dbg !11994
  br i1 %i.ow, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i258.i, label %bb.cp, !dbg !11994

bb.cp:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit254.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.od, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11994, !noalias !11247
  unreachable, !dbg !11994

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i258.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit254.i
  %i.ox = icmp ult i64 %i.nt, %i.l, !dbg !11995
  br i1 %i.ox, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit259.i, label %bb.cq, !dbg !11995

bb.cq:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i258.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nt, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !11995, !noalias !11247
  unreachable, !dbg !11995

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit259.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i258.i
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.od, !dbg !11996
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nt, !dbg !11997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11420), !dbg !11998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11421), !dbg !11998
  %i.pa = load i64, ptr %i.oy, align 8, !dbg !11999, !alias.scope !11420, !noalias !11422, !noundef !1998
  %i.pb = load i64, ptr %i.oz, align 8, !dbg !12000, !alias.scope !11421, !noalias !11423, !noundef !1998
  %i.pc = icmp ult i64 %i.pa, %i.pb, !dbg !11999  ; 2 uses
  %i.pd = select i1 %i.pc, i64 %i.nt, i64 %i.od, !dbg !12001, !unpredictable !1998
  %i.pe = select i1 %i.pc, i64 %i.od, i64 %i.nt, !dbg !12002, !unpredictable !1998
  store i64 %i.pe, ptr %i.at, align 8, !dbg !12002, !alias.scope !11247
  store i64 %i.pd, ptr %i.cs, align 8, !dbg !12003, !alias.scope !11247
  %i.pf = icmp ult i64 %i.om, %i.l, !dbg !12004
  br i1 %i.pf, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i263.i, label %bb.cr, !dbg !12004

bb.cr:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit259.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.om, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12004, !noalias !11247
  unreachable, !dbg !12004

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i263.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit259.i
  %i.pg = icmp ult i64 %i.oc, %i.l, !dbg !12005
  br i1 %i.pg, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1X_.exit, label %bb.cs, !dbg !12005

bb.cs:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i263.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.oc, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12005, !noalias !11247
  unreachable, !dbg !12005

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1X_.exit: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i263.i
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.om, !dbg !12006
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.oc, !dbg !12007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11424), !dbg !12008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11425), !dbg !12008
  %i.pj = load i64, ptr %i.ph, align 8, !dbg !12009, !alias.scope !11424, !noalias !11426, !noundef !1998
  %i.pk = load i64, ptr %i.pi, align 8, !dbg !12010, !alias.scope !11425, !noalias !11427, !noundef !1998
  %i.pl = icmp ult i64 %i.pj, %i.pk, !dbg !12009  ; 2 uses
  %i.pm = select i1 %i.pl, i64 %i.oc, i64 %i.om, !dbg !12011, !unpredictable !1998
  %i.pn = select i1 %i.pl, i64 %i.om, i64 %i.oc, !dbg !12012, !unpredictable !1998
  store i64 %i.pn, ptr %i.be, align 8, !dbg !12012, !alias.scope !11247
  store i64 %i.pm, ptr %i.bp, align 8, !dbg !12013, !alias.scope !11247
  br label %bb.es, !dbg !12014

bb.ct:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11428), !dbg !12015
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24, !dbg !12016 ; 8 uses
  %.val1.i.i16 = load i64, ptr %i.po, align 8, !dbg !12017, !alias.scope !11428, !noundef !1998 ; 5 uses
  %.val2.i.i17 = load i64, ptr %.sroa.02.0, align 8, !dbg !12017, !alias.scope !11428 ; 5 uses
  %.val3.i.i.i18 = load ptr, ptr %.val15, align 8, !dbg !12018, !noalias !11428, !nonnull !1998, !align !2172, !noundef !1998 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.val3.i.i.i18, i64 16, !dbg !12019
  %i.pq = load i64, ptr %i.pp, align 8, !dbg !12019, !noalias !11428, !noundef !1998 ; 100 uses
  %i.pr = icmp ult i64 %.val1.i.i16, %i.pq, !dbg !12020
  br i1 %i.pr, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i19, label %bb.cu, !dbg !12020

bb.cu:                                            ; preds = %bb.ct
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i16, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12020, !noalias !11428
  unreachable, !dbg !12020

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i19: ; preds = %bb.ct
  %i.ps = icmp ult i64 %.val2.i.i17, %i.pq, !dbg !12021
  br i1 %i.ps, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i20, label %bb.cv, !dbg !12021

bb.cv:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i19
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i17, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12021, !noalias !11428
  unreachable, !dbg !12021

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i20: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i.i19
  %i.pt = getelementptr inbounds nuw i8, ptr %.val3.i.i.i18, i64 8, !dbg !12022
  %i.pu = load ptr, ptr %i.pt, align 8, !dbg !12022, !noalias !11428, !nonnull !1998, !noundef !1998 ; 50 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val1.i.i16, !dbg !12023
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val2.i.i17, !dbg !12024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11429), !dbg !12025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11430), !dbg !12025
  %i.px = load i64, ptr %i.pv, align 8, !dbg !12026, !alias.scope !11429, !noalias !11431, !noundef !1998
  %i.py = load i64, ptr %i.pw, align 8, !dbg !12027, !alias.scope !11430, !noalias !11432, !noundef !1998
  %i.pz = icmp ult i64 %i.px, %i.py, !dbg !12026  ; 2 uses
  %i.qa = select i1 %i.pz, i64 %.val2.i.i17, i64 %.val1.i.i16, !dbg !12028, !unpredictable !1998 ; 6 uses
  %i.qb = select i1 %i.pz, i64 %.val1.i.i16, i64 %.val2.i.i17, !dbg !12029, !unpredictable !1998 ; 6 uses
  store i64 %i.qb, ptr %.sroa.02.0, align 8, !dbg !12029, !alias.scope !11428
  store i64 %i.qa, ptr %i.po, align 8, !dbg !12030, !alias.scope !11428
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8, !dbg !12031 ; 6 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56, !dbg !12032 ; 6 uses
  %.val1.i25.i = load i64, ptr %i.qd, align 8, !dbg !12033, !alias.scope !11428, !noundef !1998 ; 5 uses
  %.val2.i26.i = load i64, ptr %i.qc, align 8, !dbg !12033, !alias.scope !11428 ; 5 uses
  %i.qe = icmp ult i64 %.val1.i25.i, %i.pq, !dbg !12034
  br i1 %i.qe, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i28.i, label %bb.cw, !dbg !12034

bb.cw:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i20
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i25.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12034, !noalias !11428
  unreachable, !dbg !12034

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i28.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit.i20
  %i.qf = icmp ult i64 %.val2.i26.i, %i.pq, !dbg !12035
  br i1 %i.qf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit29.i, label %bb.cx, !dbg !12035

bb.cx:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i28.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i26.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12035, !noalias !11428
  unreachable, !dbg !12035

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit29.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i28.i
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val1.i25.i, !dbg !12036
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val2.i26.i, !dbg !12037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11433), !dbg !12038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11434), !dbg !12038
  %i.qi = load i64, ptr %i.qg, align 8, !dbg !12039, !alias.scope !11433, !noalias !11435, !noundef !1998
  %i.qj = load i64, ptr %i.qh, align 8, !dbg !12040, !alias.scope !11434, !noalias !11436, !noundef !1998
  %i.qk = icmp ult i64 %i.qi, %i.qj, !dbg !12039  ; 2 uses
  %i.ql = select i1 %i.qk, i64 %.val2.i26.i, i64 %.val1.i25.i, !dbg !12041, !unpredictable !1998 ; 6 uses
  %i.qm = select i1 %i.qk, i64 %.val1.i25.i, i64 %.val2.i26.i, !dbg !12042, !unpredictable !1998 ; 6 uses
  store i64 %i.qm, ptr %i.qc, align 8, !dbg !12042, !alias.scope !11428
  store i64 %i.ql, ptr %i.qd, align 8, !dbg !12043, !alias.scope !11428
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16, !dbg !12044 ; 7 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40, !dbg !12045 ; 8 uses
  %.val1.i30.i = load i64, ptr %i.qo, align 8, !dbg !12046, !alias.scope !11428, !noundef !1998 ; 5 uses
  %.val2.i31.i = load i64, ptr %i.qn, align 8, !dbg !12046, !alias.scope !11428 ; 5 uses
  %i.qp = icmp ult i64 %.val1.i30.i, %i.pq, !dbg !12047
  br i1 %i.qp, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i33.i, label %bb.cy, !dbg !12047

bb.cy:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit29.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i30.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12047, !noalias !11428
  unreachable, !dbg !12047

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i33.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit29.i
  %i.qq = icmp ult i64 %.val2.i31.i, %i.pq, !dbg !12048
  br i1 %i.qq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit34.i, label %bb.cz, !dbg !12048

bb.cz:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i33.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i31.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12048, !noalias !11428
  unreachable, !dbg !12048

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit34.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i33.i
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val1.i30.i, !dbg !12049
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val2.i31.i, !dbg !12050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11437), !dbg !12051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11438), !dbg !12051
  %i.qt = load i64, ptr %i.qr, align 8, !dbg !12052, !alias.scope !11437, !noalias !11439, !noundef !1998
  %i.qu = load i64, ptr %i.qs, align 8, !dbg !12053, !alias.scope !11438, !noalias !11440, !noundef !1998
  %i.qv = icmp ult i64 %i.qt, %i.qu, !dbg !12052  ; 2 uses
  %i.qw = select i1 %i.qv, i64 %.val2.i31.i, i64 %.val1.i30.i, !dbg !12054, !unpredictable !1998 ; 6 uses
  %i.qx = select i1 %i.qv, i64 %.val1.i30.i, i64 %.val2.i31.i, !dbg !12055, !unpredictable !1998 ; 6 uses
  store i64 %i.qx, ptr %i.qn, align 8, !dbg !12055, !alias.scope !11428
  store i64 %i.qw, ptr %i.qo, align 8, !dbg !12056, !alias.scope !11428
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32, !dbg !12057 ; 8 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64, !dbg !12058 ; 5 uses
  %.val1.i35.i = load i64, ptr %i.qz, align 8, !dbg !12059, !alias.scope !11428, !noundef !1998 ; 5 uses
  %.val2.i36.i = load i64, ptr %i.qy, align 8, !dbg !12059, !alias.scope !11428 ; 5 uses
  %i.ra = icmp ult i64 %.val1.i35.i, %i.pq, !dbg !12060
  br i1 %i.ra, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i38.i, label %bb.da, !dbg !12060

bb.da:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit34.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i35.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12060, !noalias !11428
  unreachable, !dbg !12060

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i38.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit34.i
  %i.rb = icmp ult i64 %.val2.i36.i, %i.pq, !dbg !12061
  br i1 %i.rb, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit39.i, label %bb.db, !dbg !12061

bb.db:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i38.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val2.i36.i, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12061, !noalias !11428
  unreachable, !dbg !12061

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit39.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i38.i
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val1.i35.i, !dbg !12062
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val2.i36.i, !dbg !12063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11441), !dbg !12064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11442), !dbg !12064
  %i.re = load i64, ptr %i.rc, align 8, !dbg !12065, !alias.scope !11441, !noalias !11443, !noundef !1998
  %i.rf = load i64, ptr %i.rd, align 8, !dbg !12066, !alias.scope !11442, !noalias !11444, !noundef !1998
  %i.rg = icmp ult i64 %i.re, %i.rf, !dbg !12065  ; 2 uses
  %i.rh = select i1 %i.rg, i64 %.val2.i36.i, i64 %.val1.i35.i, !dbg !12067, !unpredictable !1998 ; 6 uses
  %i.ri = select i1 %i.rg, i64 %.val1.i35.i, i64 %.val2.i36.i, !dbg !12068, !unpredictable !1998 ; 6 uses
  store i64 %i.ri, ptr %i.qy, align 8, !dbg !12068, !alias.scope !11428
  store i64 %i.rh, ptr %i.qz, align 8, !dbg !12069, !alias.scope !11428
  %i.rj = icmp ult i64 %i.ql, %i.pq, !dbg !12070
  br i1 %i.rj, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i43.i, label %bb.dc, !dbg !12070

bb.dc:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit39.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ql, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12070, !noalias !11428
  unreachable, !dbg !12070

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i43.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit39.i
  %i.rk = icmp ult i64 %i.qb, %i.pq, !dbg !12071
  br i1 %i.rk, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit44.i, label %bb.dd, !dbg !12071

bb.dd:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i43.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qb, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12071, !noalias !11428
  unreachable, !dbg !12071

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit44.i: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i43.i
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ql, !dbg !12072
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qb, !dbg !12073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11445), !dbg !12074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11446), !dbg !12074
  %i.rn = load i64, ptr %i.rl, align 8, !dbg !12075, !alias.scope !11445, !noalias !11447, !noundef !1998
  %i.ro = load i64, ptr %i.rm, align 8, !dbg !12076, !alias.scope !11446, !noalias !11448, !noundef !1998
  %i.rp = icmp ult i64 %i.rn, %i.ro, !dbg !12075  ; 2 uses
  %i.rq = select i1 %i.rp, i64 %i.qb, i64 %i.ql, !dbg !12077, !unpredictable !1998 ; 6 uses
  %i.rr = select i1 %i.rp, i64 %i.ql, i64 %i.qb, !dbg !12078, !unpredictable !1998 ; 6 uses
  store i64 %i.rr, ptr %.sroa.02.0, align 8, !dbg !12078, !alias.scope !11428
  store i64 %i.rq, ptr %i.qd, align 8, !dbg !12079, !alias.scope !11428
  %i.rs = icmp ult i64 %i.ri, %i.pq, !dbg !12080
  br i1 %i.rs, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i21, label %bb.de, !dbg !12080

bb.de:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit44.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ri, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12080, !noalias !11428
  unreachable, !dbg !12080

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i21: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit44.i
  %i.rt = icmp ult i64 %i.qx, %i.pq, !dbg !12081
  br i1 %i.rt, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i22, label %bb.df, !dbg !12081

bb.df:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i21
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qx, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12081, !noalias !11428
  unreachable, !dbg !12081

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i22: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i48.i21
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ri, !dbg !12082
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qx, !dbg !12083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11449), !dbg !12084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11450), !dbg !12084
  %i.rw = load i64, ptr %i.ru, align 8, !dbg !12085, !alias.scope !11449, !noalias !11451, !noundef !1998
  %i.rx = load i64, ptr %i.rv, align 8, !dbg !12086, !alias.scope !11450, !noalias !11452, !noundef !1998
  %i.ry = icmp ult i64 %i.rw, %i.rx, !dbg !12085  ; 2 uses
  %i.rz = select i1 %i.ry, i64 %i.qx, i64 %i.ri, !dbg !12087, !unpredictable !1998 ; 6 uses
  %i.sa = select i1 %i.ry, i64 %i.ri, i64 %i.qx, !dbg !12088, !unpredictable !1998 ; 6 uses
  store i64 %i.sa, ptr %i.qn, align 8, !dbg !12088, !alias.scope !11428
  store i64 %i.rz, ptr %i.qy, align 8, !dbg !12089, !alias.scope !11428
  %i.sb = icmp ult i64 %i.rh, %i.pq, !dbg !12090
  br i1 %i.sb, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i23, label %bb.dg, !dbg !12090

bb.dg:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i22
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.rh, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12090, !noalias !11428
  unreachable, !dbg !12090

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i23: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit49.i22
  %i.sc = icmp ult i64 %i.qa, %i.pq, !dbg !12091
  br i1 %i.sc, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i24, label %bb.dh, !dbg !12091

bb.dh:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i23
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qa, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12091, !noalias !11428
  unreachable, !dbg !12091

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i24: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i53.i23
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.rh, !dbg !12092
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qa, !dbg !12093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11453), !dbg !12094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11454), !dbg !12094
  %i.sf = load i64, ptr %i.sd, align 8, !dbg !12095, !alias.scope !11453, !noalias !11455, !noundef !1998
  %i.sg = load i64, ptr %i.se, align 8, !dbg !12096, !alias.scope !11454, !noalias !11456, !noundef !1998
  %i.sh = icmp ult i64 %i.sf, %i.sg, !dbg !12095  ; 2 uses
  %i.si = select i1 %i.sh, i64 %i.qa, i64 %i.rh, !dbg !12097, !unpredictable !1998 ; 6 uses
  %i.sj = select i1 %i.sh, i64 %i.rh, i64 %i.qa, !dbg !12098, !unpredictable !1998 ; 6 uses
  store i64 %i.sj, ptr %i.po, align 8, !dbg !12098, !alias.scope !11428
  store i64 %i.si, ptr %i.qz, align 8, !dbg !12099, !alias.scope !11428
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48, !dbg !12100 ; 6 uses
  %.val1.i55.i25 = load i64, ptr %i.sk, align 8, !dbg !12101, !alias.scope !11428, !noundef !1998 ; 5 uses
  %i.sl = icmp ult i64 %.val1.i55.i25, %i.pq, !dbg !12102
  br i1 %i.sl, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i26, label %bb.di, !dbg !12102

bb.di:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i24
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i55.i25, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12102, !noalias !11428
  unreachable, !dbg !12102

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i26: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit54.i24
  %i.sm = icmp ult i64 %i.qw, %i.pq, !dbg !12103
  br i1 %i.sm, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i27, label %bb.dj, !dbg !12103

bb.dj:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i26
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qw, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12103, !noalias !11428
  unreachable, !dbg !12103

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i27: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i58.i26
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.val1.i55.i25, !dbg !12104
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qw, !dbg !12105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11457), !dbg !12106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11458), !dbg !12106
  %i.sp = load i64, ptr %i.sn, align 8, !dbg !12107, !alias.scope !11457, !noalias !11459, !noundef !1998
  %i.sq = load i64, ptr %i.so, align 8, !dbg !12108, !alias.scope !11458, !noalias !11460, !noundef !1998
  %i.sr = icmp ult i64 %i.sp, %i.sq, !dbg !12107  ; 2 uses
  %i.ss = select i1 %i.sr, i64 %i.qw, i64 %.val1.i55.i25, !dbg !12109, !unpredictable !1998 ; 6 uses
  %i.st = select i1 %i.sr, i64 %.val1.i55.i25, i64 %i.qw, !dbg !12110, !unpredictable !1998 ; 6 uses
  store i64 %i.st, ptr %i.qo, align 8, !dbg !12110, !alias.scope !11428
  store i64 %i.ss, ptr %i.sk, align 8, !dbg !12111, !alias.scope !11428
  %i.su = icmp ult i64 %i.sa, %i.pq, !dbg !12112
  br i1 %i.su, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i28, label %bb.dk, !dbg !12112

bb.dk:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i27
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.sa, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12112, !noalias !11428
  unreachable, !dbg !12112

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i28: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit59.i27
  %i.sv = icmp ult i64 %i.rr, %i.pq, !dbg !12113
  br i1 %i.sv, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i29, label %bb.dl, !dbg !12113

bb.dl:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i28
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.rr, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12113, !noalias !11428
  unreachable, !dbg !12113

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i29: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i63.i28
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.sa, !dbg !12114
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.rr, !dbg !12115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11461), !dbg !12116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11462), !dbg !12116
  %i.sy = load i64, ptr %i.sw, align 8, !dbg !12117, !alias.scope !11461, !noalias !11463, !noundef !1998
  %i.sz = load i64, ptr %i.sx, align 8, !dbg !12118, !alias.scope !11462, !noalias !11464, !noundef !1998
  %i.ta = icmp ult i64 %i.sy, %i.sz, !dbg !12117  ; 2 uses
  %i.tb = select i1 %i.ta, i64 %i.rr, i64 %i.sa, !dbg !12119, !unpredictable !1998 ; 6 uses
  %i.tc = select i1 %i.ta, i64 %i.sa, i64 %i.rr, !dbg !12120, !unpredictable !1998 ; 6 uses
  store i64 %i.tc, ptr %.sroa.02.0, align 8, !dbg !12120, !alias.scope !11428
  store i64 %i.tb, ptr %i.qn, align 8, !dbg !12121, !alias.scope !11428
  %i.td = icmp ult i64 %i.sj, %i.pq, !dbg !12122
  br i1 %i.td, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i30, label %bb.dm, !dbg !12122

bb.dm:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i29
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.sj, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12122, !noalias !11428
  unreachable, !dbg !12122

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i30: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit64.i29
  %i.te = icmp ult i64 %i.qm, %i.pq, !dbg !12123
  br i1 %i.te, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i31, label %bb.dn, !dbg !12123

bb.dn:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i30
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qm, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12123, !noalias !11428
  unreachable, !dbg !12123

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i31: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i68.i30
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.sj, !dbg !12124
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qm, !dbg !12125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11465), !dbg !12126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11466), !dbg !12126
  %i.th = load i64, ptr %i.tf, align 8, !dbg !12127, !alias.scope !11465, !noalias !11467, !noundef !1998
  %i.ti = load i64, ptr %i.tg, align 8, !dbg !12128, !alias.scope !11466, !noalias !11468, !noundef !1998
  %i.tj = icmp ult i64 %i.th, %i.ti, !dbg !12127  ; 2 uses
  %i.tk = select i1 %i.tj, i64 %i.qm, i64 %i.sj, !dbg !12129, !unpredictable !1998 ; 6 uses
  %i.tl = select i1 %i.tj, i64 %i.sj, i64 %i.qm, !dbg !12130, !unpredictable !1998 ; 6 uses
  store i64 %i.tl, ptr %i.qc, align 8, !dbg !12130, !alias.scope !11428
  store i64 %i.tk, ptr %i.po, align 8, !dbg !12131, !alias.scope !11428
  %i.tm = icmp ult i64 %i.st, %i.pq, !dbg !12132
  br i1 %i.tm, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i32, label %bb.do, !dbg !12132

bb.do:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i31
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.st, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12132, !noalias !11428
  unreachable, !dbg !12132

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i32: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit69.i31
  %i.tn = icmp ult i64 %i.rz, %i.pq, !dbg !12133
  br i1 %i.tn, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i33, label %bb.dp, !dbg !12133

bb.dp:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i32
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.rz, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12133, !noalias !11428
  unreachable, !dbg !12133

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i33: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i73.i32
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.st, !dbg !12134
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.rz, !dbg !12135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11469), !dbg !12136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11470), !dbg !12136
  %i.tq = load i64, ptr %i.to, align 8, !dbg !12137, !alias.scope !11469, !noalias !11471, !noundef !1998
  %i.tr = load i64, ptr %i.tp, align 8, !dbg !12138, !alias.scope !11470, !noalias !11472, !noundef !1998
  %i.ts = icmp ult i64 %i.tq, %i.tr, !dbg !12137  ; 2 uses
  %i.tt = select i1 %i.ts, i64 %i.rz, i64 %i.st, !dbg !12139, !unpredictable !1998 ; 6 uses
  %i.tu = select i1 %i.ts, i64 %i.st, i64 %i.rz, !dbg !12140, !unpredictable !1998 ; 6 uses
  store i64 %i.tu, ptr %i.qy, align 8, !dbg !12140, !alias.scope !11428
  store i64 %i.tt, ptr %i.qo, align 8, !dbg !12141, !alias.scope !11428
  %i.tv = icmp ult i64 %i.si, %i.pq, !dbg !12142
  br i1 %i.tv, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i34, label %bb.dq, !dbg !12142

bb.dq:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i33
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.si, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12142, !noalias !11428
  unreachable, !dbg !12142

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i34: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit74.i33
  %i.tw = icmp ult i64 %i.rq, %i.pq, !dbg !12143
  br i1 %i.tw, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i35, label %bb.dr, !dbg !12143

bb.dr:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i34
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.rq, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12143, !noalias !11428
  unreachable, !dbg !12143

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i35: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i78.i34
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.si, !dbg !12144
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.rq, !dbg !12145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11473), !dbg !12146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11474), !dbg !12146
  %i.tz = load i64, ptr %i.tx, align 8, !dbg !12147, !alias.scope !11473, !noalias !11475, !noundef !1998
  %i.ua = load i64, ptr %i.ty, align 8, !dbg !12148, !alias.scope !11474, !noalias !11476, !noundef !1998
  %i.ub = icmp ult i64 %i.tz, %i.ua, !dbg !12147  ; 2 uses
  %i.uc = select i1 %i.ub, i64 %i.rq, i64 %i.si, !dbg !12149, !unpredictable !1998 ; 6 uses
  %i.ud = select i1 %i.ub, i64 %i.si, i64 %i.rq, !dbg !12150, !unpredictable !1998 ; 6 uses
  store i64 %i.ud, ptr %i.qd, align 8, !dbg !12150, !alias.scope !11428
  store i64 %i.uc, ptr %i.qz, align 8, !dbg !12151, !alias.scope !11428
  %i.ue = icmp ult i64 %i.tu, %i.pq, !dbg !12152
  br i1 %i.ue, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i36, label %bb.ds, !dbg !12152

bb.ds:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i35
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tu, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12152, !noalias !11428
  unreachable, !dbg !12152

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i36: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit79.i35
  %i.uf = icmp ult i64 %i.tl, %i.pq, !dbg !12153
  br i1 %i.uf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i37, label %bb.dt, !dbg !12153

bb.dt:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i36
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tl, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12153, !noalias !11428
  unreachable, !dbg !12153

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i37: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i83.i36
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tu, !dbg !12154
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tl, !dbg !12155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11477), !dbg !12156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11478), !dbg !12156
  %i.ui = load i64, ptr %i.ug, align 8, !dbg !12157, !alias.scope !11477, !noalias !11479, !noundef !1998
  %i.uj = load i64, ptr %i.uh, align 8, !dbg !12158, !alias.scope !11478, !noalias !11480, !noundef !1998
  %i.uk = icmp ult i64 %i.ui, %i.uj, !dbg !12157  ; 2 uses
  %i.ul = select i1 %i.uk, i64 %i.tl, i64 %i.tu, !dbg !12159, !unpredictable !1998 ; 6 uses
  %i.um = select i1 %i.uk, i64 %i.tu, i64 %i.tl, !dbg !12160, !unpredictable !1998 ; 6 uses
  store i64 %i.um, ptr %i.qc, align 8, !dbg !12160, !alias.scope !11428
  store i64 %i.ul, ptr %i.qy, align 8, !dbg !12161, !alias.scope !11428
  %i.un = icmp ult i64 %i.ss, %i.pq, !dbg !12162
  br i1 %i.un, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i38, label %bb.du, !dbg !12162

bb.du:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i37
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ss, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12162, !noalias !11428
  unreachable, !dbg !12162

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i38: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit84.i37
  %i.uo = icmp ult i64 %i.tk, %i.pq, !dbg !12163
  br i1 %i.uo, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i39, label %bb.dv, !dbg !12163

bb.dv:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i38
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tk, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12163, !noalias !11428
  unreachable, !dbg !12163

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i39: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i88.i38
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ss, !dbg !12164
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tk, !dbg !12165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11481), !dbg !12166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11482), !dbg !12166
  %i.ur = load i64, ptr %i.up, align 8, !dbg !12167, !alias.scope !11481, !noalias !11483, !noundef !1998
  %i.us = load i64, ptr %i.uq, align 8, !dbg !12168, !alias.scope !11482, !noalias !11484, !noundef !1998
  %i.ut = icmp ult i64 %i.ur, %i.us, !dbg !12167  ; 2 uses
  %i.uu = select i1 %i.ut, i64 %i.tk, i64 %i.ss, !dbg !12169, !unpredictable !1998 ; 6 uses
  %i.uv = select i1 %i.ut, i64 %i.ss, i64 %i.tk, !dbg !12170, !unpredictable !1998 ; 6 uses
  store i64 %i.uv, ptr %i.po, align 8, !dbg !12170, !alias.scope !11428
  store i64 %i.uu, ptr %i.sk, align 8, !dbg !12171, !alias.scope !11428
  %i.uw = icmp ult i64 %i.ud, %i.pq, !dbg !12172
  br i1 %i.uw, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i40, label %bb.dw, !dbg !12172

bb.dw:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i39
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ud, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12172, !noalias !11428
  unreachable, !dbg !12172

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i40: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit89.i39
  %i.ux = icmp ult i64 %i.tt, %i.pq, !dbg !12173
  br i1 %i.ux, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i41, label %bb.dx, !dbg !12173

bb.dx:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i40
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tt, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12173, !noalias !11428
  unreachable, !dbg !12173

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i41: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i93.i40
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ud, !dbg !12174
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tt, !dbg !12175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11485), !dbg !12176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11486), !dbg !12176
  %i.va = load i64, ptr %i.uy, align 8, !dbg !12177, !alias.scope !11485, !noalias !11487, !noundef !1998
  %i.vb = load i64, ptr %i.uz, align 8, !dbg !12178, !alias.scope !11486, !noalias !11488, !noundef !1998
  %i.vc = icmp ult i64 %i.va, %i.vb, !dbg !12177  ; 2 uses
  %i.vd = select i1 %i.vc, i64 %i.tt, i64 %i.ud, !dbg !12179, !unpredictable !1998 ; 6 uses
  %i.ve = select i1 %i.vc, i64 %i.ud, i64 %i.tt, !dbg !12180, !unpredictable !1998 ; 6 uses
  store i64 %i.ve, ptr %i.qo, align 8, !dbg !12180, !alias.scope !11428
  store i64 %i.vd, ptr %i.qd, align 8, !dbg !12181, !alias.scope !11428
  %i.vf = icmp ult i64 %i.um, %i.pq, !dbg !12182
  br i1 %i.vf, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i42, label %bb.dy, !dbg !12182

bb.dy:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i41
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.um, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12182, !noalias !11428
  unreachable, !dbg !12182

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i42: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit94.i41
  %i.vg = icmp ult i64 %i.tc, %i.pq, !dbg !12183
  br i1 %i.vg, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i43, label %bb.dz, !dbg !12183

bb.dz:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i42
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tc, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12183, !noalias !11428
  unreachable, !dbg !12183

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i43: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i98.i42
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.um, !dbg !12184
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tc, !dbg !12185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11489), !dbg !12186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11490), !dbg !12186
  %i.vj = load i64, ptr %i.vh, align 8, !dbg !12187, !alias.scope !11489, !noalias !11491, !noundef !1998
  %i.vk = load i64, ptr %i.vi, align 8, !dbg !12188, !alias.scope !11490, !noalias !11492, !noundef !1998
  %i.vl = icmp ult i64 %i.vj, %i.vk, !dbg !12187  ; 2 uses
  %i.vm = select i1 %i.vl, i64 %i.tc, i64 %i.um, !dbg !12189, !unpredictable !1998 ; 6 uses
  %i.vn = select i1 %i.vl, i64 %i.um, i64 %i.tc, !dbg !12190, !unpredictable !1998
  store i64 %i.vn, ptr %.sroa.02.0, align 8, !dbg !12190, !alias.scope !11428
  store i64 %i.vm, ptr %i.qc, align 8, !dbg !12191, !alias.scope !11428
  %i.vo = icmp ult i64 %i.ul, %i.pq, !dbg !12192
  br i1 %i.vo, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i44, label %bb.ea, !dbg !12192

bb.ea:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i43
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ul, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12192, !noalias !11428
  unreachable, !dbg !12192

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i44: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit99.i43
  %i.vp = icmp ult i64 %i.tb, %i.pq, !dbg !12193
  br i1 %i.vp, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i45, label %bb.eb, !dbg !12193

bb.eb:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i44
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.tb, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12193, !noalias !11428
  unreachable, !dbg !12193

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i45: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i103.i44
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ul, !dbg !12194
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.tb, !dbg !12195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11493), !dbg !12196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11494), !dbg !12196
  %i.vs = load i64, ptr %i.vq, align 8, !dbg !12197, !alias.scope !11493, !noalias !11495, !noundef !1998
  %i.vt = load i64, ptr %i.vr, align 8, !dbg !12198, !alias.scope !11494, !noalias !11496, !noundef !1998
  %i.vu = icmp ult i64 %i.vs, %i.vt, !dbg !12197  ; 2 uses
  %i.vv = select i1 %i.vu, i64 %i.tb, i64 %i.ul, !dbg !12199, !unpredictable !1998 ; 6 uses
  %i.vw = select i1 %i.vu, i64 %i.ul, i64 %i.tb, !dbg !12200, !unpredictable !1998 ; 6 uses
  store i64 %i.vw, ptr %i.qn, align 8, !dbg !12200, !alias.scope !11428
  store i64 %i.vv, ptr %i.qy, align 8, !dbg !12201, !alias.scope !11428
  %i.vx = icmp ult i64 %i.ve, %i.pq, !dbg !12202
  br i1 %i.vx, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i46, label %bb.ec, !dbg !12202

bb.ec:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i45
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ve, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12202, !noalias !11428
  unreachable, !dbg !12202

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i46: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit104.i45
  %i.vy = icmp ult i64 %i.uv, %i.pq, !dbg !12203
  br i1 %i.vy, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i47, label %bb.ed, !dbg !12203

bb.ed:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i46
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.uv, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12203, !noalias !11428
  unreachable, !dbg !12203

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i47: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i108.i46
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ve, !dbg !12204
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.uv, !dbg !12205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11497), !dbg !12206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11498), !dbg !12206
  %i.wb = load i64, ptr %i.vz, align 8, !dbg !12207, !alias.scope !11497, !noalias !11499, !noundef !1998
  %i.wc = load i64, ptr %i.wa, align 8, !dbg !12208, !alias.scope !11498, !noalias !11500, !noundef !1998
  %i.wd = icmp ult i64 %i.wb, %i.wc, !dbg !12207  ; 2 uses
  %i.we = select i1 %i.wd, i64 %i.uv, i64 %i.ve, !dbg !12209, !unpredictable !1998 ; 6 uses
  %i.wf = select i1 %i.wd, i64 %i.ve, i64 %i.uv, !dbg !12210, !unpredictable !1998 ; 6 uses
  store i64 %i.wf, ptr %i.po, align 8, !dbg !12210, !alias.scope !11428
  store i64 %i.we, ptr %i.qo, align 8, !dbg !12211, !alias.scope !11428
  %i.wg = icmp ult i64 %i.uc, %i.pq, !dbg !12212
  br i1 %i.wg, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i48, label %bb.ee, !dbg !12212

bb.ee:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i47
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.uc, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12212, !noalias !11428
  unreachable, !dbg !12212

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i48: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit109.i47
  %i.wh = icmp ult i64 %i.uu, %i.pq, !dbg !12213
  br i1 %i.wh, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i49, label %bb.ef, !dbg !12213

bb.ef:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i48
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.uu, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12213, !noalias !11428
  unreachable, !dbg !12213

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i49: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i113.i48
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.uc, !dbg !12214
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.uu, !dbg !12215
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11501), !dbg !12216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11502), !dbg !12216
  %i.wk = load i64, ptr %i.wi, align 8, !dbg !12217, !alias.scope !11501, !noalias !11503, !noundef !1998
  %i.wl = load i64, ptr %i.wj, align 8, !dbg !12218, !alias.scope !11502, !noalias !11504, !noundef !1998
  %i.wm = icmp ult i64 %i.wk, %i.wl, !dbg !12217  ; 2 uses
  %i.wn = select i1 %i.wm, i64 %i.uu, i64 %i.uc, !dbg !12219, !unpredictable !1998
  %i.wo = select i1 %i.wm, i64 %i.uc, i64 %i.uu, !dbg !12220, !unpredictable !1998 ; 6 uses
  store i64 %i.wo, ptr %i.sk, align 8, !dbg !12220, !alias.scope !11428
  store i64 %i.wn, ptr %i.qz, align 8, !dbg !12221, !alias.scope !11428
  %i.wp = icmp ult i64 %i.wf, %i.pq, !dbg !12222
  br i1 %i.wp, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i50, label %bb.eg, !dbg !12222

bb.eg:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i49
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.wf, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12222, !noalias !11428
  unreachable, !dbg !12222

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i50: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit114.i49
  %i.wq = icmp ult i64 %i.vw, %i.pq, !dbg !12223
  br i1 %i.wq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i51, label %bb.eh, !dbg !12223

bb.eh:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i50
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.vw, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12223, !noalias !11428
  unreachable, !dbg !12223

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i51: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i118.i50
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.wf, !dbg !12224
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.vw, !dbg !12225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11505), !dbg !12226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11506), !dbg !12226
  %i.wt = load i64, ptr %i.wr, align 8, !dbg !12227, !alias.scope !11505, !noalias !11507, !noundef !1998
  %i.wu = load i64, ptr %i.ws, align 8, !dbg !12228, !alias.scope !11506, !noalias !11508, !noundef !1998
  %i.wv = icmp ult i64 %i.wt, %i.wu, !dbg !12227  ; 2 uses
  %i.ww = select i1 %i.wv, i64 %i.vw, i64 %i.wf, !dbg !12229, !unpredictable !1998 ; 6 uses
  %i.wx = select i1 %i.wv, i64 %i.wf, i64 %i.vw, !dbg !12230, !unpredictable !1998 ; 6 uses
  store i64 %i.wx, ptr %i.qn, align 8, !dbg !12230, !alias.scope !11428
  store i64 %i.ww, ptr %i.po, align 8, !dbg !12231, !alias.scope !11428
  %i.wy = icmp ult i64 %i.we, %i.pq, !dbg !12232
  br i1 %i.wy, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i52, label %bb.ei, !dbg !12232

bb.ei:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i51
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.we, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12232, !noalias !11428
  unreachable, !dbg !12232

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i52: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit119.i51
  %i.wz = icmp ult i64 %i.vv, %i.pq, !dbg !12233
  br i1 %i.wz, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i53, label %bb.ej, !dbg !12233

bb.ej:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i52
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.vv, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12233, !noalias !11428
  unreachable, !dbg !12233

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i53: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i123.i52
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.we, !dbg !12234
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.vv, !dbg !12235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11509), !dbg !12236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11510), !dbg !12236
  %i.xc = load i64, ptr %i.xa, align 8, !dbg !12237, !alias.scope !11509, !noalias !11511, !noundef !1998
  %i.xd = load i64, ptr %i.xb, align 8, !dbg !12238, !alias.scope !11510, !noalias !11512, !noundef !1998
  %i.xe = icmp ult i64 %i.xc, %i.xd, !dbg !12237  ; 2 uses
  %i.xf = select i1 %i.xe, i64 %i.vv, i64 %i.we, !dbg !12239, !unpredictable !1998 ; 6 uses
  %i.xg = select i1 %i.xe, i64 %i.we, i64 %i.vv, !dbg !12240, !unpredictable !1998 ; 6 uses
  store i64 %i.xg, ptr %i.qy, align 8, !dbg !12240, !alias.scope !11428
  store i64 %i.xf, ptr %i.qo, align 8, !dbg !12241, !alias.scope !11428
  %i.xh = icmp ult i64 %i.vd, %i.pq, !dbg !12242
  br i1 %i.xh, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i54, label %bb.ek, !dbg !12242

bb.ek:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i53
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.vd, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12242, !noalias !11428
  unreachable, !dbg !12242

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i54: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit124.i53
  %i.xi = icmp ult i64 %i.wo, %i.pq, !dbg !12243
  br i1 %i.xi, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i55, label %bb.el, !dbg !12243

bb.el:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i54
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.wo, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12243, !noalias !11428
  unreachable, !dbg !12243

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i55: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i128.i54
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.vd, !dbg !12244
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.wo, !dbg !12245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11513), !dbg !12246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11514), !dbg !12246
  %i.xl = load i64, ptr %i.xj, align 8, !dbg !12247, !alias.scope !11513, !noalias !11515, !noundef !1998
  %i.xm = load i64, ptr %i.xk, align 8, !dbg !12248, !alias.scope !11514, !noalias !11516, !noundef !1998
  %i.xn = icmp ult i64 %i.xl, %i.xm, !dbg !12247  ; 2 uses
  %i.xo = select i1 %i.xn, i64 %i.wo, i64 %i.vd, !dbg !12249, !unpredictable !1998
  %i.xp = select i1 %i.xn, i64 %i.vd, i64 %i.wo, !dbg !12250, !unpredictable !1998 ; 6 uses
  store i64 %i.xp, ptr %i.sk, align 8, !dbg !12250, !alias.scope !11428
  store i64 %i.xo, ptr %i.qd, align 8, !dbg !12251, !alias.scope !11428
  %i.xq = icmp ult i64 %i.wx, %i.pq, !dbg !12252
  br i1 %i.xq, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i56, label %bb.em, !dbg !12252

bb.em:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i55
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.wx, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12252, !noalias !11428
  unreachable, !dbg !12252

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i56: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit129.i55
  %i.xr = icmp ult i64 %i.vm, %i.pq, !dbg !12253
  br i1 %i.xr, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i57, label %bb.en, !dbg !12253

bb.en:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i56
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.vm, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12253, !noalias !11428
  unreachable, !dbg !12253

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i57: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i133.i56
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.wx, !dbg !12254
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.vm, !dbg !12255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11517), !dbg !12256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11518), !dbg !12256
  %i.xu = load i64, ptr %i.xs, align 8, !dbg !12257, !alias.scope !11517, !noalias !11519, !noundef !1998
  %i.xv = load i64, ptr %i.xt, align 8, !dbg !12258, !alias.scope !11518, !noalias !11520, !noundef !1998
  %i.xw = icmp ult i64 %i.xu, %i.xv, !dbg !12257  ; 2 uses
  %i.xx = select i1 %i.xw, i64 %i.vm, i64 %i.wx, !dbg !12259, !unpredictable !1998
  %i.xy = select i1 %i.xw, i64 %i.wx, i64 %i.vm, !dbg !12260, !unpredictable !1998
  store i64 %i.xy, ptr %i.qc, align 8, !dbg !12260, !alias.scope !11428
  store i64 %i.xx, ptr %i.qn, align 8, !dbg !12261, !alias.scope !11428
  %i.xz = icmp ult i64 %i.xg, %i.pq, !dbg !12262
  br i1 %i.xz, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i58, label %bb.eo, !dbg !12262

bb.eo:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i57
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.xg, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12262, !noalias !11428
  unreachable, !dbg !12262

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i58: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit134.i57
  %i.ya = icmp ult i64 %i.ww, %i.pq, !dbg !12263
  br i1 %i.ya, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i59, label %bb.ep, !dbg !12263

bb.ep:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i58
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ww, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12263, !noalias !11428
  unreachable, !dbg !12263

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i59: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i138.i58
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.xg, !dbg !12264
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ww, !dbg !12265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11521), !dbg !12266
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11522), !dbg !12266
  %i.yd = load i64, ptr %i.yb, align 8, !dbg !12267, !alias.scope !11521, !noalias !11523, !noundef !1998
  %i.ye = load i64, ptr %i.yc, align 8, !dbg !12268, !alias.scope !11522, !noalias !11524, !noundef !1998
  %i.yf = icmp ult i64 %i.yd, %i.ye, !dbg !12267  ; 2 uses
  %i.yg = select i1 %i.yf, i64 %i.ww, i64 %i.xg, !dbg !12269, !unpredictable !1998
  %i.yh = select i1 %i.yf, i64 %i.xg, i64 %i.ww, !dbg !12270, !unpredictable !1998
  store i64 %i.yh, ptr %i.po, align 8, !dbg !12270, !alias.scope !11428
  store i64 %i.yg, ptr %i.qy, align 8, !dbg !12271, !alias.scope !11428
  %i.yi = icmp ult i64 %i.xp, %i.pq, !dbg !12272
  br i1 %i.yi, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i60, label %bb.eq, !dbg !12272

bb.eq:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i59
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.xp, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12272, !noalias !11428
  unreachable, !dbg !12272

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i60: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1V_.exit139.i59
  %i.yj = icmp ult i64 %i.xf, %i.pq, !dbg !12273
  br i1 %i.yj, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1W_.exit, label %bb.er, !dbg !12273

bb.er:                                            ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i60
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.xf, i64 noundef %i.pq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35, !dbg !12273, !noalias !11428
  unreachable, !dbg !12273

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1W_.exit: ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0Bb_.exit.i.i143.i60
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.xp, !dbg !12274
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.xf, !dbg !12275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11525), !dbg !12276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11526), !dbg !12276
  %i.ym = load i64, ptr %i.yk, align 8, !dbg !12277, !alias.scope !11525, !noalias !11527, !noundef !1998
  %i.yn = load i64, ptr %i.yl, align 8, !dbg !12278, !alias.scope !11526, !noalias !11528, !noundef !1998
  %i.yo = icmp ult i64 %i.ym, %i.yn, !dbg !12277  ; 2 uses
  %i.yp = select i1 %i.yo, i64 %i.xf, i64 %i.xp, !dbg !12279, !unpredictable !1998
  %i.yq = select i1 %i.yo, i64 %i.xp, i64 %i.xf, !dbg !12280, !unpredictable !1998
  store i64 %i.yq, ptr %i.qo, align 8, !dbg !12280, !alias.scope !11428
  store i64 %i.yp, ptr %i.sk, align 8, !dbg !12281, !alias.scope !11428
  br label %bb.es, !dbg !12282

bb.es:                                            ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1W_.exit, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1X_.exit
  %.sroa.01.0 = phi i64 [ 13, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1X_.exit ], [ 9, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB1W_.exit ], [ 1, %bb.f ], !dbg !12283
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB28_(ptr noalias noundef nonnull align 8 %.sroa.02.0, i64 noundef %.sroa.8.0, i64 noundef %.sroa.01.0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !12284
  br i1 %i.e, label %.sink.split, label %bb.et, !dbg !12285

bb.et:                                            ; preds = %bb.es
  %.not = icmp eq ptr %.sroa.02.0, %0, !dbg !12286
  br i1 %.not, label %bb.e, label %bb.eu, !dbg !12286

bb.eu:                                            ; preds = %bb.et
  call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergejNCINvMB8_Sj20sort_unstable_by_keyRjNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projections_0E0EB22_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr %.val15), !dbg !12287
  %i.yr = shl nuw nsw i64 %1, 3, !dbg !12288
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.yr, i1 false), !dbg !12288
  br label %.sink.split, !dbg !12289

.sink.split:                                      ; preds = %bb.es, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12290
  br label %bb.ev, !dbg !12289

bb.ev:                                            ; preds = %.sink.split, %bb.a
  ret void, !dbg !12289
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECs8774dFTUdNv_12polars_arrow(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12291 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 2, !dbg !12746
  br i1 %i.b, label %bb.q, label %bb.b, !dbg !12746

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32, !dbg !12747
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !12747

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12748
  %i.d = lshr i64 %1, 1, !dbg !12749              ; 4 uses
  %i.e = icmp samesign ult i64 %1, 18, !dbg !12750 ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d, !dbg !12751
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e, !dbg !12752

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !12753
  unreachable, !dbg !12753

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ], !dbg !12754 ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ], !dbg !12754 ; 31 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12, !dbg !12755
  br i1 %i.h, label %bb.g, label %bb.f, !dbg !12755

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8, !dbg !12756
  br i1 %i.i, label %bb.h, label %bb.i, !dbg !12756

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96, !dbg !12757 ; 2 uses
  %.val.i.i = load i64, ptr %i.j, align 8, !dbg !12758, !alias.scope !12686, !noalias !12687, !noundef !1998 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.02.0, align 8, !dbg !12758, !alias.scope !12688, !noalias !12689, !noundef !1998 ; 2 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %.val.i.i, i64 %.val1.i.i), !dbg !12759 ; 2 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %.val.i.i, i64 %.val1.i.i), !dbg !12760 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8, !dbg !12761 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80, !dbg !12762 ; 2 uses
  %.val.i1.i = load i64, ptr %i.n, align 8, !dbg !12763, !alias.scope !12690, !noalias !12691, !noundef !1998 ; 2 uses
  %.val1.i2.i = load i64, ptr %i.m, align 8, !dbg !12763, !alias.scope !12692, !noalias !12693, !noundef !1998 ; 2 uses
  %i.o = tail call i64 @llvm.umax.i64(i64 %.val.i1.i, i64 %.val1.i2.i), !dbg !12764 ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.val.i1.i, i64 %.val1.i2.i), !dbg !12765 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16, !dbg !12766 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 72, !dbg !12767 ; 2 uses
  %.val.i3.i = load i64, ptr %i.r, align 8, !dbg !12768, !alias.scope !12694, !noalias !12695, !noundef !1998 ; 2 uses
  %.val1.i4.i = load i64, ptr %i.q, align 8, !dbg !12768, !alias.scope !12696, !noalias !12697, !noundef !1998 ; 2 uses
  %i.s = tail call i64 @llvm.umax.i64(i64 %.val.i3.i, i64 %.val1.i4.i), !dbg !12769 ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %.val.i3.i, i64 %.val1.i4.i), !dbg !12770 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24, !dbg !12771 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56, !dbg !12772 ; 2 uses
  %.val.i5.i = load i64, ptr %i.v, align 8, !dbg !12773, !alias.scope !12698, !noalias !12699, !noundef !1998 ; 2 uses
  %.val1.i6.i = load i64, ptr %i.u, align 8, !dbg !12773, !alias.scope !12700, !noalias !12701, !noundef !1998 ; 2 uses
  %i.w = tail call i64 @llvm.umax.i64(i64 %.val.i5.i, i64 %.val1.i6.i), !dbg !12774 ; 2 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 %.val.i5.i, i64 %.val1.i6.i), !dbg !12775 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40, !dbg !12776 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 88, !dbg !12777 ; 2 uses
  %.val.i7.i = load i64, ptr %i.z, align 8, !dbg !12778, !alias.scope !12702, !noalias !12703, !noundef !1998 ; 2 uses
  %.val1.i8.i = load i64, ptr %i.y, align 8, !dbg !12778, !alias.scope !12704, !noalias !12705, !noundef !1998 ; 2 uses
  %i.aa = tail call i64 @llvm.umax.i64(i64 %.val.i7.i, i64 %.val1.i8.i), !dbg !12779 ; 2 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.val.i7.i, i64 %.val1.i8.i), !dbg !12780 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48, !dbg !12781 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64, !dbg !12782 ; 2 uses
  %.val.i9.i = load i64, ptr %i.ad, align 8, !dbg !12783, !alias.scope !12706, !noalias !12707, !noundef !1998 ; 2 uses
  %.val1.i10.i = load i64, ptr %i.ac, align 8, !dbg !12783, !alias.scope !12708, !noalias !12709, !noundef !1998 ; 2 uses
  %i.ae = tail call i64 @llvm.umax.i64(i64 %.val.i9.i, i64 %.val1.i10.i), !dbg !12784 ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.val.i9.i, i64 %.val1.i10.i), !dbg !12785 ; 2 uses
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.p), !dbg !12786 ; 2 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.p), !dbg !12787 ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.t), !dbg !12788 ; 2 uses
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.t), !dbg !12789 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32, !dbg !12790 ; 2 uses
  %.val1.i16.i = load i64, ptr %i.ak, align 8, !dbg !12791, !alias.scope !12710, !noalias !12711, !noundef !1998 ; 2 uses
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %.val1.i16.i), !dbg !12792 ; 2 uses
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val1.i16.i), !dbg !12793 ; 2 uses
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.w), !dbg !12794 ; 2 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.w), !dbg !12795 ; 2 uses
  %i.ap = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.ae), !dbg !12796 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ae), !dbg !12797 ; 2 uses
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.l), !dbg !12798 ; 2 uses
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.l), !dbg !12799 ; 2 uses
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ah), !dbg !12800 ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ah), !dbg !12801 ; 2 uses
  %i.av = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ai), !dbg !12802 ; 2 uses
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai), !dbg !12803 ; 2 uses
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ao), !dbg !12804 ; 2 uses
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ao), !dbg !12805 ; 2 uses
  %i.az = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.an), !dbg !12806 ; 2 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.an), !dbg !12807 ; 2 uses
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.al), !dbg !12808 ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.al), !dbg !12809 ; 2 uses
  %i.bd = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ar), !dbg !12810 ; 2 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ar), !dbg !12811 ; 2 uses
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ab), !dbg !12812 ; 2 uses
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ab), !dbg !12813 ; 2 uses
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.ax), !dbg !12814 ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ax), !dbg !12815 ; 2 uses
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.az), !dbg !12816
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.az), !dbg !12817 ; 2 uses
  store i64 %i.bj, ptr %i.j, align 8, !dbg !12818, !alias.scope !12712
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.as), !dbg !12819 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.as), !dbg !12820 ; 2 uses
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.aw), !dbg !12821 ; 2 uses
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.aw), !dbg !12822 ; 2 uses
  %i.bp = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.be), !dbg !12823 ; 2 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.be), !dbg !12824 ; 2 uses
  %i.br = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bd), !dbg !12825 ; 2 uses
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bd), !dbg !12826 ; 2 uses
  %i.bt = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bf), !dbg !12827 ; 2 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bf), !dbg !12828 ; 2 uses
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.bm), !dbg !12829 ; 2 uses
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.bm), !dbg !12830
  store i64 %i.bw, ptr %.sroa.02.0, align 8, !dbg !12831, !alias.scope !12712
  %i.bx = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.at), !dbg !12832 ; 2 uses
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.at), !dbg !12833 ; 2 uses
  %i.bz = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bs), !dbg !12834 ; 2 uses
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bs), !dbg !12835 ; 2 uses
  %i.cb = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bp), !dbg !12836 ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bp), !dbg !12837 ; 2 uses
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %i.bt), !dbg !12838
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bt), !dbg !12839 ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !dbg !12840, !alias.scope !12712
  %i.cf = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bv), !dbg !12841 ; 2 uses
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bv), !dbg !12842 ; 2 uses
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.by), !dbg !12843 ; 2 uses
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.by), !dbg !12844 ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bx), !dbg !12845 ; 2 uses
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bx), !dbg !12846 ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.bz), !dbg !12847
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.bz), !dbg !12848 ; 2 uses
  store i64 %i.cl, ptr %i.n, align 8, !dbg !12849, !alias.scope !12712
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cg), !dbg !12850 ; 2 uses
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg), !dbg !12851
  store i64 %i.co, ptr %i.m, align 8, !dbg !12852, !alias.scope !12712
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.cf), !dbg !12853 ; 2 uses
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cf), !dbg !12854 ; 2 uses
  %i.cr = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.ck), !dbg !12855 ; 2 uses
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ck), !dbg !12856 ; 2 uses
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.cj), !dbg !12857 ; 2 uses
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cj), !dbg !12858 ; 2 uses
  %i.cv = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cn), !dbg !12859 ; 2 uses
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cn), !dbg !12860
  store i64 %i.cw, ptr %i.q, align 8, !dbg !12861, !alias.scope !12712
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cp), !dbg !12862 ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cp), !dbg !12863 ; 2 uses
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cu), !dbg !12864
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cu), !dbg !12865 ; 2 uses
  store i64 %i.cz, ptr %i.v, align 8, !dbg !12866, !alias.scope !12712
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.ct), !dbg !12867
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.ct), !dbg !12868
  store i64 %i.dc, ptr %i.ad, align 8, !dbg !12869, !alias.scope !12712
  store i64 %i.db, ptr %i.r, align 8, !dbg !12870, !alias.scope !12712
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.cv), !dbg !12871
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cv), !dbg !12872
  store i64 %i.de, ptr %i.u, align 8, !dbg !12873, !alias.scope !12712
  store i64 %i.dd, ptr %i.ak, align 8, !dbg !12874, !alias.scope !12712
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cx), !dbg !12875
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx), !dbg !12876
  store i64 %i.dg, ptr %i.y, align 8, !dbg !12877, !alias.scope !12712
  store i64 %i.df, ptr %i.ac, align 8, !dbg !12878, !alias.scope !12712
  br label %bb.i, !dbg !12879

bb.h:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24, !dbg !12880 ; 2 uses
  %.val.i.i14 = load i64, ptr %i.dh, align 8, !dbg !12881, !alias.scope !12713, !noalias !12714, !noundef !1998 ; 2 uses
  %.val1.i.i15 = load i64, ptr %.sroa.02.0, align 8, !dbg !12881, !alias.scope !12715, !noalias !12716, !noundef !1998 ; 2 uses
  %i.di = tail call i64 @llvm.umax.i64(i64 %.val.i.i14, i64 %.val1.i.i15), !dbg !12882 ; 2 uses
  %i.dj = tail call i64 @llvm.umin.i64(i64 %.val.i.i14, i64 %.val1.i.i15), !dbg !12883 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8, !dbg !12884 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56, !dbg !12885 ; 2 uses
end_hunk_1
