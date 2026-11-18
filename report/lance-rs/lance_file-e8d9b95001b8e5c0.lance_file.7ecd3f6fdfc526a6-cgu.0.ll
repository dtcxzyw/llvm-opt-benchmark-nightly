Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file:bb.a
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.091156, align 4, !alias.scope !143, !noundef !76
  %.val = load i32, ptr %i.jf, align 4, !alias.scope !144, !noundef !76 ; 3 uses
  %i.jg = icmp ult i32 %.sroa.023.0.val, %.val
  %.sroa.0.0.copyload.i.i.i.pre111 = load i32, ptr %.sroa.0.093154, align 4 ; 2 uses
  br i1 %i.jg, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.val, ptr %.sroa.0.093154, align 4, !alias.scope !18064
  store i32 %.sroa.0.0.copyload.i.i.i.pre111, ptr %i.jf, align 4, !alias.scope !18064
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18066)
  %i.ji = load i32, ptr %i.jh, align 4, !alias.scope !18067, !noundef !76 ; 2 uses
  %i.jj = getelementptr [4 x i8], ptr %.sroa.0.093154, i64 %.sroa.15.092155 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4     ; 2 uses
  %.sroa.13.030.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 8 ; 3 uses
  %i.jl = icmp ult ptr %.sroa.13.030.i.i46, %i.jk
  %.val1.i.pre.i.i47 = load i32, ptr %.sroa.0.093154, align 4, !alias.scope !18068, !noalias !76 ; 4 uses
  br i1 %i.jl, label %.lr.ph.i.i62, label %.preheader.i.i48

.preheader.i.i48:                                 ; preds = %.lr.ph.i.i62, %bb.s
  %.sroa.23.0.lcssa.i.i49 = phi i64 [ 0, %bb.s ], [ %i.kd, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i50 = phi ptr [ %i.jh, %bb.s ], [ %i.jy, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.030.i.i46, %bb.s ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ] ; 2 uses
  %i.jm = icmp eq ptr %.sroa.13.0.lcssa.i.i51, %i.jj
  br i1 %i.jm, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsaSXGKSfiU2E_10lance_file.exit.i, label %.cont.i.i52

.cont.i.i52:                                      ; preds = %.preheader.i.i48, %.cont.i.i52
  %.sroa.015.1.i7.i53 = phi ptr [ %.sroa.13.1.i6.i54, %.cont.i.i52 ], [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ]
  %.sroa.13.1.i6.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.i57, %.cont.i.i52 ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i48 ] ; 4 uses
  %.sroa.23.1.i5.i55 = phi i64 [ %i.jr, %.cont.i.i52 ], [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ] ; 2 uses
  %.val.i.else.val.i.i56 = load i32, ptr %.sroa.13.1.i6.i54, align 4, !alias.scope !18069, !noalias !18070, !noundef !76 ; 2 uses
  %i.jn = icmp uge i32 %.val1.i.pre.i.i47, %.val.i.else.val.i.i56
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.1.i5.i55 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !alias.scope !18067, !noalias !18070
  store i32 %i.jp, ptr %.sroa.015.1.i7.i53, align 4, !alias.scope !18067, !noalias !18070
  store i32 %.val.i.else.val.i.i56, ptr %i.jo, align 4, !alias.scope !18067, !noalias !18070
  %i.jq = zext i1 %i.jn to i64
  %i.jr = add i64 %.sroa.23.1.i5.i55, %i.jq       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i54, i64 4 ; 2 uses
  %i.js = icmp eq ptr %.sroa.13.1.sroa.gep.i.i57, %i.jj
  br i1 %i.js, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsaSXGKSfiU2E_10lance_file.exit.i, label %.cont.i.i52

.lr.ph.i.i62:                                     ; preds = %bb.s, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i46, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.jy, %.lr.ph.i.i62 ], [ %i.jh, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.kd, %.lr.ph.i.i62 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !18071, !noalias !18072, !noundef !76 ; 2 uses
  %i.jt = icmp uge i32 %.val1.i.pre.i.i47, %.val.i11.i.i66
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !alias.scope !18067, !noalias !18072
  store i32 %i.jv, ptr %.sroa.015.032.i.i64, align 4, !alias.scope !18067, !noalias !18072
  store i32 %.val.i11.i.i66, ptr %i.ju, align 4, !alias.scope !18067, !noalias !18072
  %i.jw = zext i1 %i.jt to i64
  %i.jx = add i64 %.sroa.23.031.i.i65, %i.jw      ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 8 ; 3 uses
  %.val.i13.i.i67 = load i32, ptr %i.jy, align 4, !alias.scope !18073, !noalias !18074, !noundef !76 ; 2 uses
  %i.jz = icmp uge i32 %.val1.i.pre.i.i47, %.val.i13.i.i67
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jx ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !alias.scope !18067, !noalias !18074
  store i32 %i.kb, ptr %.sroa.13.033.i.i63, align 4, !alias.scope !18067, !noalias !18074
  store i32 %.val.i13.i.i67, ptr %i.ka, align 4, !alias.scope !18067, !noalias !18074
  %i.kc = zext i1 %i.jz to i64
  %i.kd = add i64 %i.jx, %i.kc                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 12 ; 3 uses
  %i.ke = icmp ult ptr %.sroa.13.0.i.i68, %i.jk
  br i1 %i.ke, label %.lr.ph.i.i62, label %.preheader.i.i48

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.cont.i.i52, %.preheader.i.i48
  %.sroa.23.1.i.lcssa.i58 = phi i64 [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ], [ %i.jr, %.cont.i.i52 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i59 = phi ptr [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ], [ %.sroa.13.1.i6.i54, %.cont.i.i52 ]
  %i.kf = icmp uge i32 %.val1.i.pre.i.i47, %i.ji
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.sroa.23.1.i.lcssa.i58 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !alias.scope !18067, !noalias !18070
  store i32 %i.kh, ptr %.sroa.015.1.i.lcssa.i59, align 4, !alias.scope !18067, !noalias !18070
  store i32 %i.ji, ptr %i.kg, align 4, !alias.scope !18067, !noalias !18070
  %i.ki = zext i1 %i.kf to i64
  %i.kj = add i64 %.sroa.23.1.i.lcssa.i58, %i.ki  ; 3 uses
  %.not7.i60 = icmp ult i64 %i.kj, %.sroa.15.092155
  br i1 %.not7.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsaSXGKSfiU2E_10lance_file.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNCINvB2_9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltE0ECsaSXGKSfiU2E_10lance_file.exit.i
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.093154, i64 %i.kj ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i32, ptr %.sroa.0.093154, align 4, !alias.scope !18075
  %i.kl = load i32, ptr %i.kk, align 4, !alias.scope !18075
  store i32 %i.kl, ptr %.sroa.0.093154, align 4, !alias.scope !18075
  store i32 %.sroa.0.0.copyload.i.i8.i61, ptr %i.kk, align 4, !alias.scope !18075
  %i.km = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %i.kn = sub nuw nsw i64 %.sroa.15.092155, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.093154, i64 %i.km
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.023.0.be = phi ptr [ %i.ja, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.je, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.kn, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.jc, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ko, %bb.u ] ; 3 uses
  %i.kp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.kp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 361) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !18078 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18079)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !79, !alias.scope !18079, !noundef !76 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18079
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !18079
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 361) %4), !noalias !18079
  %i.h = load i64, ptr %i.a, align 8, !range !86, !noalias !18079, !noundef !76
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !90, !noalias !18079, !noundef !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !18079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18079
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #49
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !18079, !nonnull !76, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18079
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !18079
  %i.o = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !18079
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18142 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = mul nuw nsw i64 %2, 96                   ; 2 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18143
  %i.f = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #44, !noalias !18143 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE7reserveBK_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #49
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE7reserveBK_.exit.i: ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18145)
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE7reserveBK_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !range !110, !alias.scope !18146, !noundef !76 ; 6 uses
  %i.l = icmp ne i64 %i.k, -9223372036854775807
  %i.m = xor i64 %i.k, -9223372036854775808
  %i.n = icmp slt i64 %i.k, 0
  %i.o = select i1 %i.n, i64 %i.m, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val18.i.i = load ptr, ptr %i.p, align 8, !alias.scope !18145 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val19.i.i = load i64, ptr %i.q, align 8, !alias.scope !18145 ; 7 uses
  %i.r = icmp eq i64 %.val19.i.i, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22.i.i = load ptr, ptr %i.s, align 8, !alias.scope !18145, !nonnull !76 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23.i.i = load i64, ptr %i.t, align 8, !alias.scope !18145 ; 6 uses
  %i.u = mul nuw nsw i64 %.val23.i.i, 88          ; 2 uses
  %i.v = icmp eq i64 %.val23.i.i, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw [88 x i8], ptr %.val22.i.i, i64 %.val23.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val14.i.i = load ptr, ptr %i.y, align 8, !alias.scope !18145, !nonnull !76
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.i = load i64, ptr %i.z, align 8, !alias.scope !18145 ; 4 uses
  %i.aa = shl nuw i64 %.val15.i.i, 3              ; 4 uses
  %i.ab = icmp eq i64 %.val15.i.i, 0              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !18145, !nonnull !76
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val13.i.i = load i64, ptr %i.ad, align 8, !alias.scope !18145 ; 4 uses
  %i.ae = shl nuw nsw i64 %.val13.i.i, 3          ; 3 uses
  %i.af = icmp eq i64 %.val13.i.i, 0
  %switch = icmp ugt i64 %i.k, -3
  br label %bb.d

bb.d:                                             ; preds = %bb.az, %.lr.ph.i
  %.sroa.0.0108.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.cp, %bb.az ] ; 11 uses
  %.sroa.03.0107.i = phi i64 [ 1, %.lr.ph.i ], [ %i.co, %bb.az ]
  %storemerge106.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cq, %bb.az ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18147)
  br i1 %switch, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.aa

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.d, %bb.ag, %bb.ad, %bb.ac, %bb.aa
  %.sroa.8.0.i.i = phi i64 [ undef, %bb.d ], [ 0, %bb.ad ], [ %.val19.i.i, %bb.ac ], [ undef, %bb.aa ], [ %.val19.i.i, %bb.ag ]
  %.sroa.630.0.i.i = phi ptr [ undef, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ %.val18.i.i, %bb.ac ], [ undef, %bb.aa ], [ %i.bq, %bb.ag ] ; 3 uses
  %.sroa.0.039.i.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.ad ], [ %i.k, %bb.ac ], [ -9223372036854775806, %bb.aa ], [ %.val19.i.i, %bb.ag ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18150
  br i1 %i.v, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i, label %bb.e

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i
  store i64 0, ptr %i.a, align 8, !noalias !18150
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !18150
  br label %.loopexit.i.i

bb.e:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18151
  %i.ag = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #44, !noalias !18151 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %.lr.ph.preheader.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #49
          to label %.noexc.i.i unwind label %bb.aj, !noalias !18148

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  store i64 %.val23.i.i, ptr %i.a, align 8, !noalias !18150
  store ptr %i.ag, ptr %i.w, align 8, !noalias !18150
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.013.084.i.i.i.i = phi ptr [ %i.aj, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i ], [ %.val22.i.i, %.lr.ph.preheader.i.i.i.i ] ; 13 uses
  %.sroa.7.083.i.i.i.i = phi i64 [ %i.ak, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.10.082.i.i.i.i = phi i64 [ %4, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i ], [ %.val23.i.i, %.lr.ph.preheader.i.i.i.i ]
  %4 = add nsw i64 %.sroa.10.082.i.i.i.i, -1      ; 2 uses
  %5 = icmp eq ptr %.sroa.013.084.i.i.i.i, %3
  br i1 %5, label %.loopexit.i.i, label %bb.h

bb.g:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 88
  %i.ak = add nuw nsw i64 %.sroa.7.083.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18152)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 8
  %.val16.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !18153, !noalias !18154, !nonnull !76, !noundef !76
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 16
  %.val17.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !18153, !noalias !18154, !noundef !76 ; 4 uses
  %i.an = shl nuw i64 %.val17.i.i.i.i.i, 3        ; 4 uses
  %i.ao = icmp eq i64 %.val17.i.i.i.i.i, 0        ; 2 uses
  br i1 %i.ao, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18155
  %i.ap = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, 9) 8) #44, !noalias !18155 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #49
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !18150

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull readonly align 8 %.val16.i.i.i.i.i, i64 %i.an, i1 false), !noalias !18156
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.k, %bb.h
  %.sroa.629.0.i.i.i.i.i = phi ptr [ %i.ap, %bb.k ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !18153, !noalias !18154, !nonnull !76, !noundef !76
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 40
  %.val15.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !18153, !noalias !18154, !noundef !76 ; 4 uses
  %i.at = shl nuw i64 %.val15.i.i.i.i.i, 3        ; 4 uses
  %i.au = icmp eq i64 %.val15.i.i.i.i.i, 0        ; 2 uses
  br i1 %i.au, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18157
  %i.av = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 9) 8) #44, !noalias !18157 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.at) #49
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !18158

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %.val.i.i.i.i.i, i64 %i.at, i1 false), !noalias !18159
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.bl, %bb.x ], [ %i.bl, %bb.y ] ; 2 uses
  br i1 %i.ao, label %bb.z, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.629.0.i.i.i.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18158
  br label %bb.z

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i: ; preds = %bb.n, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %.sroa.631.0.i.i.i.i.i = phi ptr [ %i.av, %bb.n ], [ inttoptr (i64 8 to ptr), %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !18153, !noalias !18154, !noundef !76
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !range !110, !alias.scope !18153, !noalias !18154, !noundef !76 ; 6 uses
  %switch263 = icmp ugt i64 %i.bb, -3
  br i1 %switch263, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i
  %i.bc = icmp ne i64 %i.bb, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = xor i64 %i.bb, -9223372036854775808
  %i.be = icmp slt i64 %i.bb, 0
  %i.bf = select i1 %i.be, i64 %i.bd, i64 1
  switch i64 %i.bf, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %bb.t
    i64 2, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 56
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !18153, !noalias !18154
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 64
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !18153, !noalias !18154
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 56
  %.val22.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !18153, !noalias !18154, !nonnull !76, !noundef !76
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 64
  %.val23.i.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !18153, !noalias !18154, !noundef !76 ; 6 uses
  %i.bi = icmp eq i64 %.val23.i.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18160
  %i.bj = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val23.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #44, !noalias !18160 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val23.i.i.i.i.i) #49
          to label %.noexc27.i.i.i.i.i unwind label %bb.x, !noalias !18158

.noexc27.i.i.i.i.i:                               ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %.val22.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val23.i.i.i.i.i, i1 false), !noalias !18161
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.631.0.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18158
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i, %bb.w, %bb.t, %bb.s, %bb.q
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i ], [ 0, %bb.t ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, %bb.s ], [ undef, %bb.q ], [ %.val23.i.i.i.i.i, %bb.w ]
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.t ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, %bb.s ], [ undef, %bb.q ], [ %i.bj, %bb.w ]
  %.sroa.0.0.i12.i.i.i.i = phi i64 [ %i.bb, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit25.i.i.i.i.i ], [ 0, %bb.t ], [ %i.bb, %bb.s ], [ -9223372036854775806, %bb.q ], [ %.val23.i.i.i.i.i, %bb.w ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.084.i.i.i.i, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !18153, !noalias !18154, !noundef !76
  %i.bo = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %.sroa.7.083.i.i.i.i ; 11 uses
  store i64 %.val17.i.i.i.i.i, ptr %i.bo, align 8, !noalias !18150
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.629.0.i.i.i.i.i, ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.543.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.val17.i.i.i.i.i, ptr %.sroa.543.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.644.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %.val15.i.i.i.i.i, ptr %.sroa.644.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.745.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %.sroa.631.0.i.i.i.i.i, ptr %.sroa.745.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.846.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %.val15.i.i.i.i.i, ptr %.sroa.846.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.947.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %.sroa.0.0.i12.i.i.i.i, ptr %.sroa.947.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.1048.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.1048.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.1149.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i64 %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.1149.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.1250.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i64 %i.az, ptr %.sroa.1250.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %.sroa.1351.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store i64 %i.bn, ptr %.sroa.1351.0..sroa_idx.i.i.i.i, align 8, !noalias !18150
  %i.bp = icmp eq i64 %4, 0
  br i1 %i.bp, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i, %bb.g
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %.pn.i.i.i.i.i, %bb.o ], [ %.pn.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit28.i.i.i.i.i ]
  store i64 %.sroa.7.083.i.i.i.i, ptr %i.x, align 8, !noalias !18150
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50, !noalias !18150
  br label %.body.i.i

bb.aa:                                            ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.l)
  switch i64 %i.o, label %bb.ab [
    i64 0, label %bb.ac
    i64 1, label %bb.ad
    i64 2, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i
  ]

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.r, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18162
  %i.bq = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19.i.i, i64 noundef range(i64 1, 9) 1) #44, !noalias !18162 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19.i.i) #49
          to label %.noexc14.i unwind label %bb.ay, !noalias !18163

.noexc14.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %.val18.i.i, i64 range(i64 0, -9223372036854775808) %.val19.i.i, i1 false), !noalias !18164
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i

.body.i.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.aj, %bb.z
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.bt, %bb.aj ], [ %eh.lpad-body.i.i.i.i, %bb.z ] ; 3 uses
  %switch.i.i.i = icmp ugt i64 %.sroa.0.039.i.i, -3
  br i1 %switch.i.i.i, label %.body, label %bb.ah

bb.ah:                                            ; preds = %.body.i.i
  %i.bs = icmp ne i64 %.sroa.0.039.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bs)
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.0.039.i.i, 1
  br i1 %or.cond.i.i.i.i.i.i, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.630.0.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.630.0.i.i, i64 noundef %.sroa.0.039.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18148
  br label %.body

bb.aj:                                            ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.i.i:                                    ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.fold.split.i.i.i.i.i, %.lr.ph.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i
  store i64 %.val23.i.i, ptr %i.x, align 8, !noalias !18150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18150
  br i1 %i.ab, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18166
  %i.bu = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, 9) 8) #44, !noalias !18166 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aa) #49
          to label %.noexc26.i.i unwind label %bb.an, !noalias !18148

.noexc26.i.i:                                     ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 8 %.val14.i.i, i64 %i.aa, i1 false), !noalias !18167
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.an
  %.pn.i.i = phi { ptr, i32 } [ %i.bw, %bb.an ], [ %i.bz, %bb.ar ], [ %i.bz, %bb.as ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1g_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50, !noalias !18148
  br label %.body.i.i

bb.an:                                            ; preds = %bb.al
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.am, %.loopexit.i.i
  %.sroa.632.0.i.i = phi ptr [ %i.bu, %bb.am ], [ inttoptr (i64 8 to ptr), %.loopexit.i.i ] ; 2 uses
  br i1 %i.af, label %bb.az, label %bb.ao

bb.ao:                                            ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !18168
  %i.bx = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, 9) 8) #44, !noalias !18168 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ae) #49
          to label %.noexc28.i.i unwind label %bb.ar, !noalias !18148

