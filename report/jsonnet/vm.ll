Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.k, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = trunc i32 %i.m to i8                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !499  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !443
  %.not.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.p, ptr %i.r, align 1, !tbaa !67
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !499
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.v, ptr %i.q, align 8, !tbaa !499
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !442  ; 4 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 8 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775807
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.ab = add i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 9223372036854775807)
  %i.ae = select i1 %i.ac, i64 9223372036854775807, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #41 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z ; 2 uses
  store i8 %i.p, ptr %i.ag, align 1, !tbaa !67
  %i.ah = icmp sgt i64 %i.z, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #40
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !442
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !499
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !443
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.f
  %.pr = load i32, ptr %i.n, align 8, !tbaa !471  ; 2 uses
  %i.ak = icmp eq i32 %.pr, 10
  br i1 %i.ak, label %bb.k, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !498
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !498
  store i64 0, ptr %i.b, align 8, !tbaa !497
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread:    ; preds = %bb.d, %bb.k, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.ao = phi i32 [ %.pr, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 10, %bb.k ], [ -1, %bb.d ]
  ret i32 %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(137) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(137) %0) #39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 40 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.s = load <2 x i64>, ptr %i.h, align 8, !tbaa !64
  %i.t = add <2 x i64> %i.s, splat (i64 1)
  store <2 x i64> %i.t, ptr %i.h, align 8, !tbaa !64
  %i.u = load i8, ptr %i.j, align 4, !tbaa !472, !range !251, !noundef !252
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 4, !tbaa !472
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !471
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !470    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !500 ; 2 uses
  store i32 %i.z, ptr %i.k, align 8, !tbaa !471
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %.pre.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %.thread104.sink.split, label %bb.f, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.ab = trunc i32 %i.aa to i8                   ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !499 ; 3 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !443
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !67
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !499
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.m, align 8, !tbaa !499
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !442 ; 4 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 8 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.al = add i64 %.sroa.speculated.i.i.i.i.i, %i.aj ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 9223372036854775807)
  %i.ao = select i1 %i.am, i64 9223372036854775807, i64 %i.an ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #41 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i8 %i.ab, ptr %i.aq, align 1, !tbaa !67
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #40
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !442
  store ptr %i.as, ptr %i.m, align 8, !tbaa !499
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.at, ptr %i.n, align 8, !tbaa !443
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.g
  %.pr.i = load i32, ptr %i.k, align 8, !tbaa !471 ; 2 uses
  switch i32 %.pr.i, label %bb.cc [
    i32 10, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv.exit.thread91
    i32 -1, label %.thread104.sink.split.loopexit
    i32 34, label %.thread104
    i32 92, label %bb.l
    i32 0, label %.thread104.sink.split.loopexit155
    i32 1, label %.thread104.sink.split
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.as
    i32 5, label %bb.at
    i32 6, label %bb.au
    i32 7, label %bb.av
    i32 8, label %bb.aw
    i32 9, label %bb.ax
    i32 244, label %bb.cb
    i32 11, label %bb.ay
    i32 12, label %bb.az
    i32 13, label %bb.ba
    i32 14, label %bb.bb
    i32 15, label %bb.bc
    i32 16, label %bb.bd
    i32 17, label %bb.be
    i32 18, label %bb.bf
    i32 19, label %bb.bg
    i32 20, label %bb.bh
    i32 21, label %bb.bi
    i32 22, label %bb.bj
    i32 23, label %bb.bk
    i32 24, label %bb.bl
    i32 25, label %bb.bm
    i32 26, label %bb.bn
    i32 27, label %bb.bo
    i32 28, label %bb.bp
    i32 29, label %bb.bq
    i32 30, label %bb.br
    i32 31, label %bb.bs
    i32 32, label %bb.bt
    i32 33, label %bb.bt
    i32 35, label %bb.bt
    i32 36, label %bb.bt
    i32 37, label %bb.bt
    i32 38, label %bb.bt
    i32 39, label %bb.bt
    i32 40, label %bb.bt
    i32 41, label %bb.bt
    i32 42, label %bb.bt
    i32 43, label %bb.bt
    i32 44, label %bb.bt
    i32 45, label %bb.bt
    i32 46, label %bb.bt
    i32 47, label %bb.bt
    i32 48, label %bb.bt
    i32 49, label %bb.bt
    i32 50, label %bb.bt
    i32 51, label %bb.bt
    i32 52, label %bb.bt
    i32 53, label %bb.bt
    i32 54, label %bb.bt
    i32 55, label %bb.bt
    i32 56, label %bb.bt
    i32 57, label %bb.bt
    i32 58, label %bb.bt
    i32 59, label %bb.bt
    i32 60, label %bb.bt
    i32 61, label %bb.bt
    i32 62, label %bb.bt
    i32 63, label %bb.bt
    i32 64, label %bb.bt
    i32 65, label %bb.bt
    i32 66, label %bb.bt
    i32 67, label %bb.bt
    i32 68, label %bb.bt
    i32 69, label %bb.bt
    i32 70, label %bb.bt
    i32 71, label %bb.bt
    i32 72, label %bb.bt
    i32 73, label %bb.bt
    i32 74, label %bb.bt
    i32 75, label %bb.bt
    i32 76, label %bb.bt
    i32 77, label %bb.bt
    i32 78, label %bb.bt
    i32 79, label %bb.bt
    i32 80, label %bb.bt
    i32 81, label %bb.bt
    i32 82, label %bb.bt
    i32 83, label %bb.bt
    i32 84, label %bb.bt
    i32 85, label %bb.bt
    i32 86, label %bb.bt
    i32 87, label %bb.bt
    i32 88, label %bb.bt
    i32 89, label %bb.bt
    i32 90, label %bb.bt
    i32 91, label %bb.bt
    i32 93, label %bb.bt
    i32 94, label %bb.bt
    i32 95, label %bb.bt
    i32 96, label %bb.bt
    i32 97, label %bb.bt
    i32 98, label %bb.bt
    i32 99, label %bb.bt
    i32 100, label %bb.bt
    i32 101, label %bb.bt
    i32 102, label %bb.bt
    i32 103, label %bb.bt
    i32 104, label %bb.bt
    i32 105, label %bb.bt
    i32 106, label %bb.bt
    i32 107, label %bb.bt
    i32 108, label %bb.bt
    i32 109, label %bb.bt
    i32 110, label %bb.bt
    i32 111, label %bb.bt
    i32 112, label %bb.bt
    i32 113, label %bb.bt
    i32 114, label %bb.bt
    i32 115, label %bb.bt
    i32 116, label %bb.bt
    i32 117, label %bb.bt
    i32 118, label %bb.bt
    i32 119, label %bb.bt
    i32 120, label %bb.bt
    i32 121, label %bb.bt
    i32 122, label %bb.bt
    i32 123, label %bb.bt
    i32 124, label %bb.bt
    i32 125, label %bb.bt
    i32 126, label %bb.bt
    i32 127, label %bb.bt
    i32 194, label %bb.bv
    i32 195, label %bb.bv
    i32 196, label %bb.bv
    i32 197, label %bb.bv
    i32 198, label %bb.bv
    i32 199, label %bb.bv
    i32 200, label %bb.bv
    i32 201, label %bb.bv
    i32 202, label %bb.bv
    i32 203, label %bb.bv
    i32 204, label %bb.bv
    i32 205, label %bb.bv
    i32 206, label %bb.bv
    i32 207, label %bb.bv
    i32 208, label %bb.bv
    i32 209, label %bb.bv
    i32 210, label %bb.bv
    i32 211, label %bb.bv
    i32 212, label %bb.bv
    i32 213, label %bb.bv
    i32 214, label %bb.bv
    i32 215, label %bb.bv
    i32 216, label %bb.bv
    i32 217, label %bb.bv
    i32 218, label %bb.bv
    i32 219, label %bb.bv
    i32 220, label %bb.bv
    i32 221, label %bb.bv
    i32 222, label %bb.bv
    i32 223, label %bb.bv
    i32 224, label %bb.bw
    i32 225, label %bb.bx
    i32 226, label %bb.bx
    i32 227, label %bb.bx
    i32 228, label %bb.bx
    i32 229, label %bb.bx
    i32 230, label %bb.bx
    i32 231, label %bb.bx
    i32 232, label %bb.bx
    i32 233, label %bb.bx
    i32 234, label %bb.bx
    i32 235, label %bb.bx
    i32 236, label %bb.bx
    i32 238, label %bb.bx
    i32 239, label %bb.bx
    i32 237, label %bb.by
    i32 240, label %bb.bz
    i32 241, label %bb.ca
    i32 242, label %bb.ca
    i32 243, label %bb.ca
  ]

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv.exit.thread91: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !498
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !498
  store i64 0, ptr %i.i, align 8, !tbaa !497
  br label %.thread104.sink.split

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.ax = call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(137) %0)
  switch i32 %i.ax, label %.thread104.sink.split [
    i32 34, label %bb.m
    i32 92, label %bb.o
    i32 47, label %bb.q
    i32 98, label %bb.s
    i32 102, label %bb.u
    i32 110, label %bb.w
    i32 114, label %bb.y
    i32 116, label %bb.aa
    i32 117, label %bb.ac
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.m
  %i.bc = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.n, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.n
  %i.bg = phi ptr [ %.pre.i.i, %bb.n ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 34, ptr %i.bh, align 1, !tbaa !67
  store i64 %i.az, ptr %i.q, align 8, !tbaa !68
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !67
  br label %.backedge

bb.o:                                             ; preds = %bb.l
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.r
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49: ; preds = %bb.o
  %i.bo = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.o
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49 ]
  %i.br = icmp ugt i64 %i.bl, %i.bq
  br i1 %i.br, label %bb.p, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit50

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.bk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i48 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit50

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47, %bb.p
  %i.bs = phi ptr [ %.pre.i.i48, %bb.p ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i8 92, ptr %i.bt, align 1, !tbaa !67
  store i64 %i.bl, ptr %i.q, align 8, !tbaa !68
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i8 0, ptr %i.bv, align 1, !tbaa !67
  br label %.backedge

bb.q:                                             ; preds = %bb.l
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.r
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54: ; preds = %bb.q
  %i.ca = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.q
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54 ]
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.r, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit55

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.bw, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i53 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit55

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52, %bb.r
  %i.ce = phi ptr [ %.pre.i.i53, %bb.r ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i8 47, ptr %i.cf, align 1, !tbaa !67
  store i64 %i.bx, ptr %i.q, align 8, !tbaa !68
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx
  store i8 0, ptr %i.ch, align 1, !tbaa !67
  br label %.backedge

bb.s:                                             ; preds = %bb.l
  %i.ci = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.r
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.s
  %i.cm = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.s
  %i.cn = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.co = phi i64 [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.cp = icmp ugt i64 %i.cj, %i.co
  br i1 %i.cp, label %bb.t, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit60

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ci, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i58 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit60

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57, %bb.t
  %i.cq = phi ptr [ %.pre.i.i58, %bb.t ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  store i8 8, ptr %i.cr, align 1, !tbaa !67
  store i64 %i.cj, ptr %i.q, align 8, !tbaa !68
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cj
  store i8 0, ptr %i.ct, align 1, !tbaa !67
  br label %.backedge

bb.u:                                             ; preds = %bb.l
  %i.cu = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.r
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64: ; preds = %bb.u
  %i.cy = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.u
  %i.cz = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64
  %i.da = phi i64 [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i64 ]
  %i.db = icmp ugt i64 %i.cv, %i.da
  br i1 %i.db, label %bb.v, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit65

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.cu, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i63 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit65

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62, %bb.v
  %i.dc = phi ptr [ %.pre.i.i63, %bb.v ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i62 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store i8 12, ptr %i.dd, align 1, !tbaa !67
  store i64 %i.cv, ptr %i.q, align 8, !tbaa !68
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cv
  store i8 0, ptr %i.df, align 1, !tbaa !67
  br label %.backedge

bb.w:                                             ; preds = %bb.l
  %i.dg = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.r
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

end_hunk_0
begin_hunk_1_@_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11scan_stringEv:bb.a
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %i.du = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.r
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74: ; preds = %bb.y
  %i.dw = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.y
  %i.dx = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74
  %i.dy = phi i64 [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i74 ]
  %i.dz = icmp ugt i64 %i.dt, %i.dy
  br i1 %i.dz, label %bb.z, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit75

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ds, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i73 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit75

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72, %bb.z
  %i.ea = phi ptr [ %.pre.i.i73, %bb.z ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i72 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds
  store i8 13, ptr %i.eb, align 1, !tbaa !67
  store i64 %i.dt, ptr %i.q, align 8, !tbaa !68
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dt
  store i8 0, ptr %i.ed, align 1, !tbaa !67
  br label %.backedge

bb.aa:                                            ; preds = %bb.l
  %i.ee = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.r
  br i1 %i.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79: ; preds = %bb.aa
  %i.ei = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ei)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.aa
  %i.ej = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79
  %i.ek = phi i64 [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i79 ]
  %i.el = icmp ugt i64 %i.ef, %i.ek
  br i1 %i.el, label %bb.ab, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit80

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ee, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i78 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit80

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77, %bb.ab
  %i.em = phi ptr [ %.pre.i.i78, %bb.ab ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i77 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee
  store i8 9, ptr %i.en, align 1, !tbaa !67
  store i64 %i.ef, ptr %i.q, align 8, !tbaa !68
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ef
  store i8 0, ptr %i.ep, align 1, !tbaa !67
  br label %.backedge

bb.ac:                                            ; preds = %bb.l
  %i.eq = call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(137) %0) ; 13 uses
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %.thread104.sink.split, label %bb.ad, !prof !268

bb.ad:                                            ; preds = %bb.ac
  %i.es = and i32 %i.eq, -1024
  switch i32 %i.es, label %bb.ai [
    i32 55296, label %bb.ae
    i32 56320, label %.thread104.sink.split
  ], !prof !994

bb.ae:                                            ; preds = %bb.ad
  %i.et = call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(137) %0)
  %i.eu = icmp eq i32 %i.et, 92
  br i1 %i.eu, label %bb.af, label %.thread104.sink.split, !prof !397

bb.af:                                            ; preds = %bb.ae
  %i.ev = call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(137) %0)
  %i.ew = icmp eq i32 %i.ev, 117
  br i1 %i.ew, label %bb.ag, label %.thread104.sink.split, !prof !397

bb.ag:                                            ; preds = %bb.af
  %i.ex = call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE13get_codepointEv(ptr noundef nonnull align 8 dereferenceable(137) %0) ; 3 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %.thread104.sink.split, label %bb.ah, !prof !268

bb.ah:                                            ; preds = %bb.ag
  %i.ez = and i32 %i.ex, -1024
  %i.fa = icmp eq i32 %i.ez, 56320
  br i1 %i.fa, label %.thread100, label %.thread104.sink.split, !prof !397

.thread100:                                       ; preds = %bb.ah
  %i.fb = shl nuw nsw i32 %i.eq, 10
  %i.fc = add nsw i32 %i.fb, -56613888
  %i.fd = add nsw i32 %i.fc, %i.ex
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ad
  %i.fe = icmp slt i32 %i.eq, 128
  br i1 %i.fe, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.fg = add i64 %i.ff, 1                        ; 3 uses
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.r
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84: ; preds = %bb.aj
  %i.fj = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.aj
  %i.fk = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84
  %i.fl = phi i64 [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i84 ]
  %i.fm = icmp ugt i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.ak, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit85

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ff, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i83 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit85

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82, %bb.ak
  %i.fn = phi ptr [ %.pre.i.i83, %bb.ak ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i82 ]
  %i.fo = trunc i32 %i.eq to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !67
  store i64 %i.fg, ptr %i.q, align 8, !tbaa !68
  %i.fq = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fg
  store i8 0, ptr %i.fr, align 1, !tbaa !67
  br label %.backedge

bb.al:                                            ; preds = %bb.ai
  %i.fs = icmp samesign ult i32 %i.eq, 2048
  br i1 %i.fs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ft = lshr i32 %i.eq, 6
  %i.fu = or disjoint i32 %i.ft, 192
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.fu)
  %i.fv = and i32 %i.eq, 63
  %i.fw = or disjoint i32 %i.fv, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.fw)
  br label %.backedge

.backedge:                                        ; preds = %bb.am, %bb.ap, %bb.ao, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit85, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit50, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit55, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit60, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit65, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit70, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit75, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit80, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit90
  br label %bb.b, !llvm.loop !993

bb.an:                                            ; preds = %bb.al
  %i.fx = icmp samesign ult i32 %i.eq, 65536
  br i1 %i.fx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fy = lshr i32 %i.eq, 12
  %i.fz = or disjoint i32 %i.fy, 224
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.fz)
  %i.ga = lshr i32 %i.eq, 6
  %i.gb = and i32 %i.ga, 63
  %i.gc = or disjoint i32 %i.gb, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.gc)
  %i.gd = and i32 %i.eq, 63
  %i.ge = or disjoint i32 %i.gd, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.ge)
  br label %.backedge

