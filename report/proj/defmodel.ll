Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE12scan_commentEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.backedge

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.h = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %switch.tableidx = add i32 %i.h, 1              ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 18435, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.backedge:                                        ; preds = %.backedge.backedge, %.preheader2
  %i.j = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.j, label %.backedge.backedge [
    i32 -1, label %.loopexit.sink.split
    i32 0, label %.loopexit.sink.split
    i32 42, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %cond = icmp eq i32 %i.k, 47
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !254
  %i.l = load i64, ptr %i.c, align 8, !tbaa !257
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !257
  %i.n = load i64, ptr %i.d, align 8, !tbaa !258  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.e, align 8, !tbaa !259
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = add i64 %i.n, -1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !258
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.s = load i32, ptr %i.f, align 4, !tbaa !253
  %.not2.i = icmp eq i32 %i.s, -1
  br i1 %.not2.i, label %.backedge.backedge, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !260
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.g, %.backedge
  br label %.backedge, !llvm.loop !632

.loopexit.sink.split:                             ; preds = %.backedge, %.backedge, %bb.a
  %.str.157.sink = phi ptr [ @.str.157, %bb.a ], [ @.str.156, %.backedge ], [ @.str.156, %.backedge ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.157.sink, ptr %i.v, align 8, !tbaa !255
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.loopexit.sink.split
  %.0 = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 40 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load <2 x i64>, ptr %i.h, align 8, !tbaa !28
  %i.u = add <2 x i64> %i.t, splat (i64 1)
  store <2 x i64> %i.u, ptr %i.h, align 8, !tbaa !28
  %i.v = load i8, ptr %i.j, align 8, !tbaa !254, !range !90, !noundef !91
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 8, !tbaa !254
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !253
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !94     ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.x, align 1, !tbaa !29
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !261
  br label %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i

_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.e ], [ -1, %bb.d ] ; 2 uses
  store i32 %.0.i.i, ptr %i.k, align 4, !tbaa !253
  br label %bb.f

bb.f:                                             ; preds = %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, %bb.c
  %i.ac = phi i32 [ %.0.i.i, %_ZN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %i.ac, -1
  br i1 %.not.i, label %.thread104.sink.split, label %bb.g, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !260 ; 3 uses
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !29
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !260
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !260
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !76  ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775807
  br i1 %i.am, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.149) #36
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.an = add i64 %.sroa.speculated.i.i.i.i.i, %i.al ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #39 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al ; 2 uses
  store i8 %i.ad, ptr %i.as, align 1, !tbaa !29
  %i.at = icmp sgt i64 %i.al, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ax) #38
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !76
  store ptr %i.au, ptr %i.n, align 8, !tbaa !260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !77
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.h
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !253 ; 2 uses
  switch i32 %.pr.i, label %bb.cd [
    i32 10, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91
    i32 -1, label %.thread104.sink.split.loopexit
    i32 34, label %.thread104
    i32 92, label %bb.m
    i32 0, label %.thread104.sink.split.loopexit156
    i32 1, label %.thread104.sink.split
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
    i32 7, label %bb.aw
    i32 8, label %bb.ax
    i32 9, label %bb.ay
    i32 244, label %bb.cc
    i32 11, label %bb.az
    i32 12, label %bb.ba
    i32 13, label %bb.bb
    i32 14, label %bb.bc
    i32 15, label %bb.bd
    i32 16, label %bb.be
    i32 17, label %bb.bf
    i32 18, label %bb.bg
    i32 19, label %bb.bh
    i32 20, label %bb.bi
    i32 21, label %bb.bj
    i32 22, label %bb.bk
    i32 23, label %bb.bl
    i32 24, label %bb.bm
    i32 25, label %bb.bn
    i32 26, label %bb.bo
    i32 27, label %bb.bp
    i32 28, label %bb.bq
    i32 29, label %bb.br
    i32 30, label %bb.bs
    i32 31, label %bb.bt
    i32 32, label %bb.bu
    i32 33, label %bb.bu
    i32 35, label %bb.bu
    i32 36, label %bb.bu
    i32 37, label %bb.bu
    i32 38, label %bb.bu
    i32 39, label %bb.bu
    i32 40, label %bb.bu
    i32 41, label %bb.bu
    i32 42, label %bb.bu
    i32 43, label %bb.bu
    i32 44, label %bb.bu
    i32 45, label %bb.bu
    i32 46, label %bb.bu
    i32 47, label %bb.bu
    i32 48, label %bb.bu
    i32 49, label %bb.bu
    i32 50, label %bb.bu
    i32 51, label %bb.bu
    i32 52, label %bb.bu
    i32 53, label %bb.bu
    i32 54, label %bb.bu
    i32 55, label %bb.bu
    i32 56, label %bb.bu
    i32 57, label %bb.bu
    i32 58, label %bb.bu
    i32 59, label %bb.bu
    i32 60, label %bb.bu
    i32 61, label %bb.bu
    i32 62, label %bb.bu
    i32 63, label %bb.bu
    i32 64, label %bb.bu
    i32 65, label %bb.bu
    i32 66, label %bb.bu
    i32 67, label %bb.bu
    i32 68, label %bb.bu
    i32 69, label %bb.bu
    i32 70, label %bb.bu
    i32 71, label %bb.bu
    i32 72, label %bb.bu
    i32 73, label %bb.bu
    i32 74, label %bb.bu
    i32 75, label %bb.bu
    i32 76, label %bb.bu
    i32 77, label %bb.bu
    i32 78, label %bb.bu
    i32 79, label %bb.bu
    i32 80, label %bb.bu
    i32 81, label %bb.bu
    i32 82, label %bb.bu
    i32 83, label %bb.bu
    i32 84, label %bb.bu
    i32 85, label %bb.bu
    i32 86, label %bb.bu
    i32 87, label %bb.bu
    i32 88, label %bb.bu
    i32 89, label %bb.bu
    i32 90, label %bb.bu
    i32 91, label %bb.bu
    i32 93, label %bb.bu
    i32 94, label %bb.bu
    i32 95, label %bb.bu
    i32 96, label %bb.bu
    i32 97, label %bb.bu
    i32 98, label %bb.bu
    i32 99, label %bb.bu
    i32 100, label %bb.bu
    i32 101, label %bb.bu
    i32 102, label %bb.bu
    i32 103, label %bb.bu
    i32 104, label %bb.bu
    i32 105, label %bb.bu
    i32 106, label %bb.bu
    i32 107, label %bb.bu
    i32 108, label %bb.bu
    i32 109, label %bb.bu
    i32 110, label %bb.bu
    i32 111, label %bb.bu
    i32 112, label %bb.bu
    i32 113, label %bb.bu
    i32 114, label %bb.bu
    i32 115, label %bb.bu
    i32 116, label %bb.bu
    i32 117, label %bb.bu
    i32 118, label %bb.bu
    i32 119, label %bb.bu
    i32 120, label %bb.bu
    i32 121, label %bb.bu
    i32 122, label %bb.bu
    i32 123, label %bb.bu
    i32 124, label %bb.bu
    i32 125, label %bb.bu
    i32 126, label %bb.bu
    i32 127, label %bb.bu
    i32 194, label %bb.bw
    i32 195, label %bb.bw
    i32 196, label %bb.bw
    i32 197, label %bb.bw
    i32 198, label %bb.bw
    i32 199, label %bb.bw
    i32 200, label %bb.bw
    i32 201, label %bb.bw
    i32 202, label %bb.bw
    i32 203, label %bb.bw
    i32 204, label %bb.bw
    i32 205, label %bb.bw
    i32 206, label %bb.bw
    i32 207, label %bb.bw
    i32 208, label %bb.bw
    i32 209, label %bb.bw
    i32 210, label %bb.bw
    i32 211, label %bb.bw
    i32 212, label %bb.bw
    i32 213, label %bb.bw
    i32 214, label %bb.bw
    i32 215, label %bb.bw
    i32 216, label %bb.bw
    i32 217, label %bb.bw
    i32 218, label %bb.bw
    i32 219, label %bb.bw
    i32 220, label %bb.bw
    i32 221, label %bb.bw
    i32 222, label %bb.bw
    i32 223, label %bb.bw
    i32 224, label %bb.bx
    i32 225, label %bb.by
    i32 226, label %bb.by
    i32 227, label %bb.by
    i32 228, label %bb.by
    i32 229, label %bb.by
    i32 230, label %bb.by
    i32 231, label %bb.by
    i32 232, label %bb.by
    i32 233, label %bb.by
    i32 234, label %bb.by
    i32 235, label %bb.by
    i32 236, label %bb.by
    i32 238, label %bb.by
    i32 239, label %bb.by
    i32 237, label %bb.bz
    i32 240, label %bb.ca
    i32 241, label %bb.cb
    i32 242, label %bb.cb
    i32 243, label %bb.cb
  ]

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !259
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !259
  store i64 0, ptr %i.i, align 8, !tbaa !258
  br label %.thread104.sink.split

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.bc = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.bc, label %.thread104.sink.split [
    i32 34, label %bb.n
    i32 92, label %bb.p
    i32 47, label %bb.r
    i32 98, label %bb.t
    i32 102, label %bb.v
    i32 110, label %bb.x
    i32 114, label %bb.z
    i32 116, label %bb.ab
    i32 117, label %bb.ad
  ]

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.s
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.o, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.o
  %i.bl = phi ptr [ %.pre.i.i, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 34, ptr %i.bm, align 1, !tbaa !29
  store i64 %i.be, ptr %i.r, align 8, !tbaa !30
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !29
  br label %.backedge

bb.p:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.s
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49: ; preds = %bb.p
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.p
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49 ]
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.q, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i48 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47, %bb.q
  %i.bx = phi ptr [ %.pre.i.i48, %bb.q ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i8 92, ptr %i.by, align 1, !tbaa !29
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !29
  br label %.backedge

bb.r:                                             ; preds = %bb.m
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.s
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54: ; preds = %bb.r
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.r
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54 ]
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.s, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i53 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52, %bb.s
  %i.cj = phi ptr [ %.pre.i.i53, %bb.s ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 47, ptr %i.ck, align 1, !tbaa !29
  store i64 %i.cc, ptr %i.r, align 8, !tbaa !30
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store i8 0, ptr %i.cm, align 1, !tbaa !29
  br label %.backedge

bb.t:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.co = add i64 %i.cn, 1                        ; 3 uses
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.s
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.t
  %i.cr = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.t
  %i.cs = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.ct = phi i64 [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.cu = icmp ugt i64 %i.co, %i.ct
  br i1 %i.cu, label %bb.u, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cn, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i58 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57, %bb.u
  %i.cv = phi ptr [ %.pre.i.i58, %bb.u ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  store i8 8, ptr %i.cw, align 1, !tbaa !29
  store i64 %i.co, ptr %i.r, align 8, !tbaa !30
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.co
  store i8 0, ptr %i.cy, align 1, !tbaa !29
  br label %.backedge

bb.v:                                             ; preds = %bb.m
  %i.cz = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.s
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64: ; preds = %bb.v
  %i.dd = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.v
  %i.de = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64 ]
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.w, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i63 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62, %bb.w
  %i.dh = phi ptr [ %.pre.i.i63, %bb.w ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 12, ptr %i.di, align 1, !tbaa !29
  store i64 %i.da, ptr %i.r, align 8, !tbaa !30
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store i8 0, ptr %i.dk, align 1, !tbaa !29
  br label %.backedge

bb.x:                                             ; preds = %bb.m
  %i.dl = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.s
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

end_hunk_0
begin_hunk_1_@_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv:bb.a
  %i.dy = add i64 %i.dx, 1                        ; 3 uses
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.s
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74: ; preds = %bb.z
  %i.eb = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.eb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.z
  %i.ec = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74
  %i.ed = phi i64 [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74 ]
  %i.ee = icmp ugt i64 %i.dy, %i.ed
  br i1 %i.ee, label %bb.aa, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.dx, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i73 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72, %bb.aa
  %i.ef = phi ptr [ %.pre.i.i73, %bb.aa ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  store i8 13, ptr %i.eg, align 1, !tbaa !29
  store i64 %i.dy, ptr %i.r, align 8, !tbaa !30
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dy
  store i8 0, ptr %i.ei, align 1, !tbaa !29
  br label %.backedge

bb.ab:                                            ; preds = %bb.m
  %i.ej = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.ek = add i64 %i.ej, 1                        ; 3 uses
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.s
  br i1 %i.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79: ; preds = %bb.ab
  %i.en = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.en)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.ab
  %i.eo = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79
  %i.ep = phi i64 [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79 ]
  %i.eq = icmp ugt i64 %i.ek, %i.ep
  br i1 %i.eq, label %bb.ac, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ej, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i78 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77, %bb.ac
  %i.er = phi ptr [ %.pre.i.i78, %bb.ac ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej
  store i8 9, ptr %i.es, align 1, !tbaa !29
  store i64 %i.ek, ptr %i.r, align 8, !tbaa !30
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ek
  store i8 0, ptr %i.eu, align 1, !tbaa !29
  br label %.backedge

bb.ad:                                            ; preds = %bb.m
  %i.ev = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 13 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %.thread104.sink.split, label %bb.ae, !prof !46

bb.ae:                                            ; preds = %bb.ad
  %i.ex = and i32 %i.ev, -1024
  switch i32 %i.ex, label %bb.aj [
    i32 55296, label %bb.af
    i32 56320, label %.thread104.sink.split
  ], !prof !634

bb.af:                                            ; preds = %bb.ae
  %i.ey = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.ez = icmp eq i32 %i.ey, 92
  br i1 %i.ez, label %bb.ag, label %.thread104.sink.split, !prof !80

bb.ag:                                            ; preds = %bb.af
  %i.fa = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.fb = icmp eq i32 %i.fa, 117
  br i1 %i.fb, label %bb.ah, label %.thread104.sink.split, !prof !80

bb.ah:                                            ; preds = %bb.ag
  %i.fc = call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 3 uses
  %i.fd = icmp eq i32 %i.fc, -1
  br i1 %i.fd, label %.thread104.sink.split, label %bb.ai, !prof !46

bb.ai:                                            ; preds = %bb.ah
  %i.fe = and i32 %i.fc, -1024
  %i.ff = icmp eq i32 %i.fe, 56320
  br i1 %i.ff, label %.thread100, label %.thread104.sink.split, !prof !80

.thread100:                                       ; preds = %bb.ai
  %i.fg = shl nuw nsw i32 %i.ev, 10
  %i.fh = add nsw i32 %i.fg, -56613888
  %i.fi = add nsw i32 %i.fh, %i.fc
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ae
  %i.fj = icmp slt i32 %i.ev, 128
  br i1 %i.fj, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fk = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.fl = add i64 %i.fk, 1                        ; 3 uses
  %i.fm = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.s
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84: ; preds = %bb.ak
  %i.fo = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.ak
  %i.fp = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84
  %i.fq = phi i64 [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84 ]
  %i.fr = icmp ugt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.al, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.fk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i83 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82, %bb.al
  %i.fs = phi ptr [ %.pre.i.i83, %bb.al ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82 ]
  %i.ft = trunc i32 %i.ev to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !29
  store i64 %i.fl, ptr %i.r, align 8, !tbaa !30
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fl
  store i8 0, ptr %i.fw, align 1, !tbaa !29
  br label %.backedge

bb.am:                                            ; preds = %bb.aj
  %i.fx = icmp samesign ult i32 %i.ev, 2048
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = lshr i32 %i.ev, 6
  %i.fz = or disjoint i32 %i.fy, 192
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.fz)
  %i.ga = and i32 %i.ev, 63
  %i.gb = or disjoint i32 %i.ga, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gb)
  br label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.aq, %bb.ap, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit70, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90
  br label %bb.b, !llvm.loop !633

bb.ao:                                            ; preds = %bb.am
  %i.gc = icmp samesign ult i32 %i.ev, 65536
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gd = lshr i32 %i.ev, 12
  %i.ge = or disjoint i32 %i.gd, 224
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ge)
  %i.gf = lshr i32 %i.ev, 6
  %i.gg = and i32 %i.gf, 63
  %i.gh = or disjoint i32 %i.gg, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gh)
  %i.gi = and i32 %i.ev, 63
  %i.gj = or disjoint i32 %i.gi, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gj)
  br label %.backedge