.noexc28.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr nonnull readonly align 8 %.val.i.i, i64 %i.ae, i1 false), !noalias !18169
  br label %bb.az

bb.ar:                                            ; preds = %bb.ap
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.632.0.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18148
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.at:                                            ; preds = %bb.a
  store i64 0, ptr %i.c, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !18144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18170)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val11.i.i = load i64, ptr %i.cc, align 8, !range !110, !alias.scope !18171, !noundef !76 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val12.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !18171 ; 2 uses
  %switch.i.i15.i = icmp ugt i64 %.val11.i.i, -3
  br i1 %switch.i.i15.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ce = icmp ne i64 %.val11.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ce)
  %or.cond.i.i.i.i.i16.i = icmp slt i64 %.val11.i.i, 1
  br i1 %or.cond.i.i.i.i.i16.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i.i, i64 noundef %.val11.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18172
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i: ; preds = %bb.av, %bb.au, %bb.at
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1g_(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %1), !noalias !18144
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i.i = load i64, ptr %i.cf, align 8, !alias.scope !18171 ; 2 uses
  %i.cg = icmp eq i64 %.val7.i.i, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !18171, !nonnull !76, !noundef !76
  %i.ci = shl nuw i64 %.val7.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18172
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i: ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i17.i
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i18.i = load i64, ptr %i.cj, align 8, !alias.scope !18171 ; 2 uses
  %i.ck = icmp eq i64 %.val.i18.i, 0
  br i1 %i.ck, label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE11extend_withBL_.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !18171, !nonnull !76, !noundef !76
  %i.cm = shl nuw i64 %.val.i18.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18172
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE11extend_withBL_.exit

._crit_edge.thread.i:                             ; preds = %bb.az, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE7reserveBK_.exit.i
  %.sroa.0.0.lcssa186.i = phi ptr [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE7reserveBK_.exit.i ], [ %i.cp, %bb.az ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.lcssa186.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !18144
  store i64 %2, ptr %i.i, align 8, !alias.scope !18144
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE11extend_withBL_.exit

bb.ay:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.aq, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.534.0.i.i = phi ptr [ %i.bx, %bb.aq ], [ inttoptr (i64 8 to ptr), %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0108.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18148
  %i.co = add nuw nsw i64 %.sroa.03.0107.i, 1     ; 2 uses
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 24
  store i64 %.val15.i.i, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 32
  store ptr %.sroa.632.0.i.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.6.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 40
  store i64 %.val15.i.i, ptr %.sroa.6.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.724.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 48
  store i64 %.val13.i.i, ptr %.sroa.724.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.8.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 56
  store ptr %.sroa.534.0.i.i, ptr %.sroa.8.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.9.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 64
  store i64 %.val13.i.i, ptr %.sroa.9.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.10.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 72
  store i64 %.sroa.0.039.i.i, ptr %.sroa.10.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.11.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 80
  store ptr %.sroa.630.0.i.i, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %.sroa.12.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 88
  store i64 %.sroa.8.0.i.i, ptr %.sroa.12.0..sroa.0.0.sroa_idx.i, align 8, !noalias !18163
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0108.i, i64 96 ; 2 uses
  %i.cq = add nuw nsw i64 %storemerge106.i, 1
  %exitcond.not.i = icmp eq i64 %i.co, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.d

.body:                                            ; preds = %.body.i.i, %bb.ah, %bb.ai, %bb.ay
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cn, %bb.ay ], [ %.pn.pn.i.i, %bb.ai ], [ %.pn.pn.i.i, %bb.ah ], [ %.pn.pn.i.i, %.body.i.i ]
  store i64 %storemerge106.i, ptr %i.i, align 8, !alias.scope !18144
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %1) #50, !noalias !18144
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
  br label %bb.ba

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataE11extend_withBL_.exit: ; preds = %._crit_edge.thread.i, %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ba:                                            ; preds = %bb.bb, %.body
  %.pn5 = phi { ptr, i32 } [ %i.cr, %bb.bb ], [ %eh.lpad-body.i, %.body ]
  resume { ptr, i32 } %.pn5

bb.bb:                                            ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_(ptr noalias noundef align 8 dereferenceable(96) %1) #50
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBP_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18222 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18224)
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !18224, !nonnull !76, !noundef !76 ; 5 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !18224 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !18224 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload.i, align 16, !noalias !18225
  %i.e = icmp eq i64 %.sroa.43.0.copyload.i, 0
  br i1 %i.e, label %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.f = mul i64 %.sroa.43.0.copyload.i, 48       ; 2 uses
  %i.g = add i64 %i.f, 48                         ; 2 uses
  %i.h = add i64 %.sroa.43.0.copyload.i, 17
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB6_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request0B8_:bb.a
bb.go:                                            ; preds = %bb.dg, %.thread300
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.thread367:                                       ; preds = %bb.gl, %bb.gj
  %.pn62.pn370 = phi { ptr, i32 } [ %.pn.pn, %bb.gj ], [ %i.tw, %bb.gl ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #50
          to label %bb.gn unwind label %bb.fp

bb.gp:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6273, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0, i64 7, i1 false)
  %.sroa.13276.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13276.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13276, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.4, i64 16, i1 false)
  br label %bb.gm

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.gs, %bb.gr, %bb.gm
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val79 = load i64, ptr %i.ue, align 8          ; 2 uses
  %i.uf = icmp eq i64 %.val79, 0
  br i1 %i.uf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit
  %i.ug = getelementptr i8, ptr %1, i64 32
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split

bb.gr:                                            ; preds = %bb.gm
  %.val73 = load i64, ptr %1, align 8             ; 2 uses
  %i.uh = icmp eq i64 %.val73, 0
  br i1 %i.uh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ui = getelementptr i8, ptr %1, i64 8
  %.val74 = load ptr, ptr %i.ui, align 8, !nonnull !76, !noundef !76
  %i.uj = shl nuw i64 %.val73, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74, i64 noundef %i.uj, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168: ; preds = %bb.gv, %bb.gu, %bb.gn
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val75 = load i64, ptr %i.uk, align 8          ; 2 uses
  %i.ul = icmp eq i64 %.val75, 0
  br i1 %i.ul, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit167, label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168
  %i.um = getelementptr i8, ptr %1, i64 32
  %.val76 = load ptr, ptr %i.um, align 8, !nonnull !76, !noundef !76
  %i.un = shl nuw i64 %.val75, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76, i64 noundef %i.un, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit167

bb.gu:                                            ; preds = %bb.gn
  %.val71 = load i64, ptr %1, align 8             ; 2 uses
  %i.uo = icmp eq i64 %.val71, 0
  br i1 %i.uo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.up = getelementptr i8, ptr %1, i64 8
  %.val72 = load ptr, ptr %i.up, align 8, !nonnull !76, !noundef !76
  %i.uq = shl nuw i64 %.val71, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB6_24StructuralReadProjectionNtB8_14ReadProjection7prepare0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !30047 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 12 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 17 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 10 uses
  %i.u = alloca [96 x i8], align 8                ; 11 uses
  %i.v = alloca [96 x i8], align 8                ; 17 uses
  %i.w = alloca [32 x i8], align 1                ; 4 uses
  %i.x = alloca [5 x i8], align 1                 ; 5 uses
  %i.y = alloca [1920 x i8], align 8              ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 1               ; 4 uses
  %i.ab = alloca [1920 x i8], align 8             ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [40 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 3 uses
  %i.af = alloca [96 x i8], align 8               ; 16 uses
  %i.ag = alloca [16 x i8], align 16              ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 1               ; 4 uses
  %i.aj = alloca [5 x i8], align 1                ; 5 uses
  %i.ak = alloca [1920 x i8], align 8             ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 1               ; 4 uses
  %i.an = alloca [1920 x i8], align 8             ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 10 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [40 x i8], align 8               ; 5 uses
  %i.at = alloca [56 x i8], align 8               ; 25 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [96 x i8], align 8               ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 7 uses
  %i.ax = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.10282.i = alloca [80 x i8], align 8      ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 15 uses
  %.sroa.3.i = alloca [31 x i8], align 1          ; 7 uses
  %.sroa.5243.i = alloca [24 x i8], align 8       ; 6 uses
  %i.az = alloca [56 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 13 uses
  %i.bc = alloca [56 x i8], align 8               ; 10 uses
  %i.bd = alloca [8 x i8], align 8                ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 6 uses
  %i.bf = alloca [56 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [56 x i8], align 8               ; 11 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5106.sroa.6 = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.3.sroa.0.sroa.0 = alloca [7 x i8], align 1 ; 2 uses
  %.sroa.3.sroa.0.sroa.4 = alloca [16 x i8], align 1 ; 3 uses
  %.sroa.3.sroa.0.sroa.6 = alloca [16 x i8], align 8 ; 2 uses
  %.sroa.10101.sroa.0.sroa.0 = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.10101.sroa.0.sroa.7 = alloca [16 x i8], align 1 ; 7 uses
  %.sroa.10101.sroa.0.sroa.8 = alloca [16 x i8], align 1 ; 7 uses
  %i.bk = alloca [56 x i8], align 8               ; 11 uses
  %i.bl = alloca [24 x i8], align 8               ; 8 uses
  %i.bm = alloca [56 x i8], align 8               ; 10 uses
  %i.bn = alloca [56 x i8], align 8               ; 23 uses
  %.sroa.6.sroa.6.sroa.0 = alloca [7 x i8], align 1 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 8, !range !98, !noundef !76
  switch i8 %i.bp, label %default.unreachable353 [
    i8 0, label %bb.b
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ah
  ]

default.unreachable353:                           ; preds = %bb.dp, %bb.as, %bb.ah, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.br = load ptr, ptr %1, align 8, !nonnull !76, !align !77, !noundef !76
  store ptr %i.br, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !76, !align !77, !noundef !76 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !86, !noundef !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bw = trunc nuw i64 %i.bu to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.bw, label %bb.y, label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.bz = load ptr, ptr %i.bx, align 8, !nonnull !76, !align !77, !noundef !76
  %.val25 = load ptr, ptr %i.bv, align 8, !nonnull !76, !noundef !76
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  invoke void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19validate_projection(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ca)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30048)
  %i.cb = load i8, ptr %i.bm, align 8, !range !99, !alias.scope !30049, !noundef !76 ; 2 uses
  %.not.i = icmp eq i8 %i.cb, -1
  br i1 %.not.i, label %bb.g, label %bb.w

bb.f:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %.val24 = load ptr, ptr %i.bv, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val24, i64 48
  %.val = load ptr, ptr %i.cd, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val24, i64 56
  %.val21 = load i64, ptr %i.ce, align 8, !noundef !76 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30051)
  %i.cf = shl nuw nsw i64 %.val21, 3              ; 2 uses
  %i.cg = icmp eq i64 %.val21, 0
  br i1 %i.cg, label %.loopexit161, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !30052
  %i.ch = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cf, i64 noundef range(i64 1, 9) 8) #44, !noalias !30052 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.i, label %.lr.ph.preheader.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cf) #49
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.i
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %3 = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.val21
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.013.023.i.i = phi ptr [ %i.ck, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %.val, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.cj, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %4, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %.val21, %.lr.ph.preheader.i.i ]
  %4 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %5 = icmp eq ptr %.sroa.013.023.i.i, %3
  br i1 %5, label %.loopexit161, label %6

6:                                                ; preds = %.lr.ph.i.i
  %.val12.i.i = load ptr, ptr %.sroa.013.023.i.i, align 8, !alias.scope !30051, !noalias !30050, !nonnull !76, !noundef !76 ; 2 uses
  %7 = atomicrmw add ptr %.val12.i.i, i64 1 monotonic, align 8, !noalias !30053
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %bb.j, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i

bb.j:                                             ; preds = %6
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %6
  %i.cj = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i, i64 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.7.022.i.i
  store ptr %.val12.i.i, ptr %i.cl, align 8, !noalias !30053
  %i.cm = icmp eq i64 %4, 0
  br i1 %i.cm, label %.loopexit161, label %.lr.ph.i.i

.loopexit161:                                     ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i, %.lr.ph.i.i, %bb.g
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.ch, %.lr.ph.i.i ], [ %i.ch, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i ]
  store i64 %.val21, ptr %i.bl, align 8, !alias.scope !30050, !noalias !30051
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !30050, !noalias !30051
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.val21, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !30050, !noalias !30051
  %i.cn = load ptr, ptr %i.bx, align 8, !nonnull !76, !align !77, !noundef !76 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !30055
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !30054, !nonnull !76, !noundef !76 ; 4 uses
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !30055
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.loopexit161
  store ptr %i.cp, ptr %i.bg, align 8, !noalias !30055
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i = load ptr, ptr %i.cs, align 8, !alias.scope !30054, !nonnull !76, !noundef !76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val2.i = load i64, ptr %i.ct, align 8, !alias.scope !30054, !noundef !76 ; 4 uses
  %i.cu = shl nuw nsw i64 %.val2.i, 2             ; 3 uses
  %i.cv = icmp eq i64 %.val2.i, 0
  br i1 %i.cv, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !30056
  %i.cw = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cu, i64 noundef range(i64 1, 9) 4) #44, !noalias !30056 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.cu) #49
          to label %.noexc.i unwind label %bb.p, !noalias !30055

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr nonnull readonly align 4 %.val.i, i64 %i.cu, i1 false), !noalias !30057
  br label %bb.s

bb.o:                                             ; preds = %.loopexit161
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !noalias !30058
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %.body unwind label %bb.r, !noalias !30055

bb.r:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30055
  unreachable

.body:                                            ; preds = %bb.p, %bb.q
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.bl) #50
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.k
  %.sroa.5.0.i30 = phi ptr [ %i.cw, %bb.n ], [ inttoptr (i64 4 to ptr), %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !30055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %.val2.i, ptr %i.dc, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %.sroa.5.0.i30, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i64 %.val2.i, ptr %.sroa.6.0..sroa_idx71, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.cp, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB1s_24StructuralReadProjectionNtB1u_14ReadProjection7prepare00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEEB1w_.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection11read_length(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bh, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bn)
          to label %bb.jy unwind label %bb.jx

bb.u:                                             ; preds = %bb.jw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit, %bb.jx, %.body42, %.body
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.v:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.cy, %.body ], [ %i.cc, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.x

bb.w:                                             ; preds = %bb.e
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx60, i64 7, i1 false)
  %.sroa.8.sroa.0.sroa.6.0..sroa.8.0..sroa_idx60.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.8.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.8.sroa.0.sroa.6.0..sroa.8.0..sroa_idx60.sroa_idx, align 8, !alias.scope !30059
  %.sroa.8.sroa.0.sroa.7.0..sroa.8.0..sroa_idx60.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5106.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.0.sroa.7.0..sroa.8.0..sroa_idx60.sroa_idx, i64 32, i1 false)
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx60.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx60.sroa_idx, align 8, !alias.scope !30059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ka

bb.x:                                             ; preds = %.body42, %bb.kd, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.c, %bb.jx, %bb.kc
  %.pn18.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp536, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.v ], [ %i.ama, %bb.kc ], [ %i.alw, %bb.jx ], [ %i.als, %bb.kd ], [ %i.by, %bb.c ], [ %eh.lpad-body43, %.body42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  store i8 2, ptr %i.bo, align 8
  resume { ptr, i32 } %.pn18.pn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i, %bb.y
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.x

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.de = load ptr, ptr %i.bx, align 8, !nonnull !76, !align !77, !noundef !76 ; 4 uses
  %.val23 = load ptr, ptr %i.bv, align 8, !nonnull !76, !noundef !76
  %i.df = getelementptr inbounds nuw i8, ptr %.val23, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !30061
  invoke void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider37validate_indexed_projection_structure(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.df)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.y
  %i.dg = load i8, ptr %i.bf, align 8, !range !99, !noalias !30061, !noundef !76
  %.not.i33 = icmp eq i8 %i.dg, -1
  br i1 %.not.i33, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 56, i1 false), !noalias !30062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !30061
  br label %_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection16validate_indexed.exit

bb.aa:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !30061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30063)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !30064, !nonnull !76, !noundef !76 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !30065, !noundef !76 ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 48038396025285291
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i64 %i.dk, 0
  br i1 %i.dm, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !30065, !nonnull !76, !noundef !76 ; 2 uses
  %.idx = mul nuw nsw i64 %i.dk, 192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc35
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ds, i64 192 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dp
  br i1 %i.dr, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ab
  %.sroa.01.0.i.i.i471 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.ab ] ; 2 uses
  %i.ds = phi ptr [ %i.do, %.lr.ph ], [ %i.dq, %bb.ab ] ; 2 uses
  %i.dt = invoke fastcc { i64, i64 } @_RNvNtCsaSXGKSfiU2E_10lance_file6reader31indexed_projection_column_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ds)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %bb.ac
  %i.du = extractvalue { i64, i64 } %i.dt, 0
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = extractvalue { i64, i64 } %i.dt, 1
  %i.dx = add i64 %i.dw, %.sroa.01.0.i.i.i471     ; 3 uses
  %i.dy = icmp uge i64 %i.dx, %.sroa.01.0.i.i.i471
  %narrow.i.not.i.i.i = select i1 %i.dv, i1 %i.dy, i1 false
  br i1 %narrow.i.not.i.i.i, label %bb.ab, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.i: ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !30064, !noundef !76 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i64 %i.dx, %i.ea
  br i1 %i.ec, label %.thread354, label %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i

_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i: ; preds = %.noexc35, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.i, %bb.aa
  invoke void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider24indexed_projection_error(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.df)
          to label %_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection16validate_indexed.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection16validate_indexed.exit: ; preds = %bb.z, %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.thread.i
  %.pr = load i8, ptr %i.bk, align 8, !alias.scope !30066 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30067)
  %.not.i37 = icmp eq i8 %.pr, -1
  br i1 %.not.i37, label %.thread354, label %bb.ad

.thread354:                                       ; preds = %_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider35projection_matches_indexed_metadata.exit.i, %_RNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB4_24StructuralReadProjectionNtB6_14ReadProjection16validate_indexed.exit
end_hunk_1
begin_hunk_2_@_RNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB6_24StructuralReadProjectionNtB8_14ReadProjection7prepare0Ba_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.t

bb.jx:                                            ; preds = %bb.t
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader18PreparedProjectionEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.bn) #50
          to label %bb.x unwind label %bb.u

bb.jy:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !30286)
  %i.alx = load i8, ptr %i.bh, align 8, !range !99, !alias.scope !30287, !noundef !76 ; 2 uses
  %.not.i49 = icmp eq i8 %i.alx, -1
  br i1 %.not.i49, label %bb.jz, label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  %i.aly = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.alz = load i64, ptr %i.aly, align 8, !alias.scope !30287, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %.sroa.0130.0.copyload = load i64, ptr %i.bn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx131, i64 7, i1 false)
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.6132.0.copyload = load i64, ptr %.sroa.6132.0..sroa_idx, align 8
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5106.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7133.0..sroa_idx, i64 32, i1 false)
  br label %bb.ka

