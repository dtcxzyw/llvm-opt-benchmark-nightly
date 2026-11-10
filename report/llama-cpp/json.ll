Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/json?download=true
inline.NumInlined: 5428
inline.NumDeleted: 1959
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE12scan_commentEv:bb.a
  switch i32 %i.k, label %.backedge.backedge [
    i32 -1, label %.loopexit.sink.split
    i32 0, label %.loopexit.sink.split
    i32 42, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.l = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %cond = icmp eq i32 %i.l, 47
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !241
  %i.m = load i64, ptr %i.c, align 8, !tbaa !245
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.c, align 8, !tbaa !245
  %i.o = load i64, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.e, align 8, !tbaa !247  ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !tbaa !247
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = add i64 %i.o, -1
  store i64 %i.s, ptr %i.d, align 8, !tbaa !246
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.t = load i32, ptr %i.f, align 4, !tbaa !240
  %.not2.i = icmp eq i32 %i.t, -1
  br i1 %.not2.i, label %.backedge.backedge, label %bb.h, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 8421, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.59) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1
  store ptr %i.x, ptr %i.h, align 8, !tbaa !248
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.j, %bb.g, %.backedge
  br label %.backedge, !llvm.loop !920

.loopexit.sink.split:                             ; preds = %.backedge, %.backedge, %bb.a
  %.str.61.sink = phi ptr [ @.str.61, %bb.a ], [ @.str.60, %.backedge ], [ @.str.60, %.backedge ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.61.sink, ptr %i.y, align 8, !tbaa !242
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.loopexit.sink.split
  %.0 = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !240
  %i.j = icmp eq i32 %i.i, 34
  br i1 %i.j, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 40 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 7283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.63) #34
  unreachable