bb.ap:                                            ; preds = %.thread100, %bb.an
  %.1419699102 = phi i32 [ %i.fd, %.thread100 ], [ %i.eq, %bb.an ] ; 4 uses
  %i.gf = lshr i32 %.1419699102, 18
  %i.gg = or i32 %i.gf, 240
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.gg)
  %i.gh = lshr i32 %.1419699102, 12
  %i.gi = and i32 %i.gh, 63
  %i.gj = or disjoint i32 %i.gi, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.gj)
  %i.gk = lshr i32 %.1419699102, 6
  %i.gl = and i32 %i.gk, 63
  %i.gm = or disjoint i32 %i.gl, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.gm)
  %i.gn = and i32 %.1419699102, 63
  %i.go = or disjoint i32 %i.gn, 128
  call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.go)
  br label %.backedge

bb.aq:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

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

bb.bt:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.gp = load i64, ptr %i.q, align 8, !tbaa !68  ; 4 uses
  %i.gq = add i64 %i.gp, 1                        ; 3 uses
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.r
  br i1 %i.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89: ; preds = %bb.bt
  %i.gt = icmp ult i64 %i.gp, 16
  call void @llvm.assume(i1 %i.gt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.bt
  %i.gu = load i64, ptr %i.r, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89
  %i.gv = phi i64 [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i89 ]
  %i.gw = icmp ugt i64 %i.gq, %i.gv
  br i1 %i.gw, label %bb.bu, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit90

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.gp, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i88 = load ptr, ptr %i.p, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit90

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87, %bb.bu
  %i.gx = phi ptr [ %.pre.i.i88, %bb.bu ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87 ]
  %i.gy = trunc nuw nsw i32 %.pr.i to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !67
  store i64 %i.gq, ptr %i.q, align 8, !tbaa !68
  %i.ha = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gq
  store i8 0, ptr %i.hb, align 1, !tbaa !67
  br label %.backedge

bb.bv:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 128, ptr %i.a, align 4, !tbaa !220
  store i32 191, ptr %i.o, align 4, !tbaa !220
  %i.hc = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br i1 %i.hc, label %.backedge, label %.thread104, !prof !397

bb.bw:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store <4 x i32> <i32 160, i32 191, i32 128, i32 191>, ptr %i.b, align 16, !tbaa !220
  %i.hd = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.b, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br i1 %i.hd, label %.backedge, label %.thread104, !prof !397

bb.bx:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store <4 x i32> <i32 128, i32 191, i32 128, i32 191>, ptr %i.c, align 16, !tbaa !220
  %i.he = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.c, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br i1 %i.he, label %.backedge, label %.thread104, !prof !397

bb.by:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store <4 x i32> <i32 128, i32 159, i32 128, i32 191>, ptr %i.d, align 16, !tbaa !220
  %i.hf = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.d, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  br i1 %i.hf, label %.backedge, label %.thread104, !prof !397

bb.bz:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) @constinit, i64 24, i1 false), !tbaa.struct !995
  %i.hg = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.e, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br i1 %i.hg, label %.backedge, label %.thread104, !prof !397