bb.ka:                                            ; preds = %bb.w, %bb.kb, %bb.ke, %bb.ad, %bb.jz
  %.sroa.6.sroa.6.sroa.6.1 = phi i64 [ %.sroa.6132.0.copyload, %bb.jz ], [ %.sroa.8114.0.copyload116, %bb.kb ], [ %.sroa.10101.sroa.0.sroa.6.0.copyload, %bb.ke ], [ %.sroa.8.sroa.078.sroa.6.0.copyload, %bb.ad ], [ %.sroa.8.sroa.0.sroa.6.0.copyload, %bb.w ]
  %.sroa.6.sroa.0.1 = phi i8 [ %.sroa.4.0.copyload, %bb.jz ], [ %i.alx, %bb.kb ], [ %.sroa.099.0.copyload100, %bb.ke ], [ %.pr, %bb.ad ], [ %i.cb, %bb.w ]
  %.sroa.10.1 = phi i64 [ %i.alz, %bb.jz ], [ %.sroa.10117.sroa.6.0.copyload, %bb.kb ], [ %.sroa.10101.sroa.6.0.copyload, %bb.ke ], [ %.sroa.8.sroa.679.0.copyload, %bb.ad ], [ %.sroa.8.sroa.6.0.copyload, %bb.w ]
  %.sroa.050.1 = phi i64 [ %.sroa.0130.0.copyload, %bb.jz ], [ -1, %bb.kb ], [ -1, %bb.ke ], [ -1, %bb.ad ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  store i64 %.sroa.050.1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.sroa.0.1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.sroa.0, i64 7, i1 false)
  %.sroa.6.sroa.6.sroa.6.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.sroa.6.1, ptr %.sroa.6.sroa.6.sroa.6.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.sroa.7.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.6.sroa.7.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5106.sroa.6, i64 32, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 8
  br label %common.ret

bb.kb:                                            ; preds = %bb.jy
  %.sroa.8112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8112.0..sroa_idx113, i64 7, i1 false)
  %.sroa.8114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.8114.0.copyload116 = load i64, ptr %.sroa.8114.0..sroa_idx115, align 8, !alias.scope !30288
  %.sroa.10117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5106.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10117.0..sroa_idx118, i64 32, i1 false)
  %.sroa.10117.sroa.6.0..sroa.10117.0..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.sroa.10117.sroa.6.0.copyload = load i64, ptr %.sroa.10117.sroa.6.0..sroa.10117.0..sroa_idx118.sroa_idx, align 8, !alias.scope !30288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader18PreparedProjectionEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.bn)
          to label %bb.ka unwind label %bb.kc

bb.kc:                                            ; preds = %bb.jo, %bb.kb
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.jv, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #50
          to label %bb.kd unwind label %bb.u

bb.kd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.x

bb.ke:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0.sroa.0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5106.sroa.6, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.0.sroa.4, i64 16, i1 false)
  %.sroa.5106.sroa.6.31..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5106.sroa.6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5106.sroa.6.31..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.0.sroa.6, i64 16, i1 false)
  br label %bb.ka
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06readerNtB6_17V20ReadProjectionNtNtBc_6reader14ReadProjection7prepare0Bc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !30321 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.9.i.sroa.0 = alloca [7 x i8], align 1    ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.528.sroa.0 = alloca [7 x i8], align 1    ; 4 uses
  %.sroa.821.sroa.0 = alloca [7 x i8], align 1    ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 17 uses
  %.sroa.4.sroa.4.sroa.0 = alloca [7 x i8], align 1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !98, !noundef !76
  switch i8 %i.i, label %default.unreachable164 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable164:                           ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !76, !align !77, !noundef !76
  %i.n = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.n, ptr %i.j, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.o, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.m, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.sroa.0)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #49
  unreachable

bb.d:                                             ; preds = %bb.ai, %bb.ah
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn5.pn.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821.sroa.0)
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !115, !noalias !30322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.sroa.0)
  switch i8 %.pre, label %default.unreachable164 [
    i8 0, label %bb.f
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !30322, !nonnull !76, !align !77, !noundef !76 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !noalias !30322, !nonnull !76, !align !77, !noundef !76 ; 6 uses
  %i.v = load i64, ptr %i.s, align 8, !range !86, !noalias !30322, !noundef !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.ab, label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30322
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30322
  %.val12.i = load ptr, ptr %i.w, align 8, !noalias !30322, !nonnull !76, !noundef !76
  %i.z = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  invoke void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19validate_projection(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.z)
          to label %bb.i unwind label %bb.g, !noalias !30322

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30323)
  %i.aa = load i8, ptr %i.e, align 8, !range !99, !alias.scope !30324, !noalias !30322, !noundef !76 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i, label %bb.k, label %bb.y

bb.j:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30322
  %.val11.i = load ptr, ptr %i.w, align 8, !noalias !30322, !nonnull !76, !noundef !76 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val11.i, i64 48
  %.val.i = load ptr, ptr %i.ac, align 8, !noalias !30322, !nonnull !76, !noundef !76 ; 2 uses
  %i.ad = getelementptr i8, ptr %.val11.i, i64 56
  %.val8.i = load i64, ptr %i.ad, align 8, !noalias !30322, !noundef !76 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30326)
  %i.ae = shl nuw nsw i64 %.val8.i, 3             ; 2 uses
  %i.af = icmp eq i64 %.val8.i, 0
  br i1 %i.af, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !30327
  %i.ag = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, 9) 8) #44, !noalias !30327 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %.lr.ph.preheader.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ae) #49
          to label %.noexc.i unwind label %bb.j, !noalias !30322

.noexc.i:                                         ; preds = %bb.m
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %3 = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.val8.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.013.023.i.i.i = phi ptr [ %i.aj, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.ai, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %4, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val8.i, %.lr.ph.preheader.i.i.i ]
  %4 = add nsw i64 %.sroa.10.021.i.i.i, -1        ; 2 uses
  %5 = icmp eq ptr %.sroa.013.023.i.i.i, %3
  br i1 %5, label %.loopexit.i, label %6

6:                                                ; preds = %.lr.ph.i.i.i
  %.val12.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !30326, !noalias !30328, !nonnull !76, !noundef !76 ; 2 uses
  %7 = atomicrmw add ptr %.val12.i.i.i, i64 1 monotonic, align 8, !noalias !30329
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %bb.n, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.n:                                             ; preds = %6
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %6
  %i.ai = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.7.022.i.i.i
  store ptr %.val12.i.i.i, ptr %i.ak, align 8, !noalias !30329
  %i.al = icmp eq i64 %4, 0
  br i1 %i.al, label %.loopexit.i, label %.lr.ph.i.i.i

.loopexit.i:                                      ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.i.i.i, %bb.k
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ag, %.lr.ph.i.i.i ], [ %i.ag, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ] ; 2 uses
  store i64 %.val8.i, ptr %i.d, align 8, !alias.scope !30325, !noalias !30330
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !30325, !noalias !30330
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val8.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !30325, !noalias !30330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30332
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !30331, !noalias !30322, !nonnull !76, !noundef !76 ; 5 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !30332
  %i.ap = icmp slt i64 %i.ao, 0
  %i.aq = trunc i64 %.val8.i to i8
  %i.ar = ptrtoint ptr %.sroa.5.0.i.i to i64      ; 2 uses
  br i1 %i.ap, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  store ptr %i.an, ptr %i.a, align 8, !noalias !30332
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i = load ptr, ptr %i.as, align 8, !alias.scope !30331, !noalias !30322, !nonnull !76, !noundef !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val2.i.i = load i64, ptr %i.at, align 8, !alias.scope !30331, !noalias !30322, !noundef !76 ; 6 uses
  %i.au = shl nuw nsw i64 %.val2.i.i, 2           ; 3 uses
  %i.av = icmp eq i64 %.val2.i.i, 0
  br i1 %i.av, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !30333
  %i.aw = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, 9) 4) #44, !noalias !30333 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.au) #49
          to label %.noexc.i.i unwind label %bb.t, !noalias !30332

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr nonnull readonly align 4 %.val.i.i, i64 %i.au, i1 false), !noalias !30334
  br label %bb.aj

bb.s:                                             ; preds = %.loopexit.i
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !30335
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.u, label %.body.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i unwind label %bb.v, !noalias !30332

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30332
  unreachable

.body.i:                                          ; preds = %bb.u, %bb.t
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.d) #50
          to label %bb.x unwind label %bb.w, !noalias !30322

bb.w:                                             ; preds = %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30322
  unreachable

bb.x:                                             ; preds = %.body.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ay, %.body.i ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30322
  br label %bb.z

bb.y:                                             ; preds = %bb.i
  %.sroa.8.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx2.i, i64 7, i1 false), !noalias !30322
  %.sroa.9.i.sroa.7.0..sroa.8.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bd = load <2 x i64>, ptr %.sroa.9.i.sroa.7.0..sroa.8.0..sroa_idx2.i.sroa_idx, align 8, !noalias !30322
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.6.0.copyload.i = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !30336, !noalias !30322
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.8.sroa.7.0.copyload.i = load ptr, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !30336, !noalias !30322
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !30336, !noalias !30322
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.8.sroa.9.0.copyload.i = load ptr, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !30336, !noalias !30322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30322
  br label %bb.ar

bb.z:                                             ; preds = %bb.ad, %bb.aa, %bb.x, %bb.g
  %.pn5.pn.i = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %i.bh, %bb.ad ], [ %i.y, %bb.g ], [ %.pn.i, %bb.x ]
  store i8 2, ptr %i.q, align 8, !noalias !30322
  br label %.body

bb.aa:                                            ; preds = %bb.ab
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30322
  br label %bb.z

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30322
  %.val10.i = load ptr, ptr %i.w, align 8, !noalias !30322, !nonnull !76, !noundef !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  invoke void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider37validate_indexed_projection_structure(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bf)
          to label %bb.ac unwind label %bb.aa, !noalias !30322

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30337)
  %i.bg = load i8, ptr %i.c, align 8, !range !99, !alias.scope !30338, !noalias !30322, !noundef !76 ; 2 uses
  %.not.i16.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i16.i, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30322
  br label %bb.z

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30322
  %.val9.i = load ptr, ptr %i.w, align 8, !noalias !30322, !nonnull !76, !noundef !76
  %i.bi = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  invoke void @_RNvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20FileMetadataProvider24indexed_projection_error(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bi)
          to label %bb.af unwind label %bb.ad, !noalias !30322

bb.af:                                            ; preds = %bb.ae
  %.sroa.518.8.copyload.i = load i8, ptr %i.b, align 8, !noalias !30322
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.8..sroa_idx.i, i64 7, i1 false), !noalias !30322
  %.sroa.9.i.sroa.7.0..sroa.9.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load <2 x i64>, ptr %.sroa.9.i.sroa.7.0..sroa.9.8..sroa_idx.i.sroa_idx, align 8, !noalias !30322
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !30322
  %.sroa.12.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.12.8.copyload.i = load ptr, ptr %.sroa.12.8..sroa_idx.i, align 8, !noalias !30322
  %.sroa.13.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.13.8.copyload.i = load i64, ptr %.sroa.13.8..sroa_idx.i, align 8, !noalias !30322
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.14.8.copyload.i = load ptr, ptr %.sroa.14.8..sroa_idx.i, align 8, !noalias !30322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30322
  br label %bb.ar

bb.ag:                                            ; preds = %bb.ac
  %.sroa.813.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.813.0..sroa_idx14.i, i64 7, i1 false), !noalias !30322
  %.sroa.9.i.sroa.7.0..sroa.813.0..sroa_idx14.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load <2 x i64>, ptr %.sroa.9.i.sroa.7.0..sroa.813.0..sroa_idx14.i.sroa_idx, align 8, !noalias !30322
  %.sroa.813.sroa.6.0..sroa.813.0..sroa_idx14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.813.sroa.6.0.copyload.i = load i64, ptr %.sroa.813.sroa.6.0..sroa.813.0..sroa_idx14.sroa_idx.i, align 8, !alias.scope !30339, !noalias !30322
  %.sroa.813.sroa.7.0..sroa.813.0..sroa_idx14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.813.sroa.7.0.copyload.i = load ptr, ptr %.sroa.813.sroa.7.0..sroa.813.0..sroa_idx14.sroa_idx.i, align 8, !alias.scope !30339, !noalias !30322
  %.sroa.813.sroa.8.0..sroa.813.0..sroa_idx14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.813.sroa.8.0.copyload.i = load i64, ptr %.sroa.813.sroa.8.0..sroa.813.0..sroa_idx14.sroa_idx.i, align 8, !alias.scope !30339, !noalias !30322
  %.sroa.813.sroa.9.0..sroa.813.0..sroa_idx14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.813.sroa.9.0.copyload.i = load ptr, ptr %.sroa.813.sroa.9.0..sroa.813.0..sroa_idx14.sroa_idx.i, align 8, !alias.scope !30339, !noalias !30322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30322
  br label %bb.ar

bb.ah:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @599) #49
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @599) #49
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.ai
  unreachable

common.ret:                                       ; preds = %bb.an, %bb.ar, %bb.am
  %.sroa.4.sroa.7.0 = phi i64 [ %i.bp, %bb.am ], [ %.sroa.13.0.i.ph, %bb.ar ], [ %.sroa.1077.sroa.8.0.copyload, %bb.an ]
  %.sroa.4.sroa.6.0 = phi ptr [ %i.bo, %bb.am ], [ %.sroa.12.0.i.ph, %bb.ar ], [ %.sroa.1077.sroa.7.0.copyload, %bb.an ]
  %.sroa.4.sroa.5.0 = phi i64 [ %i.bn, %bb.am ], [ %.sroa.11.0.i.ph, %bb.ar ], [ %.sroa.1077.sroa.6.0.copyload, %bb.an ]
  %.sroa.4.sroa.0.0 = phi i8 [ %i.bm, %bb.am ], [ %.sroa.518.0.i.ph, %bb.ar ], [ %i.br, %bb.an ]
  %.sroa.6.0 = phi i64 [ %i.bt, %bb.am ], [ %i.ca, %bb.ar ], [ %.sroa.1077.sroa.9.0.copyload, %bb.an ]
  %.sroa.07.0 = phi i64 [ %.sroa.0.0.copyload, %bb.am ], [ -1, %bb.ar ], [ -1, %bb.an ]
  %i.bl = phi <2 x i64> [ %i.bv, %bb.am ], [ %i.bz, %bb.ar ], [ %i.bw, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %.sroa.07.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx9, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx9.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.4.sroa.0, i64 7, i1 false)
  %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx9.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.bl, ptr %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx9.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4.sroa.5.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx9.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.4.sroa.6.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx9.sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statisticsNtB2_19StatisticsCollector6finish:bb.a
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 9, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.aj, !noalias !31357

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !31355
  invoke void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ds)
          to label %bb.an unwind label %bb.am, !noalias !31357

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(112) %i.x) #50
          to label %bb.ai unwind label %bb.ct, !noalias !31357

bb.an:                                            ; preds = %bb.al
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @487, i64 noundef 9, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, i1 noundef zeroext true)
          to label %bb.ao unwind label %bb.am, !noalias !31357

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !31355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ex, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !noalias !31357
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fd, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !31357
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fe, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false), !noalias !31357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !31355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !31355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !31355
  store i64 3, ptr %i.n, align 8, !noalias !31355
  store ptr %i.ex, ptr %i.be, align 8, !noalias !31355
  store i64 3, ptr %i.bf, align 8, !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !31355
  call void @llvm.experimental.noalias.scope.decl(metadata !31366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31367
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31368
  %i.ff = call noundef align 8 dereferenceable_or_null(336) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 336, i64 noundef range(i64 1, 9) 8) #44, !noalias !31368 ; 14 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ap, label %.lr.ph.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 336) #49
          to label %.noexc49.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !31357

.noexc49.i.i.i:                                   ; preds = %bb.ap
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ao
  store i64 3, ptr %i.i, align 8, !noalias !31367
  store ptr %i.ff, ptr %i.bg, align 8, !noalias !31367
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !31369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31370
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ex)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !31371

.loopexit.i.i.i.i.i:                              ; preds = %bb.ay, %bb.aw, %.lr.ph.i.i.i.i.i
  %.sroa.7.043.i.i.lcssa42.i.i.i.a = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ 1, %bb.aw ], [ 2, %bb.ay ]
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %4

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31370
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fh)
          to label %bb.at unwind label %bb.as, !noalias !31372

bb.aq:                                            ; preds = %bb.au, %bb.as
  %.sroa.7.043.i.i46.i.i.i = phi i64 [ %.sroa.7.043.i.i.lcssa44.i.i.i, %bb.au ], [ %.sroa.7.043.i.i.lcssa43.i.i.i.a, %bb.as ] ; 2 uses
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fs, %bb.au ], [ %i.fk, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31373)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !31373, !noalias !31370 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.fi, label %4, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !31373, !noalias !31370, !nonnull !76, !noundef !76
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !31374
  br label %4

bb.as:                                            ; preds = %.noexc.i.i.2.i.i.i, %.noexc.i.i.1.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.7.043.i.i.lcssa43.i.i.i.a = phi i64 [ 0, %.noexc.i.i.i.i.i ], [ 1, %.noexc.i.i.1.i.i.i ], [ 2, %.noexc.i.i.2.i.i.i ]
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.at:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  %i.fm = load i8, ptr %i.fl, align 8, !range !95, !alias.scope !31375, !noalias !31376, !noundef !76
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !31375, !noalias !31376, !noundef !76
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 105
  %i.fq = load i8, ptr %i.fp, align 1, !range !95, !alias.scope !31375, !noalias !31376, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31370
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fr)
          to label %bb.aw unwind label %bb.au, !noalias !31372

bb.au:                                            ; preds = %bb.az, %bb.ax, %bb.at
  %.sroa.7.043.i.i.lcssa44.i.i.i = phi i64 [ 0, %bb.at ], [ 1, %bb.ax ], [ 2, %bb.az ]
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #50
          to label %bb.aq unwind label %bb.av, !noalias !31372

bb.av:                                            ; preds = %bb.au
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31372
  unreachable

bb.aw:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.013.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !31377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !31377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !31377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ff, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.i.i.i.i.i, i64 96, i1 false), !noalias !31371
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  store i64 %i.fo, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31371
  %.sroa.527.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 104
  store i8 %i.fm, ptr %.sroa.527.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31371
  %.sroa.628.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 105
  store i8 %i.fq, ptr %.sroa.628.0..sroa_idx.i.i.i.i.i, align 1, !noalias !31371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !31378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31379
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd)
          to label %.noexc.i.i.1.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !31371

