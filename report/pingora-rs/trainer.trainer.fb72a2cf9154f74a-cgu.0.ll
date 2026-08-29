Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/trainer.trainer.fb72a2cf9154f74a-cgu.0?download=true
inline.NumInlined: 149
inline.NumDeleted: 102
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslArWzHu5pnW_7trainer:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslArWzHu5pnW_7trainer(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !41
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !42
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !9, !alias.scope !43, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !43
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslArWzHu5pnW_7trainer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 24)
  %i.g = load i64, ptr %i.a, align 8, !range !46, !noalias !43, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !47, !noalias !43, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !43, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !43
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !43
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CslArWzHu5pnW_7trainer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslArWzHu5pnW_7trainer(ptr noundef nonnull %i.a) #20
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCslArWzHu5pnW_7trainer(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslArWzHu5pnW_7trainer(ptr noundef nonnull readonly %i.a) #20, !noalias !48
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCslArWzHu5pnW_7trainer4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 16 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !56
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.c unwind label %bb.b, !noalias !51

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.q, align 8, !range !57, !noalias !56, !noundef !5 ; 4 uses
  %.not.i7 = icmp eq i64 %i.x, -1
  br i1 %.not.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.v, align 8, !alias.scope !51, !noalias !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !51, !noalias !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !51, !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !73, !noalias !51, !nonnull !5, !noundef !5 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !73, !noalias !51, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.ad = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.ag = icmp eq ptr %.val1.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !74, !noalias !77 ; 2 uses
  %i.aj = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !74, !noalias !77, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !78
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.al = icmp eq i64 %i.ai, %i.af
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !73, !noalias !51, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i
  %i.ap = load ptr, ptr %i.u, align 8, !alias.scope !73, !noalias !51, !nonnull !5, !noundef !5
  %i.aq = mul nuw i64 %i.an, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !77
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit.thread

bb.g:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %i.x, 0
  br i1 %i.as, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !51
  br label %bb.w

bb.i:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !56 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !54, !noalias !51, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val4.i = load ptr, ptr %i.au, align 8, !alias.scope !54, !noalias !51, !nonnull !5, !noundef !5
  %i.av = ptrtoint ptr %.val4.i to i64
  %i.aw = ptrtoint ptr %.val.i to i64
  %i.ax = sub nuw i64 %i.av, %i.aw                ; 2 uses
  %i.ay = udiv exact i64 %i.ax, 24
  %i.az = call i64 @llvm.umax.i64(i64 %i.ay, i64 3)
  %..i.i = add nuw nsw i64 %i.az, 1               ; 2 uses
  %or.cond.not.i.i.i = icmp ugt i64 %i.ax, 9223372036854775776
  br i1 %or.cond.not.i.i.i, label %bb.k, label %bb.j, !prof !79

bb.j:                                             ; preds = %bb.i
  %i.ba = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !80
  %i.bb = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.ba, i64 noundef 8) #19, !noalias !80 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.i.i = phi i64 [ %i.ba, %bb.j ], [ undef, %bb.i ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.i ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #21
          to label %.noexc.i unwind label %bb.g, !noalias !51

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  store i64 %i.x, ptr %i.bb, align 8, !noalias !51
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !51
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !51
  store i64 %..i.i, ptr %i.r, align 8, !noalias !56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !56
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i, %bb.l
  %i.bf = phi ptr [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i ], [ %i.bb, %bb.l ]
  %i.bg = phi i64 [ %i.cd, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i ], [ 1, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !93
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.o unwind label %bb.n, !noalias !94

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ce, %bb.t ], [ %i.ce, %bb.u ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #22, !noalias !94
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #22, !noalias !51
  br label %common.resume

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.o, align 8, !range !57, !noalias !93, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bi, -1
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !93
  %i.bj = icmp samesign ult i64 %i.bg, 384307168202282326
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.r, align 8, !range !9, !alias.scope !95, !noalias !96, !noundef !5
  %i.bl = icmp eq i64 %i.bg, %i.bk
  br i1 %i.bl, label %bb.v, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !93
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !112, !noalias !113, !nonnull !5, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !112, !noalias !113, !nonnull !5, !noundef !5 ; 2 uses
  %i.bm = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = udiv exact i64 %i.bo, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.bq = icmp eq ptr %.val1.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !114, !noalias !117 ; 2 uses
  %i.bt = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !114, !noalias !117, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !118
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bs, %i.bp
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !112, !noalias !113, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.p, align 8, !alias.scope !112, !noalias !113, !nonnull !5, !noundef !5
  %i.ca = mul nuw i64 %i.bx, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !117
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i_crit_edge.i, %bb.p
  %i.cb = phi ptr [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i_crit_edge.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bg ; 3 uses
  store i64 %i.bi, ptr %i.cc, align 8, !noalias !94
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !94
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !94
  %i.cd = add nuw nsw i64 %i.bg, 1                ; 2 uses
  store i64 %i.cd, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !95, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !93
  br label %bb.m

bb.t:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = icmp eq i64 %i.bi, 0
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !94
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i

bb.v:                                             ; preds = %bb.p
  %.val3.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !119, !noalias !113, !nonnull !5, !noundef !5
  %i.cg = ptrtoint ptr %.val3.i.i.i to i64
  %.val.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !119, !noalias !113, !nonnull !5, !noundef !5
  %i.ch = ptrtoint ptr %.val.i.i.i to i64
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = udiv exact i64 %i.ci, 24
  %i.ck = add nuw nsw i64 %i.cj, 1
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.bg, i64 noundef range(i64 1, 0) %i.ck)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i_crit_edge.i unwind label %bb.t

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i_crit_edge.i: ; preds = %bb.v
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !95, !noalias !96
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslArWzHu5pnW_7trainer.exit.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i, %bb.y, %.body11
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body11 ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i ], [ %.pn.ph.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i ], [ %.pn.ph.i, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.w, %bb.b ], [ %i.ar, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !123), !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !126), !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !129), !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !132), !noalias !51
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !135, !noalias !51, !nonnull !5, !noundef !5 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !135, !noalias !51, !nonnull !5, !noundef !5 ; 2 uses
  %i.cn = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.co = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.cp = sub nuw i64 %i.cn, %i.co
  %i.cq = udiv exact i64 %i.cp, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !136), !noalias !51
  %i.cr = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.ct, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.cs, align 8, !alias.scope !136, !noalias !139 ; 2 uses
  %i.cu = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !136, !noalias !139, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !140
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i
  %i.cw = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvCslArWzHu5pnW_7trainer4main:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECslArWzHu5pnW_7trainer.exit38.i.i.i: ; preds = %bb.bm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer.exit37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !164
  %.val.i.i1.i = load i64, ptr %i.j, align 8, !noalias !164 ; 2 uses
  %i.ge = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.ge, label %_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer.exit.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit39.sink.split.i.i.i