bb.c:                                             ; preds = %.backedge, %.preheader
  %i.v = load <2 x i64>, ptr %i.k, align 8, !tbaa !62
  %i.w = add <2 x i64> %i.v, splat (i64 1)
  store <2 x i64> %i.w, ptr %i.k, align 8, !tbaa !62
  %i.x = load i8, ptr %i.m, align 8, !tbaa !241, !range !65, !noundef !66
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.m, align 8, !tbaa !241
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !240
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !72     ; 3 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, label %bb.f, !prof !54

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !43
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ad, ptr %0, align 8, !tbaa !249
  br label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.ac, %bb.f ], [ -1, %bb.e ] ; 2 uses
  store i32 %.0.i.i, ptr %i.h, align 4, !tbaa !240
  br label %bb.g

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, %bb.d
  %i.ae = phi i32 [ %.0.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq i32 %i.ae, -1
  br i1 %.not.i, label %.thread112.sink.split, label %bb.h, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.af = trunc i32 %i.ae to i8                   ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !248 ; 3 uses
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !111
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !43
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !248
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !248
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !110 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 8 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775807
  br i1 %i.ao, label %bb.k, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #34
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ap = add i64 %.sroa.speculated.i.i.i.i.i, %i.an ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  %i.as = select i1 %i.aq, i64 9223372036854775807, i64 %i.ar ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #32 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store i8 %i.af, ptr %i.au, align 1, !tbaa !43
  %i.av = icmp sgt i64 %i.an, 0
  br i1 %i.av, label %bb.l, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.at, ptr %i.o, align 8, !tbaa !110
  store ptr %i.aw, ptr %i.p, align 8, !tbaa !248
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.ax, ptr %i.q, align 8, !tbaa !111
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.i
  %.pr.i = load i32, ptr %i.h, align 4, !tbaa !240 ; 3 uses
  %1 = icmp eq i32 %.pr.i, 10
  br i1 %1, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit.thread95, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit.thread95: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !247
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !247
  store i64 0, ptr %i.l, align 8, !tbaa !246
  br label %.thread112.sink.split

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  switch i32 %.pr.i, label %bb.cg [
    i32 -1, label %.thread112.sink.split.loopexit
    i32 34, label %.thread112
    i32 92, label %bb.n
    i32 0, label %.thread112.sink.split.loopexit165
    i32 1, label %.thread112.sink.split
    i32 2, label %bb.au
    i32 3, label %bb.av
    i32 4, label %bb.aw
    i32 5, label %bb.ax
    i32 6, label %bb.ay
    i32 7, label %bb.az
    i32 8, label %bb.ba
    i32 9, label %bb.bb
    i32 244, label %bb.cf
    i32 11, label %bb.bc
    i32 12, label %bb.bd
    i32 13, label %bb.be
    i32 14, label %bb.bf
    i32 15, label %bb.bg
    i32 16, label %bb.bh
    i32 17, label %bb.bi
    i32 18, label %bb.bj
    i32 19, label %bb.bk
    i32 20, label %bb.bl
    i32 21, label %bb.bm
    i32 22, label %bb.bn
    i32 23, label %bb.bo
    i32 24, label %bb.bp
    i32 25, label %bb.bq
    i32 26, label %bb.br
    i32 27, label %bb.bs
    i32 28, label %bb.bt
    i32 29, label %bb.bu
    i32 30, label %bb.bv
    i32 31, label %bb.bw
    i32 32, label %bb.bx
    i32 33, label %bb.bx
    i32 35, label %bb.bx
    i32 36, label %bb.bx
    i32 37, label %bb.bx
    i32 38, label %bb.bx
    i32 39, label %bb.bx
    i32 40, label %bb.bx
    i32 41, label %bb.bx
    i32 42, label %bb.bx
    i32 43, label %bb.bx
    i32 44, label %bb.bx
    i32 45, label %bb.bx
    i32 46, label %bb.bx
    i32 47, label %bb.bx
    i32 48, label %bb.bx
    i32 49, label %bb.bx
    i32 50, label %bb.bx
    i32 51, label %bb.bx
    i32 52, label %bb.bx
    i32 53, label %bb.bx
    i32 54, label %bb.bx
    i32 55, label %bb.bx
    i32 56, label %bb.bx
    i32 57, label %bb.bx
    i32 58, label %bb.bx
    i32 59, label %bb.bx
    i32 60, label %bb.bx
    i32 61, label %bb.bx
    i32 62, label %bb.bx
    i32 63, label %bb.bx
    i32 64, label %bb.bx
    i32 65, label %bb.bx
    i32 66, label %bb.bx
    i32 67, label %bb.bx
    i32 68, label %bb.bx
    i32 69, label %bb.bx
    i32 70, label %bb.bx
    i32 71, label %bb.bx
    i32 72, label %bb.bx
    i32 73, label %bb.bx
    i32 74, label %bb.bx
    i32 75, label %bb.bx
    i32 76, label %bb.bx
    i32 77, label %bb.bx
    i32 78, label %bb.bx
    i32 79, label %bb.bx
    i32 80, label %bb.bx
    i32 81, label %bb.bx
    i32 82, label %bb.bx
    i32 83, label %bb.bx
    i32 84, label %bb.bx
    i32 85, label %bb.bx
    i32 86, label %bb.bx
    i32 87, label %bb.bx
    i32 88, label %bb.bx
    i32 89, label %bb.bx
    i32 90, label %bb.bx
    i32 91, label %bb.bx
    i32 93, label %bb.bx
    i32 94, label %bb.bx
    i32 95, label %bb.bx
    i32 96, label %bb.bx
    i32 97, label %bb.bx
    i32 98, label %bb.bx
    i32 99, label %bb.bx
    i32 100, label %bb.bx
    i32 101, label %bb.bx
    i32 102, label %bb.bx
    i32 103, label %bb.bx
    i32 104, label %bb.bx
    i32 105, label %bb.bx
    i32 106, label %bb.bx
    i32 107, label %bb.bx
    i32 108, label %bb.bx
    i32 109, label %bb.bx
    i32 110, label %bb.bx
    i32 111, label %bb.bx
    i32 112, label %bb.bx
    i32 113, label %bb.bx
    i32 114, label %bb.bx
    i32 115, label %bb.bx
    i32 116, label %bb.bx
    i32 117, label %bb.bx
    i32 118, label %bb.bx
    i32 119, label %bb.bx
    i32 120, label %bb.bx
    i32 121, label %bb.bx
    i32 122, label %bb.bx
    i32 123, label %bb.bx
    i32 124, label %bb.bx
    i32 125, label %bb.bx
    i32 126, label %bb.bx
    i32 127, label %bb.bx
    i32 194, label %bb.bz
    i32 195, label %bb.bz
    i32 196, label %bb.bz
    i32 197, label %bb.bz
    i32 198, label %bb.bz
    i32 199, label %bb.bz
    i32 200, label %bb.bz
    i32 201, label %bb.bz
    i32 202, label %bb.bz
    i32 203, label %bb.bz
    i32 204, label %bb.bz
    i32 205, label %bb.bz
    i32 206, label %bb.bz
    i32 207, label %bb.bz
    i32 208, label %bb.bz
    i32 209, label %bb.bz
    i32 210, label %bb.bz
    i32 211, label %bb.bz
    i32 212, label %bb.bz
    i32 213, label %bb.bz
    i32 214, label %bb.bz
    i32 215, label %bb.bz
    i32 216, label %bb.bz
    i32 217, label %bb.bz
    i32 218, label %bb.bz
    i32 219, label %bb.bz
    i32 220, label %bb.bz
    i32 221, label %bb.bz
    i32 222, label %bb.bz
    i32 223, label %bb.bz
    i32 224, label %bb.ca
    i32 225, label %bb.cb
    i32 226, label %bb.cb
    i32 227, label %bb.cb
    i32 228, label %bb.cb
    i32 229, label %bb.cb
    i32 230, label %bb.cb
    i32 231, label %bb.cb
    i32 232, label %bb.cb
    i32 233, label %bb.cb
    i32 234, label %bb.cb
    i32 235, label %bb.cb
    i32 236, label %bb.cb
    i32 238, label %bb.cb
    i32 239, label %bb.cb
    i32 237, label %bb.cc
    i32 240, label %bb.cd
    i32 241, label %bb.ce
    i32 242, label %bb.ce
    i32 243, label %bb.ce
  ]

bb.n:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  %i.bb = call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.bb, label %.thread112.sink.split [
    i32 34, label %bb.o
    i32 92, label %bb.q
    i32 47, label %bb.s
    i32 98, label %bb.u
    i32 102, label %bb.w
    i32 110, label %bb.y
    i32 114, label %bb.aa
    i32 116, label %bb.ac
    i32 117, label %bb.ae
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.u
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.o
  %i.bg = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.bh = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.p, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.p
  %i.bk = phi ptr [ %.pre.i.i, %bb.p ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 34, ptr %i.bl, align 1, !tbaa !43
  store i64 %i.bd, ptr %i.t, align 8, !tbaa !45
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !43
  br label %.backedge

bb.q:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.u
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53: ; preds = %bb.q
  %i.bs = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.q
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53 ]
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.r, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit54

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i52 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit54

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51, %bb.r
  %i.bw = phi ptr [ %.pre.i.i52, %bb.r ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i8 92, ptr %i.bx, align 1, !tbaa !43
  store i64 %i.bp, ptr %i.t, align 8, !tbaa !45
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store i8 0, ptr %i.bz, align 1, !tbaa !43
  br label %.backedge

bb.s:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.u
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i58: ; preds = %bb.s
  %i.ce = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.ce)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %bb.s
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i58
  %i.cg = phi i64 [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i58 ]
  %i.ch = icmp ugt i64 %i.cb, %i.cg
  br i1 %i.ch, label %bb.t, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit59

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.ca, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i57 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit59

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56, %bb.t
  %i.ci = phi ptr [ %.pre.i.i57, %bb.t ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i56 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  store i8 47, ptr %i.cj, align 1, !tbaa !43
  store i64 %i.cb, ptr %i.t, align 8, !tbaa !45
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cb
  store i8 0, ptr %i.cl, align 1, !tbaa !43
  br label %.backedge

bb.u:                                             ; preds = %bb.n
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.cn = add i64 %i.cm, 1                        ; 3 uses
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.u
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63: ; preds = %bb.u
  %i.cq = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.u
  %i.cr = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63 ]
  %i.ct = icmp ugt i64 %i.cn, %i.cs
  br i1 %i.ct, label %bb.v, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit64

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.cm, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i62 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit64

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61, %bb.v
  %i.cu = phi ptr [ %.pre.i.i62, %bb.v ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store i8 8, ptr %i.cv, align 1, !tbaa !43
  store i64 %i.cn, ptr %i.t, align 8, !tbaa !45
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cn
  store i8 0, ptr %i.cx, align 1, !tbaa !43
  br label %.backedge

bb.w:                                             ; preds = %bb.n
  %i.cy = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.cz = add i64 %i.cy, 1                        ; 3 uses
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.u
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68: ; preds = %bb.w
  %i.dc = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.w
  %i.dd = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68 ]
  %i.df = icmp ugt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.x, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit69

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.cy, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i67 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit69

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66, %bb.x
  %i.dg = phi ptr [ %.pre.i.i67, %bb.x ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 12, ptr %i.dh, align 1, !tbaa !43
  store i64 %i.cz, ptr %i.t, align 8, !tbaa !45
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cz
  store i8 0, ptr %i.dj, align 1, !tbaa !43
  br label %.backedge

bb.y:                                             ; preds = %bb.n
  %i.dk = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.u
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11scan_stringEv:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.aa
  %i.eb = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i78
  %i.ec = phi i64 [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i78 ]
  %i.ed = icmp ugt i64 %i.dx, %i.ec
  br i1 %i.ed, label %bb.ab, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit79

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dw, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i77 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit79

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76, %bb.ab
  %i.ee = phi ptr [ %.pre.i.i77, %bb.ab ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i76 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  store i8 13, ptr %i.ef, align 1, !tbaa !43
  store i64 %i.dx, ptr %i.t, align 8, !tbaa !45
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx
  store i8 0, ptr %i.eh, align 1, !tbaa !43
  br label %.backedge

bb.ac:                                            ; preds = %bb.n
  %i.ei = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.u
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i83: ; preds = %bb.ac
  %i.em = icmp ult i64 %i.ei, 16
  call void @llvm.assume(i1 %i.em)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80: ; preds = %bb.ac
  %i.en = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i83
  %i.eo = phi i64 [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i83 ]
  %i.ep = icmp ugt i64 %i.ej, %i.eo
  br i1 %i.ep, label %bb.ad, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit84

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.ei, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i82 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit84

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81, %bb.ad
  %i.eq = phi ptr [ %.pre.i.i82, %bb.ad ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i81 ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei
  store i8 9, ptr %i.er, align 1, !tbaa !43
  store i64 %i.ej, ptr %i.t, align 8, !tbaa !45
  %i.es = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ej
  store i8 0, ptr %i.et, align 1, !tbaa !43
  br label %.backedge

bb.ae:                                            ; preds = %bb.n
  %i.eu = call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(160) %0) ; 14 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %.thread112.sink.split, label %bb.af, !prof !54

bb.af:                                            ; preds = %bb.ae
  %i.ew = and i32 %i.eu, -1024
  switch i32 %i.ew, label %bb.ak [
    i32 55296, label %bb.ag
    i32 56320, label %.thread112.sink.split
  ], !prof !922

bb.ag:                                            ; preds = %bb.af
  %i.ex = call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ey = icmp eq i32 %i.ex, 92
  br i1 %i.ey, label %bb.ah, label %.thread112.sink.split, !prof !166

bb.ah:                                            ; preds = %bb.ag
  %i.ez = call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.fa = icmp eq i32 %i.ez, 117
  br i1 %i.fa, label %bb.ai, label %.thread112.sink.split, !prof !166

bb.ai:                                            ; preds = %bb.ah
  %i.fb = call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(160) %0) ; 3 uses
  %i.fc = icmp eq i32 %i.fb, -1
  br i1 %i.fc, label %.thread112.sink.split, label %bb.aj, !prof !54

bb.aj:                                            ; preds = %bb.ai
  %i.fd = and i32 %i.fb, -1024
  %i.fe = icmp eq i32 %i.fd, 56320
  br i1 %i.fe, label %.thread108, label %.thread112.sink.split, !prof !166

.thread108:                                       ; preds = %bb.aj
  %i.ff = shl nuw nsw i32 %i.eu, 10
  %i.fg = add nsw i32 %i.ff, -56613888
  %i.fh = add nsw i32 %i.fg, %i.fb
  br label %bb.at

bb.ak:                                            ; preds = %bb.af
  %or.cond3 = icmp ult i32 %i.eu, 1114112
  br i1 %or.cond3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 7403, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #34
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fi = icmp samesign ult i32 %i.eu, 128
  br i1 %i.fi, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fj = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.fk = add i64 %i.fj, 1                        ; 3 uses
  %i.fl = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.u
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88: ; preds = %bb.an
  %i.fn = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.an
  %i.fo = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88
  %i.fp = phi i64 [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88 ]
  %i.fq = icmp ugt i64 %i.fk, %i.fp
  br i1 %i.fq, label %bb.ao, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit89

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.fj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i87 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit89

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit89: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86, %bb.ao
  %i.fr = phi ptr [ %.pre.i.i87, %bb.ao ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86 ]
  %i.fs = trunc nuw nsw i32 %i.eu to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fj
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !43
  store i64 %i.fk, ptr %i.t, align 8, !tbaa !45
  %i.fu = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fk
  store i8 0, ptr %i.fv, align 1, !tbaa !43
  br label %.backedge

bb.ap:                                            ; preds = %bb.am
  %i.fw = icmp samesign ult i32 %i.eu, 2048
  br i1 %i.fw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fx = lshr i32 %i.eu, 6
  %i.fy = or disjoint i32 %i.fx, 192
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.fy)
  %i.fz = and i32 %i.eu, 63
  %i.ga = or disjoint i32 %i.fz, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.ga)
  br label %.backedge

.backedge:                                        ; preds = %bb.aq, %bb.at, %bb.as, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit89, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit54, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit59, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit64, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit69, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit74, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit79, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit84, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit94
  br label %bb.c, !llvm.loop !921

bb.ar:                                            ; preds = %bb.ap
  %i.gb = icmp samesign ult i32 %i.eu, 65536
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = lshr i32 %i.eu, 12
  %i.gd = or disjoint i32 %i.gc, 224
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gd)
  %i.ge = lshr i32 %i.eu, 6
  %i.gf = and i32 %i.ge, 63
  %i.gg = or disjoint i32 %i.gf, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gg)
  %i.gh = and i32 %i.eu, 63
  %i.gi = or disjoint i32 %i.gh, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gi)
  br label %.backedge