.noexc.i.i.1.i.i.i:                               ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31379
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 136
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu)
          to label %bb.ax unwind label %bb.as, !noalias !31380

bb.ax:                                            ; preds = %.noexc.i.i.1.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 216
  %i.fw = load i8, ptr %i.fv, align 8, !range !95, !alias.scope !31381, !noalias !31376, !noundef !76
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 208
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !31381, !noalias !31376, !noundef !76
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 217
  %i.ga = load i8, ptr %i.fz, align 1, !range !95, !alias.scope !31381, !noalias !31376, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31379
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ex, i64 160
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gb)
          to label %bb.ay unwind label %bb.au, !noalias !31380

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.013.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !31382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !31382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !31382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31379
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.i.i.i.i.i, i64 96, i1 false), !noalias !31371
  %.sroa.426.0..sroa_idx.i.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 208
  store i64 %i.fy, ptr %.sroa.426.0..sroa_idx.i.i.1.i.i.i, align 8, !noalias !31371
  %.sroa.527.0..sroa_idx.i.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 216
  store i8 %i.fw, ptr %.sroa.527.0..sroa_idx.i.i.1.i.i.i, align 8, !noalias !31371
  %.sroa.628.0..sroa_idx.i.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 217
  store i8 %i.ga, ptr %.sroa.628.0..sroa_idx.i.i.1.i.i.i, align 1, !noalias !31371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !31383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31384
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
          to label %.noexc.i.i.2.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !31371

.noexc.i.i.2.i.i.i:                               ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31384
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ex, i64 248
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gd)
          to label %bb.az unwind label %bb.as, !noalias !31385

bb.az:                                            ; preds = %.noexc.i.i.2.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 328
  %i.gf = load i8, ptr %i.ge, align 8, !range !95, !alias.scope !31386, !noalias !31376, !noundef !76
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ex, i64 320
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !31386, !noalias !31376, !noundef !76
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ex, i64 329
  %i.gj = load i8, ptr %i.gi, align 1, !range !95, !alias.scope !31386, !noalias !31376, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31384
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ex, i64 272
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gk)
          to label %bb.ba unwind label %bb.au, !noalias !31385

2:                                                ; preds = %4
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31371
  unreachable

4:                                                ; preds = %bb.ar, %bb.aq, %.loopexit.i.i.i.i.i
  %.sroa.7.043.i.i45.i.i.i = phi i64 [ %.sroa.7.043.i.i46.i.i.i, %bb.aq ], [ %.sroa.7.043.i.i46.i.i.i, %bb.ar ], [ %.sroa.7.043.i.i.lcssa42.i.i.i.a, %.loopexit.i.i.i.i.i ]
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.aq ], [ %.pn.i.i.i.i.i.i, %bb.ar ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  store i64 %.sroa.7.043.i.i45.i.i.i, ptr %i.bh, align 8, !noalias !31367
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
          to label %.thread15.i.i.i unwind label %2, !noalias !31371

.body33.i.i.i:                                    ; preds = %bb.cs
  br i1 %.sroa.03.1.lpad-body.ph.i.i.i, label %.thread15.i.i.i, label %.body30.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %bb.ap
  %lpad.loopexit.split-lp678 = landingpad { ptr, i32 }
          cleanup
  br label %.thread15.i.i.i

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.013.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !31387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !31387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !31387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31384
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ff, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gl, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.i.i.i.i.i, i64 96, i1 false), !noalias !31371
  %.sroa.426.0..sroa_idx.i.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 320
  store i64 %i.gh, ptr %.sroa.426.0..sroa_idx.i.i.2.i.i.i, align 8, !noalias !31371
  %.sroa.527.0..sroa_idx.i.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 328
  store i8 %i.gf, ptr %.sroa.527.0..sroa_idx.i.i.2.i.i.i, align 8, !noalias !31371
  %.sroa.628.0..sroa_idx.i.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 329
  store i8 %i.gj, ptr %.sroa.628.0..sroa_idx.i.i.2.i.i.i, align 1, !noalias !31371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i.i.i.i.i)
  store i64 3, ptr %i.bh, align 8, !noalias !31367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !31388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31367
  %i.gm = invoke { ptr, i64 } @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r)
          to label %bb.bb unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !31357 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gn = extractvalue { ptr, i64 } %i.gm, 0      ; 3 uses
  %i.go = extractvalue { ptr, i64 } %i.gm, 1      ; 2 uses
  store ptr %i.gn, ptr %i.s, align 8, !noalias !31355
  store i64 %i.go, ptr %i.bi, align 8, !noalias !31355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !31355
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31357
  %i.gp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31357 ; 8 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.bc, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit53.i.i.i, !prof !75

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #49
          to label %.noexc52.i.i.i unwind label %bb.cu, !noalias !31357

.noexc52.i.i.i:                                   ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bi
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.thread15.i.i.i

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit53.i.i.i: ; preds = %bb.bb
  %i.gs = load ptr, ptr %i.ac, align 8, !noalias !31355, !nonnull !76, !noundef !76
  %i.gt = atomicrmw add ptr %i.gs, i64 1 monotonic, align 8, !noalias !31357
  %i.gu = icmp slt i64 %i.gt, 0
  br i1 %i.gu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit53.i.i.i
  %i.gv = load ptr, ptr %i.ac, align 8, !noalias !31355, !nonnull !76, !noundef !76 ; 5 uses
  store ptr %i.gv, ptr %i.gp, align 8, !noalias !31357
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr @76, ptr %i.gw, align 8, !noalias !31357
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %i.eg, ptr %i.gx, align 8, !noalias !31357
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr @448, ptr %i.gy, align 8, !noalias !31357
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %i.er, ptr %i.gz, align 8, !noalias !31357
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  store ptr @448, ptr %i.ha, align 8, !noalias !31357
  store i64 3, ptr %i.q, align 8, !noalias !31355
  store ptr %i.gp, ptr %i.bj, align 8, !noalias !31355
  store i64 3, ptr %i.bk, align 8, !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !31355
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !31357, !noundef !76 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit53.i.i.i
  call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hd = atomicrmw add ptr %i.hc, i64 1 monotonic, align 8, !noalias !31357
  %i.he = icmp slt i64 %i.hd, 0
  br i1 %i.he, label %bb.bk, label %bb.bj

bb.bh:                                            ; preds = %bb.be
  store ptr null, ptr %i.p, align 8, !noalias !31355
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.t, ptr noundef nonnull %i.gn, i64 noundef %i.go, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.bl unwind label %bb.bd, !noalias !31357

bb.bj:                                            ; preds = %bb.bg
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !31357, !noundef !76
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  store ptr %i.hc, ptr %i.p, align 8, !noalias !31355
  store ptr %i.hg, ptr %.sroa.014.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !31355
  %i.hj = load <2 x i64>, ptr %i.hh, align 8, !noalias !31357
  store <2 x i64> %i.hj, ptr %.sroa.014.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !31355
  %i.hk = load <2 x i64>, ptr %i.hi, align 8, !noalias !31357
  store <2 x i64> %i.hk, ptr %.sroa.014.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !31355
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.trap()
  unreachable

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !31355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !31355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !31355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !31355
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  %.val37.i.i.i = load i32, ptr %i.hl, align 4, !alias.scope !31389, !noalias !31357, !noundef !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31390
  %i.hm = icmp slt i32 %.val37.i.i.i, 0
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31391
  br i1 %i.hm, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hn = call noundef dereferenceable_or_null(10) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 9) 1) #44, !noalias !31392 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %.noexc15.i.invoke.i.i.i, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.hp = call noundef dereferenceable_or_null(11) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 9) 1) #44, !noalias !31393 ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.noexc15.i.invoke.i.i.i, label %bb.bq

.noexc15.i.invoke.i.i.i:                          ; preds = %bb.bn, %bb.bm
  %i.hr = phi i64 [ 10, %bb.bm ], [ 11, %bb.bn ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.hr) #49
          to label %.noexc15.i.cont.i.i.i unwind label %bb.bv, !noalias !31357

.noexc15.i.cont.i.i.i:                            ; preds = %.noexc15.i.invoke.i.i.i
  unreachable

bb.bo:                                            ; preds = %bb.bm
  store i64 10, ptr %i.d, align 8, !noalias !31390
  store ptr %i.hn, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !31390
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !31390
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  %i.hs = phi ptr [ %i.hp, %bb.bq ], [ %i.hn, %bb.bo ] ; 2 uses
  %i.ht = phi i64 [ 11, %bb.bq ], [ 10, %bb.bo ]  ; 2 uses
  %i.hu = phi i64 [ 1, %bb.bq ], [ 0, %bb.bo ]    ; 4 uses
  %.sroa.012.0.i.i.i.i = phi i32 [ %i.hw, %bb.bq ], [ %.val37.i.i.i, %bb.bo ]
  %i.hv = invoke { ptr, i64 } @_RNvMsa_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0.i.i.i.i, ptr noalias noundef nonnull %i.e, i64 noundef 10)
          to label %bb.br unwind label %bb.bt, !noalias !31391 ; 2 uses

bb.bq:                                            ; preds = %bb.bn
  store i64 11, ptr %i.d, align 8, !noalias !31390
  store ptr %i.hp, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !31390
  call void @llvm.experimental.noalias.scope.decl(metadata !31394)
  store i8 45, ptr %i.hp, align 1, !noalias !31395
  store i64 1, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31394, !noalias !31390
  %i.hw = sub i32 0, %.val37.i.i.i
  br label %bb.bp

bb.br:                                            ; preds = %bb.bp
  %i.hx = extractvalue { ptr, i64 } %i.hv, 0      ; 2 uses
  %i.hy = extractvalue { ptr, i64 } %i.hv, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hx) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31396)
  %i.hz = sub nuw nsw i64 %i.ht, %i.hu
  %i.ia = icmp ugt i64 %i.hy, %i.hz
  br i1 %i.ia, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, !prof !75

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i: ; preds = %bb.br
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.hu, i64 noundef %i.hy, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i unwind label %bb.bt, !noalias !31391

.noexc18.i.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i
  %i.ib = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31396, !noalias !31390, !noundef !76 ; 2 uses
  %i.ic = icmp sgt i64 %i.ib, -1
  call void @llvm.assume(i1 %i.ic)
  %.pre.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31396, !noalias !31390
  br label %bb.bs

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.br
  %.not.i.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.noexc18.i.i.i.i
  %i.id = phi ptr [ %.pre.i.i.i.i, %.noexc18.i.i.i.i ], [ %i.hs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  %i.ie = phi i64 [ %i.ib, %.noexc18.i.i.i.i ], [ %i.hu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull readonly align 1 %i.hx, i64 %i.hy, i1 false), !noalias !31397
  %.sroa.02.0.copyload.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !31355
  %.sroa.4.0.copyload.pre.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !31355
  br label %bb.bw

bb.bt:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i, %bb.bp
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31398)
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !31398, !noalias !31390 ; 2 uses
  %i.ig = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ig, label %bb.cs, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31398, !noalias !31390, !nonnull !76, !noundef !76
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !31399
  br label %bb.cs

bb.bv:                                            ; preds = %.noexc15.i.invoke.i.i.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bw:                                            ; preds = %bb.bs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %.sroa.4.0.copyload.i.i.i = phi ptr [ %.sroa.4.0.copyload.pre.i.i.i, %bb.bs ], [ %i.hs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.copyload.i.i.i = phi i64 [ %.sroa.02.0.copyload.pre.i.i.i, %bb.bs ], [ %i.ht, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 5 uses
  %i.ii = phi i64 [ %i.ie, %bb.bs ], [ %i.hu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  %i.ij = add i64 %i.ii, %i.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31390
  call void @llvm.experimental.noalias.scope.decl(metadata !31400)
  %i.ik = invoke { ptr, i64 } @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n)
end_hunk_3
begin_hunk_4_@_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader18validate_gbo_table:bb.a

bb.d:                                             ; preds = %.lr.ph
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.422.0..sroa_idx, i64 7, i1 false)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.730.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.725.0..sroa_idx, i64 32, i1 false)
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i64>, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.e, ptr %0, align 8
  store <2 x i64> %i.f, ptr %.sroa.528.0..sroa_idx, align 8
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %.sroa.8.040, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19do_decode_gbo_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !34735 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !76 ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4                  ; 2 uses
  %i.h = icmp eq i32 %i.e, 0
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.j, align 8
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !34736
  %i.k = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !34736 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #49
  unreachable

.lr.ph:                                           ; preds = %bb.b
  store i64 %i.f, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = getelementptr i8, ptr %1, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25

bb.d:                                             ; preds = %.lr.ph, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit
  %i.r = phi ptr [ %i.k, %.lr.ph ], [ %i.ai, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit ]
  %i.s = phi i64 [ 0, %.lr.ph ], [ %i.al, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit ] ; 3 uses
  %.sroa.09.044 = phi i32 [ 0, %.lr.ph ], [ %i.t, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit ]
  %.sroa.6.043 = phi i64 [ 0, %.lr.ph ], [ %i.af, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit ] ; 3 uses
  %i.t = add nuw i32 %.sroa.09.044, 1             ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !34737, !noundef !76 ; 4 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.sroa.6.043) ; 2 uses
  %i.u = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.v = icmp ult i64 %i.u, 8
  br i1 %i.v, label %bb.f, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25: ; preds = %bb.m, %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.h, %bb.f
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  %.val13 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.w = icmp eq i64 %.val13, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val14 = load ptr, ptr %i.m, align 8, !nonnull !76, !noundef !76
  %i.x = shl nuw i64 %.val13, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull @1221, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !34737, !nonnull !76, !noundef !76 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i
  %i.z = load i64, ptr %i.y, align 1, !alias.scope !34738, !noalias !34739
  %i.aa = or disjoint i64 %.sroa.6.043, 8
  %.sroa.0.0.i.i.i.i19 = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.aa) ; 2 uses
  %i.ab = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i19
  %i.ac = icmp ult i64 %i.ab, 8
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull @1221, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @715)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i19
  %i.ae = load i64, ptr %i.ad, align 1, !alias.scope !34740, !noalias !34741
  %i.af = add nuw nsw i64 %.sroa.6.043, 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34742)
  %i.ag = load i64, ptr %i.c, align 8, !range !79, !alias.scope !34742, !noundef !76
  %i.ah = icmp eq i64 %i.s, %i.ag
  br i1 %i.ah, label %bb.j, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge: ; preds = %bb.j
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !34742
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit: ; preds = %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge, %bb.i
  %i.ai = phi ptr [ %.pre, %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge ], [ %i.r, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.s ; 2 uses
  store i64 %i.z, ptr %i.aj, align 8, !noalias !34742
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ae, ptr %i.ak, align 8, !noalias !34742
  %i.al = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.al, ptr %i.n, align 8
  %exitcond.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.am = icmp eq i64 %.val, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val12 = load ptr, ptr %i.m, align 8, !nonnull !76, !noundef !76
  %i.an = shl nuw i64 %.val, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25

bb.n:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit: ; preds = %bb.e, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp50
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19read_range_blocking(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality !guid !34766 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 16               ; 10 uses
  %i.i = alloca [80 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 3 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  store i64 %2, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8
  store i32 %4, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val53 = load ptr, ptr %i.q, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.r = getelementptr i8, ptr %.val53, i64 48
  %.val.i = load ptr, ptr %i.r, align 8, !noalias !34767, !nonnull !76, !noundef !76 ; 2 uses
  %i.s = getelementptr i8, ptr %.val53, i64 56
  %.val1.i = load i64, ptr %i.s, align 8, !noalias !34767, !noundef !76 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34768)
  %i.t = shl nuw nsw i64 %.val1.i, 3              ; 2 uses
  %i.u = icmp eq i64 %.val1.i, 0
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !34769
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 8) #44, !noalias !34769 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.lr.ph.preheader.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.t) #49
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.val1.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.013.023.i.i.i = phi ptr [ %i.y, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.x, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %8, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val1.i, %.lr.ph.preheader.i.i.i ]
  %8 = add nsw i64 %.sroa.10.021.i.i.i, -1        ; 2 uses
  %9 = icmp eq ptr %.sroa.013.023.i.i.i, %7
  br i1 %9, label %.loopexit, label %10

10:                                               ; preds = %.lr.ph.i.i.i
  %.val12.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !34768, !noalias !34770, !nonnull !76, !noundef !76 ; 2 uses
  %11 = atomicrmw add ptr %.val12.i.i.i, i64 1 monotonic, align 8, !noalias !34771
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %bb.d, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.d:                                             ; preds = %10
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %10
  %i.x = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.7.022.i.i.i
  store ptr %.val12.i.i.i, ptr %i.z, align 8, !noalias !34771
  %i.aa = icmp eq i64 %8, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.v, %.lr.ph.i.i.i ], [ %i.v, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  store i64 %.val1.i, ptr %i.m, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val1.i, ptr %.sroa.577.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = load i64, ptr %1, align 8, !range !86, !noundef !76
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = trunc nuw i64 %i.ad to i1
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !76
  %storemerge.in.v = select i1 %i.af, i64 64, i64 96
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !noundef !76
  store i64 %storemerge, ptr %i.l, align 8
  %i.ah = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 3
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.val1.i, ptr %i.k, align 8
  %i.ak = icmp ult i64 %.val1.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !76, !noundef !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !76 ; 2 uses
  store i64 %i.ao, ptr %i.j, align 8
  %i.ap = icmp ult i64 %i.ao, 48038396025285291
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.426.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.n, ptr %i.aq, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.ar, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.k, ptr %i.as, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.j, ptr %i.at, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34772
  store i64 0, ptr %i.b, align 8, !noalias !34772
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @714, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 18, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @245, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 29, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @714, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 18, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 1389, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !34772
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @717, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !34772
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !34772
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.i unwind label %bb.f

bb.h:                                             ; preds = %.loopexit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !76, !noundef !76
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.bj, ptr noundef nonnull align 8 dereferenceable(3) %i.bi, i64 3, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.az, ptr %i.bk, align 16
  %i.bl = load i32, ptr %i.n, align 4, !noundef !76
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.bl, ptr %i.bm, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <2 x ptr> %i.bd, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.av, ptr %i.bo, align 8
  %i.bp = load <2 x i64>, ptr %i.bh, align 8
  store <2 x i64> %i.bp, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.bq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #44 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.o, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !75

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #49
          to label %.noexc56 unwind label %bb.q

.noexc56:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.n
  %i.bs = load <2 x i64>, ptr %i.o, align 16
  store <2 x i64> %i.bs, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.bt, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bq, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !76, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 16 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @_RNvNtCsjjpCCFGI3ul_14lance_encoding7decoder28schedule_and_decode_blocking(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder22SchedulerDecoderConfigECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(56) %i.h) #50
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.bw, %bb.q ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.m) #50
          to label %bb.t unwind label %bb.r