bb.aq:                                            ; preds = %.thread100, %bb.ao
  %.1419699102 = phi i32 [ %i.fi, %.thread100 ], [ %i.ev, %bb.ao ] ; 4 uses
  %i.gk = lshr i32 %.1419699102, 18
  %i.gl = or i32 %i.gk, 240
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gl)
  %i.gm = lshr i32 %.1419699102, 12
  %i.gn = and i32 %i.gm, 63
  %i.go = or disjoint i32 %i.gn, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.go)
  %i.gp = lshr i32 %.1419699102, 6
  %i.gq = and i32 %i.gp, 63
  %i.gr = or disjoint i32 %i.gq, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gr)
  %i.gs = and i32 %.1419699102, 63
  %i.gt = or disjoint i32 %i.gs, 128
  call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gt)
  br label %.backedge

bb.ar:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.as:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.at:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.au:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.av:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.aw:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.ax:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.ay:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.az:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.ba:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bb:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bc:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bd:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.be:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bf:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bg:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bh:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bi:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bj:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bk:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bl:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bm:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bn:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bo:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bp:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bq:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.br:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bs:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bt:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

bb.bu:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.gu = load i64, ptr %i.r, align 8, !tbaa !30  ; 4 uses
  %i.gv = add i64 %i.gu, 1                        ; 3 uses
  %i.gw = load ptr, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.s
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89: ; preds = %bb.bu
  %i.gy = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.bu
  %i.gz = load i64, ptr %i.s, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89
  %i.ha = phi i64 [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89 ]
  %i.hb = icmp ugt i64 %i.gv, %i.ha
  br i1 %i.hb, label %bb.bv, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.gu, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i88 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87, %bb.bv
  %i.hc = phi ptr [ %.pre.i.i88, %bb.bv ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87 ]
  %i.hd = trunc nuw nsw i32 %.pr.i to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gu
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !29
  store i64 %i.gv, ptr %i.r, align 8, !tbaa !30
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gv
  store i8 0, ptr %i.hg, align 1, !tbaa !29
  br label %.backedge