bb.ca:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) @constinit.224, i64 24, i1 false), !tbaa.struct !995
  %i.hh = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.f, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39
  br i1 %i.hh, label %.backedge, label %.thread104, !prof !397

bb.cb:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(24) @constinit.225, i64 24, i1 false), !tbaa.struct !995
  %i.hi = call noundef zeroext i1 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE18next_byte_in_rangeESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr nonnull %i.g, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  br i1 %i.hi, label %.backedge, label %.thread104, !prof !397

bb.cc:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit:                   ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split.loopexit155:                ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  br label %.thread104.sink.split

.thread104.sink.split:                            ; preds = %bb.l, %bb.ad, %bb.af, %bb.ae, %bb.ah, %bb.ag, %bb.ac, %bb.e, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %.thread104.sink.split.loopexit155, %.thread104.sink.split.loopexit, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv.exit.thread91, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.cc
  %.str.189.sink = phi ptr [ @.str.196, %bb.as ], [ @.str.195, %bb.ar ], [ @.str.194, %bb.aq ], [ @.str.193, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ @.str.187, %.thread104.sink.split.loopexit ], [ @.str.226, %bb.cc ], [ @.str.223, %bb.bs ], [ @.str.222, %bb.br ], [ @.str.221, %bb.bq ], [ @.str.220, %bb.bp ], [ @.str.219, %bb.bo ], [ @.str.218, %bb.bn ], [ @.str.217, %bb.bm ], [ @.str.216, %bb.bl ], [ @.str.215, %bb.bk ], [ @.str.214, %bb.bj ], [ @.str.213, %bb.bi ], [ @.str.212, %bb.bh ], [ @.str.211, %bb.bg ], [ @.str.210, %bb.bf ], [ @.str.209, %bb.be ], [ @.str.208, %bb.bd ], [ @.str.207, %bb.bc ], [ @.str.206, %bb.bb ], [ @.str.205, %bb.ba ], [ @.str.204, %bb.az ], [ @.str.203, %bb.ay ], [ @.str.202, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv.exit.thread91 ], [ @.str.201, %bb.ax ], [ @.str.200, %bb.aw ], [ @.str.199, %bb.av ], [ @.str.198, %bb.au ], [ @.str.197, %bb.at ], [ @.str.188, %bb.ag ], [ @.str.188, %bb.ac ], [ @.str.189, %bb.ah ], [ @.str.189, %bb.af ], [ @.str.187, %bb.e ], [ @.str.190, %bb.ad ], [ @.str.189, %bb.ae ], [ @.str.191, %bb.l ], [ @.str.192, %.thread104.sink.split.loopexit155 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.str.189.sink, ptr %i.hj, align 8, !tbaa !473
  br label %.thread104

.thread104:                                       ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %.thread104.sink.split
  %.5 = phi i32 [ 14, %.thread104.sink.split ], [ 14, %bb.bz ], [ 14, %bb.by ], [ 14, %bb.bx ], [ 14, %bb.bw ], [ 14, %bb.bv ], [ 4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ], [ 14, %bb.cb ], [ 14, %bb.ca ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(137) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  tail call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(137) %0) #39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !471  ; 2 uses
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 45, ptr %i.p, align 1, !tbaa !67
  store i64 %i.g, ptr %i.e, align 8, !tbaa !68
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !67
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68   ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27: ; preds = %bb.d
  %i.z = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.d
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27 ]
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit28

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i26 = load ptr, ptr %i.s, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit28

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25, %bb.e
  %i.ad = phi ptr [ %.pre.i.i26, %bb.e ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i25 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 48, ptr %i.ae, align 1, !tbaa !67
  store i64 %i.v, ptr %i.t, align 8, !tbaa !68
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store i8 0, ptr %i.ag, align 1, !tbaa !67
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !68 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.f
  %i.ao = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.f
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit33

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.ah, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit33

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.g
  %i.as = phi ptr [ %.pre.i.i31, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.at = trunc nuw nsw i32 %i.c to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 %i.at, ptr %i.au, align 1, !tbaa !67
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !68
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ak
  store i8 0, ptr %i.aw, align 1, !tbaa !67
  br label %.preheader101

bb.h:                                             ; preds = %bb.a, %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit
  %i.ax = tail call noundef i32 @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(137) %0)
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
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !471
  tail call void @_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(137) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.az = load i32, ptr %i.b, align 8, !tbaa !471
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !68 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bk = icmp ugt i64 %i.bd, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.ba, align 8, !tbaa !66
  br label %_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit38

_ZN8nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bl = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bm = trunc i32 %i.az to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !67
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !68
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
end_hunk_1