end_hunk_4
begin_hunk_5_@_RNvMsb_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader30read_stream_projected_blocking:bb.a
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [96 x i8], align 8                ; 16 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [56 x i8], align 16               ; 9 uses
  %i.y = alloca [96 x i8], align 8                ; 15 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [4 x i8], align 4                ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 11 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [72 x i8], align 8               ; 12 uses
  %i.az = alloca [56 x i8], align 8               ; 4 uses
  %i.ba = alloca [72 x i8], align 8               ; 12 uses
  %i.bb = alloca [32 x i8], align 8               ; 12 uses
  %i.bc = alloca [8 x i8], align 8                ; 10 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [56 x i8], align 8               ; 6 uses
  %i.bf = alloca [96 x i8], align 8               ; 39 uses
  %i.bg = alloca [56 x i8], align 8               ; 9 uses
  %i.bh = alloca [32 x i8], align 8               ; 5 uses
  %i.bi = alloca [56 x i8], align 8               ; 16 uses
  %i.bj = alloca [56 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.bl = load i64, ptr %4, align 8, !range !78, !noundef !76
  %.not = icmp eq i64 %i.bl, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !37053
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !37052, !nonnull !76, !noundef !76 ; 4 uses
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8, !noalias !37053
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.bn, ptr %i.bd, align 8, !noalias !37053
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load ptr, ptr %i.bq, align 8, !alias.scope !37052, !nonnull !76, !noundef !76
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val2.i = load i64, ptr %i.br, align 8, !alias.scope !37052, !noundef !76 ; 4 uses
  %i.bs = shl nuw nsw i64 %.val2.i, 2             ; 3 uses
  %i.bt = icmp eq i64 %.val2.i, 0
  br i1 %i.bt, label %_RNvXsp_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_16ReaderProjectionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37054
  %i.bu = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 4) #44, !noalias !37054 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bs) #49
          to label %.noexc.i unwind label %bb.i, !noalias !37053

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull readonly align 4 %.val.i, i64 %i.bs, i1 false), !noalias !37055
  br label %_RNvXsp_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_16ReaderProjectionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !37056
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %.thread unwind label %bb.k, !noalias !37053

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !37053
  unreachable

_RNvXsp_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_16ReaderProjectionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.g
  %.sroa.5.0.i = phi ptr [ %i.bu, %bb.g ], [ inttoptr (i64 4 to ptr), %bb.d ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bn, ptr %i.ca, align 8, !alias.scope !37051
  store i64 %.val2.i, ptr %i.bk, align 8, !alias.scope !37051
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !37051
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val2.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !37051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !37053
  br label %bb.l

bb.l:                                             ; preds = %_RNvXsp_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_16ReaderProjectionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !76, !noundef !76 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  invoke void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19validate_projection(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.cd)
          to label %bb.n unwind label %bb.gz

bb.m:                                             ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.cf = load i8, ptr %i.bj, align 8, !range !99, !noundef !76
  %.not26 = icmp eq i8 %i.cf, -1
  br i1 %.not26, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bj, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37057)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37059)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !37060, !nonnull !76, !noundef !76
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !37060
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i33

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i33 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i35 = load i64, ptr %i.bk, align 8, !alias.scope !37057 ; 2 uses
  %i.cl = icmp eq i64 %.val2.i35, 0
  br i1 %i.cl, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val3.i = load ptr, ptr %i.cm, align 8, !alias.scope !37057, !nonnull !76, !noundef !76
  %i.cn = shl nuw i64 %.val2.i35, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i33: ; preds = %bb.p, %bb.o
  %.val.i34 = load i64, ptr %i.bk, align 8, !alias.scope !37057 ; 2 uses
  %i.co = icmp eq i64 %.val.i34, 0
  br i1 %i.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader16ReaderProjectionEBF_.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val1.i = load ptr, ptr %i.cp, align 8, !alias.scope !37057, !nonnull !76, !noundef !76
  %i.cq = shl nuw i64 %.val.i34, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader16ReaderProjectionEBF_.exit

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37062)
  %i.cr = getelementptr i8, ptr %i.cc, i64 48     ; 3 uses
  %.val.i38 = load ptr, ptr %i.cr, align 8, !noalias !37063, !nonnull !76, !noundef !76 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 56     ; 3 uses
  %.val1.i39 = load i64, ptr %i.cs, align 8, !noalias !37063, !noundef !76 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37064)
  %i.ct = shl nuw nsw i64 %.val1.i39, 3           ; 2 uses
  %i.cu = icmp eq i64 %.val1.i39, 0
  br i1 %i.cu, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37065
  %i.cv = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, 9) 8) #44, !noalias !37065 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.v, label %.lr.ph.preheader.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ct) #49
          to label %.noexc.i41 unwind label %bb.x, !noalias !37063

.noexc.i41:                                       ; preds = %bb.v
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %6 = getelementptr inbounds nuw [8 x i8], ptr %.val.i38, i64 %.val1.i39
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.013.023.i.i.i = phi ptr [ %i.cy, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val.i38, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.cx, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %7, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val1.i39, %.lr.ph.preheader.i.i.i ]
  %7 = add nsw i64 %.sroa.10.021.i.i.i, -1        ; 2 uses
  %8 = icmp eq ptr %.sroa.013.023.i.i.i, %6
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %.lr.ph.i.i.i
  %.val12.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !37064, !noalias !37066, !nonnull !76, !noundef !76 ; 2 uses
  %10 = atomicrmw add ptr %.val12.i.i.i, i64 1 monotonic, align 8, !noalias !37067
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %bb.w, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.w:                                             ; preds = %9
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %9
  %i.cx = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.sroa.7.022.i.i.i
  store ptr %.val12.i.i.i, ptr %i.cz, align 8, !noalias !37067
  %i.da = icmp eq i64 %7, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader16ReaderProjectionEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh) #50
          to label %.thread unwind label %bb.y, !noalias !37061

bb.y:                                             ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !37061
  unreachable

.loopexit:                                        ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.i.i.i, %bb.t
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.t ], [ %i.cv, %.lr.ph.i.i.i ], [ %i.cv, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !37063
  store i64 %.val1.i39, ptr %i.bi, align 8, !alias.scope !37061
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !37061
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.val1.i39, ptr %.sroa.5.0..sroa_idx.i40, align 8, !alias.scope !37061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !76, !noundef !76
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !76, !align !77, !noundef !76 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !106, !invariant.load !76
  %i.dk = add nsw i64 %i.dj, -1
  %i.dl = and i64 %i.dk, -16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !invariant.load !76, !nonnull !76
  invoke void %i.dp(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bg, ptr noundef nonnull %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi)
          to label %bb.z unwind label %bb.gt

bb.z:                                             ; preds = %.loopexit
  %i.dq = load i8, ptr %i.bg, align 8, !range !99, !noundef !76 ; 2 uses
  %.not27 = icmp eq i8 %i.dq, -1
  br i1 %.not27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.418.0..sroa_idx, i64 7, i1 false)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.519.0.copyload = load i64, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.624.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store i8 %i.dq, ptr %0, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.519.0.copyload, ptr %.sroa.523.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader18PreparedProjectionEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.bi)
          to label %bb.gs unwind label %bb.m

bb.ab:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !76 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !37068)
  call void @llvm.experimental.noalias.scope.decl(metadata !37069)
  call void @llvm.experimental.noalias.scope.decl(metadata !37070)
  call void @llvm.experimental.noalias.scope.decl(metadata !37071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 %i.ds, ptr %i.bc, align 8, !noalias !37072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !37072
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 32, i1 false)
  %i.du = load i8, ptr %i.bf, align 8, !range !119, !alias.scope !37070, !noundef !76 ; 2 uses
  %i.dv = add nsw i8 %i.du, -41
  %i.dw = icmp samesign ugt i8 %i.du, 40
  %narrow.i = select i1 %i.dw, i8 %i.dv, i8 5
  switch i8 %narrow.i, label %bb.ac [
    i8 0, label %bb.ad
    i8 1, label %bb.ah
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.aq
    i8 5, label %bb.au
  ]

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !37070, !noundef !76 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !37072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !37072
  store ptr %i.bf, ptr %i.aq, align 8, !noalias !37073
  %i.dz = icmp ugt i64 %i.dy, %i.ds
  br i1 %i.dz, label %.split.i.i, label %bb.bb

.split.i.i:                                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !37073
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !37073
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !37073
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.bc, ptr %i.ea, align 8, !noalias !37073
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !37073
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @531, ptr noundef nonnull %i.ao)
          to label %.noexc.i47 unwind label %.thread493.i, !noalias !37074

.noexc.i47:                                       ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !37073
  call void @llvm.experimental.noalias.scope.decl(metadata !37075)
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !37076, !noalias !37073 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !37076, !noalias !37073 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.57.0.copyload.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !37076, !noalias !37073
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37077
  %i.eb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !37077 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ae, label %bb.ba, !prof !75

bb.ae:                                            ; preds = %.noexc.i47
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i.i.i unwind label %bb.af, !noalias !37078

.noexc.i.i.i:                                     ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 0
  br i1 %i.ee, label %.thread486.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !37079
  br label %.thread486.i

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !37072
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !37070, !noundef !76 ; 5 uses
  %i.ei = shl i64 %i.eh, 4                        ; 4 uses
  %i.ej = icmp ugt i64 %i.eh, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.ei, 9223372036854775800
  %or.cond.i.i = or i1 %i.ej, %.not.i.i
  br i1 %or.cond.i.i, label %bb.bj, label %bb.ai, !prof !100

bb.ai:                                            ; preds = %bb.ah
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37080
  %i.el = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !37080 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.bj, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = ptrtoint ptr %i.el to i64
  %.pre.i = load i64, ptr %i.eg, align 8, !alias.scope !37070 ; 2 uses
  %.pre589.i = shl nuw nsw i64 %.pre.i, 4
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i

bb.al:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !37072
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i64 32, i1 false)
  invoke fastcc void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19read_range_blocking(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i64 noundef 0, i64 noundef %i.ds, i32 noundef %3, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %5)
          to label %bb.cw unwind label %bb.gm, !noalias !37081

bb.am:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !37070, !noundef !76 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !37072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !37072
  store ptr %i.bf, ptr %i.an, align 8, !noalias !37082
  %i.er = icmp ugt i64 %i.eq, %i.ds
  br i1 %i.er, label %.split.i49.i, label %bb.cy

.split.i49.i:                                     ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !37082
  store ptr %i.an, ptr %i.al, align 8, !noalias !37082
  %.sroa.43.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.43.0..sroa_idx.i50.i, align 8, !noalias !37082
  %i.es = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.bc, ptr %i.es, align 8, !noalias !37082
  %.sroa.47.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i51.i, align 8, !noalias !37082
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @531, ptr noundef nonnull %i.al)
          to label %.noexc65.i unwind label %.thread493.i, !noalias !37074

.noexc65.i:                                       ; preds = %.split.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !37082
  call void @llvm.experimental.noalias.scope.decl(metadata !37083)
  %.sroa.06.0.copyload.i.i52.i = load i64, ptr %i.am, align 8, !alias.scope !37084, !noalias !37082 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0.copyload.i.i54.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i53.i, align 8, !alias.scope !37084, !noalias !37082 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i55.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.57.0.copyload.i.i56.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i55.i, align 8, !alias.scope !37084, !noalias !37082
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37085
  %i.et = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !37085 ; 5 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.an, label %bb.cx, !prof !75

bb.an:                                            ; preds = %.noexc65.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
end_hunk_5
begin_hunk_6_@_RNvMsb_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader30read_stream_projected_blocking:bb.a
  %i.fu = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !37103
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.az, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsaSXGKSfiU2E_10lance_file.exit.sink.split.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ah)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsaSXGKSfiU2E_10lance_file.exit.sink.split.i.i unwind label %.thread493.i, !noalias !37074

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsaSXGKSfiU2E_10lance_file.exit.sink.split.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.02.0.ph.i.i = phi ptr [ null, %bb.ay ], [ %i.fh, %bb.ax ], [ null, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !37101
  br label %bb.dd

.thread493.i:                                     ; preds = %bb.gj, %bb.dx, %bb.dp, %bb.dk, %bb.bj, %bb.az, %.split.i71.i, %.split.i49.i, %.split.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread486.i

bb.ba:                                            ; preds = %.noexc.i47
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.eb, align 8, !noalias !37078
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !37078
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %.sroa.57.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !37078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !37072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !37072
  store i8 0, ptr %0, align 8, !alias.scope !37068
  %.sroa.5369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %.sroa.5369.0..sroa_idx.i, align 8, !alias.scope !37068
  %.sroa.6370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @80, ptr %.sroa.6370.0..sroa_idx.i, align 8, !alias.scope !37068
  %.sroa.7371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @532, ptr %.sroa.7371.0..sroa_idx.i, align 8, !alias.scope !37068
  br label %bb.be

bb.bb:                                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !37072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !37072
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !37070, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !37072
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i64 32, i1 false)
  invoke fastcc void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19read_range_blocking(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i64 noundef %i.fx, i64 noundef %i.dy, i32 noundef %3, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %5)
          to label %bb.bc unwind label %bb.gm, !noalias !37081

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !37072
  br label %bb.bd

bb.bd:                                            ; preds = %bb.fu, %bb.dc, %bb.cz, %bb.cw, %bb.cs, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !37072
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.be)
          to label %bb.fx unwind label %bb.fw, !noalias !37104

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types10UInt32TypeEEECsaSXGKSfiU2E_10lance_file.exit230.i, %bb.da, %bb.cx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !37105)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37106)
  call void @llvm.experimental.noalias.scope.decl(metadata !37107)
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !37108, !noalias !37072, !nonnull !76, !noundef !76
  %i.gb = atomicrmw add ptr %i.ga, i64 -1 release, align 8, !noalias !37109
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.bg, !noalias !37074

bb.bg:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.bb, align 8, !alias.scope !37105, !noalias !37072 ; 2 uses
  %i.ge = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ge, label %.thread471.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val3.i.i = load ptr, ptr %i.gf, align 8, !alias.scope !37105, !noalias !37072, !nonnull !76, !noundef !76
  %i.gg = shl nuw i64 %.val2.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !37074
  br label %.thread471.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.bf, %bb.be
  %.val.i.i = load i64, ptr %i.bb, align 8, !alias.scope !37105, !noalias !37072 ; 2 uses
  %i.gh = icmp eq i64 %.val.i.i, 0
  br i1 %i.gh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader16ReaderProjectionEBF_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i.i = load ptr, ptr %i.gi, align 8, !alias.scope !37105, !noalias !37072, !nonnull !76, !noundef !76
  %i.gj = shl nuw i64 %.val.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !37074
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file6reader16ReaderProjectionEBF_.exit.i

bb.bj:                                            ; preds = %bb.aj, %bb.ah
  %.sroa.4374.0.ph.i = phi i64 [ 8, %bb.aj ], [ 0, %bb.ah ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4374.0.ph.i, i64 %i.ei) #49
          to label %bb.cv unwind label %.thread493.i, !noalias !37074

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ak, %bb.ai
  %.idx.pre-phi.i = phi i64 [ 0, %bb.ai ], [ %.pre589.i, %bb.ak ]
  %i.gk = phi i64 [ %i.eh, %bb.ai ], [ %.pre.i, %bb.ak ]
  %.sroa.4374.0.i = phi i64 [ 0, %bb.ai ], [ %i.eh, %bb.ak ] ; 3 uses
  %.sroa.10376.0.i = phi i64 [ 8, %bb.ai ], [ %i.en, %bb.ak ]
  %i.gl = inttoptr i64 %.sroa.10376.0.i to ptr    ; 2 uses
  %i.gm = icmp samesign ule i64 %i.eh, %.sroa.4374.0.i
  call void @llvm.assume(i1 %i.gm)
  store i64 %.sroa.4374.0.i, ptr %i.av, align 8, !noalias !37072
  %i.gn = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 5 uses
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !37072
  %i.go = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store i64 0, ptr %i.go, align 8, !noalias !37072
  %i.gp = load ptr, ptr %i.ef, align 8, !alias.scope !37070, !nonnull !76, !noundef !76
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.pre-phi.i
  %i.gs = icmp eq i64 %i.gk, 0
  br i1 %i.gs, label %._crit_edge570.i, label %.lr.ph569.i

.lr.ph569.i:                                      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsaSXGKSfiU2E_10lance_file.exit.i
  %i.gt = phi i64 [ %i.lt, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsaSXGKSfiU2E_10lance_file.exit.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i ] ; 3 uses
  %.sroa.010.0568.i = phi ptr [ %i.gu, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.gq, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.010.0568.i, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.010.0568.i, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !37074, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !37072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !37072
  store ptr %i.bf, ptr %i.ag, align 8, !noalias !37110
  %i.gx = load i64, ptr %i.bc, align 8, !noalias !37110, !noundef !76
  %i.gy = icmp ugt i64 %i.gw, %i.gx
  br i1 %i.gy, label %.split.i97.i, label %bb.cq

.split.i97.i:                                     ; preds = %.lr.ph569.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !37110
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !37110
  %.sroa.43.0..sroa_idx.i98.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.43.0..sroa_idx.i98.i, align 8, !noalias !37110
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.bc, ptr %i.gz, align 8, !noalias !37110
  %.sroa.47.0..sroa_idx.i99.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i99.i, align 8, !noalias !37110
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @531, ptr noundef nonnull %i.ae)
          to label %.noexc113.i unwind label %.body114.thread518.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !37074

.noexc113.i:                                      ; preds = %.split.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !37110
  call void @llvm.experimental.noalias.scope.decl(metadata !37111)
  %.sroa.06.0.copyload.i.i100.i = load i64, ptr %i.af, align 8, !alias.scope !37112, !noalias !37110 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i101.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0.copyload.i.i102.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i101.i, align 8, !alias.scope !37112, !noalias !37110 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i103.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.57.0.copyload.i.i104.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i103.i, align 8, !alias.scope !37112, !noalias !37110
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37113
  %i.ha = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !37113 ; 5 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bk, label %bb.co, !prof !75

bb.bk:                                            ; preds = %.noexc113.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i.i112.i unwind label %bb.bl, !noalias !37114

.noexc.i.i112.i:                                  ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = icmp eq i64 %.sroa.06.0.copyload.i.i100.i, 0
  br i1 %i.hd, label %.body114.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i102.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i102.i, i64 noundef %.sroa.06.0.copyload.i.i100.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !37115
  br label %.body114.thread.i

._crit_edge570.loopexit.i:                        ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.0282.0.copyload.pre.i = load i64, ptr %i.av, align 8, !noalias !37072
  %.sroa.5284.0.copyload.pre.i = load ptr, ptr %i.gn, align 8, !noalias !37072
  br label %._crit_edge570.i

