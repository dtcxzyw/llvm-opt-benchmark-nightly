Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeoJSONReader?download=true
inline.NumInlined: 4517
inline.NumDeleted: 1832
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE12scan_commentEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.backedge

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.h = tail call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %switch.tableidx = add i32 %i.h, 1              ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 18435, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.backedge:                                        ; preds = %.backedge.backedge, %.preheader2
  %i.j = tail call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.j, label %.backedge.backedge [
    i32 -1, label %.loopexit.sink.split
    i32 0, label %.loopexit.sink.split
    i32 42, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = tail call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %cond = icmp eq i32 %i.k, 47
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !390
  %i.l = load i64, ptr %i.c, align 8, !tbaa !393
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !393
  %i.n = load i64, ptr %i.d, align 8, !tbaa !394  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.e, align 8, !tbaa !395  ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.e, align 8, !tbaa !395
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = add i64 %i.n, -1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !394
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.s = load i32, ptr %i.f, align 4, !tbaa !389
  %.not2.i = icmp eq i32 %i.s, -1
  br i1 %.not2.i, label %.backedge.backedge, label %bb.h, !prof !396

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !397
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !397
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.g, %.backedge
  br label %.backedge, !llvm.loop !917

.loopexit.sink.split:                             ; preds = %.backedge, %.backedge, %bb.a
  %.str.34.sink = phi ptr [ @.str.34, %bb.a ], [ @.str.33, %.backedge ], [ @.str.33, %.backedge ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.34.sink, ptr %i.v, align 8, !tbaa !391
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.loopexit.sink.split
  %.0 = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !920 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 40 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load <2 x i64>, ptr %i.h, align 8, !tbaa !273
  %i.u = add <2 x i64> %i.t, splat (i64 1)
  store <2 x i64> %i.u, ptr %i.h, align 8, !tbaa !273
  %i.v = load i8, ptr %i.j, align 8, !tbaa !390, !range !282, !noundef !251
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 8, !tbaa !390
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !389
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !387    ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !387
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %_ZN13geos_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, label %bb.e, !prof !396

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.x, align 1, !tbaa !207
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !398
  br label %_ZN13geos_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i

_ZN13geos_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.e ], [ -1, %bb.d ] ; 2 uses
  store i32 %.0.i.i, ptr %i.k, align 4, !tbaa !389
  br label %bb.f

bb.f:                                             ; preds = %_ZN13geos_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i, %bb.c
  %i.ac = phi i32 [ %.0.i.i, %_ZN13geos_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE13get_characterEv.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %i.ac, -1
  br i1 %.not.i, label %.thread104.sink.split, label %bb.g, !prof !396

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !397 ; 3 uses
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !399
  %.not.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !207
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !397
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !217 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775807
  br i1 %i.am, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.an = add i64 %.sroa.speculated.i.i.i.i.i, %i.al ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #30 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al ; 2 uses
  store i8 %i.ad, ptr %i.as, align 1, !tbaa !207
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
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #28
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !217
  store ptr %i.au, ptr %i.n, align 8, !tbaa !397
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store ptr %i.av, ptr %i.o, align 8, !tbaa !399
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.h
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !389 ; 2 uses
  switch i32 %.pr.i, label %bb.cd [
    i32 10, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91
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

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !395
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !395
  store i64 0, ptr %i.i, align 8, !tbaa !394
  br label %.thread104.sink.split

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.az = call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  switch i32 %i.az, label %.thread104.sink.split [
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
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.s
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.be = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ba, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.o
  %i.bi = phi ptr [ %.pre.i.i, %bb.o ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 34, ptr %i.bj, align 1, !tbaa !207
  store i64 %i.bb, ptr %i.r, align 8, !tbaa !206
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bb
  store i8 0, ptr %i.bl, align 1, !tbaa !207
  br label %.backedge

bb.p:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.bn = add i64 %i.bm, 1                        ; 3 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.s
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49: ; preds = %bb.p
  %i.bq = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.p
  %i.br = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49
  %i.bs = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49 ]
  %i.bt = icmp ugt i64 %i.bn, %i.bs
  br i1 %i.bt, label %bb.q, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.bm, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i48 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47, %bb.q
  %i.bu = phi ptr [ %.pre.i.i48, %bb.q ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  store i8 92, ptr %i.bv, align 1, !tbaa !207
  store i64 %i.bn, ptr %i.r, align 8, !tbaa !206
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bn
  store i8 0, ptr %i.bx, align 1, !tbaa !207
  br label %.backedge

bb.r:                                             ; preds = %bb.m
  %i.by = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.s
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54: ; preds = %bb.r
  %i.cc = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.r
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54
  %i.ce = phi i64 [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54 ]
  %i.cf = icmp ugt i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.s, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.by, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i53 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52, %bb.s
  %i.cg = phi ptr [ %.pre.i.i53, %bb.s ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 47, ptr %i.ch, align 1, !tbaa !207
  store i64 %i.bz, ptr %i.r, align 8, !tbaa !206
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bz
  store i8 0, ptr %i.cj, align 1, !tbaa !207
  br label %.backedge

bb.t:                                             ; preds = %bb.m
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.s
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.t
  %i.co = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.t
  %i.cp = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.cr = icmp ugt i64 %i.cl, %i.cq
  br i1 %i.cr, label %bb.u, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ck, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i58 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57, %bb.u
  %i.cs = phi ptr [ %.pre.i.i58, %bb.u ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  store i8 8, ptr %i.ct, align 1, !tbaa !207
  store i64 %i.cl, ptr %i.r, align 8, !tbaa !206
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cl
  store i8 0, ptr %i.cv, align 1, !tbaa !207
  br label %.backedge

bb.v:                                             ; preds = %bb.m
  %i.cw = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.cx = add i64 %i.cw, 1                        ; 3 uses
  %i.cy = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.s
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64: ; preds = %bb.v
  %i.da = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.da)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.v
  %i.db = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64
  %i.dc = phi i64 [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64 ]
  %i.dd = icmp ugt i64 %i.cx, %i.dc
  br i1 %i.dd, label %bb.w, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.cw, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i63 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62, %bb.w
  %i.de = phi ptr [ %.pre.i.i63, %bb.w ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62 ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  store i8 12, ptr %i.df, align 1, !tbaa !207
  store i64 %i.cx, ptr %i.r, align 8, !tbaa !206
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cx
  store i8 0, ptr %i.dh, align 1, !tbaa !207
  br label %.backedge

bb.x:                                             ; preds = %bb.m
  %i.di = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.dj = add i64 %i.di, 1                        ; 3 uses
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.s
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

end_hunk_0
begin_hunk_1_@_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_stringEv:bb.a
  %i.dv = add i64 %i.du, 1                        ; 3 uses
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.s
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74: ; preds = %bb.z
  %i.dy = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.z
  %i.dz = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74
  %i.ea = phi i64 [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74 ]
  %i.eb = icmp ugt i64 %i.dv, %i.ea
  br i1 %i.eb, label %bb.aa, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.du, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i73 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72, %bb.aa
  %i.ec = phi ptr [ %.pre.i.i73, %bb.aa ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store i8 13, ptr %i.ed, align 1, !tbaa !207
  store i64 %i.dv, ptr %i.r, align 8, !tbaa !206
  %i.ee = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dv
  store i8 0, ptr %i.ef, align 1, !tbaa !207
  br label %.backedge

bb.ab:                                            ; preds = %bb.m
  %i.eg = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.eh = add i64 %i.eg, 1                        ; 3 uses
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.s
  br i1 %i.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79: ; preds = %bb.ab
  %i.ek = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.ek)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.ab
  %i.el = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79
  %i.em = phi i64 [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79 ]
  %i.en = icmp ugt i64 %i.eh, %i.em
  br i1 %i.en, label %bb.ac, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.eg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i78 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77, %bb.ac
  %i.eo = phi ptr [ %.pre.i.i78, %bb.ac ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i8 9, ptr %i.ep, align 1, !tbaa !207
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !206
  %i.eq = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eh
  store i8 0, ptr %i.er, align 1, !tbaa !207
  br label %.backedge

bb.ad:                                            ; preds = %bb.m
  %i.es = call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 13 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.thread104.sink.split, label %bb.ae, !prof !396

bb.ae:                                            ; preds = %bb.ad
  %i.eu = and i32 %i.es, -1024
  switch i32 %i.eu, label %bb.aj [
    i32 55296, label %bb.af
    i32 56320, label %.thread104.sink.split
  ], !prof !921

bb.af:                                            ; preds = %bb.ae
  %i.ev = call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.ew = icmp eq i32 %i.ev, 92
  br i1 %i.ew, label %bb.ag, label %.thread104.sink.split, !prof !218

bb.ag:                                            ; preds = %bb.af
  %i.ex = call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.ey = icmp eq i32 %i.ex, 117
  br i1 %i.ey, label %bb.ah, label %.thread104.sink.split, !prof !218

bb.ah:                                            ; preds = %bb.ag
  %i.ez = call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %.thread104.sink.split, label %bb.ai, !prof !396

bb.ai:                                            ; preds = %bb.ah
  %i.fb = and i32 %i.ez, -1024
  %i.fc = icmp eq i32 %i.fb, 56320
  br i1 %i.fc, label %.thread100, label %.thread104.sink.split, !prof !218

.thread100:                                       ; preds = %bb.ai
  %i.fd = shl nuw nsw i32 %i.es, 10
  %i.fe = add nsw i32 %i.fd, -56613888
  %i.ff = add nsw i32 %i.fe, %i.ez
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ae
  %i.fg = icmp slt i32 %i.es, 128
  br i1 %i.fg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %i.fj = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.s
  br i1 %i.fk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84: ; preds = %bb.ak
  %i.fl = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.ak
  %i.fm = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84
  %i.fn = phi i64 [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84 ]
  %i.fo = icmp ugt i64 %i.fi, %i.fn
  br i1 %i.fo, label %bb.al, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.fh, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i83 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82, %bb.al
  %i.fp = phi ptr [ %.pre.i.i83, %bb.al ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82 ]
  %i.fq = trunc i32 %i.es to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !207
  store i64 %i.fi, ptr %i.r, align 8, !tbaa !206
  %i.fs = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fi
  store i8 0, ptr %i.ft, align 1, !tbaa !207
  br label %.backedge

bb.am:                                            ; preds = %bb.aj
  %i.fu = icmp samesign ult i32 %i.es, 2048
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fv = lshr i32 %i.es, 6
  %i.fw = or disjoint i32 %i.fv, 192
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.fw)
  %i.fx = and i32 %i.es, 63
  %i.fy = or disjoint i32 %i.fx, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.fy)
  br label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.aq, %bb.ap, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit85, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit50, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit55, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit60, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit65, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit70, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit75, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit80, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90
  br label %bb.b, !llvm.loop !919

bb.ao:                                            ; preds = %bb.am
  %i.fz = icmp samesign ult i32 %i.es, 65536
  br i1 %i.fz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ga = lshr i32 %i.es, 12
  %i.gb = or disjoint i32 %i.ga, 224
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gb)
  %i.gc = lshr i32 %i.es, 6
  %i.gd = and i32 %i.gc, 63
  %i.ge = or disjoint i32 %i.gd, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ge)
  %i.gf = and i32 %i.es, 63
  %i.gg = or disjoint i32 %i.gf, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gg)
  br label %.backedge

bb.aq:                                            ; preds = %.thread100, %bb.ao
  %.1419699102 = phi i32 [ %i.ff, %.thread100 ], [ %i.es, %bb.ao ] ; 4 uses
  %i.gh = lshr i32 %.1419699102, 18
  %i.gi = or i32 %i.gh, 240
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gi)
  %i.gj = lshr i32 %.1419699102, 12
  %i.gk = and i32 %i.gj, 63
  %i.gl = or disjoint i32 %i.gk, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gl)
  %i.gm = lshr i32 %.1419699102, 6
  %i.gn = and i32 %i.gm, 63
  %i.go = or disjoint i32 %i.gn, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.go)
  %i.gp = and i32 %.1419699102, 63
  %i.gq = or disjoint i32 %i.gp, 128
  call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.gq)
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
  %i.gr = load i64, ptr %i.r, align 8, !tbaa !206 ; 4 uses
  %i.gs = add i64 %i.gr, 1                        ; 3 uses
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !208 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.s
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89: ; preds = %bb.bu
  %i.gv = icmp ult i64 %i.gr, 16
  call void @llvm.assume(i1 %i.gv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.bu
  %i.gw = load i64, ptr %i.s, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89
  %i.gx = phi i64 [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89 ]
  %i.gy = icmp ugt i64 %i.gs, %i.gx
  br i1 %i.gy, label %bb.bv, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.gr, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i88 = load ptr, ptr %i.q, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87, %bb.bv
  %i.gz = phi ptr [ %.pre.i.i88, %bb.bv ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87 ]
  %i.ha = trunc nuw nsw i32 %.pr.i to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !207
  store i64 %i.gs, ptr %i.r, align 8, !tbaa !206
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gs
  store i8 0, ptr %i.hd, align 1, !tbaa !207
  br label %.backedge

bb.bw:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 128, ptr %i.a, align 4, !tbaa !400
  store i32 191, ptr %i.p, align 4, !tbaa !400
  %i.he = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.he, label %.backedge, label %.thread104, !prof !218

bb.bx:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store <4 x i32> <i32 160, i32 191, i32 128, i32 191>, ptr %i.b, align 16, !tbaa !400
  %i.hf = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.hf, label %.backedge, label %.thread104, !prof !218

bb.by:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store <4 x i32> <i32 128, i32 191, i32 128, i32 191>, ptr %i.c, align 16, !tbaa !400
  %i.hg = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.c, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %i.hg, label %.backedge, label %.thread104, !prof !218

bb.bz:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store <4 x i32> <i32 128, i32 159, i32 128, i32 191>, ptr %i.d, align 16, !tbaa !400
  %i.hh = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.d, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br i1 %i.hh, label %.backedge, label %.thread104, !prof !218

bb.ca:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) @constinit, i64 24, i1 false), !tbaa.struct !922
  %i.hi = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.e, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br i1 %i.hi, label %.backedge, label %.thread104, !prof !218