bb.at:                                            ; preds = %.thread108, %bb.ar
  %.145101104107110 = phi i32 [ %i.fh, %.thread108 ], [ %i.eu, %bb.ar ] ; 4 uses
  %i.gj = lshr i32 %.145101104107110, 18
  %i.gk = or disjoint i32 %i.gj, 240
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gk)
  %i.gl = lshr i32 %.145101104107110, 12
  %i.gm = and i32 %i.gl, 63
  %i.gn = or disjoint i32 %i.gm, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gn)
  %i.go = lshr i32 %.145101104107110, 6
  %i.gp = and i32 %i.go, 63
  %i.gq = or disjoint i32 %i.gp, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gq)
  %i.gr = and i32 %.145101104107110, 63
  %i.gs = or disjoint i32 %i.gr, 128
  call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.gs)
  br label %.backedge

bb.au:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.av:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.aw:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.ax:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.ay:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.az:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.ba:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bb:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bc:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bd:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.be:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bf:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bg:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bh:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bi:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bj:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bk:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bl:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bm:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bn:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bo:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bp:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bq:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.br:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bs:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bt:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bu:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bv:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bw:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

bb.bx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  %i.gt = load i64, ptr %i.t, align 8, !tbaa !45  ; 4 uses
  %i.gu = add i64 %i.gt, 1                        ; 3 uses
  %i.gv = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.u
  br i1 %i.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i93: ; preds = %bb.bx
  %i.gx = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90: ; preds = %bb.bx
  %i.gy = load i64, ptr %i.u, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i93
  %i.gz = phi i64 [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i93 ]
  %i.ha = icmp ugt i64 %i.gu, %i.gz
  br i1 %i.ha, label %bb.by, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit94

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.gt, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i92 = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit94

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91, %bb.by
  %i.hb = phi ptr [ %.pre.i.i92, %bb.by ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i91 ]
  %i.hc = trunc nuw nsw i32 %.pr.i to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gt
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !43
  store i64 %i.gu, ptr %i.t, align 8, !tbaa !45
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gu
  store i8 0, ptr %i.hf, align 1, !tbaa !43
  br label %.backedge