._crit_edge570.i:                                 ; preds = %._crit_edge570.loopexit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.7287.0.copyload.i = phi i64 [ %i.lt, %._crit_edge570.loopexit.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i ] ; 9 uses
  %.sroa.5284.0.copyload.i = phi ptr [ %.sroa.5284.0.copyload.pre.i, %._crit_edge570.loopexit.i ], [ %i.gl, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i ] ; 9 uses
  %.sroa.0282.0.copyload.i = phi i64 [ %.sroa.0282.0.copyload.pre.i, %._crit_edge570.loopexit.i ], [ %.sroa.4374.0.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !37072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !37072
  %.sroa.0290.0.copyload.i = load ptr, ptr %5, align 8, !alias.scope !37071 ; 3 uses
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5292.0.copyload.i = load ptr, ptr %.sroa.5292.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  %.sroa.6295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6295.0.copyload.i = load i64, ptr %.sroa.6295.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  %.sroa.7298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7298.0.copyload.i = load ptr, ptr %.sroa.7298.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37116)
  call void @llvm.experimental.noalias.scope.decl(metadata !37117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !37072
  store i32 %3, ptr %i.ad, align 4, !noalias !37118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !37118
  %.val.i.i.i = load ptr, ptr %i.cr, align 8, !noalias !37119, !nonnull !76, !noundef !76 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.cs, align 8, !noalias !37119, !noundef !76 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37120)
  %i.he = shl nuw nsw i64 %.val1.i.i.i, 3         ; 2 uses
  %i.hf = icmp eq i64 %.val1.i.i.i, 0             ; 2 uses
  br i1 %i.hf, label %_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge570.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37121
  %i.hg = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.he, i64 noundef range(i64 1, 9) 8) #44, !noalias !37121 ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.bo, label %.lr.ph.preheader.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.he) #49
          to label %.noexc.i.i unwind label %bb.bq, !noalias !37122

.noexc.i.i:                                       ; preds = %bb.bo
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bn
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.val1.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.013.023.i.i.i.i.i = phi ptr [ %i.hj, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ], [ %.val.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i = phi i64 [ %i.hi, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i.i.i = phi i64 [ %13, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ], [ %.val1.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %13 = add nsw i64 %.sroa.10.021.i.i.i.i.i, -1   ; 2 uses
  %14 = icmp eq ptr %.sroa.013.023.i.i.i.i.i, %12
  br i1 %14, label %_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i, label %15

15:                                               ; preds = %.lr.ph.i.i.i.i.i
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i.i.i, align 8, !alias.scope !37120, !noalias !37123, !nonnull !76, !noundef !76 ; 2 uses
  %16 = atomicrmw add ptr %.val12.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !37124
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %bb.bp, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

bb.bp:                                            ; preds = %15
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %15
  %i.hi = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i.i, i64 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.sroa.7.022.i.i.i.i.i
  store ptr %.val12.i.i.i.i.i, ptr %i.hk, align 8, !noalias !37124
  %i.hl = icmp eq i64 %13, 0
  br i1 %i.hl, label %_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i: ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %._crit_edge570.i
  %.sroa.5.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge570.i ], [ %i.hg, %.lr.ph.i.i.i.i.i ], [ %i.hg, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 6 uses
  store i64 %.val1.i.i.i, ptr %i.ac, align 8, !noalias !37118
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !37118
  %.sroa.598.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val1.i.i.i, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !noalias !37118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !37118
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5284.0.copyload.i) ]
  %.idx.i.i = shl nuw nsw i64 %.sroa.7287.0.copyload.i, 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.5284.0.copyload.i, i64 %.idx.i.i
  %i.ho = icmp eq i64 %.sroa.7287.0.copyload.i, 0
  br i1 %i.ho, label %.loopexit127.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i
  %min.iters.check = icmp ult i64 %.sroa.7287.0.copyload.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %.sroa.7287.0.copyload.i, -4   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.hu, %vector.body ]
  %vec.phi193 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.hv, %vector.body ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5284.0.copyload.i, i64 %index
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5284.0.copyload.i, i64 %index
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %wide.vec = load <4 x i64>, ptr %i.hp, align 8, !noalias !37122 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec194 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec195 = load <4 x i64>, ptr %i.hr, align 8, !noalias !37122 ; 2 uses
  %strided.vec196 = shufflevector <4 x i64> %wide.vec195, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec197 = shufflevector <4 x i64> %wide.vec195, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.hs = sub <2 x i64> %vec.phi, %strided.vec
  %i.ht = sub <2 x i64> %vec.phi193, %strided.vec196
  %i.hu = add <2 x i64> %i.hs, %strided.vec194    ; 2 uses
  %i.hv = add <2 x i64> %i.ht, %strided.vec197    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !36738

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.hv, %i.hu
  %i.hx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.7287.0.copyload.i, %n.vec
  br i1 %cmp.n, label %.loopexit127.thread.i.i, label %.preheader.i.i.preheader198

.preheader.i.i.preheader198:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.hx, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader198, %.preheader.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ic, %.preheader.i.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.i.preheader198 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.ib, %.preheader.i.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.i.preheader198 ]
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5284.0.copyload.i, i64 %.sroa.04.0.i.i.i ; 2 uses
  %.val.i69.i.i = load i64, ptr %i.hy, align 8, !noalias !37122, !noundef !76
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %.val13.i.i.i = load i64, ptr %i.hz, align 8, !noalias !37122, !noundef !76
  %i.ia = sub i64 %.sroa.02.0.i.i.i, %.val.i69.i.i
  %i.ib = add i64 %i.ia, %.val13.i.i.i            ; 2 uses
  %i.ic = add nuw nsw i64 %.sroa.04.0.i.i.i, 1    ; 2 uses
  %i.id = icmp eq i64 %i.ic, %.sroa.7287.0.copyload.i
  br i1 %i.id, label %.loopexit127.thread.i.i, label %.preheader.i.i, !llvm.loop !36739

.thread109.i.i:                                   ; preds = %bb.bw, %bb.bs
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread103.i.i

.loopexit127.i.i:                                 ; preds = %_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader31collect_columns_from_projection.exit.i.i
  store i64 0, ptr %i.ab, align 8, !noalias !37118
  %i.ie = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !37118 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 6
  call void @llvm.assume(i1 %i.if)
  %i.ig = icmp samesign ugt i64 %i.ie, 3
  br i1 %i.ig, label %bb.bs, label %bb.br

.loopexit127.thread.i.i:                          ; preds = %.preheader.i.i, %middle.block
  %.lcssa = phi i64 [ %i.hx, %middle.block ], [ %i.ib, %.preheader.i.i ]
  store i64 %.lcssa, ptr %i.ab, align 8, !noalias !37118
  %i.ih = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !37118 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 6
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp samesign ugt i64 %i.ih, 3
  br i1 %i.ij, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit75.i.i, %.loopexit127.thread.i.i, %.loopexit127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !37118
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !37125, !nonnull !76, !noundef !76 ; 2 uses
  %i.im = atomicrmw add ptr %i.il, i64 1 monotonic, align 8, !noalias !37122
  %i.in = icmp slt i64 %i.im, 0
  br i1 %i.in, label %bb.cc, label %bb.cb

bb.bs:                                            ; preds = %.loopexit127.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !37118
  store i64 0, ptr %i.aa, align 8, !noalias !37118
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @725) #49
          to label %bb.bt unwind label %.thread109.i.i, !noalias !37122

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %.loopexit127.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !37118
  store i64 %.sroa.7287.0.copyload.i, ptr %i.aa, align 8, !noalias !37118
  %i.io = icmp ult i64 %.sroa.7287.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.io)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !37118
  call void @llvm.experimental.noalias.scope.decl(metadata !37126)
  %i.ip = shl nuw nsw i64 %.val1.i.i.i, 2         ; 2 uses
  br i1 %i.hf, label %.loopexit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37127
  %i.iq = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ip, i64 noundef range(i64 1, 9) 4) #44, !noalias !37127 ; 8 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bw, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.bv
  %xtraiter211 = and i64 %.val1.i.i.i, 3          ; 3 uses
  %i.is = icmp ult i64 %.val1.i.i.i, 4
  br i1 %i.is, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter217 = and i64 %.val1.i.i.i, -4
  br label %.preheader.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ip) #49
          to label %.noexc73.i.i unwind label %.thread109.i.i, !noalias !37122

.noexc73.i.i:                                     ; preds = %bb.bw
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %i.it = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.jn, %.preheader.i.i.i.i.i ] ; 6 uses
  %niter218 = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter218.next.3, %.preheader.i.i.i.i.i ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %i.it
  %.val16.i.i.i.i.i.i.i.i = load ptr, ptr %i.iu, align 8, !noalias !37128, !nonnull !76, !noundef !76
  %i.iv = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i, i64 64
  %i.iw = load i32, ptr %i.iv, align 8, !noalias !37129, !noundef !76
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.it
  store i32 %i.iw, ptr %i.ix, align 4, !noalias !37130
  %i.iy = or disjoint i64 %i.it, 1                ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %i.iy
  %.val16.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.iz, align 8, !noalias !37128, !nonnull !76, !noundef !76
  %i.ja = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.1, i64 64
  %i.jb = load i32, ptr %i.ja, align 8, !noalias !37129, !noundef !76
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iy
  store i32 %i.jb, ptr %i.jc, align 4, !noalias !37130
  %i.jd = or disjoint i64 %i.it, 2                ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %i.jd
  %.val16.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.je, align 8, !noalias !37128, !nonnull !76, !noundef !76
  %i.jf = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.2, i64 64
  %i.jg = load i32, ptr %i.jf, align 8, !noalias !37129, !noundef !76
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jd
  store i32 %i.jg, ptr %i.jh, align 4, !noalias !37130
  %i.ji = or disjoint i64 %i.it, 3                ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %i.ji
  %.val16.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.jj, align 8, !noalias !37128, !nonnull !76, !noundef !76
  %i.jk = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.3, i64 64
  %i.jl = load i32, ptr %i.jk, align 8, !noalias !37129, !noundef !76
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ji
  store i32 %i.jl, ptr %i.jm, align 4, !noalias !37130
  %i.jn = add nuw i64 %i.it, 4                    ; 2 uses
  %niter218.next.3 = add nuw i64 %niter218, 4     ; 2 uses
  %niter218.ncmp.3 = icmp eq i64 %niter218.next.3, %unroll_iter217
  br i1 %niter218.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod215.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod215.not, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.epil.init214 = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.jn, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %.preheader.i.i.i.i.i.epil

.preheader.i.i.i.i.i.epil:                        ; preds = %.preheader.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.epil.preheader
  %i.jo = phi i64 [ %i.jt, %.preheader.i.i.i.i.i.epil ], [ %.epil.init214, %.preheader.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter212 = phi i64 [ %epil.iter212.next, %.preheader.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %i.jo
  %.val16.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.jp, align 8, !noalias !37128, !nonnull !76, !noundef !76
  %i.jq = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.epil, i64 64
  %i.jr = load i32, ptr %i.jq, align 8, !noalias !37129, !noundef !76
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jo
  store i32 %i.jr, ptr %i.js, align 4, !noalias !37130
  %i.jt = add nuw i64 %i.jo, 1
  %epil.iter212.next = add i64 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i64 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.epil, !llvm.loop !36760

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.epil, %bb.bu
  %.sroa.10.0.i11.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.bu ], [ %i.iq, %.preheader.i.i.i.i.i.epil ], [ %i.iq, %.loopexit.i.i.loopexit.unr-lcssa ]
  store i64 %.val1.i.i.i, ptr %i.z, align 8, !alias.scope !37126, !noalias !37118
  %.sroa.4.0..sroa_idx.i71.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i11.i.i.i, ptr %.sroa.4.0..sroa_idx.i71.i.i, align 8, !alias.scope !37126, !noalias !37118
end_hunk_6
begin_hunk_7_@_RNvMsb_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader30read_stream_projected_blocking:bb.a

.lr.ph.i.split.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, %.lr.ph.i.split.preheader.i.i.i
  %i.pz = phi ptr [ %i.qy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ], [ %i.or, %.lr.ph.i.split.preheader.i.i.i ]
  %i.qa = phi i64 [ %i.ra, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ], [ 1, %.lr.ph.i.split.preheader.i.i.i ] ; 5 uses
  %i.qb = phi i64 [ %i.ql, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ], [ %i.ov, %.lr.ph.i.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37182)
  call void @llvm.experimental.noalias.scope.decl(metadata !37183)
  call void @llvm.experimental.noalias.scope.decl(metadata !37184)
  %exitcond.not.i.i.i = icmp eq i64 %i.qb, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %bb.ed, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeEE7is_nullCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, !prof !75

bb.ed:                                            ; preds = %.lr.ph.i.split.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.thread.i.i.i, !noalias !37188

.noexc.i.i.i.i:                                   ; preds = %bb.ed
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeEE7is_nullCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i.i
  %i.qc = add i64 %i.qb, %i.pc                    ; 2 uses
  %i.qd = lshr i64 %i.qc, 3
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !37189, !noundef !76
  %i.qg = trunc i64 %i.qc to i8
  %i.qh = and i8 %i.qg, 7
  %i.qi = xor i8 %i.qf, -1
  %i.qj = lshr i8 %i.qi, %i.qh
  %i.qk = trunc i8 %i.qj to i1
  %i.ql = add nuw i64 %i.qb, 1                    ; 4 uses
  store i64 %i.ql, ptr %i.ot, align 8, !alias.scope !37190, !noalias !37164
  br i1 %i.qk, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeEE7is_nullCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533) #49
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.thread.i.i.i, !noalias !37188

.noexc7.i.i.i.i:                                  ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeEE7is_nullCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.pd, align 8, !noalias !37185, !noundef !76
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.pe, align 8, !noalias !37185, !noundef !76
  %i.qm = lshr i64 %.val1.i.i.i.i.i.i.i, 2
  %i.qn = icmp ult i64 %i.qb, %i.qm
  call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.qb
  %i.qp = load i32, ptr %i.qo, align 4, !noalias !37185, !noundef !76
  %i.qq = zext i32 %i.qp to i64
  %i.qr = icmp samesign ult i64 %i.qa, 1152921504606846976
  call void @llvm.assume(i1 %i.qr)
  %i.qs = load i64, ptr %i.q, align 8, !range !79, !alias.scope !37186, !noalias !37164, !noundef !76
  %i.qt = icmp eq i64 %i.qa, %i.qs
  br i1 %i.qt, label %bb.ek, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, %.._crit_edge.i_crit_edge.i.i.i
  %.sroa.9248.0.copyload585.i = phi i64 [ 1, %.._crit_edge.i_crit_edge.i.i.i ], [ %i.ra, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ] ; 3 uses
  %i.qu = phi ptr [ %.pre20.i.i.i, %.._crit_edge.i_crit_edge.i.i.i ], [ %i.pa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37191)
  call void @llvm.experimental.noalias.scope.decl(metadata !37192)
  call void @llvm.experimental.noalias.scope.decl(metadata !37193)
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qw = atomicrmw add ptr %i.qu, i64 -1 release, align 8, !noalias !37194
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.eh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.phi.trans.insert.i.i.i)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i unwind label %bb.em, !noalias !37167

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i, %bb.ef
  %i.qy = phi ptr [ %.pre.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i ], [ %i.pz, %bb.ef ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qa
  store i64 %i.qq, ptr %i.qz, align 8, !noalias !37188
  %i.ra = add nuw nsw i64 %i.qa, 1                ; 3 uses
  store i64 %i.ra, ptr %.sroa.6.0..sroa_idx.i156.i, align 8, !alias.scope !37186, !noalias !37164
  %i.rb = icmp eq i64 %i.ql, %i.ow
  br i1 %i.rb, label %._crit_edge.i.i.i.i, label %.lr.ph.i.split.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.thread.i.i.i: ; preds = %bb.ee, %bb.ed
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.i.i: ; preds = %bb.ec
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.pk, ptr %i.ot, align 8, !alias.scope !37190, !noalias !37164
  br label %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.split-lp.i.i: ; preds = %bb.ek
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.split-lp.i.i ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i, label %bb.ei

bb.ei:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.thread.i.i.i
  %lpad.phi2.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.thread.i.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i ] ; 2 uses
  %i.rc = atomicrmw add ptr %i.pa, i64 -1 release, align 8, !noalias !37195
  %i.rd = icmp eq i64 %i.rc, 1
  br i1 %i.rd, label %bb.ej, label %.body.i.i

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.phi.trans.insert.i.i.i)
          to label %.body.i.i unwind label %bb.el, !noalias !37196

bb.ek:                                            ; preds = %bb.ef
  %i.re = sub i64 %i.ow, %i.ql
  %i.rf = call i64 @llvm.uadd.sat.i64(i64 %i.re, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.qa, i64 noundef %i.rf, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.split.i.loopexit.split-lp.i.i, !noalias !37187

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i: ; preds = %bb.ek
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !37186, !noalias !37164
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !37196
  unreachable

bb.em:                                            ; preds = %bb.eh
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.em, %bb.ej, %bb.ei, %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.rh, %bb.em ], [ %lpad.phi2.i.i.i, %bb.ej ], [ %lpad.phi2.i.i.i, %bb.ei ], [ %lpad.phi.i.i, %.loopexit.split-lp.loopexit.split-lp.i.split.i.i.i ] ; 2 uses
  %.val.i157.i = load i64, ptr %i.q, align 8, !noalias !37164 ; 2 uses
  %i.ri = icmp eq i64 %.val.i157.i, 0
  br i1 %i.ri, label %.thread486.i, label %bb.en