bb.bw:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 128, ptr %i.a, align 4, !tbaa !34
  store i32 191, ptr %i.p, align 4, !tbaa !34
  %i.hh = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br i1 %i.hh, label %.backedge, label %.thread104, !prof !80

bb.bx:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store <4 x i32> <i32 160, i32 191, i32 128, i32 191>, ptr %i.b, align 16, !tbaa !34
  %i.hi = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.hi, label %.backedge, label %.thread104, !prof !80

bb.by:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store <4 x i32> <i32 128, i32 191, i32 128, i32 191>, ptr %i.c, align 16, !tbaa !34
  %i.hj = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.c, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br i1 %i.hj, label %.backedge, label %.thread104, !prof !80

bb.bz:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store <4 x i32> <i32 128, i32 159, i32 128, i32 191>, ptr %i.d, align 16, !tbaa !34
  %i.hk = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.d, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br i1 %i.hk, label %.backedge, label %.thread104, !prof !80

bb.ca:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) @constinit, i64 24, i1 false), !tbaa.struct !635
  %i.hl = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.e, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.hl, label %.backedge, label %.thread104, !prof !80

bb.cb:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) @constinit.195, i64 24, i1 false), !tbaa.struct !635
  %i.hm = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.f, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br i1 %i.hm, label %.backedge, label %.thread104, !prof !80