bb.bz:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 128, ptr %i.a, align 4, !tbaa !53
  store i32 191, ptr %i.r, align 4, !tbaa !53
  %i.hg = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.hg, label %.backedge, label %.thread112, !prof !166

bb.ca:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store <4 x i32> <i32 160, i32 191, i32 128, i32 191>, ptr %i.b, align 16, !tbaa !53
  %i.hh = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br i1 %i.hh, label %.backedge, label %.thread112, !prof !166

bb.cb:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store <4 x i32> <i32 128, i32 191, i32 128, i32 191>, ptr %i.c, align 16, !tbaa !53
  %i.hi = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.c, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.hi, label %.backedge, label %.thread112, !prof !166

bb.cc:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store <4 x i32> <i32 128, i32 159, i32 128, i32 191>, ptr %i.d, align 16, !tbaa !53
  %i.hj = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.d, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br i1 %i.hj, label %.backedge, label %.thread112, !prof !166

bb.cd:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) @constinit, i64 24, i1 false), !tbaa.struct !923
  %i.hk = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.e, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br i1 %i.hk, label %.backedge, label %.thread112, !prof !166

bb.ce:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) @constinit.102, i64 24, i1 false), !tbaa.struct !923
  %i.hl = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.f, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br i1 %i.hl, label %.backedge, label %.thread112, !prof !166