_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECslArWzHu5pnW_7trainer.exit38.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit39.sink.split.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECslArWzHu5pnW_7trainer.exit33.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.gf = load i64, ptr %i.n, align 8, !range !57, !alias.scope !297, !noalias !299, !noundef !5 ; 5 uses
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.bn, label %bb.bu, !prof !153

bb.bn:                                            ; preds = %_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !300
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !297, !noalias !299, !nonnull !5, !noundef !5
  store ptr %i.gi, ptr %i.m, align 8, !noalias !300
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %bb.bp unwind label %bb.bo, !noalias !300

bb.bo:                                            ; preds = %bb.bn
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
          to label %.body11 unwind label %bb.bq, !noalias !300

bb.bp:                                            ; preds = %bb.bn
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !300
  unreachable

bb.br:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit.thread, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit
  %i.gl = phi i64 [ 0, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit.thread ], [ %.pre, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer.exit ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.bt unwind label %bb.bs

.body11:                                          ; preds = %bb.bw, %.body, %bb.bs, %bb.bo, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECslArWzHu5pnW_7trainer.exit.i.i.i, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.bo ], [ %i.gm, %bb.bs ], [ %.pn10.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECslArWzHu5pnW_7trainer.exit.i.i.i ], [ %i.dl, %bb.ab ], [ %.pn10.i.i.i, %bb.ba ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.bw ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #22
  br label %common.resume

bb.bs:                                            ; preds = %bb.z, %bb.br
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body11

bb.bt:                                            ; preds = %bb.br
  unreachable

bb.bu:                                            ; preds = %_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer.exit.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !301 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.gn = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.bx unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %bb.bu
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ca, %bb.bv
  %eh.lpad-body = phi { ptr, i32 } [ %i.go, %bb.bv ], [ %i.gr, %bb.ca ] ; 2 uses
  %i.gp = icmp eq i64 %i.gf, 0
  br i1 %i.gp, label %.body11, label %bb.bw

bb.bw:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %.body11

bb.bx:                                            ; preds = %bb.bu
  store ptr %i.gn, ptr %i.t, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.gq = invoke noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %bb.by unwind label %bb.bv     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not.i = icmp eq ptr %i.gq, null
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer.exit, label %bb.bz, !prof !302

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.gq, ptr %i.s, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #22
          to label %.body unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer.exit: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.gt = icmp eq i64 %i.gf, 0
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13, label %bb.cd

bb.cd:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer.exit
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13: ; preds = %bb.cd, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %.val.i14 = load ptr, ptr %i.de, align 8, !alias.scope !303, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i = load i64, ptr %i.dc, align 8, !alias.scope !303, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.gu = icmp eq i64 %.val1.i, 0
  br i1 %i.gu, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15
  %.sroa.0.011.i.i.i = phi i64 [ %i.gw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.val.i14, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.gv, align 8, !alias.scope !306, !noalias !303 ; 2 uses
  %i.gx = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.gx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %.val9.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !306, !noalias !303, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !309
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15: ; preds = %bb.ce, %.lr.ph.i.i.i
  %i.gz = icmp eq i64 %i.gw, %.val1.i
  br i1 %i.gz, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer.exit.i.i.i15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslArWzHu5pnW_7trainer.exit13
  %.val2.i = load i64, ptr %i.v, align 8, !range !9, !alias.scope !303, !noundef !5 ; 2 uses
  %i.ha = icmp eq i64 %.val2.i, 0
  br i1 %i.ha, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer.exit, label %bb.cf

bb.cf:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer.exit.i
  %i.hb = mul nuw i64 %.val2.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !303
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer.exit: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCslArWzHu5pnW_7trainer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !310
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslArWzHu5pnW_7trainer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !46, !noalias !310, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !310, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !310, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !310
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !310
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslArWzHu5pnW_7trainer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 8, 25) %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %3 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = icmp ugt i64 %3, 9223372036854775800
  %or.cond.not = or i1 %i.b, %i.c
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %2, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %3, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %3) #19
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.i = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %3, i64 noundef 8) #19
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %3, %bb.e ], [ %3, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7lddnaOK2f6_4zstd4dict15from_continuous(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std3sys2fs8read_dir(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsz_NtCsG258MDvU3F_3std2fsNtB5_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsA_NtCsG258MDvU3F_3std2fsNtB5_8DirEntry4path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #17 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCslArWzHu5pnW_7trainer4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noinline }
attributes #21 = { noreturn }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 0"}
!8 = distinct !{!8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer"}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix8DirEntryECslArWzHu5pnW_7trainer: argument 0"}
!12 = distinct !{!12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix8DirEntryECslArWzHu5pnW_7trainer"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer: argument 0"}
!15 = distinct !{!15, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!18 = distinct !{!18, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!19 = !{!17, !14, !11}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer: argument 0"}
!22 = distinct !{!22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!25 = distinct !{!25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer: argument 0"}
!28 = distinct !{!28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!31 = distinct !{!31, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!32 = !{!30, !27, !24, !21}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer"}
!36 = !{!34, !30, !27, !24, !21}
!37 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslArWzHu5pnW_7trainer: argument 0"}
!40 = distinct !{!40, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslArWzHu5pnW_7trainer"}
!41 = distinct !{null}
!42 = !{i64 16446984558374479}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslArWzHu5pnW_7trainer: argument 0"}
!45 = distinct !{!45, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslArWzHu5pnW_7trainer"}
!46 = !{i64 0, i64 2}
!47 = !{i64 0, i64 -9223372036854775807}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CslArWzHu5pnW_7trainer: argument 0"}
!50 = distinct !{!50, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CslArWzHu5pnW_7trainer"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer: argument 0"}
!53 = distinct !{!53, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCslArWzHu5pnW_7trainer: argument 1"}
!56 = !{!52, !55}
!57 = !{i64 -1, i64 -9223372036854775808}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!60 = distinct !{!60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer: argument 0"}
!63 = distinct !{!63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer: argument 0"}
!69 = distinct !{!69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!72 = distinct !{!72, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!73 = !{!71, !68, !65, !62, !59, !55}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer: argument 0"}
!76 = distinct !{!76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer"}
!77 = !{!71, !68, !65, !62, !59, !52}
!78 = !{!75, !71, !68, !65, !62, !59, !52}
!79 = !{!"branch_weights", i32 2002, i32 2000}
!80 = !{!81, !52}
!81 = distinct !{!81, !82, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslArWzHu5pnW_7trainer: argument 0"}
!82 = distinct !{!82, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslArWzHu5pnW_7trainer"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCslArWzHu5pnW_7trainer: argument 0"}
!85 = distinct !{!85, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCslArWzHu5pnW_7trainer"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCslArWzHu5pnW_7trainer: argument 1"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!90 = distinct !{!90, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer: argument 1"}
!93 = !{!89, !92, !84, !87, !52, !55}
!94 = !{!89, !84, !52}
!95 = !{!89, !84}
!96 = !{!92, !87, !52, !55}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!99 = distinct !{!99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!105 = distinct !{!105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer: argument 0"}
!108 = distinct !{!108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!111 = distinct !{!111, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!112 = !{!110, !107, !104, !101, !98, !92, !87}
!113 = !{!89, !84, !52, !55}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer: argument 0"}
!116 = distinct !{!116, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer"}
!117 = !{!110, !107, !104, !101, !98, !89, !84, !52}
!118 = !{!115, !110, !107, !104, !101, !98, !89, !84, !52}
!119 = !{!92, !87}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!122 = distinct !{!122, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECslArWzHu5pnW_7trainer"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer: argument 0"}
!125 = distinct !{!125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECslArWzHu5pnW_7trainer"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer: argument 0"}
!128 = distinct !{!128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECslArWzHu5pnW_7trainer"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer: argument 0"}
!131 = distinct !{!131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECslArWzHu5pnW_7trainer"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!134 = distinct !{!134, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!135 = !{!133, !130, !127, !124, !121}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer: argument 0"}
!138 = distinct !{!138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECslArWzHu5pnW_7trainer"}
!139 = !{!133, !130, !127, !124, !121, !52}
!140 = !{!137, !133, !130, !127, !124, !121, !52}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 1"}
!143 = distinct !{!143, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 0"}
!146 = !{!147, !149, !150}
!147 = distinct !{!147, !148, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer"}
!149 = distinct !{!149, !148, !"_RINvNtCsG258MDvU3F_3std2fs8read_dirRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 1"}
!150 = distinct !{!150, !151, !"_RINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 0"}
!151 = distinct !{!151, !"_RINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer"}
!152 = !{i8 0, i8 3}
!153 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!154 = !{!155, !150}
!155 = distinct !{!155, !156, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer: argument 0"}
!156 = distinct !{!156, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer"}
!157 = !{!150}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer: argument 0"}
!160 = distinct !{!160, !"_RINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1K_4path7PathBufECslArWzHu5pnW_7trainer"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RINvNtCs7lddnaOK2f6_4zstd4dict20from_sample_iteratorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvB2_10from_filesB1C_NtNtB2a_4path7PathBufE0ENtB28_4FileECslArWzHu5pnW_7trainer: argument 0"}
!163 = distinct !{!163, !"_RINvNtCs7lddnaOK2f6_4zstd4dict20from_sample_iteratorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvB2_10from_filesB1C_NtNtB2a_4path7PathBufE0ENtB28_4FileECslArWzHu5pnW_7trainer"}
!164 = !{!162, !159, !150}
!165 = !{!166, !168, !169, !171, !172, !174, !162, !159, !150}
!166 = distinct !{!166, !167, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_mapNtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECslArWzHu5pnW_7trainer: argument 0"}
!167 = distinct !{!167, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_mapNtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECslArWzHu5pnW_7trainer"}
!168 = distinct !{!168, !167, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_mapNtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECslArWzHu5pnW_7trainer: argument 1"}
!169 = distinct !{!169, !170, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer: argument 0"}
!170 = distinct !{!170, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer"}
!171 = distinct !{!171, !170, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer: argument 1"}
!172 = distinct !{!172, !173, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesBW_NtNtB1u_4path7PathBufE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer: argument 0"}
!173 = distinct !{!173, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesBW_NtNtB1u_4path7PathBufE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer"}
!174 = distinct !{!174, !173, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesBW_NtNtB1u_4path7PathBufE0ENtNtNtB9_6traits8iterator8Iterator4nextCslArWzHu5pnW_7trainer: argument 1"}
!175 = !{!176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!176 = distinct !{!176, !177, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBz_8find_map5checkINtNtBH_6result6ResultNtB5_8DirEntryNtNtNtBH_2io5error5ErrorENtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0INtNtNtBH_3ops12control_flow11ControlFlowB32_EECslArWzHu5pnW_7trainer: argument 0"}
!177 = distinct !{!177, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBz_8find_map5checkINtNtBH_6result6ResultNtB5_8DirEntryNtNtNtBH_2io5error5ErrorENtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0INtNtNtBH_3ops12control_flow11ControlFlowB32_EECslArWzHu5pnW_7trainer"}
!178 = distinct !{!178, !177, !"_RINvYNtNtCsG258MDvU3F_3std2fs7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBz_8find_map5checkINtNtBH_6result6ResultNtB5_8DirEntryNtNtNtBH_2io5error5ErrorENtNtB7_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0INtNtNtBH_3ops12control_flow11ControlFlowB32_EECslArWzHu5pnW_7trainer: argument 1"}
!179 = !{!180, !182, !184, !186, !187, !189, !190, !192, !176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!180 = distinct !{!180, !181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslArWzHu5pnW_7trainer: argument 0"}
!181 = distinct !{!181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslArWzHu5pnW_7trainer"}
!182 = distinct !{!182, !183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEECslArWzHu5pnW_7trainer: argument 0"}
!183 = distinct !{!183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEECslArWzHu5pnW_7trainer"}
!184 = distinct !{!184, !185, !"_RNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0CslArWzHu5pnW_7trainer: argument 0"}
!185 = distinct !{!185, !"_RNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0CslArWzHu5pnW_7trainer"}
!186 = distinct !{!186, !185, !"_RNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0CslArWzHu5pnW_7trainer: argument 1"}
!187 = distinct !{!187, !188, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0INtB7_5FnMutTINtNtBb_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBb_2io5error5ErrorEEE8call_mutCslArWzHu5pnW_7trainer: argument 0"}
!188 = distinct !{!188, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0INtB7_5FnMutTINtNtBb_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBb_2io5error5ErrorEEE8call_mutCslArWzHu5pnW_7trainer"}
!189 = distinct !{!189, !188, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0INtB7_5FnMutTINtNtBb_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBb_2io5error5ErrorEEE8call_mutCslArWzHu5pnW_7trainer: argument 1"}
!190 = distinct !{!190, !191, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBe_2io5error5ErrorENtNtB1G_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0CslArWzHu5pnW_7trainer: argument 0"}
!191 = distinct !{!191, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBe_2io5error5ErrorENtNtB1G_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0CslArWzHu5pnW_7trainer"}
!192 = distinct !{!192, !191, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6result6ResultNtNtCsG258MDvU3F_3std2fs8DirEntryNtNtNtBe_2io5error5ErrorENtNtB1G_4path7PathBufQNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0E0CslArWzHu5pnW_7trainer: argument 1"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslArWzHu5pnW_7trainer: argument 0"}
!195 = distinct !{!195, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslArWzHu5pnW_7trainer"}
!196 = !{!184, !186, !187, !189, !190, !192, !176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!197 = !{!184, !187, !189, !190, !192, !176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!198 = !{!184, !186, !187, !189, !190, !192, !176, !166, !169, !172, !162, !159, !150}
!199 = !{!200, !184, !186, !187, !189, !190, !192, !176, !166, !169, !172, !162, !159, !150}
!200 = distinct !{!200, !201, !"_RNCNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE00CslArWzHu5pnW_7trainer: argument 0"}
!201 = distinct !{!201, !"_RNCNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE00CslArWzHu5pnW_7trainer"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs8DirEntryECslArWzHu5pnW_7trainer: argument 0"}
!204 = distinct !{!204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs8DirEntryECslArWzHu5pnW_7trainer"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix8DirEntryECslArWzHu5pnW_7trainer: argument 0"}
!207 = distinct !{!207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix8DirEntryECslArWzHu5pnW_7trainer"}
!208 = !{!209, !211, !206, !203, !200, !184, !186, !187, !189, !190, !192, !176, !166, !169, !172, !162, !159, !150}
!209 = distinct !{!209, !210, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!210 = distinct !{!210, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!211 = distinct !{!211, !212, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer: argument 0"}
!212 = distinct !{!212, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer"}
!213 = !{!206, !203, !214}
!214 = distinct !{!214, !201, !"_RNCNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE00CslArWzHu5pnW_7trainer: argument 1"}
!215 = !{!200, !184, !186, !187, !189, !190, !192, !176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!216 = !{!186, !189, !190, !192, !176, !178, !166, !168, !169, !171, !172, !174, !162, !159, !150}
!217 = !{!172, !174, !162, !159, !150}
!218 = !{!219, !221, !222, !224, !172, !174, !162, !159, !150}
!219 = distinct !{!219, !220, !"_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECslArWzHu5pnW_7trainer: argument 0"}
!220 = distinct !{!220, !"_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECslArWzHu5pnW_7trainer"}
!221 = distinct !{!221, !220, !"_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECslArWzHu5pnW_7trainer: argument 1"}
!222 = distinct !{!222, !223, !"_RNCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1M_4path7PathBufE0CslArWzHu5pnW_7trainer: argument 0"}
!223 = distinct !{!223, !"_RNCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1M_4path7PathBufE0CslArWzHu5pnW_7trainer"}
!224 = distinct !{!224, !223, !"_RNCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtB1M_4path7PathBufE0CslArWzHu5pnW_7trainer: argument 1"}
!225 = !{!221, !224, !172, !162, !159, !150}
!226 = !{!219, !221, !222, !224, !172, !162, !159, !150}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer: argument 0"}
!229 = distinct !{!229, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer: argument 0"}
!232 = distinct !{!232, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!235 = distinct !{!235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!238 = distinct !{!238, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer: argument 0"}
!241 = distinct !{!241, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer"}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!244 = distinct !{!244, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!245 = !{!243, !240, !237, !234, !231, !228}
!246 = !{!243, !240, !237, !234, !231, !228, !162, !159, !150}
!247 = !{!174, !162, !159, !150}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer: argument 0"}
!250 = distinct !{!250, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer: argument 0"}
!253 = distinct !{!253, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!256 = distinct !{!256, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!259 = distinct !{!259, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer: argument 0"}
!262 = distinct !{!262, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!265 = distinct !{!265, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!266 = !{!264, !261, !258, !255, !252, !249}
!267 = !{!264, !261, !258, !255, !252, !249, !162, !159, !150}
!268 = !{!162, !159}
!269 = !{i32 0, i32 -1}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCslArWzHu5pnW_7trainer: argument 0"}
!272 = distinct !{!272, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8push_mutCslArWzHu5pnW_7trainer"}
!273 = !{!271, !162, !159, !150}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer: argument 0"}
!276 = distinct !{!276, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENCINvNtCs7lddnaOK2f6_4zstd4dict10from_filesB19_NtNtB1H_4path7PathBufE0EECslArWzHu5pnW_7trainer"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer: argument 0"}
!279 = distinct !{!279, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsG258MDvU3F_3std2fs7ReadDirNCINvNtCsiWMK64dCVjf_20pingora_header_serde4dict5trainRNtNtCsexYYUdYSQU6_5alloc6string6StringE0EECslArWzHu5pnW_7trainer"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!282 = distinct !{!282, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std2fs7ReadDirECslArWzHu5pnW_7trainer"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer: argument 0"}
!285 = distinct !{!285, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix7ReadDirECslArWzHu5pnW_7trainer"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer: argument 0"}
!288 = distinct !{!288, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirEECslArWzHu5pnW_7trainer"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer: argument 0"}
!291 = distinct !{!291, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std3sys2fs4unix12InnerReadDirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslArWzHu5pnW_7trainer"}
!292 = !{!290, !287, !284, !281, !278, !275}
!293 = !{!290, !287, !284, !281, !278, !275, !162, !159, !150}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer: argument 0"}
!296 = distinct !{!296, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer"}
!297 = !{!298}
!298 = distinct !{!298, !296, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorE6unwrapCslArWzHu5pnW_7trainer: argument 1"}
!299 = !{!295, !150}
!300 = !{!295, !298, !150}
!301 = !{!295, !298}
!302 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer: argument 0"}
!305 = distinct !{!305, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslArWzHu5pnW_7trainer"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer: argument 0"}
!308 = distinct !{!308, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECslArWzHu5pnW_7trainer"}
!309 = !{!307, !304}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslArWzHu5pnW_7trainer: argument 0"}
!312 = distinct !{!312, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslArWzHu5pnW_7trainer"}
end_hunk_1
