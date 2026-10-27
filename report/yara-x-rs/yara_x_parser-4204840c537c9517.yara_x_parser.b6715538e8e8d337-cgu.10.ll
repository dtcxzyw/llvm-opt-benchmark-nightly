Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.10?download=true
inline.NumInlined: 90
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE13push_back_mutCsfF8zpZz1lvn_13yara_x_parser:bb.a
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE15make_contiguousCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 7 uses
  %i.d = sub i64 %i.a, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %.not = icmp ugt i64 %i.f, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 15 uses
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %i.a, %i.f                       ; 8 uses
  %i.j = sub i64 %i.c, %i.i                       ; 9 uses
  %.not8 = icmp ult i64 %i.d, %i.i
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp ult i64 %i.d, %i.j
  br i1 %.not9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.l = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.h, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.n = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.m, i64 %i.n, i1 false)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %i.i, %i.j
  %i.p = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.s = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  %i.u = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.h, i64 %i.u, i1 false)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.g
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSj12rotate_rightCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef %i.c, i64 noundef %i.i)
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.x = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.v, i64 %i.x, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.z = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSj11rotate_leftCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef %i.c, i64 noundef %i.j)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.i, %bb.d
  %.sink = phi i64 [ %i.j, %bb.f ], [ %i.d, %bb.l ], [ 0, %bb.i ], [ 0, %bb.d ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.sink13 = phi i64 [ %.sink, %bb.m ], [ %i.f, %bb.a ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sink13
  %i.ac = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %i.c, 1
  ret { ptr, i64 } %i.ad
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE4growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 4 uses
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2r1H4NiMXj9_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.b = load i64, ptr %0, align 8, !range !7, !alias.scope !135, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !135, !noundef !4 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !135, !noundef !4 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsfF8zpZz1lvn_13yara_x_parser.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !135, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !135
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !135
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsfF8zpZz1lvn_13yara_x_parser.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !135, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !135
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !138 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE6removeCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.not = icmp ugt i64 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  %i.e = add i64 %i.d, %1                         ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 16 uses
  %.not21 = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not21, i64 0, i64 %i.f
  %.sroa.01.0 = sub nuw i64 %i.e, %i.g            ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 44 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.01.0 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  %i.l = xor i64 %1, -1
  %i.m = add i64 %i.b, %i.l                       ; 12 uses
  %i.n = icmp ult i64 %i.m, %1
  br i1 %i.n, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.d, 1                          ; 2 uses
  %.not22 = icmp ult i64 %i.o, %i.f
  %i.p = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.o, %i.p            ; 11 uses
  store i64 %.sroa.05.0, ptr %i.c, align 8
  %i.q = icmp eq i64 %i.d, %.sroa.05.0
  %i.r = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.r, %i.q
  br i1 %or.cond.i, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sub i64 %.sroa.05.0, %i.d                ; 2 uses
  %i.t = add i64 %i.s, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.t, %i.f
  %..i = select i1 %.not.i, i64 %i.t, i64 %i.s
  %i.u = icmp ult i64 %..i, %1                    ; 2 uses
  %i.v = sub i64 %i.f, %i.d                       ; 12 uses
  %i.w = sub i64 %i.f, %.sroa.05.0                ; 11 uses
  %i.x = icmp ult i64 %i.v, %1
  %i.y = icmp ult i64 %i.w, %1                    ; 3 uses
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.05.0
  %i.ab = shl nuw nsw i64 %1, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.h:                                             ; preds = %bb.e
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr [8 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.05.0
  %i.ae = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ac, i64 %i.ae, i1 false)
  %i.af = sub nuw i64 %1, %i.w
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %i.w
  %i.ah = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.ag, i64 %i.ah, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = sub nuw i64 %1, %i.w
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.w
  %i.al = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.ak, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.05.0
  %i.an = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.aj, i64 %i.an, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.k:                                             ; preds = %bb.f
  br i1 %i.y, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.f
  br i1 %i.y, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.k
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %3 = getelementptr [8 x i8], ptr %i.i, i64 %.sroa.05.0 ; 2 uses
  %4 = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %2, i64 %4, i1 false)
  %i.ao = sub nuw i64 %1, %i.v
  %5 = getelementptr [8 x i8], ptr %3, i64 %i.v
  %i.ap = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr nonnull align 8 %i.i, i64 %i.ap, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.n:                                             ; preds = %bb.k
  %i.aq = sub i64 %i.w, %i.v                      ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %7 = getelementptr [8 x i8], ptr %i.i, i64 %.sroa.05.0 ; 2 uses
  %8 = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %8, i1 false)
  %9 = getelementptr [8 x i8], ptr %7, i64 %i.v
  %i.ar = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %i.i, i64 %i.ar, i1 false)
  %i.as = sub nuw i64 %1, %i.w
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aq
  %i.au = shl nuw nsw i64 %i.as, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.at, i64 %i.au, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.o:                                             ; preds = %bb.l
  %i.av = sub nuw i64 %1, %i.v
  %i.aw = getelementptr [8 x i8], ptr %i.i, i64 %.sroa.05.0 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.v
  %i.ay = shl nuw nsw i64 %i.av, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ax, ptr nonnull align 8 %i.i, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.ba = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.az, i64 %i.ba, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.p:                                             ; preds = %bb.l
  %i.bb = sub i64 %i.v, %i.w                      ; 3 uses
  %i.bc = sub nuw i64 %1, %i.v
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bb
  %i.be = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.i, i64 %i.be, i1 false)
  %i.bf = sub i64 %i.f, %i.bb
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bf
  %i.bh = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.bg, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.05.0
  %i.bk = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bi, i64 %i.bk, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.q:                                             ; preds = %bb.b
  %i.bl = add i64 %.sroa.01.0, 1                  ; 2 uses
  %.not23 = icmp ult i64 %i.bl, %i.f
  %i.bm = select i1 %.not23, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.bl, %i.bm          ; 10 uses
  %i.bn = icmp eq i64 %.sroa.04.0, %.sroa.01.0
  %i.bo = icmp eq i64 %i.m, 0
  %or.cond.i27 = or i1 %i.bo, %i.bn
  br i1 %or.cond.i27, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = sub i64 %.sroa.01.0, %.sroa.04.0        ; 2 uses
  %i.bq = add i64 %i.bp, %i.f                     ; 2 uses
  %.not.i28 = icmp ult i64 %i.bq, %i.f
  %..i29 = select i1 %.not.i28, i64 %i.bq, i64 %i.bp
  %i.br = icmp ult i64 %..i29, %i.m               ; 2 uses
  %i.bs = sub i64 %i.f, %.sroa.04.0               ; 11 uses
  %i.bt = sub i64 %i.f, %.sroa.01.0               ; 11 uses
  %i.bu = icmp ult i64 %i.bs, %i.m
  %i.bv = icmp ult i64 %i.bt, %i.m                ; 3 uses
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.bv, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %i.br, label %bb.z, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0
  %i.bx = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.bw, i64 %i.bx, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.v:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr [8 x i8], ptr %i.i, i64 %.sroa.04.0 ; 2 uses
  %i.bz = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.by, i64 %i.bz, i1 false)
  %i.ca = sub nuw i64 %i.m, %i.bt
  %i.cb = getelementptr [8 x i8], ptr %i.by, i64 %i.bt
  %i.cc = shl nuw nsw i64 %i.ca, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.cb, i64 %i.cc, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.x:                                             ; preds = %bb.v
  %i.cd = sub nuw i64 %i.m, %i.bt
  %i.ce = getelementptr [8 x i8], ptr %i.i, i64 %.sroa.04.0 ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.bt
  %i.cg = shl nuw nsw i64 %i.cd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.cf, i64 %i.cg, i1 false)
  %i.ch = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.ce, i64 %i.ch, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.y:                                             ; preds = %bb.t
  %i.ci = getelementptr [8 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  br i1 %i.bv, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.t
  br i1 %i.bv, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0
  %11 = shl nuw nsw i64 %i.bs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %10, i64 %11, i1 false)
  %i.cj = sub nuw i64 %i.m, %i.bs
  %i.ck = shl nuw nsw i64 %i.cj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ci, ptr nonnull align 8 %i.i, i64 %i.ck, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.ab:                                            ; preds = %bb.y
  %i.cl = sub i64 %i.bt, %i.bs                    ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0
  %13 = shl nuw nsw i64 %i.bs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %12, i64 %13, i1 false)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ci, ptr nonnull align 8 %i.i, i64 %i.cm, i1 false)
  %i.cn = sub nuw i64 %i.m, %i.bt
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cl
  %i.cp = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.co, i64 %i.cp, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.ac:                                            ; preds = %bb.z
  %i.cq = sub nuw i64 %i.m, %i.bs
  %i.cr = getelementptr [8 x i8], ptr %i.j, i64 %i.bs
  %i.cs = shl nuw nsw i64 %i.cq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cr, ptr nonnull align 8 %i.i, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0
  %i.cu = shl nuw nsw i64 %i.bs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.ct, i64 %i.cu, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