bb.cb:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) @constinit.72, i64 24, i1 false), !tbaa.struct !922
  %i.hj = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.f, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br i1 %i.hj, label %.backedge, label %.thread104, !prof !218

bb.cc:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(24) @constinit.73, i64 24, i1 false), !tbaa.struct !922
  %i.hk = call noundef zeroext i1 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nonnull %i.g, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br i1 %i.hk, label %.backedge, label %.thread104, !prof !218

bb.cd:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit:                   ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit156:                ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split:                            ; preds = %bb.m, %bb.ae, %bb.ag, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.f, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %.thread104.sink.split.loopexit156, %.thread104.sink.split.loopexit, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.cd
  %.str.37.sink = phi ptr [ @.str.44, %bb.at ], [ @.str.43, %bb.as ], [ @.str.42, %bb.ar ], [ @.str.41, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ @.str.35, %.thread104.sink.split.loopexit ], [ @.str.74, %bb.cd ], [ @.str.71, %bb.bt ], [ @.str.70, %bb.bs ], [ @.str.69, %bb.br ], [ @.str.68, %bb.bq ], [ @.str.67, %bb.bp ], [ @.str.66, %bb.bo ], [ @.str.65, %bb.bn ], [ @.str.64, %bb.bm ], [ @.str.63, %bb.bl ], [ @.str.62, %bb.bk ], [ @.str.61, %bb.bj ], [ @.str.60, %bb.bi ], [ @.str.59, %bb.bh ], [ @.str.58, %bb.bg ], [ @.str.57, %bb.bf ], [ @.str.56, %bb.be ], [ @.str.55, %bb.bd ], [ @.str.54, %bb.bc ], [ @.str.53, %bb.bb ], [ @.str.52, %bb.ba ], [ @.str.51, %bb.az ], [ @.str.50, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv.exit.thread91 ], [ @.str.49, %bb.ay ], [ @.str.48, %bb.ax ], [ @.str.47, %bb.aw ], [ @.str.46, %bb.av ], [ @.str.45, %bb.au ], [ @.str.36, %bb.ah ], [ @.str.36, %bb.ad ], [ @.str.37, %bb.ai ], [ @.str.37, %bb.ag ], [ @.str.35, %bb.f ], [ @.str.38, %bb.ae ], [ @.str.37, %bb.af ], [ @.str.39, %bb.m ], [ @.str.40, %.thread104.sink.split.loopexit156 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.37.sink, ptr %i.hl, align 8, !tbaa !391
  br label %.thread104

.thread104:                                       ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %.thread104.sink.split
  %.5 = phi i32 [ 14, %.thread104.sink.split ], [ 14, %bb.ca ], [ 14, %bb.bz ], [ 14, %bb.by ], [ 14, %bb.bx ], [ 14, %bb.bw ], [ 4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ 14, %bb.cc ], [ 14, %bb.cb ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !923 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  tail call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(148) %0) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !389  ; 2 uses
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !206  ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !208  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 45, ptr %i.p, align 1, !tbaa !207
  store i64 %i.g, ptr %i.e, align 8, !tbaa !206
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !207
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !206  ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !208  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27: ; preds = %bb.d
  %i.z = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.d
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27 ]
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i26 = load ptr, ptr %i.s, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25, %bb.e
  %i.ad = phi ptr [ %.pre.i.i26, %bb.e ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 48, ptr %i.ae, align 1, !tbaa !207
  store i64 %i.v, ptr %i.t, align 8, !tbaa !206
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !208
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store i8 0, ptr %i.ag, align 1, !tbaa !207
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !206 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !208 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.f
  %i.ao = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.f
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.ah, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.g
  %i.as = phi ptr [ %.pre.i.i31, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.at = trunc nuw nsw i32 %i.c to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 %i.at, ptr %i.au, align 1, !tbaa !207
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !206
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ak
  store i8 0, ptr %i.aw, align 1, !tbaa !207
  br label %.preheader101

bb.h:                                             ; preds = %bb.a, %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit
  %i.ax = tail call noundef i32 @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
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
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !389
  tail call void @_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.az = load i32, ptr %i.b, align 4, !tbaa !389
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !206 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !208 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bk = icmp ugt i64 %i.bd, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.ba, align 8, !tbaa !208
  br label %_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38

_ZN13geos_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bl = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bm = trunc i32 %i.az to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !207
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !206
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !208
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
end_hunk_1