bb.cc:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(24) @constinit.196, i64 24, i1 false), !tbaa.struct !635
  %i.hn = call noundef zeroext i1 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.g, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br i1 %i.hn, label %.backedge, label %.thread104, !prof !80

bb.cd:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit:                   ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit156:                ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split:                            ; preds = %bb.m, %bb.ae, %bb.ag, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.f, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %.thread104.sink.split.loopexit156, %.thread104.sink.split.loopexit, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.cd
  %.str.160.sink = phi ptr [ @.str.167, %bb.at ], [ @.str.166, %bb.as ], [ @.str.165, %bb.ar ], [ @.str.164, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ @.str.158, %.thread104.sink.split.loopexit ], [ @.str.197, %bb.cd ], [ @.str.194, %bb.bt ], [ @.str.193, %bb.bs ], [ @.str.192, %bb.br ], [ @.str.191, %bb.bq ], [ @.str.190, %bb.bp ], [ @.str.189, %bb.bo ], [ @.str.188, %bb.bn ], [ @.str.187, %bb.bm ], [ @.str.186, %bb.bl ], [ @.str.185, %bb.bk ], [ @.str.184, %bb.bj ], [ @.str.183, %bb.bi ], [ @.str.182, %bb.bh ], [ @.str.181, %bb.bg ], [ @.str.180, %bb.bf ], [ @.str.179, %bb.be ], [ @.str.178, %bb.bd ], [ @.str.177, %bb.bc ], [ @.str.176, %bb.bb ], [ @.str.175, %bb.ba ], [ @.str.174, %bb.az ], [ @.str.173, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91 ], [ @.str.172, %bb.ay ], [ @.str.171, %bb.ax ], [ @.str.170, %bb.aw ], [ @.str.169, %bb.av ], [ @.str.168, %bb.au ], [ @.str.159, %bb.ah ], [ @.str.159, %bb.ad ], [ @.str.160, %bb.ai ], [ @.str.160, %bb.ag ], [ @.str.158, %bb.f ], [ @.str.161, %bb.ae ], [ @.str.160, %bb.af ], [ @.str.162, %bb.m ], [ @.str.163, %.thread104.sink.split.loopexit156 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.160.sink, ptr %i.ho, align 8, !tbaa !255
  br label %.thread104

.thread104:                                       ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %.thread104.sink.split
  %.5 = phi i32 [ 14, %.thread104.sink.split ], [ 14, %bb.ca ], [ 14, %bb.bz ], [ 14, %bb.by ], [ 14, %bb.bx ], [ 14, %bb.bw ], [ 4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ 14, %bb.cc ], [ 14, %bb.cb ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !253  ; 2 uses
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 45, ptr %i.p, align 1, !tbaa !29
  store i64 %i.g, ptr %i.e, align 8, !tbaa !30
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !29
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27: ; preds = %bb.d
  %i.z = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.d
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27 ]
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i26 = load ptr, ptr %i.s, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25, %bb.e
  %i.ad = phi ptr [ %.pre.i.i26, %bb.e ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 48, ptr %i.ae, align 1, !tbaa !29
  store i64 %i.v, ptr %i.t, align 8, !tbaa !30
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store i8 0, ptr %i.ag, align 1, !tbaa !29
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !30 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.f
  %i.ao = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.f
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.ah, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.g
  %i.as = phi ptr [ %.pre.i.i31, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.at = trunc nuw nsw i32 %i.c to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 %i.at, ptr %i.au, align 1, !tbaa !29
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !30
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ak
  store i8 0, ptr %i.aw, align 1, !tbaa !29
  br label %.preheader101

bb.h:                                             ; preds = %bb.a, %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit
  %i.ax = tail call noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.ax, label %bb.l [
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

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !253
  tail call void @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.az = load i32, ptr %i.b, align 4, !tbaa !253
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !30 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bk = icmp ugt i64 %i.bd, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.ba, align 8, !tbaa !26
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bl = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bm = trunc i32 %i.az to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !29
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
end_hunk_1