bb.en:                                            ; preds = %.body.i.i
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !37164, !nonnull !76, !noundef !76
  %i.rj = shl nuw i64 %.val.i157.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.rj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !37167
  br label %.thread486.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.us.i.i.i, %bb.eh, %bb.eg, %._crit_edge.i.i.i.i
  %.sroa.9248.0.copyload.i = phi i64 [ %.sroa.9248.0.copyload585.i, %._crit_edge.i.i.i.i ], [ %.sroa.9248.0.copyload585.i, %bb.eh ], [ %.sroa.9248.0.copyload585.i, %bb.eg ], [ %i.px, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37164
  %.sroa.0243.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !37197
  %.sroa.6245.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !37197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37164
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array15primitive_array14PrimitiveArrayNtNtB2n_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4w_10FileReader22read_prepared_blockings_0EE9from_iterB4y_.exit.i

bb.eo:                                            ; preds = %bb.er
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !37198
  unreachable

.thread547.i:                                     ; preds = %bb.du, %bb.dt
  %lpad.thr_comm545.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ea
  %lpad.thr_comm.split-lp546.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i.i154.i, label %.thread486.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.thread547.i
  %lpad.phi549.i = phi { ptr, i32 } [ %lpad.thr_comm545.i, %.thread547.i ], [ %lpad.thr_comm.split-lp546.i, %bb.ep ] ; 2 uses
  %i.rl = atomicrmw add ptr %.sroa.02.0.i146.i, i64 -1 release, align 8, !noalias !37199
  %i.rm = icmp eq i64 %i.rl, 1
  br i1 %i.rm, label %bb.er, label %.thread486.i

bb.er:                                            ; preds = %bb.eq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i46)
          to label %.thread486.i unwind label %bb.eo, !noalias !37198

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array15primitive_array14PrimitiveArrayNtNtB2n_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4w_10FileReader22read_prepared_blockings_0EE9from_iterB4y_.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i, %bb.dx, %bb.dw, %bb.dv
  %.sroa.9248.0.i = phi i64 [ 0, %bb.dv ], [ %.sroa.9248.0.copyload.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i ], [ 0, %bb.dw ], [ 0, %bb.dx ] ; 5 uses
  %.sroa.6245.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.dv ], [ %.sroa.6245.0.copyload.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i ], [ inttoptr (i64 8 to ptr), %bb.dw ], [ inttoptr (i64 8 to ptr), %bb.dx ] ; 4 uses
  %.sroa.0243.0.i = phi i64 [ 0, %bb.dv ], [ %.sroa.0243.0.copyload.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB25_5array15primitive_array14PrimitiveArrayNtNtB25_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4e_10FileReader22read_prepared_blockings_0EE11spec_extendB4g_.exit.i.i ], [ 0, %bb.dw ], [ 0, %bb.dx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !37072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !37072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !37072
  %.sroa.0259.0.copyload.i = load ptr, ptr %5, align 8, !alias.scope !37071 ; 3 uses
  %.sroa.5261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5261.0.copyload.i = load ptr, ptr %.sroa.5261.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  %.sroa.6264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6264.0.copyload.i = load i64, ptr %.sroa.6264.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  %.sroa.7267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.7267.0.copyload.i = load ptr, ptr %.sroa.7267.0..sroa_idx.i, align 8, !alias.scope !37071 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37200)
  call void @llvm.experimental.noalias.scope.decl(metadata !37201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37072
  store i32 %3, ptr %i.o, align 4, !noalias !37202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !37202
  %.val.i.i163.i = load ptr, ptr %i.cr, align 8, !noalias !37203, !nonnull !76, !noundef !76 ; 2 uses
  %.val1.i.i164.i = load i64, ptr %i.cs, align 8, !noalias !37203, !noundef !76 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37204)
  %i.rn = shl nuw nsw i64 %.val1.i.i164.i, 3      ; 2 uses
  %i.ro = icmp eq i64 %.val1.i.i164.i, 0          ; 2 uses
  br i1 %i.ro, label %.loopexit119.i.i, label %bb.es

bb.es:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array15primitive_array14PrimitiveArrayNtNtB2n_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4w_10FileReader22read_prepared_blockings_0EE9from_iterB4y_.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37205
  %i.rp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.rn, i64 noundef range(i64 1, 9) 8) #44, !noalias !37205 ; 4 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %bb.et, label %.lr.ph.preheader.i.i.i.i165.i

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.rn) #49
          to label %.noexc.i203.i unwind label %bb.ev, !noalias !37206

.noexc.i203.i:                                    ; preds = %bb.et
  unreachable

.lr.ph.preheader.i.i.i.i165.i:                    ; preds = %bb.es
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i163.i, i64 %.val1.i.i164.i
  br label %.lr.ph.i.i.i.i166.i

.lr.ph.i.i.i.i166.i:                              ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i, %.lr.ph.preheader.i.i.i.i165.i
  %.sroa.013.023.i.i.i.i167.i = phi ptr [ %i.rs, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i ], [ %.val.i.i163.i, %.lr.ph.preheader.i.i.i.i165.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i168.i = phi i64 [ %i.rr, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i ], [ 0, %.lr.ph.preheader.i.i.i.i165.i ] ; 2 uses
  %.sroa.10.021.i.i.i.i169.i = phi i64 [ %19, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i ], [ %.val1.i.i164.i, %.lr.ph.preheader.i.i.i.i165.i ]
  %19 = add nsw i64 %.sroa.10.021.i.i.i.i169.i, -1 ; 2 uses
  %20 = icmp eq ptr %.sroa.013.023.i.i.i.i167.i, %18
  br i1 %20, label %.loopexit119.i.i, label %21

21:                                               ; preds = %.lr.ph.i.i.i.i166.i
  %.val12.i.i.i.i170.i = load ptr, ptr %.sroa.013.023.i.i.i.i167.i, align 8, !alias.scope !37204, !noalias !37207, !nonnull !76, !noundef !76 ; 2 uses
  %22 = atomicrmw add ptr %.val12.i.i.i.i170.i, i64 1 monotonic, align 8, !noalias !37208
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %bb.eu, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i

bb.eu:                                            ; preds = %21
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i: ; preds = %21
  %i.rr = add nuw nsw i64 %.sroa.7.022.i.i.i.i168.i, 1
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i167.i, i64 8
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %.sroa.7.022.i.i.i.i168.i
  store ptr %.val12.i.i.i.i170.i, ptr %i.rt, align 8, !noalias !37208
  %i.ru = icmp eq i64 %19, 0
  br i1 %i.ru, label %.loopexit119.i.i, label %.lr.ph.i.i.i.i166.i

bb.ev:                                            ; preds = %bb.et
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.thread103.i201.i:                                ; preds = %bb.fc, %bb.ey
  %lpad.thr_comm.i202.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread97.i.i

.loopexit119.i.i:                                 ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i, %.lr.ph.i.i.i.i166.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array15primitive_array14PrimitiveArrayNtNtB2n_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4w_10FileReader22read_prepared_blockings_0EE9from_iterB4y_.exit.i
  %.sroa.5.0.i.i.i172.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array15primitive_array14PrimitiveArrayNtNtB2n_5types10UInt32TypeEENCNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB4w_10FileReader22read_prepared_blockings_0EE9from_iterB4y_.exit.i ], [ %i.rp, %.lr.ph.i.i.i.i166.i ], [ %i.rp, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i171.i ] ; 6 uses
  store i64 %.val1.i.i164.i, ptr %i.n, align 8, !noalias !37202
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5.0.i.i.i172.i, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !noalias !37202
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val1.i.i164.i, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !noalias !37202
  %i.rw = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !37202 ; 2 uses
  %i.rx = icmp ult i64 %i.rw, 6
  call void @llvm.assume(i1 %i.rx)
  %i.ry = icmp samesign ugt i64 %i.rw, 3
  br i1 %i.ry, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.loopexit119.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37202
  store i64 %.sroa.9248.0.i, ptr %i.m, align 8, !noalias !37202
  %i.rz = icmp ult i64 %.sroa.9248.0.i, 1152921504606846976
  call void @llvm.assume(i1 %i.rz)
  %.not47.i.i = icmp eq i64 %.sroa.9248.0.i, 0
  br i1 %.not47.i.i, label %bb.ey, label %bb.fa

bb.ex:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit69.i.i, %.loopexit119.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37202
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !37209, !nonnull !76, !noundef !76 ; 2 uses
  %i.sc = atomicrmw add ptr %i.sb, i64 1 monotonic, align 8, !noalias !37206
  %i.sd = icmp slt i64 %i.sc, 0
  br i1 %i.sd, label %bb.fi, label %bb.fh

bb.ey:                                            ; preds = %bb.ew
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @712) #49
          to label %bb.ez unwind label %.thread103.i201.i, !noalias !37206

bb.ez:                                            ; preds = %bb.ey
  unreachable

bb.fa:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37202
  call void @llvm.experimental.noalias.scope.decl(metadata !37210)
  %i.se = shl nuw nsw i64 %.val1.i.i164.i, 2      ; 2 uses
  br i1 %i.ro, label %.loopexit.i175.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37211
  %i.sf = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.se, i64 noundef range(i64 1, 9) 4) #44, !noalias !37211 ; 8 uses
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %bb.fc, label %.preheader.i.i.i.i173.i.preheader

.preheader.i.i.i.i173.i.preheader:                ; preds = %bb.fb
  %xtraiter = and i64 %.val1.i.i164.i, 3          ; 3 uses
  %i.sh = icmp ult i64 %.val1.i.i164.i, 4
  br i1 %i.sh, label %.preheader.i.i.i.i173.i.epil.preheader, label %.preheader.i.i.i.i173.i.preheader.new

.preheader.i.i.i.i173.i.preheader.new:            ; preds = %.preheader.i.i.i.i173.i.preheader
  %unroll_iter = and i64 %.val1.i.i164.i, -4
  br label %.preheader.i.i.i.i173.i

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.se) #49
          to label %.noexc67.i.i unwind label %.thread103.i201.i, !noalias !37206

.noexc67.i.i:                                     ; preds = %bb.fc
  unreachable

.preheader.i.i.i.i173.i:                          ; preds = %.preheader.i.i.i.i173.i, %.preheader.i.i.i.i173.i.preheader.new
  %i.si = phi i64 [ 0, %.preheader.i.i.i.i173.i.preheader.new ], [ %i.tc, %.preheader.i.i.i.i173.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i173.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i173.i ]
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i172.i, i64 %i.si
  %.val16.i.i.i.i.i.i.i174.i = load ptr, ptr %i.sj, align 8, !noalias !37212, !nonnull !76, !noundef !76
  %i.sk = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i174.i, i64 64
  %i.sl = load i32, ptr %i.sk, align 8, !noalias !37213, !noundef !76
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.si
  store i32 %i.sl, ptr %i.sm, align 4, !noalias !37214
  %i.sn = or disjoint i64 %i.si, 1                ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i172.i, i64 %i.sn
  %.val16.i.i.i.i.i.i.i174.i.1 = load ptr, ptr %i.so, align 8, !noalias !37212, !nonnull !76, !noundef !76
  %i.sp = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i174.i.1, i64 64
  %i.sq = load i32, ptr %i.sp, align 8, !noalias !37213, !noundef !76
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sn
  store i32 %i.sq, ptr %i.sr, align 4, !noalias !37214
  %i.ss = or disjoint i64 %i.si, 2                ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i172.i, i64 %i.ss
  %.val16.i.i.i.i.i.i.i174.i.2 = load ptr, ptr %i.st, align 8, !noalias !37212, !nonnull !76, !noundef !76
  %i.su = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i174.i.2, i64 64
  %i.sv = load i32, ptr %i.su, align 8, !noalias !37213, !noundef !76
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.ss
  store i32 %i.sv, ptr %i.sw, align 4, !noalias !37214
  %i.sx = or disjoint i64 %i.si, 3                ; 2 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i172.i, i64 %i.sx
  %.val16.i.i.i.i.i.i.i174.i.3 = load ptr, ptr %i.sy, align 8, !noalias !37212, !nonnull !76, !noundef !76
  %i.sz = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i174.i.3, i64 64
  %i.ta = load i32, ptr %i.sz, align 8, !noalias !37213, !noundef !76
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sx
  store i32 %i.ta, ptr %i.tb, align 4, !noalias !37214
  %i.tc = add nuw i64 %i.si, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i175.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i173.i

.loopexit.i175.i.loopexit.unr-lcssa:              ; preds = %.preheader.i.i.i.i173.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i175.i, label %.preheader.i.i.i.i173.i.epil.preheader

.preheader.i.i.i.i173.i.epil.preheader:           ; preds = %.loopexit.i175.i.loopexit.unr-lcssa, %.preheader.i.i.i.i173.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i173.i.preheader ], [ %i.tc, %.loopexit.i175.i.loopexit.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.preheader.i.i.i.i173.i.epil

.preheader.i.i.i.i173.i.epil:                     ; preds = %.preheader.i.i.i.i173.i.epil, %.preheader.i.i.i.i173.i.epil.preheader
  %i.td = phi i64 [ %i.ti, %.preheader.i.i.i.i173.i.epil ], [ %.epil.init, %.preheader.i.i.i.i173.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i173.i.epil ], [ 0, %.preheader.i.i.i.i173.i.epil.preheader ]
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i172.i, i64 %i.td
  %.val16.i.i.i.i.i.i.i174.i.epil = load ptr, ptr %i.te, align 8, !noalias !37212, !nonnull !76, !noundef !76
  %i.tf = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i174.i.epil, i64 64
  %i.tg = load i32, ptr %i.tf, align 8, !noalias !37213, !noundef !76
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.td
  store i32 %i.tg, ptr %i.th, align 4, !noalias !37214
  %i.ti = add nuw i64 %i.td, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i175.i, label %.preheader.i.i.i.i173.i.epil, !llvm.loop !36963

.loopexit.i175.i:                                 ; preds = %.loopexit.i175.i.loopexit.unr-lcssa, %.preheader.i.i.i.i173.i.epil, %bb.fa
  %.sroa.10.0.i11.i.i176.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.fa ], [ %i.sf, %.preheader.i.i.i.i173.i.epil ], [ %i.sf, %.loopexit.i175.i.loopexit.unr-lcssa ]
  store i64 %.val1.i.i164.i, ptr %i.l, align 8, !alias.scope !37210, !noalias !37202
  %.sroa.4.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i11.i.i176.i, ptr %.sroa.4.0..sroa_idx.i65.i.i, align 8, !alias.scope !37210, !noalias !37202
  %.sroa.5.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.val1.i.i164.i, ptr %.sroa.5.0..sroa_idx.i66.i.i, align 8, !alias.scope !37210, !noalias !37202
  %i.tj = getelementptr [8 x i8], ptr %.sroa.6245.0.i, i64 %.sroa.9248.0.i
  %i.tk = getelementptr i8, ptr %i.tj, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37202
  store ptr %i.m, ptr %i.k, align 8, !noalias !37202
  %.sroa.423.0..sroa_idx.i177.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i177.i, align 8, !noalias !37202
  %i.tl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.6245.0.i, ptr %i.tl, align 8, !noalias !37202
  %.sroa.427.0..sroa_idx.i178.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i178.i, align 8, !noalias !37202
  %i.tm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.tk, ptr %i.tm, align 8, !noalias !37202
  %.sroa.431.0..sroa_idx.i179.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.431.0..sroa_idx.i179.i, align 8, !noalias !37202
  %i.tn = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.o, ptr %i.tn, align 8, !noalias !37202
  %.sroa.435.0..sroa_idx.i180.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.435.0..sroa_idx.i180.i, align 8, !noalias !37202
  %i.to = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.l, ptr %i.to, align 8, !noalias !37202
  %.sroa.439.0..sroa_idx.i181.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.439.0..sroa_idx.i181.i, align 8, !noalias !37202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37215
  store i64 0, ptr %i.e, align 8, !noalias !37215
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i182.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @714, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i182.i, align 8, !noalias !37215
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i183.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 18, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i.i183.i, align 8, !noalias !37215
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i184.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i184.i, align 8, !noalias !37215
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i185.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @245, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i185.i, align 8, !noalias !37215
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i186.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 29, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i.i186.i, align 8, !noalias !37215
  %.sroa.5.0..sroa_idx.i.i.i187.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i.i187.i, align 8, !noalias !37215
  %.sroa.7.0..sroa_idx.i.i.i188.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @714, ptr %.sroa.7.0..sroa_idx.i.i.i188.i, align 8, !noalias !37215
  %.sroa.8.0..sroa_idx.i.i.i189.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 18, ptr %.sroa.8.0..sroa_idx.i.i.i189.i, align 8, !noalias !37215
  %.sroa.9.0..sroa_idx.i.i.i190.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i.i190.i, align 8, !noalias !37215
  %.sroa.11.0..sroa_idx.i.i.i191.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 1309, ptr %.sroa.11.0..sroa_idx.i.i.i191.i, align 4, !noalias !37215
  %.sroa.13.0..sroa_idx.i.i.i192.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr @713, ptr %.sroa.13.0..sroa_idx.i.i.i192.i, align 8, !noalias !37215
  %.sroa.15.0..sroa_idx.i.i.i193.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.k, ptr %.sroa.15.0..sroa_idx.i.i.i193.i, align 8, !noalias !37215
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
          to label %bb.ff unwind label %bb.fd, !noalias !37206

bb.fd:                                            ; preds = %.loopexit.i175.i
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val61.i194.i = load i64, ptr %i.l, align 8, !noalias !37202 ; 2 uses
  %i.tq = icmp eq i64 %.val61.i194.i, 0
  br i1 %i.tq, label %.thread97.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.val62.i195.i = load ptr, ptr %.sroa.4.0..sroa_idx.i65.i.i, align 8, !noalias !37202, !nonnull !76, !noundef !76
  %i.tr = shl nuw i64 %.val61.i194.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62.i195.i, i64 noundef %i.tr, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !37206
  br label %.thread97.i.i

bb.ff:                                            ; preds = %.loopexit.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37202
  %.val59.i199.i = load i64, ptr %i.l, align 8, !noalias !37202 ; 2 uses
  %i.ts = icmp eq i64 %.val59.i199.i, 0
  br i1 %i.ts, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit69.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %.val60.i200.i = load ptr, ptr %.sroa.4.0..sroa_idx.i65.i.i, align 8, !noalias !37202, !nonnull !76, !noundef !76
  %i.tt = shl nuw i64 %.val59.i199.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i200.i, i64 noundef %i.tt, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !37206
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit69.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit69.i.i: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !37202
  br label %bb.ex

bb.fh:                                            ; preds = %bb.ex
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.tv = load ptr, ptr %i.tu, align 8, !alias.scope !37209, !nonnull !76, !noundef !76 ; 2 uses
  %i.tw = atomicrmw add ptr %i.tv, i64 1 monotonic, align 8, !noalias !37206
  %i.tx = icmp slt i64 %i.tw, 0
  br i1 %i.tx, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.ex
  call void @llvm.trap()
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.tz = load <2 x ptr>, ptr %i.ty, align 8, !alias.scope !37209
  %i.ua = load ptr, ptr %i.ty, align 8, !alias.scope !37209, !nonnull !76, !noundef !76
  %i.ub = atomicrmw add ptr %i.ua, i64 1 monotonic, align 8, !noalias !37206
  %i.uc = icmp slt i64 %i.ub, 0
  br i1 %i.uc, label %bb.fm, label %bb.fl

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.trap()
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.uf = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.uf, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.ue, i64 3, i1 false), !noalias !37216
  %i.ug = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.tv, ptr %i.ug, align 16, !noalias !37202
  %i.uh = load i32, ptr %i.o, align 4, !noalias !37202, !noundef !76
  %i.ui = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %i.uh, ptr %i.ui, align 16, !noalias !37202
  %i.uj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store <2 x ptr> %i.tz, ptr %i.uj, align 8, !noalias !37202
  %i.uk = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.sb, ptr %i.uk, align 8, !noalias !37202
  %i.ul = load <2 x i64>, ptr %i.ud, align 8, !alias.scope !37209
  store <2 x i64> %i.ul, ptr %i.j, align 16, !noalias !37202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37202
  %i.um = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.0243.0.i, ptr %i.um, align 8, !noalias !37217
  %.sroa.6245.0..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.6245.0.i, ptr %.sroa.6245.0..sroa_idx246.i, align 8, !noalias !37217
  %.sroa.9248.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.9248.0.i, ptr %.sroa.9248.0..sroa_idx249.i, align 8, !noalias !37217
  store i64 1, ptr %i.i, align 8, !noalias !37202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !37202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37202
  store ptr %.sroa.0259.0.copyload.i, ptr %i.g, align 8, !noalias !37218
  %.sroa.5261.0..sroa_idx262.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5261.0.copyload.i, ptr %.sroa.5261.0..sroa_idx262.i, align 8, !noalias !37218
  %.sroa.6264.0..sroa_idx265.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.6264.0.copyload.i, ptr %.sroa.6264.0..sroa_idx265.i, align 8, !noalias !37218
  %.sroa.7267.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.7267.0.copyload.i, ptr %.sroa.7267.0..sroa_idx268.i, align 8, !noalias !37218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 24, i1 false), !noalias !37219
  %i.un = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !37201, !noalias !37072, !nonnull !76, !noundef !76
  invoke void @_RNvNtCsjjpCCFGI3ul_14lance_encoding7decoder28schedule_and_decode_blocking(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.uo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
          to label %bb.fu unwind label %bb.gm, !noalias !37136

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.trap()
  unreachable

bb.fn:                                            ; preds = %bb.fq, %bb.fo, %.thread97.i.i
  %i.up = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !37220
  unreachable

.thread97.i.i:                                    ; preds = %bb.fe, %bb.fd, %.thread103.i201.i
  %.pn100.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i202.i, %.thread103.i201.i ], [ %i.tp, %bb.fe ], [ %i.tp, %bb.fd ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.n) #50
          to label %bb.fo unwind label %bb.fn, !noalias !37206