bb.ad:                                            ; preds = %bb.z
  %i.cv = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.cw = sub nuw i64 %i.m, %i.bs
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cv
  %i.cy = shl nuw nsw i64 %i.cw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull align 8 %i.i, i64 %i.cy, i1 false)
  %i.cz = sub i64 %i.f, %i.cv
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cz
  %i.db = shl nuw nsw i64 %i.cv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.da, i64 %i.db, i1 false)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.04.0
  %i.dd = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.dc, i64 %i.dd, i1 false)
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.u, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.g, %bb.c
  %storemerge = add i64 %i.b, -1
  store i64 %storemerge, ptr %i.a, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit
  %.sroa.3.0 = phi i64 [ %i.k, %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE9wrap_copyCsfF8zpZz1lvn_13yara_x_parser.exit ], [ 0, %bb.a ]
  %i.de = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.df = insertvalue { i64, i64 } %i.de, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.df
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE8iter_mutCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !141 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequejE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequejE8pop_backCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.f = icmp ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = add i64 %i.h, %i.d                       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.e
  %i.j = select i1 %.not, i64 0, i64 %i.e
  %.sroa.04.0 = sub nuw i64 %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.n, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !144 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.07.0
  %i.q = sub i64 %.sroa.58.0, %.sroa.07.0
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBG_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.q)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBG_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %.sroa.11.0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEEB1B_.exit unwind label %bb.g

bb.f:                                             ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1a_.exit
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEBG_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %.sroa.11.0)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventEEB1B_.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer6tokens5TokenENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1c_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfF8zpZz1lvn_13yara_x_parser(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !147 ; 0 uses
end_hunk_0