bb.cf:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(24) @constinit.103, i64 24, i1 false), !tbaa.struct !923
  %i.hm = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.g, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br i1 %i.hm, label %.backedge, label %.thread112, !prof !166

bb.cg:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

.thread112.sink.split.loopexit:                   ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

.thread112.sink.split.loopexit165:                ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit
  br label %.thread112.sink.split

.thread112.sink.split:                            ; preds = %bb.n, %bb.af, %bb.ah, %bb.ag, %bb.aj, %bb.ai, %bb.ae, %bb.g, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %.thread112.sink.split.loopexit165, %.thread112.sink.split.loopexit, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit.thread95, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.cg
  %.str.66.sink = phi ptr [ @.str.74, %bb.aw ], [ @.str.73, %bb.av ], [ @.str.72, %bb.au ], [ @.str.71, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit ], [ @.str.64, %.thread112.sink.split.loopexit ], [ @.str.104, %bb.cg ], [ @.str.101, %bb.bw ], [ @.str.100, %bb.bv ], [ @.str.99, %bb.bu ], [ @.str.98, %bb.bt ], [ @.str.97, %bb.bs ], [ @.str.96, %bb.br ], [ @.str.95, %bb.bq ], [ @.str.94, %bb.bp ], [ @.str.93, %bb.bo ], [ @.str.92, %bb.bn ], [ @.str.91, %bb.bm ], [ @.str.90, %bb.bl ], [ @.str.89, %bb.bk ], [ @.str.88, %bb.bj ], [ @.str.87, %bb.bi ], [ @.str.86, %bb.bh ], [ @.str.85, %bb.bg ], [ @.str.84, %bb.bf ], [ @.str.83, %bb.be ], [ @.str.82, %bb.bd ], [ @.str.81, %bb.bc ], [ @.str.80, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit.thread95 ], [ @.str.79, %bb.bb ], [ @.str.78, %bb.ba ], [ @.str.77, %bb.az ], [ @.str.76, %bb.ay ], [ @.str.75, %bb.ax ], [ @.str.65, %bb.ai ], [ @.str.65, %bb.ae ], [ @.str.66, %bb.aj ], [ @.str.66, %bb.ah ], [ @.str.67, %bb.af ], [ @.str.64, %bb.g ], [ @.str.66, %bb.ag ], [ @.str.69, %bb.n ], [ @.str.70, %.thread112.sink.split.loopexit165 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.66.sink, ptr %i.hn, align 8, !tbaa !242
  br label %.thread112

.thread112:                                       ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit, %.thread112.sink.split
  %.5 = phi i32 [ 14, %.thread112.sink.split ], [ 14, %bb.cd ], [ 14, %bb.cc ], [ 14, %bb.cb ], [ 14, %bb.ca ], [ 14, %bb.bz ], [ 4, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv.exit ], [ 14, %bb.cf ], [ 14, %bb.ce ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240  ; 2 uses
  switch i32 %i.c, label %bb.h [
    i32 45, label %bb.b
    i32 48, label %bb.d
    i32 49, label %bb.f
    i32 50, label %bb.f
    i32 51, label %bb.f
    i32 52, label %bb.f
    i32 53, label %bb.f
    i32 54, label %bb.f
    i32 55, label %bb.f
    i32 56, label %bb.f
    i32 57, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 45, ptr %i.p, align 1, !tbaa !43
  store i64 %i.g, ptr %i.e, align 8, !tbaa !45
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !43
  %i.s = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.s, label %bb.l [
    i32 48, label %bb.i
    i32 49, label %bb.j
    i32 50, label %bb.j
    i32 51, label %bb.j
    i32 52, label %bb.j
    i32 53, label %bb.j
    i32 54, label %bb.j
    i32 55, label %bb.j
    i32 56, label %bb.j
    i32 57, label %bb.j
  ]

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45   ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27: ; preds = %bb.d
  %i.aa = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.d
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27 ]
  %i.ad = icmp ugt i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit28

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i26 = load ptr, ptr %i.t, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit28

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25, %bb.e
  %i.ae = phi ptr [ %.pre.i.i26, %bb.e ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i8 48, ptr %i.af, align 1, !tbaa !43
  store i64 %i.w, ptr %i.u, align 8, !tbaa !45
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.w
  store i8 0, ptr %i.ah, align 1, !tbaa !43
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45 ; 4 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.f
  %i.ap = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.f
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.as = icmp ugt i64 %i.al, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit33

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.ak, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.ai, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit33

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.g
  %i.at = phi ptr [ %.pre.i.i31, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.au = trunc nuw nsw i32 %i.c to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  store i8 %i.au, ptr %i.av, align 1, !tbaa !43
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !45
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.al
  store i8 0, ptr %i.ax, align 1, !tbaa !43
  br label %.preheader101

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 8032, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108) #34
  unreachable

bb.i:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !240
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !240
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !45  ; 4 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.i
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.be = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.ba, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.d, align 8, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit38

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bi = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bj = trunc i32 %i.az to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !43
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !45
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bb
  store i8 0, ptr %i.bm, align 1, !tbaa !43
  br label %.preheader101
end_hunk_1