bb.fo:                                            ; preds = %.thread97.i.i, %bb.ev
  %.pn.pn.ph.i196.i = phi { ptr, i32 } [ %i.rv, %bb.ev ], [ %.pn100.i.i, %.thread97.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0259.0.copyload.i) ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0259.0.copyload.i, i64 32
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !37221, !nonnull !76, !noundef !76
  invoke void %i.ur(ptr noundef %.sroa.7267.0.copyload.i, ptr noundef %.sroa.5261.0.copyload.i, i64 noundef %.sroa.6264.0.copyload.i)
          to label %bb.fp unwind label %bb.fn, !noalias !37206, !inline_history !45

bb.fp:                                            ; preds = %bb.fo
  %i.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37222)
  call void @llvm.experimental.noalias.scope.decl(metadata !37223)
  %i.ut = load ptr, ptr %i.us, align 8, !alias.scope !37224, !noalias !37072, !nonnull !76, !noundef !76
  %i.uu = atomicrmw add ptr %i.ut, i64 -1 release, align 8, !noalias !37225
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.fq, label %.noexc74.i.i

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.us)
          to label %.noexc74.i.i unwind label %bb.fn, !noalias !37220

end_hunk_7
begin_hunk_8_@_RNvXse_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.n, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1376, i64 noundef 8, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.m, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1377, i64 noundef 4, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.l, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1378, i64 noundef 13, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.k, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1191, i64 noundef 11, ptr noundef nonnull %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1379, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1380)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.j, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1381, i64 noundef 9, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.i, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1383, i64 noundef 13, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1382)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.h, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1384, i64 noundef 18, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.g, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1385, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1058)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.f, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1387, i64 noundef 7, ptr noundef nonnull %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1015, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1386)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.e, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1388, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %i.d, align 8
  %i.be = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1289, i64 noundef 10, ptr noundef nonnull %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1389, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1386)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.c, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1391, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1390)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.b, align 8
  %i.bi = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1393, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1392)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.a, align 8
  %i.bk = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1394, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.w, %bb.b ], [ %i.y, %bb.c ], [ %i.aa, %bb.d ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.aj, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %i.aq, %bb.k ], [ %i.as, %bb.l ], [ %i.au, %bb.m ], [ %i.aw, %bb.n ], [ %i.az, %bb.o ], [ %i.bb, %bb.p ], [ %i.be, %bb.q ], [ %i.bg, %bb.r ], [ %i.bi, %bb.s ], [ %i.bk, %bb.t ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53855 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1396, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1395, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1088, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1006, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) initializes((16, 24), (80, 96)) %0) unnamed_addr #4 personality ptr @rust_eh_personality !guid !53860 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53861)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %i.c, align 8, !range !78, !alias.scope !53861, !noundef !76
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53862)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1e_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !53863 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataEEB15_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !53863, !nonnull !76, !noundef !76
  %i.i = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !53863
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataEEB15_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataEEB15_.exit: ; preds = %bb.c, %bb.b, %bb.a
  store i64 -1, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCscI6d9CVNmLh_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53864 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsf_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB5_14DirectEncodingNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53865 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @416, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @376, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsg_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !53874 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !76 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53875
  %i.g = mul nuw nsw i64 %.val1, 192              ; 2 uses
  %i.h = icmp eq i64 %.val1, 0
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !53875
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !53875
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !53876, !inline_history !53873
  %i.k = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #44, !noalias !53876, !inline_history !53873 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #49, !noalias !53875, !inline_history !53873
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  store i64 %.val1, ptr %i.b, align 8, !noalias !53875
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !53875
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.val1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.p, %bb.d ], [ %.val, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.o, %bb.d ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %3, %bb.d ], [ %.val1, %.lr.ph.preheader.i.i ]
  %3 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %4 = icmp eq ptr %.sroa.012.023.i.i, %2
  br i1 %4, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit, label %5

5:                                                ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53875
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.012.023.i.i)
          to label %bb.d unwind label %bb.f, !noalias !53877, !inline_history !53873

bb.d:                                             ; preds = %5
  %i.o = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 192
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.k, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.q, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !53877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53875
  %i.r = icmp eq i64 %3, 0
  br i1 %i.r, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !53877, !inline_history !53873
  unreachable

bb.f:                                             ; preds = %5
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.n, align 8, !noalias !53875
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %common.resume unwind label %bb.e, !noalias !53877, !inline_history !53873

common.resume:                                    ; preds = %bb.g, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.f ], [ %i.u, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit: ; preds = %.lr.ph.i.i, %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i
  %6 = phi ptr [ %i.j, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i ], [ %i.n, %bb.d ], [ %i.n, %.lr.ph.i.i ]
  store i64 %.val1, ptr %6, align 8, !noalias !53875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !53878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.d) #50
          to label %common.resume unwind label %bb.i

bb.h:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_8MetadataNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53879 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1408, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1409, i64 noundef 17, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @987)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1411, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1410)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1160, i64 noundef 19, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @987)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.a, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1413, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1412)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs6LHU0WyJj3k_15futures_channel7oneshotNtB5_8CanceledNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !53880 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1414, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsk_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_17FileMetadataIndexNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !53906 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !76, !noundef !76
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = tail call noundef zeroext i1 @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context9mark_seen(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c)
  br i1 %i.d, label %bb.b, label %_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtB7_9datatypes6schema6SchemaENtB5_10DeepSizeOf21deep_size_of_childrenCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvXsh_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaNtNtB9_8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  %i.f = add i64 %i.e, 72
  br label %_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtB7_9datatypes6schema6SchemaENtB5_10DeepSizeOf21deep_size_of_childrenCsaSXGKSfiU2E_10lance_file.exit

_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtB7_9datatypes6schema6SchemaENtB5_10DeepSizeOf21deep_size_of_childrenCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = load i64, ptr %0, align 8, !range !79, !alias.scope !53907, !noundef !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !76, !noundef !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i64, ptr %i.i, align 8, !noundef !76
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = tail call noundef zeroext i1 @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context9mark_seen(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53908)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !53908, !noundef !76 ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !53908, !noundef !76 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  %i.q = icmp eq i64 %i.o, 0
  %or.cond = or i1 %i.q, %.not.i
  br i1 %or.cond, label %_RNvXsf_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtB5_10DeepSizeOf21deep_size_of_childrenCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvXsb_NtCs63DIHKhvmTb_10lance_core8deepsizeINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtB7_9datatypes6schema6SchemaENtB5_10DeepSizeOf21deep_size_of_childrenCsaSXGKSfiU2E_10lance_file.exit
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !53908, !noundef !76
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %.sroa.10.1.i = phi i64 [ %.sroa.78.0.i.i.i.i.i, %.loopexit.i.i ], [ %i.t, %.lr.ph.i.preheader.i ] ; 6 uses
  %.sroa.6.1.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.3.1.i = phi ptr [ %.sroa.07.0.i.i.i.i.i, %.loopexit.i.i ], [ null, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.u = phi i64 [ %i.v, %.loopexit.i.i ], [ %i.o, %.lr.ph.i.preheader.i ]
  %.sroa.0.019.i.i = phi i64 [ %i.bs, %.loopexit.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.v = add i64 %i.u, -1                         ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.3.1.i, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = inttoptr i64 %.sroa.6.1.i to ptr         ; 3 uses
  %i.x = icmp eq i64 %.sroa.10.1.i, 0
  br i1 %i.x, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %.sroa.10.1.i, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.prol ], [ %.sroa.10.1.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.prol, i64 408
  %i.z = add i64 %.sroa.011.016.i.i.i.i.prol, -1  ; 2 uses
  %.sroa.013.0.i.i.i.i.prol = load ptr, ptr %i.y, align 8, !noalias !53909, !nonnull !76, !noundef !76 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !53891

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.unr = phi i64 [ %.sroa.10.1.i, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.prol ]
  %i.aa = icmp ult i64 %.sroa.10.1.i, 8
  br i1 %i.aa, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.013.017.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i, i64 408
  %.sroa.013.0.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i, i64 408
  %.sroa.013.0.i.i.i.i.1 = load ptr, ptr %i.ac, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.1, i64 408
  %.sroa.013.0.i.i.i.i.2 = load ptr, ptr %i.ad, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.2, i64 408
  %.sroa.013.0.i.i.i.i.3 = load ptr, ptr %i.ae, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.3, i64 408
  %.sroa.013.0.i.i.i.i.4 = load ptr, ptr %i.af, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.4, i64 408
  %.sroa.013.0.i.i.i.i.5 = load ptr, ptr %i.ag, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.5, i64 408
  %.sroa.013.0.i.i.i.i.6 = load ptr, ptr %i.ah, align 8, !noalias !53909, !nonnull !76, !noundef !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.6, i64 408
  %i.aj = add i64 %.sroa.011.016.i.i.i.i, -8      ; 2 uses
  %.sroa.013.0.i.i.i.i.7 = load ptr, ptr %i.ai, align 8, !noalias !53909, !nonnull !76, !noundef !76 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %.lr.ph.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %.lr.ph.i.i
  %.sroa.59.0.copyload.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.10.1.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.6.1.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %.sroa.3.1.i, %.lr.ph.i.i ], [ %.sroa.013.0.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i, i64 406
  %i.am = load i16, ptr %i.al, align 2, !noalias !53910, !noundef !76
  %i.an = zext i16 %i.am to i64
  %i.ao = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.f, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.d
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.d ], [ %.sroa.07.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i = phi i64 [ %i.as, %bb.d ], [ %.sroa.48.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 352
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !53911, !noundef !76 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.d
  %i.ar = zext i16 %i.au to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = add i64 %.sroa.5.021.i.i.i.i.i.i, 1     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 404
  %i.au = load i16, ptr %i.at, align 4, !noalias !53911 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 406
  %i.aw = load i16, ptr %i.av, align 2, !noalias !53910, !noundef !76
  %i.ax = icmp ult i16 %i.au, %i.aw
end_hunk_8
begin_hunk_9_@_RNvXsr_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB5_14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len:bb.a
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.sroa.04.0.i.i3.epil.init
  %.val.i.i5.epil = load i64, ptr %i.ed, align 8, !alias.scope !53995, !noundef !76
  %i.ee = or i64 %.val.i.i5.epil, 1
  %i.ef = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = xor i64 %i.ef, 63
  %i.eh = mul nuw nsw i64 %i.eg, 9
  %i.ei = add nuw nsw i64 %i.eh, 73
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = add i64 %i.ej, %.sroa.02.0.i.i4.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6.unr-lcssa, %.preheader.i2.epil.preheader
  %.lcssa = phi i64 [ %i.eb, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6.unr-lcssa ], [ %i.ek, %.preheader.i2.epil.preheader ] ; 2 uses
  %i.el = or i64 %.lcssa, 1
  %i.em = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.el, i1 true)
  %i.en = xor i64 %i.em, 63
  %i.eo = mul nuw nsw i64 %i.en, 9
  %i.ep = add nuw nsw i64 %i.eo, 73
  %i.eq = lshr i64 %i.ep, 6
  %i.er = add i64 %.lcssa, 1
  %i.es = add i64 %i.er, %i.eq
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit8

_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit8: ; preds = %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6
  %.sroa.0.0.i7 = phi i64 [ %i.es, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i6 ], [ 0, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit ]
  %i.et = add i64 %i.bd, %.sroa.02.0.i
  %i.eu = add i64 %i.et, %.sroa.0.0.i.i.i
  %i.ev = add i64 %i.eu, %.sroa.0.0.i
  %i.ew = add i64 %i.ev, %.sroa.0.0.i7
  ret i64 %i.ew
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsr_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB5_14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0) unnamed_addr #4 personality ptr @rust_eh_personality !guid !54000 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !range !110, !noundef !76 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4 = load ptr, ptr %i.b, align 8            ; 2 uses
  %switch.i = icmp ugt i64 %.val, -3
  br i1 %switch.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %.val, -9223372036854775807
  tail call void @llvm.assume(i1 %i.c)
  %or.cond.i.i.i.i = icmp slt i64 %.val, 1
  br i1 %or.cond.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit: ; preds = %bb.c, %bb.b, %bb.a
  store i64 -2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !76 ; 2 uses
  store i64 0, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54001)
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.07.i ; 6 uses
  %i.j = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54002)
  %.val5.i.i = load i64, ptr %i.i, align 8, !alias.scope !54003 ; 2 uses
  %i.k = icmp eq i64 %.val5.i.i, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val6.i.i = load ptr, ptr %i.l, align 8, !alias.scope !54003, !nonnull !76, !noundef !76
  %i.m = shl nuw i64 %.val5.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !54003
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.d, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !54003 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !54003, !nonnull !76, !noundef !76
  %i.q = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !54003
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.val7.i.i = load i64, ptr %i.r, align 8, !range !110, !alias.scope !54003, !noundef !76 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.val8.i.i = load ptr, ptr %i.s, align 8, !alias.scope !54003 ; 2 uses
  %switch.i13.i.i = icmp ugt i64 %.val7.i.i, -3
  br i1 %switch.i13.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i
  %i.t = icmp ne i64 %.val7.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.t)
  %or.cond.i.i.i.i14.i.i = icmp slt i64 %.val7.i.i, 1
  br i1 %or.cond.i.i.i.i14.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val7.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !54003
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i: ; preds = %bb.g, %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i
  %i.u = icmp eq i64 %i.j, %i.g
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBK_.exit, label %.lr.ph.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBK_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.w, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !54016 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load <2 x i32>, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.d unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %.pn, %bb.e ], [ %.pn, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54017)
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !54017 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !54017, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !54017
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx10, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.g ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !54018
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.s = load i8, ptr %i.r, align 1, !range !172, !noundef !76
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.u = load i8, ptr %i.t, align 8, !range !95, !noundef !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !54019, !nonnull !76, !noundef !76 ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !54019, !noundef !76 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54020
  %i.z = mul nuw nsw i64 %i.y, 192                ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i, label %bb.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %bb.h
  store i64 0, ptr %i.b, align 8, !noalias !54020
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !54020
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !54021, !inline_history !54015
  %i.ad = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 8) #44, !noalias !54021, !inline_history !54015 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.z) #49
          to label %.noexc unwind label %bb.n, !inline_history !54015

.noexc:                                           ; preds = %bb.j
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.i
  store i64 %i.y, ptr %i.b, align 8, !noalias !54020
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !54020
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [192 x i8], ptr %i.x, i64 %i.y
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.ai, %bb.k ], [ %i.x, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ah, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %3, %bb.k ], [ %i.y, %.lr.ph.preheader.i ]
  %3 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %4 = icmp eq ptr %.sroa.012.023.i, %2
  br i1 %4, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit, label %5

5:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54020
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.012.023.i)
          to label %bb.k unwind label %bb.m, !noalias !54022, !inline_history !54015

bb.k:                                             ; preds = %5
  %i.ah = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 192
  %i.aj = getelementptr inbounds nuw [192 x i8], ptr %i.ad, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aj, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !54022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54020
  %i.ak = icmp eq i64 %3, 0
  br i1 %i.ak, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !54022, !inline_history !54015
  unreachable

bb.m:                                             ; preds = %5
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ag, align 8, !noalias !54020
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %.body unwind label %bb.l, !noalias !54022, !inline_history !54015

bb.n:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.n ], [ %lpad.loopexit.i, %bb.m ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f)
  br label %bb.e

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.k, %.lr.ph.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %6 = phi ptr [ %i.ac, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ %i.ag, %.lr.ph.i ], [ %i.ag, %bb.k ]
  store i64 %i.y, ptr %6, align 8, !noalias !54020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !54023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54020
  %i.an = load i64, ptr %1, align 8, !range !86, !noundef !76
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x i64>, ptr %i.aq, align 8      ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !noundef !76 ; 3 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit ], [ undef, %bb.o ], [ %i.bf, %bb.q ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit ], [ null, %bb.o ], [ %i.as, %bb.q ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit ], [ 1, %bb.o ], [ 1, %bb.q ]
  %i.at = phi <2 x i64> [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ar, %bb.o ], [ %i.ar, %bb.q ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i32> %i.j, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.copyload, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx11, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.s, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.u, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.at, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load <4 x i32>, ptr %i.au, align 8
  store <4 x i32> %i.bd, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !76, !align !77, !noundef !76
  %i.bg = atomicrmw add ptr %i.as, i64 1 monotonic, align 8
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsaSXGKSfiU2E_10lance_file.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXst_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB5_14ColumnMetadataNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !54024 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @376, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1213)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @422, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1421)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.b, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @375, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1422)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.a, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @378, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1423)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #27 personality ptr @rust_eh_personality !guid !54040 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !noundef !76 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !76 ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = or i64 %i.m, 1
  %i.q = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 73
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw i64 %i.m, 1
  %i.w = add nuw i64 %i.v, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.01.0 = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.y = load i32, ptr %i.x, align 4, !noundef !76 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = or i32 %i.y, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  %i.ah = add nuw nsw i64 %i.ag, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !76 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = or i32 %i.aj, 1
  %i.am = sext i32 %i.al to i64
  %i.an = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = add nuw nsw i64 %i.ar, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.03.0 = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i64, ptr %i.at, align 8, !noundef !76 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = or i64 %i.au, 1
  %i.ay = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = add nuw i64 %i.au, 1
  %i.be = add nuw i64 %i.bd, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.04.0 = phi i64 [ %i.be, %bb.j ], [ 0, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_9
