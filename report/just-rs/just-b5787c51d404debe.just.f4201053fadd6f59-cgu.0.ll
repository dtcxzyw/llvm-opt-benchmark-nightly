Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 594
loop-unroll.NumUnrolled: 719
begin_hunk_0_@_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1e_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB1g_5error5ErrorEEB1g_:bb.a

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15029, !inline_history !14998
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i: ; preds = %bb.e, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.ak = icmp eq i64 %i.z, %i.d
  br i1 %i.ak, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i, %bb.c
  %.val2.i.i.i = load i64, ptr %1, align 8, !alias.scope !15031 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.al, label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  %i.am = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15024, !inline_history !14998
  br label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit

_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, %bb.f
  tail call void asm sideeffect "", "~{memory}"() #69, !srcloc !104
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaKJjC64KgbL_3std6thread6scoped5scopeNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBN_8Justfile16run_dependencies0INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtBP_5error5ErrorEEBP_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 5 uses
  %i.f = alloca [128 x i8], align 8               ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.511.sroa.7.i.sroa.9.sroa.13 = alloca [16 x i8], align 8 ; 2 uses
  %.sroa.10.sroa.5.sroa.11 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.887 = alloca [16 x i8], align 8          ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [88 x i8], align 8                ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.635.sroa.7 = alloca [16 x i8], align 8   ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [104 x i8], align 8               ; 19 uses
  %i.u = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.v = invoke noundef nonnull ptr @_RNvNtNtCsaKJjC64KgbL_3std6thread7current18current_or_unnamed()
          to label %bb.b unwind label %.thread161 ; 2 uses

.thread161:                                       ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.thread157

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !15171
  %i.z = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15171 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !15172
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %.thread157

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #73
          to label %.thread157 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.z, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.sroa.4.0.copyload = load ptr, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.03.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.03.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.7.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.03.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.7.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.8.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.03.sroa.5.sroa.8.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.8.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.9.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.03.sroa.5.sroa.9.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.9.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.03.sroa.5.sroa.10.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.03.sroa.5.sroa.10.0.copyload = load ptr, ptr %.sroa.03.sroa.5.sroa.10.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.sroa.7)
  %i.af = ptrtoint ptr %.sroa.03.sroa.0.0.copyload to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15173
  store i64 0, ptr %i.r, align 8, !noalias !15173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !noalias !15173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !noalias !15173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.4.0.copyload) ]
  %i.ai = icmp ult i64 %.sroa.03.sroa.5.sroa.0.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.ai)
  %.idx = shl nuw nsw i64 %.sroa.03.sroa.5.sroa.0.0.copyload, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.sroa.4.0.copyload, i64 %.idx ; 4 uses
  %i.ak = icmp sgt ptr %.sroa.03.sroa.0.0.copyload, inttoptr (i64 -1 to ptr)
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15173
  store ptr %.sroa.03.sroa.4.0.copyload, ptr %i.q, align 8, !noalias !15173
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 11 uses
  store ptr %.sroa.03.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15173
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15173
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15173
  %i.al = icmp eq i64 %.sroa.03.sroa.5.sroa.0.0.copyload, 0
  br i1 %i.al, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph: ; preds = %bb.g
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.4.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.55.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit

.body32:                                          ; preds = %.body75.thread, %.thread420, %bb.az, %bb.bc, %bb.ba, %bb.bb, %bb.cq, %bb.cl
  %eh.lpad-body33 = phi { ptr, i32 } [ %i.hi, %bb.cl ], [ %i.ho, %bb.cq ], [ %.pn27.i219423, %bb.bb ], [ %.pn27.i219423, %bb.ba ], [ %.pn27.i219423, %bb.bc ], [ %.pn.pn.i, %bb.az ], [ %lpad.loopexit.split-lp231, %.thread420 ], [ %.pn.pn.i, %.body75.thread ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #71, !noalias !15174, !inline_history !15050
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #71
          to label %.body30 unwind label %bb.cj, !noalias !15174, !inline_history !15050

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph, %bb.cs
  %i.bc = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.hq, %bb.cs ]
  %i.bd = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.hs, %bb.cs ] ; 4 uses
  %.sroa.448.8..sroa.42.0.copyload.i77308 = phi ptr [ %.sroa.03.sroa.4.0.copyload, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.be, %bb.cs ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 32 ; 13 uses
  %.sroa.5.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx, align 8, !noalias !15175 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit
  %.sroa.880.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 16
  %.sroa.079.0.copyload = load ptr, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, align 8, !noalias !15175, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.880.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.6.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.7.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.8.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.9.0.copyload), "nonnull"(ptr %.sroa.03.sroa.5.sroa.10.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %i.o, align 8, !noalias !15173
  %i.bf = load ptr, ptr %.sroa.03.sroa.5.sroa.4.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bf, ptr %i.am, align 8, !noalias !15173
  %i.bg = load ptr, ptr %.sroa.03.sroa.5.sroa.5.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bg, ptr %i.an, align 8, !noalias !15173
  %i.bh = load ptr, ptr %.sroa.03.sroa.5.sroa.6.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bh, ptr %i.ao, align 8, !noalias !15173
  store ptr %.sroa.079.0.copyload, ptr %i.ap, align 8, !noalias !15173
  %i.bi = load ptr, ptr %.sroa.03.sroa.5.sroa.7.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bi, ptr %i.aq, align 8, !noalias !15173
  %i.bj = load ptr, ptr %.sroa.03.sroa.5.sroa.8.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bj, ptr %i.ar, align 8, !noalias !15173
  %i.bk = load ptr, ptr %.sroa.03.sroa.5.sroa.9.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bk, ptr %i.as, align 8, !noalias !15173
  %i.bl = load ptr, ptr %.sroa.03.sroa.5.sroa.10.0.copyload, align 8, !noalias !15174, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bl, ptr %i.at, align 8, !noalias !15173
  %i.bm = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !15176
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.bd, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.z, ptr %i.k, align 8, !noalias !15177
  %i.bo = load atomic i64, ptr @_RNvNCNvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !15177 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15177
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @563, i64 noundef 14)
          to label %.noexc74 unwind label %.body75.thread412

.noexc74:                                         ; preds = %bb.j
  %i.bq = load i64, ptr %i.b, align 8, !range !37, !noalias !15177, !noundef !28 ; 5 uses
  %.not.i70 = icmp eq i64 %i.bq, -1
  br i1 %.not.i70, label %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.br = add i64 %i.bo, -1
  br label %_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit

bb.l:                                             ; preds = %.noexc74
  %.sroa.4.0.copyload.i72 = load ptr, ptr %.sroa.4.0..sroa_idx.i71, align 8, !noalias !15177, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i73, align 8, !noalias !15177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15178
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i72, i64 noundef %.sroa.55.0.copyload.i)
          to label %bb.o unwind label %bb.m, !noalias !15178

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %.body75.thread.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i72, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15179
  br label %.body75.thread.thread

bb.o:                                             ; preds = %bb.l
  %i.bu = load i64, ptr %i.a, align 8, !range !41, !noalias !15178, !noundef !28
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15178
  br label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.au, align 8, !noalias !15178, !nonnull !28, !noundef !28 ; 3 uses
  %i.bx = load i64, ptr %i.av, align 8, !noalias !15178, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15178
  switch i64 %i.bx, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.by = load i8, ptr %i.bw, align 1, !alias.scope !15180, !noalias !15178, !noundef !28 ; 2 uses
  switch i8 %i.by, label %bb.s [
    i8 43, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.q
  %.pr.i.i.i = load i8, ptr %i.bw, align 1, !alias.scope !15180, !noalias !15178
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %bb.r
  %i.bz = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.by, %bb.r ]
  %cond.i.i.i = icmp eq i8 %i.bz, 43              ; 2 uses
  %i.ca = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.bx, %i.ca    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.cb = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.cb, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.s
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i564, i64 1
  %i.cd = add nsw i64 %.sroa.15.1.i.i.i563, -1    ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.s, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i564 = phi ptr [ %i.cc, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.s ] ; 2 uses
  %.sroa.15.1.i.i.i563 = phi i64 [ %i.cd, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.s ]
  %.sroa.042.0.i.i.i562 = phi i64 [ %i.cm, %.preheader56.i.i.i ], [ 0, %bb.s ]
  %i.ce = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i562, i64 10) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.t, !prof !44

bb.t:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.cg = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %i.ch = load i8, ptr %.sroa.0.1.i.i.i564, align 1, !alias.scope !15180, !noalias !15178, !noundef !28
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = add i64 %i.cg, %i.cl                    ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.cg
  %or.cond.i.i = select i1 %i.ck, i1 true, i1 %i.cn, !prof !42
  br i1 %or.cond.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !42

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.u
  %.sroa.0.269.i.i.i = phi ptr [ %i.cu, %bb.u ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.ct, %bb.u ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.cw, %bb.u ], [ 0, %.preheader.i.i.i ]
  %i.co = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !15180, !noalias !15178, !noundef !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 9
  br i1 %i.cr, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = mul i64 %.sroa.042.267.i.i.i, 10
  %i.ct = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.cv = zext nneg i32 %i.cq to i64
  %i.cw = add i64 %i.cs, %i.cv                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.t, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.u, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.r, %bb.r, %bb.q, %bb.p
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.p ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.r ], [ 2097152, %bb.q ], [ 2097152, %bb.r ], [ %i.cw, %bb.u ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.t ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.cm, %.preheader56.i.i.i ] ; 2 uses
  %i.cx = icmp eq i64 %i.bq, 0
  br i1 %i.cx, label %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i72, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15181
  br label %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i

_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i: ; preds = %bb.v, %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %.noexc74
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.v ], [ %.sroa.0.1.i.i, %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ 2097152, %.noexc74 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15177
  %i.cy = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.cy, ptr @_RNvNCNvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !15177
  br label %_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit

.body75:                                          ; preds = %.thread168, %bb.y
  br i1 %.sroa.016.2.i, label %.body75.thread, label %bb.az

.body75.thread412:                                ; preds = %bb.j, %bb.w, %_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit
  %lpad.loopexit230 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %.body75.thread.thread

.thread420:                                       ; preds = %bb.au
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body32

_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit: ; preds = %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i, %bb.k
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i ], [ %i.br, %bb.k ]
  %i.cz = invoke noundef i64 @_RNvMNtNtCsaKJjC64KgbL_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.w unwind label %.body75.thread412, !noalias !15177, !inline_history !15074

bb.w:                                             ; preds = %_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15177
  store i64 -1, ptr %i.i, align 8, !noalias !15182
  %i.da = invoke noundef nonnull ptr @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.x unwind label %.body75.thread412, !noalias !15177, !inline_history !15074

bb.x:                                             ; preds = %bb.w
  store ptr %i.da, ptr %i.j, align 8, !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15177
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.aa unwind label %bb.z, !noalias !15177, !inline_history !15074

.thread168:                                       ; preds = %bb.av, %.body29.i.thread, %bb.ae, %bb.ay, %bb.z
end_hunk_0
begin_hunk_1_@_RINvNtNtCsaKJjC64KgbL_3std6thread6scoped5scopeNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBN_8Justfile16run_dependencies0INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtBP_5error5ErrorEEBP_:bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 9 uses
  store ptr %.sroa.48.0.copyload.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !15173
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.07.0.copyload.i, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !15173
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fb, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !15173
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887)
  %i.fd = icmp eq i64 %.sroa.59.0.copyload.i, 0
  br i1 %i.fd, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit

bb.bg:                                            ; preds = %bb.bs
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  br label %.body38

.body38:                                          ; preds = %bb.bw, %bb.cb, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.bq, %bb.br, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i, %bb.bu, %bb.bg
  %eh.lpad-body39 = phi { ptr, i32 } [ %lpad.phi225, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i ], [ %i.ff, %bb.bg ], [ %i.fw, %bb.bq ], [ %i.fw, %bb.br ], [ %lpad.phi225, %bb.bu ], [ %i.gs, %bb.cb ], [ %i.gs, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.gl, %bb.bw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #71
          to label %.body30 unwind label %bb.cj, !noalias !15174, !inline_history !15050

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph, %bb.cg
  %.sroa.48.0.copyload.i84319 = phi ptr [ %.sroa.48.0.copyload.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph ], [ %i.fg, %bb.cg ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i84319, i64 24 ; 10 uses
  %.sroa.085.0.copyload86 = load ptr, ptr %.sroa.48.0.copyload.i84319, align 8, !noalias !15204 ; 2 uses
  %.sroa.887.0..sroa.48.0.copyload.i84.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i84319, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887.0..sroa.48.0.copyload.i84.sroa_idx, i64 16, i1 false), !noalias !15204
  %.not50.i = icmp eq ptr %.sroa.085.0.copyload86, null
  br i1 %.not50.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15173
  store ptr %.sroa.085.0.copyload86, ptr %i.m, align 8, !noalias !15173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887, i64 16, i1 false), !noalias !15173
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !15205)
  %i.fh = load i64, ptr %i.fe, align 8, !alias.scope !15205, !noalias !15174, !noundef !28
  invoke void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.fh)
          to label %bb.bk unwind label %.loopexit221, !noalias !15206

.loopexit221:                                     ; preds = %bb.bh
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  br label %bb.bi

.loopexit.split-lp222:                            ; preds = %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i, %bb.bp
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp222, %.loopexit221
  %lpad.phi225 = phi { ptr, i32 } [ %lpad.loopexit223, %.loopexit221 ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp222 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15207), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15208), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15209), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15210), !noalias !15174
  %i.fi = load ptr, ptr %i.m, align 8, !alias.scope !15211, !noalias !15174, !nonnull !28, !noundef !28
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 release, align 8, !noalias !15212
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire, !noalias !15174
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #73
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i unwind label %bb.bt, !noalias !15213

bb.bk:                                            ; preds = %bb.bh
  %.val.i = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15205, !noalias !15174, !nonnull !28, !noundef !28 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.fm = cmpxchg ptr %i.fl, i64 1, i64 -1 acquire monotonic, align 8, !noalias !15206
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.fm, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i, !prof !32

_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i: ; preds = %bb.bk
  %i.fn = load atomic i64, ptr %.val.i acquire, align 8, !noalias !15206
  %i.fo = icmp eq i64 %i.fn, 1
  store atomic i64 1, ptr %i.fl release, align 8, !noalias !15206
  br i1 %i.fo, label %bb.bl, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i, !prof !33

_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i: ; preds = %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i, %bb.bk
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1047, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1049) #70
          to label %bb.bm unwind label %.loopexit.split-lp222, !noalias !15206

bb.bl:                                            ; preds = %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i
  %i.fp = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15205, !noalias !15174, !nonnull !28, !noundef !28 ; 8 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.fq, align 8, !noalias !15206 ; 4 uses
  store i64 -3, ptr %i.fq, align 8, !noalias !15206
  %.not.i41 = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i41, label %bb.bp, label %bb.bn, !prof !44

bb.bm:                                            ; preds = %bb.bp, %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.690.8.copyload91 = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !15214 ; 6 uses
  %.sroa.992.8..sroa.5.0..sroa_idx.i42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %.sroa.992.8.copyload93 = load ptr, ptr %.sroa.992.8..sroa.5.0..sroa_idx.i42.sroa_idx, align 8, !noalias !15214 ; 8 uses
  %.sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %.sroa.10.sroa.0114.0.copyload = load i64, ptr %.sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx, align 8, !noalias !15214
  %.sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %.sroa.10.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx, align 8, !noalias !15214
  %.sroa.10.sroa.5.sroa.5.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load <2 x ptr>, ptr %.sroa.10.sroa.5.sroa.5.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !15214
  %.sroa.10.sroa.5.sroa.7.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  %i.fs = load <4 x ptr>, ptr %.sroa.10.sroa.5.sroa.7.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !15214
  %.sroa.10.sroa.5.sroa.11.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !noalias !15214
  call void @llvm.experimental.noalias.scope.decl(metadata !15215), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15216), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15217), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15218), !noalias !15174
  %i.ft = load ptr, ptr %i.m, align 8, !alias.scope !15219, !noalias !15174, !nonnull !28, !noundef !28
  %i.fu = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !15220
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.bo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire, !noalias !15174
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #73
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i unwind label %bb.bq, !noalias !15213

bb.bp:                                            ; preds = %bb.bl
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #70
          to label %bb.bm unwind label %.loopexit.split-lp222, !noalias !15206

bb.bq:                                            ; preds = %bb.bo
  %i.fw = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15221), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15222), !noalias !15174
  %i.fx = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15223, !noalias !15174, !nonnull !28, !noundef !28
  %i.fy = atomicrmw add ptr %i.fx, i64 -1 release, align 8, !noalias !15224
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.br, label %.body38

bb.br:                                            ; preds = %bb.bq
  fence acquire, !noalias !15174
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #73
          to label %.body38 unwind label %bb.bt, !noalias !15213

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !15225), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15226), !noalias !15174
  %i.ga = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15227, !noalias !15174, !nonnull !28, !noundef !28
  %i.gb = atomicrmw add ptr %i.ga, i64 -1 release, align 8, !noalias !15228
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bs, label %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i
  fence acquire, !noalias !15174
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #73
          to label %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit unwind label %bb.bg

bb.bt:                                            ; preds = %bb.bu, %bb.br, %bb.bj
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !15213
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !15229), !noalias !15174
  call void @llvm.experimental.noalias.scope.decl(metadata !15230), !noalias !15174
  %i.ge = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15231, !noalias !15174, !nonnull !28, !noundef !28
  %i.gf = atomicrmw add ptr %i.ge, i64 -1 release, align 8, !noalias !15232
  %i.gg = icmp eq i64 %i.gf, 1
  br i1 %i.gg, label %bb.bu, label %.body38

bb.bu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i
  fence acquire, !noalias !15174
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #73
          to label %.body38 unwind label %bb.bt, !noalias !15213

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit, %bb.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit
  %i.gh = phi ptr [ %.sroa.48.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit ], [ %i.fg, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit ], [ %i.fb, %bb.cg ]
  store ptr %i.gh, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.cu unwind label %bb.bf, !noalias !15174, !inline_history !15050

_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i, %bb.bs
  %i.gi = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.gi, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.690.8.copyload91), "nonnull"(ptr %.sroa.992.8.copyload93) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15233)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !15234
  %i.gj = call noundef dereferenceable_or_null(35) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15234 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bx
  %i.gl = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskXtk6F4WjxZ_4just(ptr nonnull %.sroa.690.8.copyload91, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.992.8.copyload93) #71
          to label %.body38 unwind label %bb.cd, !noalias !15235

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 35) #70
          to label %bb.cc unwind label %bb.bw, !noalias !15236

bb.by:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.gj, ptr noundef nonnull align 1 dereferenceable(35) @572, i64 35, i1 false), !noalias !15236
  %i.gm = load ptr, ptr %.sroa.992.8.copyload93, align 8, !invariant.load !28, !alias.scope !15233, !noalias !15174 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void %i.gm(ptr noundef nonnull %.sroa.690.8.copyload91)
          to label %bb.ca unwind label %bb.cb, !noalias !15236

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !range !43, !invariant.load !28, !alias.scope !15233, !noalias !15174 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.ca
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !range !48, !invariant.load !28, !alias.scope !15233, !noalias !15174
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.690.8.copyload91, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) %i.gr) #69, !noalias !15236
  br label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.gs = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !43, !invariant.load !28, !alias.scope !15233, !noalias !15174 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.body38, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.cb
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !range !48, !invariant.load !28, !alias.scope !15233, !noalias !15174
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.690.8.copyload91, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) %i.gx) #69, !noalias !15236
  br label %.body38

bb.cc:                                            ; preds = %bb.bx
  unreachable

bb.cd:                                            ; preds = %bb.bw
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !15236
  unreachable

bb.ce:                                            ; preds = %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.7.i.sroa.9.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  %.not51.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not51.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.7.i.sroa.9.sroa.13, i64 16, i1 false)
  %i.gz = inttoptr i64 %.sroa.10.sroa.0114.0.copyload to ptr
  %i.ha = insertelement <4 x ptr> poison, ptr %i.gz, i64 0
  %i.hb = insertelement <4 x ptr> %i.ha, ptr %.sroa.10.sroa.5.sroa.0.0.copyload, i64 1
  %i.hc = shufflevector <2 x ptr> %i.fr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x ptr> %i.hb, <4 x ptr> %i.hc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887)
  %i.he = icmp eq ptr %i.fg, %i.fb
  br i1 %i.he, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit

bb.ch:                                            ; preds = %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit, %bb.cf
  %.sroa.635.sroa.5.sroa.0.0.in = phi ptr [ %i.gj, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.992.8.copyload93, %bb.cf ]
  %.sroa.635.sroa.0.0 = phi ptr [ inttoptr (i64 35 to ptr), %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.690.8.copyload91, %bb.cf ]
  %.sroa.034.0 = phi i64 [ 54, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.0.0.copyload.i, %bb.cf ]
  %i.hf = phi <4 x ptr> [ <ptr inttoptr (i64 35 to ptr), ptr undef, ptr undef, ptr undef>, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %i.hd, %bb.cf ]
  %i.hg = phi <4 x ptr> [ undef, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %i.fs, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.ci unwind label %bb.bf, !noalias !15174, !inline_history !15050

_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  br label %bb.ch

bb.ci:                                            ; preds = %bb.ch
  %.sroa.635.sroa.5.sroa.0.0 = ptrtoint ptr %.sroa.635.sroa.5.sroa.0.0.in to i64
  br label %bb.cu

bb.cj:                                            ; preds = %.body32, %.body38
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !15174, !inline_history !15050
  unreachable

bb.ck:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2n_.exit60, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15237
  store ptr %i.ee, ptr %i.l, align 8, !noalias !15237
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @592, i64 noundef 22, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @788, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594) #70
          to label %bb.cm unwind label %bb.cl, !noalias !15237

bb.cl:                                            ; preds = %bb.ck
  %i.hi = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #71
          to label %.body32 unwind label %bb.cn, !noalias !15237

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !15237
  unreachable

bb.co:                                            ; preds = %bb.ar
  %i.hk = ptrtoint ptr %i.ee to i64
  %i.hl = load ptr, ptr %i.j, align 8, !noalias !15177, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !15238)
  call void @llvm.experimental.noalias.scope.decl(metadata !15239)
  store ptr %i.hl, ptr %i.p, align 8, !alias.scope !15240, !noalias !15174
  store ptr %i.df, ptr %.sroa.695.0..sroa_idx, align 8, !alias.scope !15240, !noalias !15174
  store i64 %i.hk, ptr %.sroa.996.0..sroa_idx, align 8, !alias.scope !15240, !noalias !15174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15173
  call void @llvm.experimental.noalias.scope.decl(metadata !15241)
  %i.hm = load i64, ptr %i.r, align 8, !range !43, !alias.scope !15241, !noalias !15174, !noundef !28
  %i.hn = icmp eq i64 %i.bd, %i.hm
  br i1 %i.hn, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE8grow_oneB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %._crit_edge unwind label %bb.cq, !noalias !15242

._crit_edge:                                      ; preds = %bb.cp
  %.pre = load ptr, ptr %i.ag, align 8, !alias.scope !15241, !noalias !15174
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.ho = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #71
          to label %.body32 unwind label %bb.cr, !noalias !15243

bb.cr:                                            ; preds = %bb.cq
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !15243
  unreachable

bb.cs:                                            ; preds = %._crit_edge, %bb.co
  %i.hq = phi ptr [ %.pre, %._crit_edge ], [ %i.bc, %bb.co ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !15243
  %i.hs = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.hs, ptr %i.ah, align 8, !alias.scope !15241, !noalias !15174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15173
  %i.ht = icmp eq ptr %i.be, %i.aj
  br i1 %i.ht, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit

.body30:                                          ; preds = %.body38, %bb.bf, %.body32
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.ez, %bb.bf ], [ %eh.lpad-body33, %.body32 ], [ %eh.lpad-body39, %.body38 ]
  %i.hu = extractvalue { ptr, i32 } %eh.lpad-body31, 0
  %i.hv = invoke { ptr, ptr } @_RNvNvNtCsaKJjC64KgbL_3std9panicking12catch_unwind7cleanup(ptr noundef %i.hu)
          to label %bb.cv unwind label %bb.ct     ; 2 uses

bb.ct:                                            ; preds = %.body30
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #72
  unreachable

bb.cu:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, %bb.ci
  %.sroa.635.sroa.5.sroa.0.1 = phi i64 [ %.sroa.635.sroa.5.sroa.0.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.635.sroa.0.1 = phi ptr [ %.sroa.635.sroa.0.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.034.1 = phi i64 [ %.sroa.034.0, %bb.ci ], [ -1, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %i.hx = phi <4 x ptr> [ %i.hf, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %i.hy = phi <4 x ptr> [ %i.hg, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15173
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.724.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.sroa.7, i64 16, i1 false)
  %i.hz = inttoptr i64 %.sroa.034.1 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7)
  store ptr %i.hz, ptr %i.t, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.635.sroa.0.1, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.635.sroa.5.sroa.0.1, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store <4 x ptr> %i.hx, ptr %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.8.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store <4 x ptr> %i.hy, ptr %.sroa.522.sroa.8.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.cv, %bb.cu
  br label %bb.cx

bb.cv:                                            ; preds = %.body30
  %i.ia = extractvalue { ptr, ptr } %i.hv, 0      ; 2 uses
  %i.ib = extractvalue { ptr, ptr } %i.hv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ia), "nonnull"(ptr %i.ib) ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ia, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ib, ptr %i.id, align 8
  store i64 -2, ptr %i.t, align 8
  br label %.preheader

.loopexit:                                        ; preds = %bb.cz
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp:                               ; preds = %bb.da, %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.07.0 = phi i1 [ true, %.loopexit ], [ %i.ik, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ie = load i64, ptr %i.t, align 8, !range !15244, !noundef !28
  switch i64 %i.ie, label %bb.dg [
    i64 -2, label %bb.dh
    i64 -1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  ]

bb.cx:                                            ; preds = %.preheader, %bb.cz
  %i.if = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ij = load i64, ptr %i.t, align 8, !range !15244, !noundef !28
  %i.ik = icmp ne i64 %i.ij, -2                   ; 2 uses
  br i1 %i.ik, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.il = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  invoke void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.im)
          to label %bb.cx unwind label %.loopexit

bb.da:                                            ; preds = %bb.cy
  %i.in = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !28, !noundef !28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !28, !align !35, !noundef !28
  invoke void @_RNvNtCsaKJjC64KgbL_3std5panic13resume_unwind(ptr noundef nonnull %i.io, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iq) #70
          to label %bb.df unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.cy
  %i.ir = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load atomic i8, ptr %i.is monotonic, align 1
  %.not = icmp eq i8 %i.it, 0
  br i1 %.not, label %bb.dc, label %bb.de, !prof !29

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.iu = atomicrmw add ptr %i.ir, i64 -1 release, align 8, !noalias !15245
  %i.iv = icmp eq i64 %i.iu, 1
  br i1 %i.iv, label %bb.dd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #73
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit

bb.de:                                            ; preds = %bb.db
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @964) #70
          to label %bb.df unwind label %.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit: ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.df:                                            ; preds = %bb.de, %bb.da
  unreachable

bb.dg:                                            ; preds = %bb.cw
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit unwind label %bb.di

bb.dh:                                            ; preds = %bb.cw
  br i1 %.sroa.07.0, label %bb.dk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit

bb.di:                                            ; preds = %bb.dj, %bb.dg, %bb.dk
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit: ; preds = %bb.cw, %bb.dg, %bb.dk, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !15246)
  call void @llvm.experimental.noalias.scope.decl(metadata !15247)
  call void @llvm.experimental.noalias.scope.decl(metadata !15248)
  %i.ix = load ptr, ptr %i.u, align 8, !alias.scope !15249, !nonnull !28, !noundef !28
  %i.iy = atomicrmw add ptr %i.ix, i64 -1 release, align 8, !noalias !15249
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.dj, label %.thread

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #73
          to label %.thread unwind label %bb.di

bb.dk:                                            ; preds = %bb.dh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val21 = load ptr, ptr %i.jb, align 8, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskXtk6F4WjxZ_4just(ptr %.val, ptr nonnull %.val21) #71
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit unwind label %bb.di

.thread:                                          ; preds = %.thread157, %bb.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  %.pn156 = phi { ptr, i32 } [ %lpad.phi, %bb.dj ], [ %eh.lpad-body160, %.thread157 ], [ %lpad.phi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit ]
  resume { ptr, i32 } %.pn156

.thread157:                                       ; preds = %bb.d, %bb.e, %.thread161
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.w, %.thread161 ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBG_8Justfile16run_dependencies0EBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #71
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt12hunt_anchorsINtNtB4_5utils12OffsetLookupjEECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4, i64 %5, i32 noundef range(i32 -1, 1000000000) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.j, align 8
  %i.k = icmp ult i64 %2, %3
  br i1 %i.k, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !28
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %.fr154 = freeze i64 %i.s
  %i.t = icmp eq i64 %.fr154, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i72 = load i64, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val5.i = load i64, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !nonnull !28  ; 2 uses
  br i1 %i.t, label %.lr.ph148.split.us.preheader, label %.lr.ph148.split

.lr.ph148.split.us.preheader:                     ; preds = %.lr.ph148
  %i.z = sub i64 %2, %i.m
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.z)
  br label %.lr.ph148.split.us

.lr.ph148.split.us:                               ; preds = %.lr.ph148.split.us.preheader, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us
  %.sroa.026.0146.us = phi i64 [ %i.aa, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us ], [ %2, %.lr.ph148.split.us.preheader ] ; 2 uses
  %i.aa = add i64 %.sroa.026.0146.us, 1           ; 2 uses
  %i.ab = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %5, i32 noundef %6)
          to label %bb.b unwind label %.loopexit.split-lp96.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph148.split.us
  br i1 %i.ab, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = sub i64 %.sroa.026.0146.us, %i.m
  %i.ad = icmp ult i64 %i.ac, %i.o
  br i1 %i.ad, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us, label %.split151.us

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15288)
  %exitcond204.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond204.not, label %._crit_edge149, label %.lr.ph148.split.us

._crit_edge149:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us, %bb.a
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator25evaluate_builtin_function:bb.a
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit697

bb.ez:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.jg = load i64, ptr %i.as, align 8, !range !116, !noundef !28 ; 2 uses
  %.not589 = icmp eq i64 %i.jg, -1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.01096.0.copyload = load i64, ptr %i.jh, align 8 ; 2 uses
  %.sroa.41097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.41097.0.copyload = load ptr, ptr %.sroa.41097.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.51098.0.copyload = load i64, ptr %.sroa.51098.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not589, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.5542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5542.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5539.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.jg, ptr %0, align 8
  %.sroa.4541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01096.0.copyload, ptr %.sroa.4541.0..sroa_idx, align 8
  %.sroa.4541.sroa.4.0..sroa.4541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41097.0.copyload, ptr %.sroa.4541.sroa.4.0..sroa.4541.0..sroa_idx.sroa_idx, align 8
  %.sroa.4541.sroa.5.0..sroa.4541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51098.0.copyload, ptr %.sroa.4541.sroa.5.0..sroa.4541.0..sroa_idx.sroa_idx, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
  br label %bb.fg

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ex

bb.fc:                                            ; preds = %bb.ex
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.01017.0.off = add i64 %.sroa.01017.0, -1
  %switch1394 = icmp ult i64 %.sroa.01017.0.off, -2
  br i1 %switch1394, label %bb.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit697

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81020.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81020.0, i64 noundef %.sroa.01017.0, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59250
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit697

bb.fe:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.01017.0.off1395 = add i64 %.sroa.01017.0, -1
  %switch1396 = icmp ult i64 %.sroa.01017.0.off1395, -2
  br i1 %switch1396, label %bb.ff, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit700

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81020.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81020.0, i64 noundef %.sroa.01017.0, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59251
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit700

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit700: ; preds = %bb.fe, %bb.ff
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653

bb.fg:                                            ; preds = %bb.fa, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.fh:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.jj = load i64, ptr %i.br, align 8, !range !116, !noundef !28 ; 2 uses
  %.not579 = icmp eq i64 %i.jj, -1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.01069.0.copyload = load i64, ptr %i.jk, align 8 ; 7 uses
  %.sroa.41070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.41070.0.copyload = load ptr, ptr %.sroa.41070.0..sroa_idx, align 8 ; 8 uses
  %.sroa.51071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.51071.0.copyload = load i64, ptr %.sroa.51071.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not579, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1008) #74
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %.sroa.5395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.5398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5398.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5395.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  store i64 %i.jj, ptr %0, align 8
  %.sroa.4397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01069.0.copyload, ptr %.sroa.4397.0..sroa_idx, align 8
  %.sroa.4397.sroa.4.0..sroa.4397.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41070.0.copyload, ptr %.sroa.4397.sroa.4.0..sroa.4397.0..sroa_idx.sroa_idx, align 8
  %.sroa.4397.sroa.5.0..sroa.4397.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51071.0.copyload, ptr %.sroa.4397.sroa.5.0..sroa.4397.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %.not580 = icmp eq i64 %6, 1
  br i1 %.not580, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 1, ptr %i.r, align 8
  %.sroa.4128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4128.0..sroa_idx129, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.jl, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.r)
          to label %bb.fp unwind label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1009) #70
          to label %bb.ce unwind label %bb.fo

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit712: ; preds = %bb.ga, %.body707, %bb.fo
  %.pn583.pn = phi { ptr, i32 } [ %i.jn, %bb.fo ], [ %eh.lpad-body708, %.body707 ], [ %eh.lpad-body708, %bb.ga ] ; 2 uses
  %i.jm = icmp eq i64 %.sroa.01069.0.copyload, 0
  br i1 %i.jm, label %common.resume, label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41070.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41070.0.copyload, i64 noundef %.sroa.01069.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59252
  br label %common.resume

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit712

bb.fp:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.jo = load i64, ptr %i.bq, align 8, !range !116, !noundef !28 ; 2 uses
  %.not581 = icmp eq i64 %i.jo, -1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.01072.0.copyload = load i64, ptr %i.jp, align 8 ; 7 uses
  %.sroa.41073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.41073.0.copyload = load ptr, ptr %.sroa.41073.0..sroa_idx, align 8 ; 8 uses
  %.sroa.51074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.51074.0.copyload = load i64, ptr %.sroa.51074.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not581, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.sroa.5404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.5407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5407.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5404.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  store i64 %i.jo, ptr %0, align 8
  %.sroa.4406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01072.0.copyload, ptr %.sroa.4406.0..sroa_idx, align 8
  %.sroa.4406.sroa.4.0..sroa.4406.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41073.0.copyload, ptr %.sroa.4406.sroa.4.0..sroa.4406.0..sroa_idx.sroa_idx, align 8
  %.sroa.4406.sroa.5.0..sroa.4406.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51074.0.copyload, ptr %.sroa.4406.sroa.5.0..sroa.4406.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit715

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 0, ptr %i.bp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  store i64 0, ptr %i.jr, align 8
  %.idx1429 = shl nuw nsw i64 %6, 7
  %i.js = getelementptr i8, ptr %5, i64 %.idx1429
  %i.jt = icmp eq i64 %6, 2
  br i1 %i.jt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fr
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 256
  %.sroa.4128.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.41076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.51077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  br label %bb.fs

bb.fs:                                            ; preds = %.lr.ph, %bb.fz
  %.sroa.0143.01423 = phi ptr [ %i.ju, %.lr.ph ], [ %i.jw, %bb.fz ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0143.01423, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 1, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4128.0..sroa_idx130, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0143.01423, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.q)
          to label %bb.ft unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.loopexit:                             ; preds = %bb.fz
  %.pre1461 = load ptr, ptr %i.jq, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.fr
  %i.jx = phi i64 [ %i.kj, %._crit_edge.loopexit ], [ 0, %bb.fr ]
  %i.jy = phi ptr [ %.pre1461, %._crit_edge.loopexit ], [ inttoptr (i64 8 to ptr), %bb.fr ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41070.0.copyload), "nonnull"(ptr %.sroa.41073.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store <2 x i64> %i.ct, ptr %i.p, align 16
  %.sroa.23.0..sroa_idx1169 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.23.0..sroa_idx1169, align 16
  %.sroa.24.0..sroa_idx1195 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24.0..sroa_idx1195, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24, i64 64, i1 false)
  %.sroa.25.0..sroa_idx1212 = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.0..sroa_idx1212, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  %.sroa.26.0..sroa_idx1237 = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  store ptr %i.cp, ptr %.sroa.26.0..sroa_idx1237, align 16
  %.sroa.27.0..sroa_idx1271 = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store ptr %i.cl, ptr %.sroa.27.0..sroa_idx1271, align 8
  %.sroa.28.0..sroa_idx1305 = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store ptr %1, ptr %.sroa.28.0..sroa_idx1305, align 16
  %.sroa.29.0..sroa_idx1339 = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i8 %i.cr, ptr %.sroa.29.0..sroa_idx1339, align 8
  invoke void %4(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41070.0.copyload, i64 noundef %.sroa.51071.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41073.0.copyload, i64 noundef %.sroa.51074.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jy, i64 noundef %i.jx)
          to label %bb.gd unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fs, %bb.gf, %._crit_edge
  %lpad.loopexit.split-lp1594 = landingpad { ptr, i32 }
          cleanup
  br label %.body707

.body707:                                         ; preds = %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fx, %bb.fy
  %eh.lpad-body708 = phi { ptr, i32 } [ %i.kf, %bb.fx ], [ %i.kf, %bb.fy ], [ %lpad.loopexit.split-lp1594, %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp) #71
  %i.jz = icmp eq i64 %.sroa.01072.0.copyload, 0
  br i1 %i.jz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit712, label %bb.ga

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ka = load i64, ptr %i.bo, align 8, !range !116, !noundef !28 ; 2 uses
  %.not582 = icmp eq i64 %i.ka, -1
  %.sroa.01075.0.copyload = load i64, ptr %i.jv, align 8 ; 4 uses
  %.sroa.41076.0.copyload = load ptr, ptr %.sroa.41076.0..sroa_idx, align 8 ; 4 uses
  %.sroa.51077.0.copyload = load i64, ptr %.sroa.51077.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not582, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.sroa.5413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5413.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  store i64 %i.ka, ptr %0, align 8
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01075.0.copyload, ptr %.sroa.4415.0..sroa_idx, align 8
  %.sroa.4415.sroa.4.0..sroa.4415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41076.0.copyload, ptr %.sroa.4415.sroa.4.0..sroa.4415.0..sroa_idx.sroa_idx, align 8
  %.sroa.4415.sroa.5.0..sroa.4415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51077.0.copyload, ptr %.sroa.4415.sroa.5.0..sroa.4415.0..sroa_idx.sroa_idx, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.kb = icmp eq i64 %.sroa.01072.0.copyload, 0
  br i1 %i.kb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit715, label %bb.gb

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.kc = load i64, ptr %i.jr, align 8, !alias.scope !59253, !noundef !28 ; 3 uses
  %i.kd = load i64, ptr %i.bp, align 8, !range !43, !alias.scope !59253, !noundef !28
  %i.ke = icmp eq i64 %i.kc, %i.kd
  br i1 %i.ke, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaKJjC64KgbL_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.fz unwind label %bb.fx, !noalias !59254

bb.fx:                                            ; preds = %bb.fw
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = icmp eq i64 %.sroa.01075.0.copyload, 0
  br i1 %i.kg, label %.body707, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41076.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41076.0.copyload, i64 noundef %.sroa.01075.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59255
  br label %.body707

bb.fz:                                            ; preds = %bb.fw, %bb.fv
  %i.kh = load ptr, ptr %i.jq, align 8, !alias.scope !59253, !nonnull !28, !noundef !28
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %i.kc ; 3 uses
  store i64 %.sroa.01075.0.copyload, ptr %i.ki, align 8
  %.sroa.3932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %.sroa.41076.0.copyload, ptr %.sroa.3932.0..sroa_idx, align 8
  %.sroa.4934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i64 %.sroa.51077.0.copyload, ptr %.sroa.4934.0..sroa_idx, align 8
  %i.kj = add i64 %i.kc, 1                        ; 2 uses
  store i64 %i.kj, ptr %i.jr, align 8, !alias.scope !59253
  %i.kk = icmp eq ptr %i.jw, %i.js
  br i1 %i.kk, label %._crit_edge.loopexit, label %bb.fs

bb.ga:                                            ; preds = %.body707
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41073.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41073.0.copyload, i64 noundef %.sroa.01072.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59256
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit712

bb.gb:                                            ; preds = %bb.fu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41073.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41073.0.copyload, i64 noundef %.sroa.01072.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59257
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit715

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit715: ; preds = %bb.gb, %bb.fu, %bb.fq
  %i.kl = icmp eq i64 %.sroa.01069.0.copyload, 0
  br i1 %i.kl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650, label %bb.gc

bb.gc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit715
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41070.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41070.0.copyload, i64 noundef %.sroa.01069.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59258
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.gd:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.km = load i64, ptr %i.ak, align 8, !range !41, !noundef !28
  %i.kn = trunc nuw i64 %i.km to i1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.kn, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false)
  store i64 1, ptr %i.ck, align 8
  br label %bb.gh

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvXs3_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ko)
          to label %bb.gg unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gg:                                            ; preds = %bb.gf
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i64 0, ptr %i.ck, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.ge
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.kr = icmp eq i64 %.sroa.01072.0.copyload, 0
  br i1 %i.kr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit721, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41073.0.copyload, i64 noundef %.sroa.01072.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59259
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit721

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit721: ; preds = %bb.gi, %bb.gh
  %i.ks = icmp eq i64 %.sroa.01069.0.copyload, 0
  br i1 %i.ks, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653, label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit721
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41070.0.copyload, i64 noundef %.sroa.01069.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59260
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653

bb.gk:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kt, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  store i64 1, ptr %i.by, align 8
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.ku = load i64, ptr %i.bz, align 8, !range !116, !noundef !28 ; 2 uses
  %.not573 = icmp eq i64 %i.ku, -1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.01054.0.copyload = load i64, ptr %i.kv, align 8 ; 7 uses
  %.sroa.41055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.41055.0.copyload = load ptr, ptr %.sroa.41055.0..sroa_idx, align 8 ; 8 uses
  %.sroa.51056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.51056.0.copyload = load i64, ptr %.sroa.51056.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not573, label %bb.gn, label %bb.gm

bb.gl:                                            ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1010) #74
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5344.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5341.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  store i64 %i.ku, ptr %0, align 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01054.0.copyload, ptr %.sroa.4343.0..sroa_idx, align 8
  %.sroa.4343.sroa.4.0..sroa.4343.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41055.0.copyload, ptr %.sroa.4343.sroa.4.0..sroa.4343.0..sroa_idx.sroa_idx, align 8
  %.sroa.4343.sroa.5.0..sroa.4343.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51056.0.copyload, ptr %.sroa.4343.sroa.5.0..sroa.4343.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.gn:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.not574 = icmp eq i64 %6, 1
  br i1 %.not574, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 128
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator14evaluate_value(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.kw)
          to label %bb.gt unwind label %bb.gs
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator25evaluate_builtin_function:bb.a
bb.hl:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41064.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store <2 x i64> %i.ct, ptr %i.m, align 16
  %.sroa.23.0..sroa_idx1173 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.23.0..sroa_idx1173, align 16
  %.sroa.24.0..sroa_idx1197 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24.0..sroa_idx1197, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24, i64 64, i1 false)
  %.sroa.25.0..sroa_idx1214 = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.0..sroa_idx1214, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  %.sroa.26.0..sroa_idx1241 = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store ptr %i.cp, ptr %.sroa.26.0..sroa_idx1241, align 16
  %.sroa.27.0..sroa_idx1275 = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store ptr %i.cl, ptr %.sroa.27.0..sroa_idx1275, align 8
  %.sroa.28.0..sroa_idx1309 = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr %1, ptr %.sroa.28.0..sroa_idx1309, align 16
  %.sroa.29.0..sroa_idx1343 = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i8 %i.cr, ptr %.sroa.29.0..sroa_idx1343, align 8
  invoke void %4(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ck, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41064.0.copyload, i64 noundef %.sroa.51065.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41067.0.copyload, i64 noundef %.sroa.51068.0.copyload)
          to label %bb.ho unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = icmp eq i64 %.sroa.01066.0.copyload, 0
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit742, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41067.0.copyload, i64 noundef %.sroa.01066.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59266
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit742

bb.ho:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.lp = icmp eq i64 %.sroa.01066.0.copyload, 0
  br i1 %i.lp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit745, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41067.0.copyload, i64 noundef %.sroa.01066.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59267
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit745

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit745: ; preds = %bb.hp, %bb.ho
  %i.lq = icmp eq i64 %.sroa.01063.0.copyload, 0
  br i1 %i.lq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653, label %bb.hq

bb.hq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit745
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41064.0.copyload, i64 noundef %.sroa.01063.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59268
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653

bb.hr:                                            ; preds = %bb.r
  %i.lr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.lr, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  store i64 1, ptr %i.l, align 8
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.l)
  %i.ls = load i64, ptr %i.bn, align 8, !range !116, !noundef !28 ; 2 uses
  %.not558 = icmp eq i64 %i.ls, -1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.01078.0.copyload = load i64, ptr %i.lt, align 8 ; 7 uses
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.41079.0.copyload = load ptr, ptr %.sroa.41079.0..sroa_idx, align 8 ; 8 uses
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.51080.0.copyload = load i64, ptr %.sroa.51080.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not558, label %bb.hu, label %bb.ht

bb.hs:                                            ; preds = %bb.r
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1014) #74
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %.sroa.5422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5422.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  store i64 %i.ls, ptr %0, align 8
  %.sroa.4424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01078.0.copyload, ptr %.sroa.4424.0..sroa_idx, align 8
  %.sroa.4424.sroa.4.0..sroa.4424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41079.0.copyload, ptr %.sroa.4424.sroa.4.0..sroa.4424.0..sroa_idx.sroa_idx, align 8
  %.sroa.4424.sroa.5.0..sroa.4424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51080.0.copyload, ptr %.sroa.4424.sroa.5.0..sroa.4424.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.hu:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %.not559 = icmp eq i64 %6, 1
  br i1 %.not559, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 128
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.lu, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.l)
          to label %bb.hz unwind label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1015) #70
          to label %bb.ce unwind label %bb.hy

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit754: ; preds = %bb.ie, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760, %bb.hy
  %.pn564 = phi { ptr, i32 } [ %i.lw, %bb.hy ], [ %.pn562, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760 ], [ %.pn562, %bb.ie ] ; 2 uses
  %i.lv = icmp eq i64 %.sroa.01078.0.copyload, 0
  br i1 %i.lv, label %common.resume, label %bb.hx

bb.hx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit754
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41079.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41079.0.copyload, i64 noundef %.sroa.01078.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59269
  br label %common.resume

bb.hy:                                            ; preds = %bb.hw, %bb.hv
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit754

bb.hz:                                            ; preds = %bb.hv
  %i.lx = load i64, ptr %i.bm, align 8, !range !116, !noundef !28 ; 2 uses
  %.not560 = icmp eq i64 %i.lx, -1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.01081.0.copyload = load i64, ptr %i.ly, align 8 ; 7 uses
  %.sroa.41082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.41082.0.copyload = load ptr, ptr %.sroa.41082.0..sroa_idx, align 8 ; 8 uses
  %.sroa.51083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.51083.0.copyload = load i64, ptr %.sroa.51083.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not560, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %.sroa.5431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.5434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5434.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5431.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  store i64 %i.lx, ptr %0, align 8
  %.sroa.4433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01081.0.copyload, ptr %.sroa.4433.0..sroa_idx, align 8
  %.sroa.4433.sroa.4.0..sroa.4433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41082.0.copyload, ptr %.sroa.4433.sroa.4.0..sroa.4433.0..sroa_idx.sroa_idx, align 8
  %.sroa.4433.sroa.5.0..sroa.4433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51083.0.copyload, ptr %.sroa.4433.sroa.5.0..sroa.4433.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit757

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.lz = icmp samesign ugt i64 %6, 2
  br i1 %i.lz, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 256
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ma, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.l)
          to label %bb.ig unwind label %bb.if

bb.id:                                            ; preds = %bb.ib
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1016) #70
          to label %bb.ce unwind label %bb.if

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760: ; preds = %bb.il, %bb.ik, %bb.if
  %.pn562 = phi { ptr, i32 } [ %i.mc, %bb.if ], [ %i.mg, %bb.ik ], [ %i.mg, %bb.il ] ; 2 uses
  %i.mb = icmp eq i64 %.sroa.01081.0.copyload, 0
  br i1 %i.mb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit754, label %bb.ie

bb.ie:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41082.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41082.0.copyload, i64 noundef %.sroa.01081.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59270
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit754

bb.if:                                            ; preds = %bb.id, %bb.ic
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760

bb.ig:                                            ; preds = %bb.ic
  %i.md = load i64, ptr %i.bl, align 8, !range !116, !noundef !28 ; 2 uses
  %.not561 = icmp eq i64 %i.md, -1
  %i.me = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.01084.0.copyload = load i64, ptr %i.me, align 8 ; 5 uses
  %.sroa.41085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.41085.0.copyload = load ptr, ptr %.sroa.41085.0..sroa_idx, align 8 ; 4 uses
  %.sroa.51086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.51086.0.copyload = load i64, ptr %.sroa.51086.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not561, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.sroa.5440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %.sroa.5443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5440.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  store i64 %i.md, ptr %0, align 8
  %.sroa.4442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01084.0.copyload, ptr %.sroa.4442.0..sroa_idx, align 8
  %.sroa.4442.sroa.4.0..sroa.4442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41085.0.copyload, ptr %.sroa.4442.sroa.4.0..sroa.4442.0..sroa_idx.sroa_idx, align 8
  %.sroa.4442.sroa.5.0..sroa.4442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.51086.0.copyload, ptr %.sroa.4442.sroa.5.0..sroa.4442.0..sroa_idx.sroa_idx, align 8
  %i.mf = icmp eq i64 %.sroa.01081.0.copyload, 0
  br i1 %i.mf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit757, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41082.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41082.0.copyload, i64 noundef %.sroa.01081.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59271
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit757

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41079.0.copyload), "nonnull"(ptr %.sroa.41082.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store <2 x i64> %i.ct, ptr %i.k, align 16
  %.sroa.23.0..sroa_idx1175 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.23.0..sroa_idx1175, align 16
  %.sroa.24.0..sroa_idx1198 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24.0..sroa_idx1198, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24, i64 64, i1 false)
  %.sroa.25.0..sroa_idx1215 = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.0..sroa_idx1215, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  %.sroa.26.0..sroa_idx1243 = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store ptr %i.cp, ptr %.sroa.26.0..sroa_idx1243, align 16
  %.sroa.27.0..sroa_idx1277 = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store ptr %i.cl, ptr %.sroa.27.0..sroa_idx1277, align 8
  %.sroa.28.0..sroa_idx1311 = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr %1, ptr %.sroa.28.0..sroa_idx1311, align 16
  %.sroa.29.0..sroa_idx1345 = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store i8 %i.cr, ptr %.sroa.29.0..sroa_idx1345, align 8
  invoke void %4(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41079.0.copyload, i64 noundef %.sroa.51080.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41082.0.copyload, i64 noundef %.sroa.51083.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.41085.0.copyload, i64 noundef %.sroa.51086.0.copyload)
          to label %bb.im unwind label %bb.ik

bb.ik:                                            ; preds = %bb.io, %bb.ij
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = icmp eq i64 %.sroa.01084.0.copyload, 0
  br i1 %i.mh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41085.0.copyload, i64 noundef %.sroa.01084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59272
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit760

bb.im:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.mi = load i64, ptr %i.ai, align 8, !range !41, !noundef !28
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  br i1 %i.mj, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %i.mk, i64 24, i1 false)
  store i64 1, ptr %i.ck, align 8
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvXs3_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.mk)
          to label %bb.ip unwind label %bb.ik

bb.ip:                                            ; preds = %bb.io
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i64 0, ptr %i.ck, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.in
  %i.mn = icmp eq i64 %.sroa.01084.0.copyload, 0
  br i1 %i.mn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit763, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41085.0.copyload, i64 noundef %.sroa.01084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59273
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit763

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit763: ; preds = %bb.ir, %bb.iq
  %i.mo = icmp eq i64 %.sroa.01081.0.copyload, 0
  br i1 %i.mo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit766, label %bb.is

bb.is:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit763
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41082.0.copyload, i64 noundef %.sroa.01081.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59274
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit766

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit766: ; preds = %bb.is, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit763
  %i.mp = icmp eq i64 %.sroa.01078.0.copyload, 0
  br i1 %i.mp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653, label %bb.it

bb.it:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit766
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41079.0.copyload, i64 noundef %.sroa.01078.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59275
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit757: ; preds = %bb.ii, %bb.ih, %bb.ia
  %i.mq = icmp eq i64 %.sroa.01078.0.copyload, 0
  br i1 %i.mq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650, label %bb.iu

bb.iu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit757
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41079.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41079.0.copyload, i64 noundef %.sroa.01078.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59276
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.iv:                                            ; preds = %bb.t
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator14evaluate_value(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %5)
  %i.mr = load i64, ptr %i.bj, align 8, !range !116, !noundef !28 ; 2 uses
  %.not556 = icmp eq i64 %i.mr, -1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6184, ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i64 24, i1 false)
  br i1 %.not556, label %bb.iy, label %bb.ix

bb.iw:                                            ; preds = %bb.t
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1017) #74
  unreachable

bb.ix:                                            ; preds = %bb.iv
  %.sroa.5449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.5452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5449.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.sroa.4451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4451.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6184, i64 24, i1 false)
  store i64 %i.mr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit650

bb.iy:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6184, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x i64> %i.ct, ptr %i.i, align 16
  %.sroa.23.0..sroa_idx1177 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.23.0..sroa_idx1177, align 16
  %.sroa.24.0..sroa_idx1199 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24.0..sroa_idx1199, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.24, i64 64, i1 false)
  %.sroa.25.0..sroa_idx1216 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.0..sroa_idx1216, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  %.sroa.26.0..sroa_idx1245 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.cp, ptr %.sroa.26.0..sroa_idx1245, align 16
  %.sroa.27.0..sroa_idx1279 = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store ptr %i.cl, ptr %.sroa.27.0..sroa_idx1279, align 8
  %.sroa.28.0..sroa_idx1313 = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr %1, ptr %.sroa.28.0..sroa_idx1313, align 16
  %.sroa.29.0..sroa_idx1347 = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i8 %i.cr, ptr %.sroa.29.0..sroa_idx1347, align 8
  invoke void %4(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ck, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.ja unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #71
  br label %common.resume

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !59277)
  call void @llvm.experimental.noalias.scope.decl(metadata !59278)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val.i.i773 = load ptr, ptr %i.mu, align 8, !alias.scope !59279, !nonnull !28, !noundef !28 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val1.i.i774 = load i64, ptr %i.mv, align 8, !alias.scope !59279, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59280)
  %i.mw = icmp eq i64 %.val1.i.i774, 0
  br i1 %i.mw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i780, label %.lr.ph.i.i.i.i775

.lr.ph.i.i.i.i775:                                ; preds = %bb.ja, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779
  %.sroa.0.010.i.i.i.i776 = phi i64 [ %i.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779 ], [ 0, %bb.ja ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i773, i64 %.sroa.0.010.i.i.i.i776 ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.0.010.i.i.i.i776, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59281)
  call void @llvm.experimental.noalias.scope.decl(metadata !59282)
  %.val.i.i.i.i.i.i777 = load i64, ptr %i.mx, align 8, !alias.scope !59283, !noalias !59279 ; 2 uses
  %i.mz = icmp eq i64 %.val.i.i.i.i.i.i777, 0
  br i1 %i.mz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i.i.i.i775
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.val1.i.i.i.i.i.i778 = load ptr, ptr %i.na, align 8, !alias.scope !59283, !noalias !59279, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i778, i64 noundef %.val.i.i.i.i.i.i777, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !59284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779: ; preds = %bb.jb, %.lr.ph.i.i.i.i775
  %i.nb = icmp eq i64 %i.my, %.val1.i.i774
  br i1 %i.nb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i780, label %.lr.ph.i.i.i.i775

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i780: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i779, %bb.ja
  %.val2.i.i781 = load i64, ptr %i.bk, align 8, !alias.scope !59279 ; 2 uses
  %i.nc = icmp eq i64 %.val2.i.i781, 0
  br i1 %i.nc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit782, label %bb.jc

bb.jc:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i780
  %i.nd = mul nuw i64 %.val2.i.i781, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i773, i64 noundef %i.nd, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !59279
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit782

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit782: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i780, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit653

bb.jd:                                            ; preds = %bb.u
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator14evaluate_value(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %5)
  %i.ne = load i64, ptr %i.bh, align 8, !range !116, !noundef !28 ; 2 uses
  %.not550 = icmp eq i64 %i.ne, -1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6193, ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i64 24, i1 false)
  br i1 %.not550, label %bb.jg, label %bb.jf

bb.je:                                            ; preds = %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1018) #74
  unreachable

bb.jf:                                            ; preds = %bb.jd
  %.sroa.5458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_5EntryINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBd_6string6StringEINtNtBd_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE10or_defaultB2v_:bb.a
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !61433

.noexc.i.i.i:                                     ; preds = %bb.p
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2I_.exit.i.i.i.i: ; preds = %bb.o
  store ptr null, ptr %i.z, align 8, !noalias !61439
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61440)
  %i.ac = load i16, ptr %i.k, align 2, !noalias !61441, !noundef !28
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i.i.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 4 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !61440, !noalias !61439
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.013.0.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !61441 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61441 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload, i64 272 ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.sroa.013.0.i.i.i ; 3 uses
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !61441 ; 3 uses
  %.sroa.58.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.58.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61441 ; 3 uses
  %i.al = icmp ult i64 %i.af, 12
  br i1 %i.al, label %bb.w, label %bb.q, !prof !75

bb.q:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2I_.exit.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #70
          to label %bb.t unwind label %bb.r, !noalias !61441

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = shl nuw i64 %.sroa.06.0.copyload.i.i.i.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.58.0.copyload.i.i.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !61441
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.copyload.off.i.i.i.i.i = add i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  %switch.i.i.i.i.i = icmp ult i64 %.sroa.0.0.copyload.off.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i, label %bb.u, label %.thread.i.i.i.i

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !61442
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 544, i64 noundef 8) #69, !noalias !61439
  br label %bb.ab

bb.v:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2I_.exit.i.i.i.i
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.611.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61441
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61441
  %i.aq = add nuw nsw i64 %.sroa.013.0.i.i.i, 1   ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.at = mul nuw nsw i64 %i.af, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull readonly align 8 %i.ar, i64 %i.at, i1 false), !alias.scope !61443, !noalias !61444
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %i.au, i64 %i.at, i1 false), !alias.scope !61445, !noalias !61444
  %i.aw = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.aw, ptr %i.k, align 2, !noalias !61441
  %spec.select32.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.z, ptr %.sroa.15.0.copyload ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 538 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !61446, !noundef !28 ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61447)
  %.not.i17.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.az
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.510.0.i.i.i ; 4 uses
  br i1 %.not.i17.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61448)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bc = add nuw nsw i64 %.sroa.510.0.i.i.i, 1   ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bc
  %i.be = sub nuw nsw i64 %i.az, %.sroa.510.0.i.i.i
  %i.bf = mul nuw nsw i64 %i.be, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.bb, i64 %i.bf, i1 false), !alias.scope !61449, !noalias !61446
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 272 ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.510.0.i.i.i
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bh, i64 %i.bf, i1 false), !alias.scope !61450, !noalias !61446
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store i64 %i.b, ptr %i.bb, align 8, !alias.scope !61451, !noalias !61452
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.bj, align 8, !alias.scope !61451, !noalias !61452
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.11.0.copyload, ptr %i.bk, align 8, !alias.scope !61451, !noalias !61452
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 272
  %i.bm = add i16 %i.ay, 1
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.sroa.510.0.i.i.i ; 3 uses
  store i64 0, ptr %i.bn, align 8, !alias.scope !61453, !noalias !61446
  %.sroa.6147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6147.0..sroa_idx.i.i, align 8, !alias.scope !61453, !noalias !61446
  %.sroa.8148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %.sroa.8148.0..sroa_idx.i.i, align 8, !alias.scope !61453, !noalias !61446
  store i16 %i.bm, ptr %i.ax, align 2, !noalias !61446
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.15.i.i, align 8, !alias.scope !61432, !noalias !61454
  br label %bb.ad

bb.aa:                                            ; preds = %bb.k, %bb.j
  store i64 %i.b, ptr %i.r, align 8, !alias.scope !61455, !noalias !61456
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.bo, align 8, !alias.scope !61455, !noalias !61456
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.11.0.copyload, ptr %i.bp, align 8, !alias.scope !61455, !noalias !61456
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.15.0.copyload, i64 272
  %i.br = add nuw nsw i16 %i.l, 1
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.sroa.17.0.copyload ; 3 uses
  store i64 0, ptr %i.bs, align 8, !alias.scope !61457, !noalias !61437
  %.sroa.6144.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6144.0..sroa_idx.i.i, align 8, !alias.scope !61457, !noalias !61437
  %.sroa.8145.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 0, ptr %.sroa.8145.0..sroa_idx.i.i, align 8, !alias.scope !61457, !noalias !61437
  store i16 %i.br, ptr %i.k, align 2, !noalias !61437
  br label %bb.ad

bb.ab:                                            ; preds = %.thread.i.i.i.i, %bb.v
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.am, %.thread.i.i.i.i ], [ %i.ap, %bb.v ] ; 2 uses
  %i.bt = icmp sgt i64 %i.b, 0
  br i1 %i.bt, label %bb.ac, label %.body

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !61458
  br label %.body

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %.sroa.18.0.i.i = phi ptr [ %.sroa.58.0.copyload.i.i.i.i.i, %bb.z ], [ undef, %bb.aa ]
  %.sroa.14.0.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.z ], [ undef, %bb.aa ]
  %.sroa.1324.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.z ], [ undef, %bb.aa ]
  %.sroa.11.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.z ], [ undef, %bb.aa ]
  %.sroa.7.0.i.i = phi ptr [ %i.z, %bb.z ], [ undef, %bb.aa ]
  %.sroa.522.0.i.i = phi i64 [ %.sroa.16.0.copyload, %bb.z ], [ undef, %bb.aa ]
  %.sink66.i.sroa.phi.i.i = phi ptr [ %.sroa.19.i.i, %bb.z ], [ %.sroa.15.i.i, %bb.aa ]
  %.sink65.i.i.i = phi i64 [ %.sroa.611.0.copyload.i.i.i.i.i, %bb.z ], [ -1, %bb.aa ]
  %.sink63.i.i.i = phi ptr [ %spec.select32.i.i.i, %bb.z ], [ %.sroa.15.0.copyload, %bb.aa ] ; 6 uses
  %.sink.i.i.i = phi i64 [ %.sroa.510.0.i.i.i, %bb.z ], [ %.sroa.17.0.copyload, %bb.aa ] ; 6 uses
  store i64 %.sink65.i.i.i, ptr %.sink66.i.sroa.phi.i.i, align 8, !alias.scope !61432, !noalias !61454
  %.sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.56..i.i = load i64, ptr %.sroa.15.i.i, align 8, !range !37, !noalias !61454, !noundef !28 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.56..i.i, -1
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.19.i.i.0..sroa.19.i.i.0..sroa.19.i.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.32.copyload.i.i = load i64, ptr %.sroa.19.i.i, align 8, !noalias !61454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.515.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.518.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  br label %.loopexit

bb.ag:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i, %bb.ae
  %.sroa.26.0.i.i = phi i64 [ %.sroa.19.i.i.0..sroa.19.i.i.0..sroa.19.i.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.32.copyload.i.i, %bb.ae ], [ %.sroa.611.0.copyload.i.i.i50.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 4 uses
  %.sroa.25.0.i.i = phi ptr [ %.sroa.18.0.i.i, %bb.ae ], [ %.sroa.58.0.copyload.i.i.i45.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 10 uses
  %.sroa.2313.0.i.i = phi i64 [ %.sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.56..i.i, %bb.ae ], [ %.sroa.06.0.copyload.i.i.i43.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 10 uses
  %.sroa.23.0.i.i = phi i64 [ %.sroa.14.0.i.i, %bb.ae ], [ %.sroa.6.0.copyload.i.i.i52.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 4 uses
  %.sroa.22.0.i.i = phi ptr [ %.sroa.1324.0.i.i, %bb.ae ], [ %.sroa.5.0.copyload.i.i.i42.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 10 uses
  %.sroa.17.0.i.i = phi i64 [ %.sroa.11.0.i.i, %bb.ae ], [ %.sroa.0.0.copyload.i.i.i40.i.i, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 10 uses
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.ae ], [ %i.co, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 2 uses
  %.sroa.91.0.i.i = phi ptr [ %.sroa.7.0.i.i, %bb.ae ], [ %i.fc, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 7 uses
  %.sroa.6.0.i.i = phi i64 [ %.sroa.522.0.i.i, %bb.ae ], [ %i.co, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.15.0.copyload, %bb.ae ], [ %i.bv, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB2W_.exit.i.i ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !61459, !noundef !28 ; 16 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.91.0.i.i), "nonnull"(ptr %.sroa.13.0.copyload) ]
  %i.bw = load ptr, ptr %.sroa.13.0.copyload, align 8, !noalias !61460, !noundef !28 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 8 ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i29.i.i, label %bb.ai, label %bb.ak, !prof !44

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #70
          to label %bb.aj unwind label %bb.av, !noalias !61460

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61461)
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !61461, !noalias !61460, !noundef !28 ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !61462
  %i.bz = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !61462 ; 15 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.al, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2N_.exit.i.i.i.i.i.i.i, !prof !44

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #70
          to label %.noexc.i.i.i.i unwind label %bb.ap, !noalias !61462

.noexc.i.i.i.i:                                   ; preds = %bb.al
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2N_.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  store ptr null, ptr %i.bz, align 8, !noalias !61462
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 538 ; 2 uses
  store i16 0, ptr %i.cb, align 2, !noalias !61462
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 544
  store ptr %i.bw, ptr %i.cc, align 8, !noalias !61462
  %i.cd = add i64 %i.by, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.am, label %bb.aq, !prof !44

bb.am:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2N_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #70
          to label %bb.an unwind label %bb.ao, !noalias !61462

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef 640, i64 noundef 8) #69, !noalias !61462
  br label %.body.i.i.i.i

bb.ap:                                            ; preds = %bb.al
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  tail call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB6_6string6StringEINtNtB6_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEE13new_uninit_inB2N_.exit.i.i.i.i.i.i.i
  store ptr %i.bz, ptr %i.bw, align 8, !noalias !61463
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 536
  store i16 0, ptr %i.cg, align 8, !noalias !61464
  store ptr %i.bz, ptr %.sroa.13.0.copyload, align 8, !alias.scope !61461, !noalias !61460
  store i64 %i.cd, ptr %i.bx, align 8, !alias.scope !61461, !noalias !61460
  %i.ch = icmp eq i64 %.sroa.13.0.i.i, %i.by
  br i1 %i.ch, label %bb.cm, label %.invoke.i.i.i.i, !prof !29

.invoke.i.i.i.i:                                  ; preds = %bb.aq
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #70
          to label %.cont.i.i.i.i unwind label %bb.ar, !noalias !61465

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ar:                                            ; preds = %.invoke.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.2313.0.i.i, 0
  br i1 %i.cj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.i.i) ]
  %i.ck = shl nuw i64 %.sroa.2313.0.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !61465
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.01.0.copyload.off.i.i.i = add i64 %.sroa.17.0.i.i, -1
  %switch.i.i.i = icmp ult i64 %.sroa.01.0.copyload.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.au, label %.body

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.22.0.i.i, i64 noundef %.sroa.17.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !61466
  br label %.body

bb.av:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.17.0.off.i.i = add i64 %.sroa.17.0.i.i, -1
  %switch164.i.i = icmp ult i64 %.sroa.17.0.off.i.i, -2
  br i1 %switch164.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.22.0.i.i, i64 noundef %.sroa.17.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !61467
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cm = icmp eq i64 %.sroa.2313.0.i.i, 0
  br i1 %i.cm, label %.body, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.i.i) ]
  %i.cn = shl nuw i64 %.sroa.2313.0.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.25.0.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !61460
  br label %.body

bb.az:                                            ; preds = %bb.ag
  %i.co = add i64 %.sroa.6.0.i.i, 1               ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 536
  %i.cq = load i16, ptr %i.cp, align 8, !noalias !61459 ; 4 uses
  %i.cr = zext i16 %i.cq to i64                   ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.91.0.i.i) ]
  %i.cs = icmp eq i64 %.sroa.13.0.i.i, %.sroa.6.0.i.i
  br i1 %i.cs, label %bb.bb, label %bb.ba, !prof !29

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #70
          to label %bb.bd unwind label %bb.bc, !noalias !61468

bb.bb:                                            ; preds = %bb.az
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 538 ; 4 uses
  %i.cu = load i16, ptr %i.ct, align 2, !noalias !61468, !noundef !28 ; 5 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.bf, label %bb.be

bb.bc:                                            ; preds = %bb.bp, %bb.ba
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bd:                                            ; preds = %bb.ba
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.cx = icmp ult i16 %i.cq, 5
  br i1 %i.cx, label %bb.bo, label %bb.bl

bb.bf:                                            ; preds = %bb.bb
  %i.cy = zext nneg i16 %i.cu to i64              ; 5 uses
  %i.cz = add nuw nsw i16 %i.cu, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61469)
  %i.db = add nuw nsw i64 %i.cr, 1                ; 7 uses
  %.not.i.i56.not.i.i = icmp ult i16 %i.cq, %i.cu ; 2 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cr ; 4 uses
  br i1 %.not.i.i56.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61470)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.db
  %i.de = sub nuw nsw i64 %i.cy, %i.cr
  %i.df = mul nuw nsw i64 %i.de, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dc, i64 %i.df, i1 false), !alias.scope !61471, !noalias !61472
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 272 ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.cr
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.dh, i64 %i.df, i1 false), !alias.scope !61473, !noalias !61472
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i64 %.sroa.17.0.i.i, ptr %i.dc, align 8, !alias.scope !61474, !noalias !61475
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %.sroa.22.0.i.i, ptr %i.dj, align 8, !alias.scope !61474, !noalias !61475
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %.sroa.23.0.i.i, ptr %i.dk, align 8, !alias.scope !61474, !noalias !61475
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.cr ; 3 uses
  store i64 %.sroa.2313.0.i.i, ptr %i.dm, align 8, !alias.scope !61476, !noalias !61472
  %.sroa.6150.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.25.0.i.i, ptr %.sroa.6150.0..sroa_idx.i.i, align 8, !alias.scope !61476, !noalias !61472
  %.sroa.8151.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.sroa.26.0.i.i, ptr %.sroa.8151.0..sroa_idx.i.i, align 8, !alias.scope !61476, !noalias !61472
  %i.dn = add nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 544 ; 8 uses
  br i1 %.not.i.i56.not.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.db
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = sub nuw nsw i64 %i.cy, %i.cr
  %i.dt = shl nuw nsw i64 %i.ds, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.dp, i64 %i.dt, i1 false), !alias.scope !61477, !noalias !61472
  br label %bb.bk
end_hunk_4
begin_hunk_5_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand11list_module:bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oa, i64 noundef 456, i64 noundef 8) #69, !noalias !63026
  br label %.body

bb.bc:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReINtNtB6_3vec3VecB1p_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !63028
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.013.0.i.i.i.i ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !noalias !63028, !noundef !28
  %i.os = load ptr, ptr %i.op, align 8, !noalias !63028, !nonnull !28, !noundef !28
  %i.ot = add nuw nsw i64 %.sroa.013.0.i.i.i.i, 1 ; 2 uses
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.ot
  %i.ov = shl nuw nsw i64 %i.oh, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.oa, ptr nonnull readonly align 8 %i.ou, i64 %i.ov, i1 false), !alias.scope !63029, !noalias !63030
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %i.ot
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oa, i64 184
  %i.oy = mul nuw nsw i64 %i.oh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ox, ptr nonnull readonly align 8 %i.ow, i64 %i.oy, i1 false), !alias.scope !63031, !noalias !63030
  %i.oz = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.oz, ptr %i.nn, align 2, !noalias !63028
  %spec.select52.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.oa, ptr %.sroa.0.0.i.i ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %spec.select52.i.i.i.i, i64 450 ; 2 uses
  %i.pb = load i16, ptr %i.pa, align 2, !noalias !63032, !noundef !28 ; 2 uses
  %i.pc = zext i16 %i.pb to i64                   ; 2 uses
  %.not.i19.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.pc
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %spec.select52.i.i.i.i, i64 %.sroa.510.0.i.i.i.i ; 3 uses
  br i1 %.not.i19.not.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63033)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.pe = add nuw nsw i64 %.sroa.510.0.i.i.i.i, 1 ; 2 uses
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %spec.select52.i.i.i.i, i64 %i.pe
  %i.pg = sub nuw nsw i64 %i.pc, %.sroa.510.0.i.i.i.i ; 2 uses
  %i.ph = shl nuw nsw i64 %i.pg, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pf, ptr nonnull align 8 %i.pd, i64 %i.ph, i1 false), !alias.scope !63034, !noalias !63032
  %i.pi = getelementptr inbounds nuw i8, ptr %spec.select52.i.i.i.i, i64 184 ; 2 uses
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %.sroa.510.0.i.i.i.i
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.pi, i64 %i.pe
  %i.pl = mul nuw nsw i64 %i.pg, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pk, ptr nonnull align 8 %i.pj, i64 %i.pl, i1 false), !alias.scope !63035, !noalias !63036
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.mm, ptr %i.pd, align 8, !alias.scope !63034, !noalias !63032
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i64 %i.lw, ptr %i.pm, align 8, !alias.scope !63034, !noalias !63037
  %i.pn = getelementptr inbounds nuw i8, ptr %spec.select52.i.i.i.i, i64 184
  %i.po = add i16 %i.pb, 1
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.pn, i64 %.sroa.510.0.i.i.i.i ; 3 uses
  store i64 0, ptr %i.pp, align 8, !alias.scope !63038, !noalias !63037
  %.sroa.6102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6102.0..sroa_idx.i.i.i, align 8, !alias.scope !63038, !noalias !63037
  %.sroa.8103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store i64 0, ptr %.sroa.8103.0..sroa_idx.i.i.i, align 8, !alias.scope !63038, !noalias !63037
  store i16 %i.po, ptr %i.pa, align 2, !noalias !63037
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.i.i.i, align 8, !alias.scope !63020, !noalias !63039
  br label %bb.bh

bb.bg:                                            ; preds = %bb.at, %bb.as
  store ptr %i.mm, ptr %i.nq, align 8, !alias.scope !63022, !noalias !63023
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %i.lw, ptr %i.pq, align 8, !alias.scope !63022, !noalias !63025
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 184
  %i.ps = add nuw nsw i16 %i.mo, 1
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  store i64 0, ptr %i.pt, align 8, !alias.scope !63040, !noalias !63025
  %.sroa.699.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.699.0..sroa_idx.i.i.i, align 8, !alias.scope !63040, !noalias !63025
  %.sroa.8100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i64 0, ptr %.sroa.8100.0..sroa_idx.i.i.i, align 8, !alias.scope !63040, !noalias !63025
  store i16 %i.ps, ptr %i.nn, align 2, !noalias !63025
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.15.0.i.i.i = phi ptr [ %i.oa, %bb.bf ], [ undef, %bb.bg ] ; 2 uses
  %.sroa.1019.0.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i.i, %bb.bf ], [ undef, %bb.bg ] ; 2 uses
  %.sroa.9.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i.i, %bb.bf ], [ undef, %bb.bg ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i64 [ %i.or, %bb.bf ], [ undef, %bb.bg ] ; 2 uses
  %.sroa.018.0.i.i.i = phi ptr [ %i.os, %bb.bf ], [ undef, %bb.bg ] ; 2 uses
  %.sink64.i.sroa.phi.i.i.i = phi ptr [ %.sroa.1721.i.i.i, %bb.bf ], [ %.sroa.6.i.i.i, %bb.bg ]
  %.sink63.i.i.i.i = phi i64 [ 0, %bb.bf ], [ -1, %bb.bg ]
  %.sink61.i.i.i.i = phi ptr [ %spec.select52.i.i.i.i, %bb.bf ], [ %.sroa.0.0.i.i, %bb.bg ] ; 3 uses
  %.sink.i.i.i.i = phi i64 [ %.sroa.510.0.i.i.i.i, %bb.bf ], [ %.sroa.4.0.i.ph.i.i, %bb.bg ] ; 3 uses
  store i64 %.sink63.i.i.i.i, ptr %.sink64.i.sroa.phi.i.i.i, align 8, !alias.scope !63020, !noalias !63039
  %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i = load i64, ptr %.sroa.6.i.i.i, align 8, !range !37, !noalias !63039, !noundef !28 ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i, -1
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.0..sroa.1721.i.i.0..sroa.1721.i.0..sroa.1721.i.0..sroa.1721.0..sroa.1721.0..sroa.1721.64..i.i.i = load i64, ptr %.sroa.1721.i.i.i, align 8, !noalias !63039, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1721.i.i.i)
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.pv = load ptr, ptr %i.pu, align 8, !noalias !63041, !noundef !28 ; 2 uses
  %.not.i177.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i177.i.i.i, label %.loopexit4149, label %.lr.ph.i.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1721.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_3vec3VecB1j_EE12insert_entryCskXtk6F4WjxZ_4just.exit.i

.loopexit4149:                                    ; preds = %bb.cy, %bb.bi
  %.sroa.21.0.lcssa.i.i.i = phi i64 [ %.sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.0..sroa.1721.i.i.0..sroa.1721.i.0..sroa.1721.i.0..sroa.1721.0..sroa.1721.0..sroa.1721.64..i.i.i, %bb.bi ], [ %.sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.64..i.i.i, %bb.cy ]
  %.sroa.17.0.lcssa.i.i.i = phi ptr [ %.sroa.15.0.i.i.i, %bb.bi ], [ %.sroa.16.0.i.i.i, %bb.cy ] ; 4 uses
  %.sroa.11.0.lcssa.i.i.i = phi i64 [ %.sroa.1019.0.i.i.i, %bb.bi ], [ %.sroa.1160.0.i.i.i, %bb.cy ]
  %.sroa.10.0.lcssa.i.i.i = phi ptr [ %.sroa.9.0.i.i.i, %bb.bi ], [ %.sroa.1059.0.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.8.0.lcssa.i.i.i = phi i64 [ %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i, %bb.bi ], [ %.sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.0..sroa.658.i.i.0..sroa.658.i.0..sroa.658.i.0..sroa.658.0..sroa.658.0..sroa.658.16..i.i.i, %bb.cy ] ; 3 uses
  %.sroa.7.0.lcssa.i.i.i = phi i64 [ %.sroa.5.0.i.i.i, %bb.bi ], [ %.sroa.557.0.i.i.i, %bb.cy ]
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.bi ], [ %.sroa.056.0.i.i.i, %bb.cy ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.lcssa.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63042)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !63043
  %i.pw = tail call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63043 ; 15 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.bk, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, !prof !44

bb.bk:                                            ; preds = %.loopexit4149
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #70
          to label %.noexc.i.i.i.i.i unwind label %bb.bo, !noalias !63043

.noexc.i.i.i.i.i:                                 ; preds = %bb.bk
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.loopexit4149
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 176
  store ptr null, ptr %i.py, align 8, !noalias !63043
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 450 ; 2 uses
  store i16 0, ptr %i.pz, align 2, !noalias !63043
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 456
  store ptr %i.dd, ptr %i.qa, align 8, !noalias !63043
  %i.qb = add i64 %.sroa.3.0.copyload3894, 1      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.qb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bp, !prof !44

bb.bl:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #70
          to label %bb.bm unwind label %bb.bn, !noalias !63043

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.qc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pw, i64 noundef 552, i64 noundef 8) #69, !noalias !63043
  br label %.body.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bo, %bb.bn
  tail call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  store ptr %i.pw, ptr %i.qe, align 8, !noalias !63044
  %i.qf = getelementptr inbounds nuw i8, ptr %i.dd, i64 448
  store i16 0, ptr %i.qf, align 8, !noalias !63045
  store ptr %i.pw, ptr %i.cf, align 8, !alias.scope !63042, !noalias !63046
  store i64 %i.qb, ptr %i.cj, align 8, !alias.scope !63042, !noalias !63046
  %i.qg = icmp eq i64 %.sroa.21.0.lcssa.i.i.i, %.sroa.3.0.copyload3894
  br i1 %i.qg, label %bb.da, label %.invoke.i.i.i.i.i, !prof !29

.invoke.i.i.i.i.i:                                ; preds = %bb.bp
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 48, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #70
          to label %.cont.i.i.i.i.i unwind label %bb.bq, !noalias !63047

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.bq:                                            ; preds = %.invoke.i.i.i.i.i
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qi = icmp eq i64 %.sroa.8.0.lcssa.i.i.i, 0
  br i1 %i.qi, label %.body, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit16.sink.split.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bi, %bb.cy
  %i.qj = phi ptr [ %i.yh, %bb.cy ], [ %i.pv, %bb.bi ] ; 18 uses
  %.sroa.03.0186.i.i.i = phi ptr [ %.sroa.056.0.i.i.i, %bb.cy ], [ %.sroa.018.0.i.i.i, %bb.bi ] ; 4 uses
  %.sroa.7.0185.i.i.i = phi i64 [ %.sroa.557.0.i.i.i, %bb.cy ], [ %.sroa.5.0.i.i.i, %bb.bi ] ; 3 uses
  %.sroa.8.0184.i.i.i = phi i64 [ %.sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.i.0..sroa.658.i.i.0..sroa.658.i.i.0..sroa.658.i.0..sroa.658.i.0..sroa.658.0..sroa.658.0..sroa.658.16..i.i.i, %bb.cy ], [ %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i, %bb.bi ] ; 5 uses
  %.sroa.10.0183.i.i.i = phi ptr [ %.sroa.1059.0.i.i.i, %bb.cy ], [ %.sroa.9.0.i.i.i, %bb.bi ] ; 4 uses
  %.sroa.11.0182.i.i.i = phi i64 [ %.sroa.1160.0.i.i.i, %bb.cy ], [ %.sroa.1019.0.i.i.i, %bb.bi ] ; 3 uses
  %.sroa.1114.0181.i.i.i = phi ptr [ %i.qj, %bb.cy ], [ %.sroa.0.0.i.i, %bb.bi ]
  %.sroa.14.0180.i.i.i = phi i64 [ %i.qk, %bb.cy ], [ 0, %bb.bi ] ; 2 uses
  %.sroa.17.0179.i.i.i = phi ptr [ %.sroa.16.0.i.i.i, %bb.cy ], [ %.sroa.15.0.i.i.i, %bb.bi ] ; 3 uses
  %.sroa.21.0178.i.i.i = phi i64 [ %.sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.64..i.i.i, %bb.cy ], [ %.sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.i.0..sroa.1721.i.i.0..sroa.1721.i.i.0..sroa.1721.i.0..sroa.1721.i.0..sroa.1721.0..sroa.1721.0..sroa.1721.64..i.i.i, %bb.bi ]
  %i.qk = add i64 %.sroa.14.0180.i.i.i, 1         ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.1114.0181.i.i.i, i64 448
  %i.qm = load i16, ptr %i.ql, align 8, !noalias !63041 ; 4 uses
  %i.qn = zext i16 %i.qm to i64                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0186.i.i.i), "nonnull"(ptr %.sroa.17.0179.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63048)
  %i.qo = icmp eq i64 %.sroa.21.0178.i.i.i, %.sroa.14.0180.i.i.i
  br i1 %i.qo, label %bb.bs, label %bb.br, !prof !29

bb.br:                                            ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #70
          to label %bb.bu unwind label %bb.bt, !noalias !63049

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 450 ; 4 uses
  %i.qq = load i16, ptr %i.qp, align 2, !noalias !63049, !noundef !28 ; 5 uses
  %i.qr = icmp ult i16 %i.qq, 11
  br i1 %i.qr, label %bb.bw, label %bb.bv

bb.bt:                                            ; preds = %bb.cg, %bb.br
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bu:                                            ; preds = %bb.br
  unreachable

bb.bv:                                            ; preds = %bb.bs
  %i.qt = icmp ult i16 %i.qm, 5
  br i1 %i.qt, label %bb.cf, label %bb.cc

bb.bw:                                            ; preds = %bb.bs
  %i.qu = zext nneg i16 %i.qq to i64              ; 5 uses
  %i.qv = add nuw nsw i16 %i.qq, 1
  %i.qw = add nuw nsw i64 %i.qn, 1                ; 7 uses
  %.not.i.i43.not.i.i.i = icmp ult i16 %i.qm, %i.qq ; 2 uses
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qn ; 3 uses
  br i1 %.not.i.i43.not.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63050)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qw
  %i.qz = sub nuw nsw i64 %i.qu, %i.qn            ; 2 uses
  %i.ra = shl nuw nsw i64 %i.qz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qy, ptr nonnull align 8 %i.qx, i64 %i.ra, i1 false), !alias.scope !63051, !noalias !63052
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qj, i64 184 ; 2 uses
  %i.rc = getelementptr inbounds nuw [24 x i8], ptr %i.rb, i64 %i.qn
  %i.rd = getelementptr inbounds nuw [24 x i8], ptr %i.rb, i64 %i.qw
  %i.re = mul nuw nsw i64 %i.qz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rd, ptr nonnull align 8 %i.rc, i64 %i.re, i1 false), !alias.scope !63053, !noalias !63054
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  store ptr %.sroa.03.0186.i.i.i, ptr %i.qx, align 8, !alias.scope !63051, !noalias !63052
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i64 %.sroa.7.0185.i.i.i, ptr %i.rf, align 8, !alias.scope !63051, !noalias !63054
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qj, i64 184
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %i.rg, i64 %i.qn ; 3 uses
  store i64 %.sroa.8.0184.i.i.i, ptr %i.rh, align 8, !alias.scope !63055, !noalias !63054
  %.sroa.6105.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %.sroa.10.0183.i.i.i, ptr %.sroa.6105.0..sroa_idx.i.i.i, align 8, !alias.scope !63055, !noalias !63054
  %.sroa.8106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store i64 %.sroa.11.0182.i.i.i, ptr %.sroa.8106.0..sroa_idx.i.i.i, align 8, !alias.scope !63055, !noalias !63054
  %i.ri = add nuw nsw i64 %i.qu, 2                ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qj, i64 456 ; 8 uses
  br i1 %.not.i.i43.not.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.qw
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.qn
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rn = sub nuw nsw i64 %i.qu, %i.qn
  %i.ro = shl nuw nsw i64 %i.rn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rm, ptr nonnull align 8 %i.rk, i64 %i.ro, i1 false), !alias.scope !63056, !noalias !63054
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.qw
  store ptr %.sroa.17.0179.i.i.i, ptr %i.rp, align 8, !alias.scope !63056, !noalias !63054
  store i16 %i.qv, ptr %i.qp, align 2, !noalias !63054
  %i.rq = icmp samesign ult i64 %i.qw, %i.ri
  br i1 %i.rq, label %.lr.ph.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.cb
  %i.rr = add nuw nsw i64 %i.qu, 1
  %i.rs = sub nsw i64 %i.rr, %i.qn
  %i.rt = sub nsw i64 %i.qu, %i.qn
  %xtraiter8790 = and i64 %i.rs, 3                ; 2 uses
  %lcmp.mod8791.not = icmp eq i64 %xtraiter8790, 0
  br i1 %lcmp.mod8791.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.ru, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.qw, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter8792 = phi i64 [ %prol.iter8792.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ru = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.rv = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.rv)
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.rx = load ptr, ptr %i.rw, align 8, !noalias !63054, !nonnull !28, !noundef !28 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 176
  store ptr %i.qj, ptr %i.ry, align 8, !noalias !63054
  %i.rz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 448
  store i16 %i.rz, ptr %i.sa, align 8, !noalias !63054
  %prol.iter8792.next = add i64 %prol.iter8792, 1 ; 2 uses
  %prol.iter8792.cmp.not = icmp eq i64 %prol.iter8792.next, %xtraiter8790
  br i1 %prol.iter8792.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !62096

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.qw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ru, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.sb = icmp ult i64 %i.rt, 3
  br i1 %i.sb, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.su, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.sc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.se = load ptr, ptr %i.sd, align 8, !noalias !63054, !nonnull !28, !noundef !28 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 176
  store ptr %i.qj, ptr %i.sf, align 8, !noalias !63054
  %i.sg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 448
  store i16 %i.sg, ptr %i.sh, align 8, !noalias !63054
  %i.si = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.sc
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !63054, !nonnull !28, !noundef !28 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 176
  store ptr %i.qj, ptr %i.sl, align 8, !noalias !63054
  %i.sm = trunc nuw nsw i64 %i.sc to i16
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 448
  store i16 %i.sm, ptr %i.sn, align 8, !noalias !63054
  %i.so = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.si
  %i.sq = load ptr, ptr %i.sp, align 8, !noalias !63054, !nonnull !28, !noundef !28 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 176
  store ptr %i.qj, ptr %i.sr, align 8, !noalias !63054
  %i.ss = trunc nuw nsw i64 %i.si to i16
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 448
  store i16 %i.ss, ptr %i.st, align 8, !noalias !63054
  %i.su = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.sv = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.sv)
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.so
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !63054, !nonnull !28, !noundef !28 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 176
  store ptr %i.qj, ptr %i.sy, align 8, !noalias !63054
  %i.sz = trunc nuw nsw i64 %i.so to i16
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 448
  store i16 %i.sz, ptr %i.ta, align 8, !noalias !63054
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.su, %i.ri
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.bv
  switch i16 %i.qm, label %bb.cd [
    i16 5, label %bb.cf
    i16 6, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.tb = add nsw i64 %i.qn, -7
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bv
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.ce ], [ 6, %bb.cd ], [ 4, %bb.bv ], [ 5, %bb.cc ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.tb, %bb.cd ], [ %i.qn, %bb.bv ], [ 5, %bb.cc ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.ce ], [ true, %bb.cd ], [ false, %bb.bv ], [ false, %bb.cc ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !63057
  %i.tc = tail call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63057 ; 14 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.cg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, !prof !44

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #70
          to label %.noexc.i42.i.i.i unwind label %bb.bt, !noalias !63049

.noexc.i42.i.i.i:                                 ; preds = %bb.cg
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 176
  store ptr null, ptr %i.te, align 8, !noalias !63057
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 450 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63058)
  %i.tg = load i16, ptr %i.qp, align 2, !noalias !63059, !noundef !28
  %i.th = zext i16 %i.tg to i64
  %i.ti = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.tj = add nsw i64 %i.th, %i.ti                ; 5 uses
  %i.tk = trunc i64 %i.tj to i16
  store i16 %i.tk, ptr %i.tf, align 2, !alias.scope !63058, !noalias !63057
  %i.tl = getelementptr inbounds nuw i8, ptr %i.qj, i64 184 ; 2 uses
  %i.tm = getelementptr inbounds nuw [24 x i8], ptr %i.tl, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i34.i.i.i = load i64, ptr %i.tm, align 8, !noalias !63059 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %.sroa.5.0.copyload.i.i.i36.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i35.i.i.i, align 8, !noalias !63059 ; 3 uses
  %i.tn = icmp ult i64 %i.tj, 12
  br i1 %i.tn, label %bb.ck, label %bb.ch, !prof !75

bb.ch:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReINtNtB6_3vec3VecB1u_EEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.tj, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #70
end_hunk_5
begin_hunk_6_@_RNvXs_NtCskXtk6F4WjxZ_4just5tokenNtB4_5TokenNtNtB6_13color_display12ColorDisplay3fmt:bb.a
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 17 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [72 x i8], align 8                ; 17 uses
  %i.m = alloca [96 x i8], align 8                ; 15 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 17 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 16 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !28
  %. = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !28 ; 3 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !28, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !28 ; 3 uses
  store i64 0, ptr %i.r, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i64 %i.ab, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.z, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store i64 %i.ab, ptr %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  store i64 %i.ab, ptr %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  store i32 10, ptr %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.540.sroa.8.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  store i32 10, ptr %.sroa.540.sroa.8.0..sroa.540.0..sroa_idx.sroa_idx, align 4
  %.sroa.540.sroa.9.0..sroa.540.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.540.sroa.9.0..sroa.540.0..sroa_idx.sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 65 ; 2 uses
  store i8 0, ptr %.sroa.742.0..sroa_idx, align 1
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.ad, %bb.b ], [ %i.w, %bb.a ]
  %i.ac = call fastcc ptr @_RNvXss_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r) #75
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.ad = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread, label %.preheader

_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b
  %.pre = load i8, ptr %.sroa.742.0..sroa_idx, align 1, !range !40, !alias.scope !100999
  %i.af = trunc nuw i8 %.pre to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100999)
  br i1 %i.af, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread.thread

_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread.thread: ; preds = %bb.a, %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread
  %.val.i = load ptr, ptr %.sroa.540.0..sroa_idx, align 8, !alias.scope !100999, !nonnull !28, !noundef !28 ; 3 uses
  %.val1.i = load i64, ptr %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx, align 8, !alias.scope !100999, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101000)
  %i.ag = load i64, ptr %.sroa.540.sroa.6.0..sroa.540.0..sroa_idx.sroa_idx, align 8, !alias.scope !101001, !noundef !28 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ag, %.val1.i
  %.promoted.i.i = load i64, ptr %.sroa.540.sroa.5.0..sroa.540.0..sroa_idx.sroa_idx, align 8, !alias.scope !101001 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.promoted.i.i
  %or.cond27.i.i = or i1 %.not.i.i, %i.ah
  br i1 %or.cond27.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread.thread
  %i.ai = load i8, ptr %.sroa.540.sroa.9.0..sroa.540.0..sroa_idx.sroa_idx, align 8, !alias.scope !101001, !noundef !28 ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i64               ; 4 uses
  %i.ak = icmp ult i8 %i.ai, 5
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr i8, ptr %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %.pre.i.i = load i8, ptr %i.am, align 1, !alias.scope !101001 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %.lr.ph.split.preheader.i.i
  %i.an = phi i64 [ %i.bb, %bb.e ], [ %.promoted.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  %i.ao = sub nuw i64 %i.ag, %i.an                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.an ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ao, 16
  br i1 %i.aq, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.ag, %i.an
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.ar = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef range(i64 0, -9223372036854775808) %i.ao), !noalias !101002 ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %.loopexit.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.04.011.i.i.i = phi i64 [ %i.ay, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.04.011.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !101003, !noalias !101002, !noundef !28
  %i.ax = icmp eq i8 %i.aw, %.pre.i.i
  br i1 %i.ax, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ao
  br i1 %exitcond.not.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.5.0.i.i.i = phi i64 [ %i.at, %bb.c ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.az = icmp ult i64 %.sroa.5.0.i.i.i, %i.ao
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %i.an, 1
  %i.bb = add i64 %i.ba, %.sroa.5.0.i.i.i         ; 6 uses
  %.not11.i.i = icmp ult i64 %i.bb, %i.aj
  %.not12.i.i = icmp ugt i64 %i.bb, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i
  %i.bc = icmp ult i64 %i.ag, %i.bb
  br i1 %i.bc, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.split.i.i

bb.f:                                             ; preds = %.loopexit.i.i
  %i.bd = sub nuw i64 %i.bb, %i.aj
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bd
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %.sroa.540.sroa.7.0..sroa.540.0..sroa_idx.sroa_idx, i64 %i.aj), !noalias !101004
  %i.bf = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bf, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.e

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.f
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !100999, !noundef !28 ; 2 uses
  %i.bh = sub nuw i64 %i.bb, %i.bg
  br label %select.unfold

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.e, %.preheader.i.i.i, %bb.c, %bb.d, %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread.thread
  %i.bi = load i8, ptr %.sroa.641.0..sroa_idx, align 8, !range !40, !alias.scope !101005, !noundef !28
  %i.bj = trunc nuw i8 %i.bi to i1
  %.pre.i2.i = load i64, ptr %i.r, align 8, !alias.scope !101005 ; 3 uses
  %.pre2.i.i = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !101005 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.bj, i1 true, i1 %.not.i3.i
  %i.bk = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit

_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit: ; preds = %.preheader, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, %_RINvYNtNtNtCsj6eKBz9Db1c_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBH_10advance_byB3_NtB28_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1v_EECskXtk6F4WjxZ_4just.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2800) #74
  unreachable

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.sroa.4.1.i = phi i64 [ %i.bh, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %i.bk, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i ] ; 4 uses
  %.pn = phi i64 [ %i.bg, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ], [ %.pre.i2.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pn ; 4 uses
  %i.bl = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %.sroa.4.1.i, 1 ; 3 uses
  %.not.i.i.i477 = icmp eq i64 %.sroa.4.1.i, 0
  %.pre.i.i478 = add i64 %.sroa.4.1.i, -1         ; 3 uses
  br i1 %.not.i.i.i477, label %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %select.unfold
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i.i478
  %rhsc.i = load i8, ptr %i.bn, align 1, !alias.scope !101006
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.bo = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.bo, label %bb.g, label %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i
  %i.bp = insertvalue { ptr, i64 } %i.bm, i64 %.pre.i.i478, 1
  %.not.i.i15.i = icmp eq i64 %.pre.i.i478, 0
  %.pre.i16.i = add i64 %.sroa.4.1.i, -2          ; 2 uses
  br i1 %.not.i.i15.i, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i: ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i16.i
  %rhsc4.i = load i8, ptr %i.bq, align 1, !alias.scope !101006
  %rhsc4.fr.i = freeze i8 %rhsc4.i
  %i.br = icmp eq i8 %rhsc4.fr.i, 13
  %spec.select.i20.i = select i1 %i.br, ptr %.sroa.0.1.i, ptr null
  br label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i, %bb.g
  %i.bs = phi ptr [ %spec.select.i20.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i ], [ null, %bb.g ] ; 2 uses
  %i.bt = insertvalue { ptr, i64 } poison, ptr %i.bs, 0
  %i.bu = insertvalue { ptr, i64 } %i.bt, i64 %.pre.i16.i, 1
  %.not14.i = icmp eq ptr %i.bs, null
  %..i = select i1 %.not14.i, { ptr, i64 } %i.bp, { ptr, i64 } %i.bu
  br label %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %select.unfold, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i
  %.merged.i = phi { ptr, i64 } [ %..i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %i.bm, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.bm, %select.unfold ] ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %.merged.i, 0 ; 4 uses
  %i.bw = extractvalue { ptr, i64 } %.merged.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv), "nonnull"(ptr %i.bv) ]
  %i.by = icmp samesign eq i64 %i.bw, 0
  br i1 %i.by, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = add i64 %i.ca, %.                       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cx
  %i.cc = phi i64 [ 0, %.lr.ph ], [ %i.jn, %bb.cx ] ; 3 uses
  %.sroa.04.0611 = phi i64 [ 0, %.lr.ph ], [ %i.jo, %bb.cx ] ; 5 uses
  %.sroa.011.0610 = phi i64 [ 0, %.lr.ph ], [ %.sroa.011.2594, %bb.cx ] ; 5 uses
  %.sroa.014.0609 = phi i64 [ 0, %.lr.ph ], [ %.sroa.014.1593, %bb.cx ] ; 5 uses
  %.sroa.0.0562608 = phi ptr [ %i.bv, %.lr.ph ], [ %.sroa.0.1.ph, %bb.cx ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0562608, i64 1 ; 3 uses
  %i.ce = load i8, ptr %.sroa.0.0562608, align 1, !noalias !101007, !noundef !28 ; 5 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i: ; preds = %bb.h
  %i.cg = and i8 %i.ce, 31
  %i.ch = zext nneg i8 %i.cg to i32               ; 3 uses
  %i.ci = icmp ne ptr %i.cd, %i.bx
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0562608, i64 2 ; 3 uses
  %i.ck = load i8, ptr %i.cd, align 1, !noalias !101007, !noundef !28
  %i.cl = shl nuw nsw i32 %i.ch, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = icmp samesign ugt i8 %i.ce, -33
  br i1 %i.cp, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = zext nneg i8 %i.ce to i32
  br label %bb.k

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i
  %i.cr = icmp ne ptr %i.cj, %i.bx
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0562608, i64 3 ; 3 uses
  %i.ct = load i8, ptr %i.cj, align 1, !noalias !101007, !noundef !28
  %i.cu = shl nuw nsw i32 %i.cn, 6
  %i.cv = and i8 %i.ct, 63
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ch, 12
  %i.cz = or disjoint i32 %i.cx, %i.cy
  %i.da = icmp samesign ugt i8 %i.ce, -17
  br i1 %i.da, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, label %bb.k

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %i.db = icmp ne ptr %i.cs, %i.bx
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0562608, i64 4
  %i.dd = load i8, ptr %i.cs, align 1, !noalias !101007, !noundef !28
  %i.de = shl nuw nsw i32 %i.ch, 18
  %i.df = and i32 %i.de, 1835008
  %i.dg = shl nuw nsw i32 %i.cx, 6
  %i.dh = and i8 %i.dd, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = or disjoint i32 %i.dj, %i.df
  br label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit518: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bd, %bb.af, %bb.u, %bb.ay, %bb.aq
  %.pn466 = phi { ptr, i32 } [ %i.fo, %bb.ay ], [ %i.er, %bb.u ], [ %i.fd, %bb.af ], [ %i.gc, %bb.bd ], [ %i.fo, %bb.aq ], [ %lpad.loopexit.split-lp645, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !101008)
  call void @llvm.experimental.noalias.scope.decl(metadata !101009)
  %.val.i.i = load i64, ptr %i.q, align 8, !alias.scope !101010 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i, 0
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit518
  %.val1.i.i = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !101010, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !101010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ck, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i, %bb.cs, %bb.ce, %.invoke, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit503, %bb.br, %bb.o, %._crit_edge
  %lpad.loopexit.split-lp645 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit518

bb.k:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.cj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.cs, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.dc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.cd, %bb.i ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.co, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.cz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.dk, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.cq, %bb.i ] ; 20 uses
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i32 %.sroa.4.0.i.ph, 9
  br i1 %i.dn, label %bb.bx, label %bb.by

._crit_edge:                                      ; preds = %bb.cx, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %.sroa.014.0.lcssa = phi i64 [ 0, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit ], [ %.sroa.014.1593, %bb.cx ] ; 2 uses
  %.sroa.011.0.lcssa = phi i64 [ 0, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit ], [ %.sroa.011.2594, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.do = load i64, ptr %i.s, align 8, !noundef !28
  %i.dp = invoke { ptr, i64 } @_RNvMsk_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impj4__fmt(i64 noundef %i.do, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1      ; 5 uses
  %.not.i480 = icmp slt i64 %i.dq, 0
  br i1 %.not.i480, label %bb.o, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !101011
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 0, i64 %i.dq) #70
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !range !40, !noundef !28
  %i.du = trunc nuw i8 %i.dt to i1                ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.dw = load i8, ptr %i.dv, align 2, !range !38, !noundef !28 ; 6 uses
  switch i8 %i.dw, label %default.unreachable632 [
    i8 0, label %bb.r
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

default.unreachable632:                           ; preds = %bb.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit533, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit521, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit491, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483
  unreachable

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483, %bb.p, %bb.q
  %.sroa.21.sroa.0.0 = phi i32 [ 255, %bb.q ], [ 8, %bb.p ], [ 8, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483 ]
  %.sroa.0175.0 = phi i8 [ 0, %bb.q ], [ 1, %bb.p ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit483 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i8 %.sroa.0175.0, ptr %i.dx, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  store i64 0, ptr %.sroa.5176.0..sroa_idx, align 1
  store i32 %.sroa.21.sroa.0.0, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.24178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 61
  store i32 255, ptr %.sroa.24178.0..sroa_idx, align 1
  store i64 -1, ptr %i.p, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr @2801, ptr %.sroa.4180.0..sroa_idx, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 9, ptr %.sroa.5181.0..sroa_idx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store i64 -3, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dz = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !28
  store ptr %i.dz, ptr %i.o, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.eb, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !28
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.eg = icmp samesign ugt i64 %i.dq, 65535
  br i1 %i.eg, label %bb.t, label %bb.s, !prof !44

bb.s:                                             ; preds = %bb.r
  %i.eh = trunc nuw i64 %i.dq to i16              ; 3 uses
  store ptr @1373, ptr %i.m, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.4193.0..sroa_idx, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.ei, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i16 %i.eh, ptr %.sroa.4198.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.p, ptr %i.ej, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4209.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.o, ptr %i.ek, align 8
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1b_NtCsaKJjC64KgbL_3std4pathNtB6_7DisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4213.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.s, ptr %i.el, align 8
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4217.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.n, ptr %i.em, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4221.0..sroa_idx, align 8
  %i.en = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 5 uses
end_hunk_6
begin_hunk_7_@_RNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB5_16TypedValueParser9parse_refB1M_:bb.a
bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !102430, !noalias !102426, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102431
  br label %common.resume.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.i, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2614, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @801, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2616) #74
          to label %.noexc.i.i unwind label %bb.f, !noalias !102427

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume.i:                                  ; preds = %bb.aa, %bb.z, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %.pn.ph.i, %bb.aa ], [ %.pn.ph.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.h
  %.sroa.023.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !102432
  %.sroa.424.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !102432
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !102432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102426
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !102433
  %i.ab = call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102433 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #70, !noalias !102434
  unreachable

_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i: ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, i8 46, i64 3, i1 false), !noalias !102434
  br label %bb.l

bb.l:                                             ; preds = %_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i
  %.sroa.6.029.i = phi i64 [ 3, %_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i ], [ %.sroa.525.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i ]
  %.sroa.5.0.i = phi ptr [ %i.ab, %_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i ], [ %.sroa.424.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 3, %_RNCNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB9_16TypedValueParser9parse_refs_0s_0B1Q_.exit.i ], [ %.sroa.023.0.copyload.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCskXtk6F4WjxZ_4just.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102435
  store i64 %.sroa.0.0.i, ptr %i.e, align 8, !noalias !102435
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !102435
  %.sroa.6.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.029.i, ptr %.sroa.6.0..sroa_idx17.i, align 8, !noalias !102435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102435
  %.not.i.i = icmp slt i64 %i.p, 0
  br i1 %.not.i.i, label %bb.p, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.ad = icmp eq i64 %i.p, 0                     ; 2 uses
  br i1 %i.ad, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !102436
  %i.ae = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102436 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %bb.w

bb.o:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.p:                                             ; preds = %bb.n, %bb.l
  %.sroa.427.0.ph.i = phi i64 [ 1, %bb.n ], [ 0, %bb.l ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.427.0.ph.i, i64 %i.p) #70
          to label %bb.y unwind label %bb.o, !noalias !102435

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i: ; preds = %bb.w, %bb.m
  %i.ah = phi ptr [ %i.ae, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !noalias !102435
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !102435
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !102435
  %i.ai = icmp eq i64 %i.v, 0                     ; 2 uses
  br i1 %i.ai, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !102437
  %i.aj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.v, i64 noundef range(i64 1, 9) 1) #69, !noalias !102437 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.v) #70
          to label %.noexc.i unwind label %.body.thread48.i, !noalias !102435

.body.thread48.i:                                 ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.u, i64 range(i64 0, -9223372036854775808) %i.v, i1 false), !noalias !102438
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.s, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i
  %.sroa.5.0.i.i.i = phi ptr [ %i.aj, %bb.s ], [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i ] ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !102439
  %i.am = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !102439 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.t, label %_RNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB7_16TypedValueParser9parse_refs_0B1O_.exit, !prof !26

bb.t:                                             ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #70
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !102440

.noexc.i.i.i:                                     ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %.body.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102441
  br label %.body.thread.i

bb.w:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.n, i64 %i.p, i1 false), !noalias !102435
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread39.i

.body.thread.i:                                   ; preds = %bb.v, %bb.u, %.body.thread48.i
  %eh.lpad-body47.i = phi { ptr, i32 } [ %i.al, %.body.thread48.i ], [ %i.ao, %bb.v ], [ %i.ao, %bb.u ] ; 2 uses
  br i1 %i.ad, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.body.thread.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102442
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  unreachable

bb.z:                                             ; preds = %bb.x, %.body.thread.i, %bb.o
  %.pn.ph.i = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %eh.lpad-body47.i, %.body.thread.i ], [ %eh.lpad-body47.i, %bb.x ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ap, label %common.resume.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %.sroa.0.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102443
  br label %common.resume.i

_RNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB7_16TypedValueParser9parse_refs_0B1O_.exit: ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i.i
  store i64 %i.v, ptr %i.am, align 8, !noalias !102440
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !102440
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.v, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !noalias !102440
  %i.aq = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error16value_validationCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2857), !noalias !102435 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102435
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760) %1), !noalias !102435 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.aq, ptr %0, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.c
  %i.as = load i64, ptr %i.s, align 8, !noundef !28
  %i.at = load i32, ptr %i.t, align 8, !range !52, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.as, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB7_16TypedValueParser9parse_refs_0B1O_.exit, %bb.b
  %.sink = phi i32 [ %i.at, %bb.ab ], [ -1, %_RNCNvXsd_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCskXtk6F4WjxZ_4just11indentation11IndentationReENtB7_16TypedValueParser9parse_refs_0B1O_.exit ], [ -1, %bb.b ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.au, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2837, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @511, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2604)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXse_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #29 {
bb.a:
  %i.a = icmp eq i64 %.16.val, %.16.val3
  br i1 %i.a, label %bb.b, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val1), "nonnull"(ptr %.8.val) ]
  %i.b = icmp eq i64 %.16.val, 0
  br i1 %i.b, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i
  %i.c = add nuw i64 %.sroa.01.09.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %.16.val
  br i1 %exitcond.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.09.i.i = phi i64 [ %i.c, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.sroa.01.09.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.8.val1, i64 %.sroa.01.09.i.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val5.i.i = load i64, ptr %i.f, align 8, !noundef !28 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val7.i.i = load i64, ptr %i.g, align 8, !noundef !28
  %i.h = icmp eq i64 %.val5.i.i, %.val7.i.i
  br i1 %i.h, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val6.i.i = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val6.i.i, i64 %.val5.i.i)
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtB6_6string6StringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %.lr.ph.i.i, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %.lr.ph.i.i ], [ false, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.i.i ], [ true, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsj6eKBz9Db1c_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsj6eKBz9Db1c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsf_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEINtNtCsj6eKBz9Db1c_4core7convert4FromAB17_j1_E4fromB1b_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.7.sroa.15.i.i.i.i = alloca [7 x i8], align 1 ; 8 uses
  %.sroa.15.i.i.i.i = alloca [7 x i8], align 1    ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.14.i.i.i = alloca [7 x i8], align 1      ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 19 uses
  %.sroa.4.i.i = alloca [72 x i8], align 8        ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102533)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !102534
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !102534 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.loopexit70.i.i.i, !prof !44

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #70
          to label %.noexc.i.i unwind label %bb.ac, !noalias !102534

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

.loopexit70.i.i.i:                                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store ptr null, ptr %i.g, align 8, !noalias !102534
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 362
  store i16 0, ptr %i.h, align 2, !noalias !102534
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %.sroa.4.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.32..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !alias.scope !102535, !noalias !102536
  %.sroa.4141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4141.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i.i, i64 72, i1 false), !noalias !102534
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102534
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.5.sroa.15.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 2 uses
  %.sroa.7.sroa.11.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.7.sroa.13.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.7.sroa.15.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i.i, %.loopexit70.i.i.i
  %.promoted.i.i142.i.i = phi i64 [ -2, %.loopexit70.i.i.i ], [ %.promoted.i.i143.i.i, %.loopexit.i.i.i ] ; 4 uses
  %.sroa.011.0.i.i = phi i64 [ 0, %.loopexit70.i.i.i ], [ %i.ha, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i64 [ 0, %.loopexit70.i.i.i ], [ %.sroa.8.2.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i = phi ptr [ %i.e, %.loopexit70.i.i.i ], [ %.sroa.0.2.i.i, %.loopexit.i.i.i ] ; 8 uses
  %.sroa.0.056.i.i.i = phi ptr [ %i.e, %.loopexit70.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102538)
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !102538, !noalias !102537 ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !102538, !noalias !102537
  %.sroa.0.0.copyload1.i.i.i.fr.i.i.i.i = freeze i64 %.sroa.0.0.copyload1.i.i.i.i.i ; 8 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.fr.i.i.i.i, -1
  %i.o = icmp ne i64 %.sroa.0.0.copyload1.i.i.i.fr.i.i.i.i, -2
  %.promoted29.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !102538, !noalias !102537 ; 5 uses
  br i1 %.not.i.i.i.i.i, label %.split.us.i.i.i.i, label %.split.preheader.i.i.i.i

.split.preheader.i.i.i.i:                         ; preds = %bb.c
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i = load ptr, ptr %.sroa.4141.0..sroa_idx.i.i, align 8, !alias.scope !102538, !noalias !102537
  %.sroa.7.sroa.0.0.copyload53.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !102537
  %.sroa.7.sroa.11.0.copyload56.i.i.i.i = load i64, ptr %.sroa.7.sroa.11.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !102537
  %.sroa.7.sroa.13.0.copyload61.i.i.i.i = load i8, ptr %.sroa.7.sroa.13.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !102537
  %.sroa.5.sroa.11.0.copyload.i.pre.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !102538, !noalias !102537
  %.sroa.5.sroa.13.0.copyload.i.pre.i.i.i = load i8, ptr %i.l, align 8, !alias.scope !102538, !noalias !102537
  br label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.15.i.i.i.i)
  %.sroa.5.sroa.0.0.copyload75.i.i.i.i = load ptr, ptr %.sroa.4141.0..sroa_idx.i.i, align 8, !alias.scope !102538, !noalias !102537 ; 2 uses
  %.sroa.5.sroa.11.0.copyload77.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !102538, !noalias !102537 ; 2 uses
  %.sroa.5.sroa.13.0.copyload79.i.i.i.i = load i8, ptr %i.l, align 8, !alias.scope !102538, !noalias !102537 ; 2 uses
  store i64 -2, ptr %i.c, align 8, !alias.scope !102538, !noalias !102537
  switch i64 %.promoted.i.i142.i.i, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %.thread.i.i.i
  ]

bb.d:                                             ; preds = %.split.us.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102539)
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %i.n, %.promoted29.i.i.i.i
  br i1 %.not.i.i.i.us.i.i.i.i, label %.thread.i.i.i, label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i.us.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i.us.i.i.i.i: ; preds = %bb.d
  store i64 1, ptr %i.i, align 8, !alias.scope !102540, !noalias !102537
  %i.p = icmp eq i64 %.promoted29.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.p)
  br label %.thread.i.i.i

bb.e:                                             ; preds = %.split.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.15.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !102541
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.15.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102543)
  %.not.i.i.i.i.i.us.i.i.i.i = icmp eq i64 %i.n, %.promoted29.i.i.i.i
  br i1 %.not.i.i.i.i.i.us.i.i.i.i, label %.split31.i.i.i.i, label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.us.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i.i.i.us.i.i.i.i: ; preds = %bb.e
  store i64 1, ptr %i.i, align 8, !alias.scope !102544, !noalias !102537
  %i.q = icmp eq i64 %.promoted29.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.q)
  br label %.split31.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i, %.split.preheader.i.i.i.i
  %.sroa.5.sroa.13.0.copyload.i.i.i.i = phi i8 [ %.sroa.7.sroa.13.1.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i ], [ %.sroa.5.sroa.13.0.copyload.i.pre.i.i.i, %.split.preheader.i.i.i.i ]
  %.sroa.5.sroa.11.0.copyload.i.i.i.i = phi i64 [ %.sroa.7.sroa.11.1.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i ], [ %.sroa.5.sroa.11.0.copyload.i.pre.i.i.i, %.split.preheader.i.i.i.i ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i = phi ptr [ %i.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i ], [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i, %.split.preheader.i.i.i.i ]
  %i.r = phi i64 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i ], [ %.promoted29.i.i.i.i, %.split.preheader.i.i.i.i ] ; 3 uses
  %.sroa.0.0.copyload1.i.i.i28.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.fr.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree7set_val9SetValZSTEEBG_.exit.i.i.i.i ], [ %.promoted.i.i142.i.i, %.split.preheader.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.15.i.i.i.i)
  store i64 -2, ptr %i.c, align 8, !alias.scope !102538, !noalias !102537
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28.i.i.i.i, -2
  br i1 %.not.i.i.i.i, label %bb.f, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i

bb.f:                                             ; preds = %.split.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102539)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.n, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i: ; preds = %bb.f
  store i64 1, ptr %i.i, align 8, !alias.scope !102540, !noalias !102537
  %i.s = icmp eq i64 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.15.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.15.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, i64 7, i1 false), !alias.scope !102545, !noalias !102541
  br label %bb.g

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i: ; preds = %.split.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.15.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.15.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !102541
  %.not7.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28.i.i.i.i, -1
  br i1 %.not7.i.i.i.i, label %.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i
  %.sroa.7.sroa.13.1.i.i.i.i = phi i8 [ %.sroa.7.sroa.13.0.copyload61.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i ], [ %.sroa.5.sroa.13.0.copyload.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i ] ; 6 uses
  %.sroa.7.sroa.11.1.i.i.i.i = phi i64 [ %.sroa.7.sroa.11.0.copyload56.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i ], [ %.sroa.5.sroa.11.0.copyload.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i ] ; 9 uses
  %.sroa.7.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload53.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i ] ; 8 uses
  %i.t = phi i64 [ 1, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.fr.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.thread16.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i28.i.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathKj1_ENCINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB2p_8BTreeSetB1q_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.15.i.i.i.i, i64 7, i1 false), !noalias !102546
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.15.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102543)
end_hunk_7
begin_hunk_8_@_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReNtNtCskXtk6F4WjxZ_4just3set3SetENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB19_:bb.a
  %i.bi = getelementptr inbounds nuw [256 x i8], ptr %.sroa.06.0.ph.i.i, i64 %.sroa.10.0.ph.i.i
  store ptr %.sroa.07.0.i.i, ptr %i.g, align 8, !alias.scope !102763
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !102763
  store i64 %.sroa.78.0.i.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !102763
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [39 x i8], align 1            ; 2 uses
  %.sroa.518 = alloca [39 x i8], align 1          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !28 ; 2 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !103, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !103, !noundef !28
  %i.o = icmp eq i8 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.q = load i8, ptr %i.p, align 1, !range !103
  %i.r = icmp eq i8 %i.q, 2
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.t = load i8, ptr %i.s, align 1, !range !103
  %i.u = icmp eq i8 %i.t, 2
  %or.cond7 = select i1 %or.cond, i1 %i.u, i1 false
  %.pre40 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %.pre40, %bb.d ], [ %.pre40, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !126, !noundef !28 ; 2 uses
  %.not = icmp eq i8 %i.x, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %bcmp = tail call i32 @bcmp(ptr nonnull %.pre40, ptr nonnull %i.y, i64 %i.g)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %bb.u, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.420.0..sroa_idx, i64 39, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !range !40, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !103, !noundef !28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.af = load i8, ptr %i.ae, align 1, !range !103, !noundef !28
  %i.ag = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !126, !noundef !28 ; 2 uses
  %.not26 = icmp eq i8 %i.ai, -1
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.425.0..sroa_idx, i64 39, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !range !40, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i8, ptr %i.al, align 8, !range !103, !noundef !28
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !103, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !102828
  store ptr %i.v, ptr %i.e, align 8, !noalias !102829
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx27, align 8, !noalias !102829
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.x, ptr %.sroa.528.0..sroa_idx, align 8, !noalias !102829
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx29, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, i64 39, i1 false)
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx30, align 8, !noalias !102829
  %.sroa.8.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.af, ptr %.sroa.8.0..sroa_idx31, align 1, !noalias !102829
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.ab, ptr %.sroa.9.0..sroa_idx, align 2, !noalias !102829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102828
  store ptr %i.ag, ptr %i.d, align 8, !alias.scope !102830, !noalias !102831
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %.sroa.433.0..sroa_idx, align 8, !alias.scope !102830, !noalias !102831
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.ai, ptr %.sroa.534.0..sroa_idx, align 8, !alias.scope !102830, !noalias !102831
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, i64 39, i1 false)
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 %i.am, ptr %.sroa.736.0..sroa_idx, align 8, !alias.scope !102830, !noalias !102831
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 %i.ao, ptr %.sroa.837.0..sroa_idx, align 1, !alias.scope !102830, !noalias !102831
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 %i.ak, ptr %.sroa.938.0..sroa_idx, align 2, !alias.scope !102830, !noalias !102831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102832
  call void @_RNvXsj_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !102833
  %i.ap = load i8, ptr %i.b, align 8, !range !133, !noalias !102832, !noundef !28 ; 2 uses
  %.not16.i.i.i.i.i.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not16.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi i8 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bs, %bb.t ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i, align 1, !noalias !102832 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !102832 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !102832 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !102832 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !102832 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102834
  call void @_RNvXsj_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !102835
  %i.ar = load i8, ptr %i.a, align 8, !range !133, !noalias !102834, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !102834 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !102834 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !102834 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !102834 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !102834 ; 2 uses
  %i.as = icmp samesign ugt i8 %i.aq, 5
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nsw i64 %i.at, -5
  %i.av = select i1 %i.as, i64 %i.au, i64 0       ; 2 uses
  %i.aw = icmp samesign ult i8 %i.ar, 6           ; 2 uses
  %i.ax = zext nneg i8 %i.ar to i64
  %i.ay = add nsw i64 %i.ax, -5
  %i.az = select i1 %i.aw, i64 0, i64 %i.ay
  %i.ba = icmp eq i64 %i.av, %i.az
  br i1 %i.ba, label %bb.k, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  switch i64 %i.av, label %bb.t [
    i64 0, label %bb.l
    i64 4, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.aw, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp eq i8 %i.aq, %i.ar
  br i1 %i.bb, label %bb.n, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %.split31.i.i.i.i.i.i.i.i.i
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %.split29.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bc, label %.split27.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split27.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !102836, !noalias !102837
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.be = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !102838, !noalias !102837
  %i.bf = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bg = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaKJjC64KgbL_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split31.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.n
  %i.bh = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i.i = freeze i1 %i.bh
  br i1 %cond.fr32.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.bi = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bi, label %.split33.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split33.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !102839, !noalias !102837
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.r:                                             ; preds = %bb.n
  %i.bk = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !102840, !noalias !102837
  %i.bl = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bm = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split29.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.n
  %i.bn = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i
  %cond.fr30.i.i.i.i.i.i.i.i.i = freeze i1 %i.bn
  br i1 %cond.fr30.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i), !alias.scope !102841, !noalias !102837
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.s:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %.split35.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

.split35.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !102842, !noalias !102843
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaKJjC64KgbL_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i), !alias.scope !102844, !noalias !102837
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %bb.t, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaKJjC64KgbL_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102832
  call void @_RNvXsj_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !102828
  %i.bs = load i8, ptr %i.b, align 8, !range !133, !noalias !102832, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bs, -1
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaKJjC64KgbL_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i, %bb.s, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.split33.i.i.i.i.i.i.i.i.i, %bb.q, %.split31.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskXtk6F4WjxZ_4just.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %.split27.i.i.i.i.i.i.i.i.i, %bb.o, %bb.m, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102832
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECskXtk6F4WjxZ_4just.exit

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102845
  call void @_RNvXsj_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !102828
  %i.bt = load i8, ptr %i.c, align 8, !range !133, !noalias !102845, !noundef !28
  %.not4.i.not.i.i.i = icmp eq i8 %i.bt, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102845
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECskXtk6F4WjxZ_4just.exit

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %.not4.i.not.i.i.i, %.loopexit.i.i.i.i ], [ false, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECskXtk6F4WjxZ_4just.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !102828
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i.i.i.i, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevNtNtCsaKJjC64KgbL_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECskXtk6F4WjxZ_4just.exit ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsm_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1352) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1352) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !97, !noundef !28 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !97, !noundef !28 ; 4 uses
  %i.g = icmp ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -2
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %bb.az
    i64 3, label %bb.bh
    i64 4, label %bb.bj
    i64 6, label %bb.bk
    i64 8, label %bb.bm
    i64 10, label %bb.bo
    i64 12, label %bb.bp
    i64 15, label %bb.bq
    i64 24, label %bb.bs
    i64 26, label %bb.bu
    i64 29, label %bb.bw
  ]

bb.c:                                             ; preds = %bb.bu, %bb.bs, %bb.bk, %bb.bh, %bb.bf, %bb.ax, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split67, %.split66, %.split65, %.split64, %.split63, %.split62, %.split61, %.split60, %.split59, %.split, %bb.bq, %bb.bm, %bb.bg, %bb.bd, %bb.ba, %bb.be, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.aq, %bb.ao, %bb.al, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e, %bb.aw, %bb.at, %bb.ap, %bb.am, %bb.aj, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.m, %bb.i, %bb.f, %bb.b, %bb.a, %bb.bv, %bb.bt, %bb.br, %bb.bn, %bb.bl, %bb.bi, %bb.bw, %bb.bp, %bb.bo, %bb.bj
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.mux85, %bb.bu ], [ %i.fh, %bb.bi ], [ false, %.split60 ], [ %.mux77, %bb.bf ], [ %i.fk, %bb.bj ], [ %i.fr, %bb.bl ], [ false, %.split59 ], [ %.mux79, %bb.bh ], [ %i.fx, %bb.bn ], [ false, %.split ], [ %i.ga, %bb.bo ], [ %i.gd, %bb.bp ], [ %i.gn, %bb.br ], [ false, %bb.bm ], [ %i.gu, %bb.bt ], [ false, %bb.bq ], [ %.mux81, %bb.bk ], [ %i.hb, %bb.bv ], [ false, %bb.be ], [ %.mux83, %bb.bs ], [ %i.he, %bb.bw ], [ false, %.split73 ], [ false, %.split72 ], [ false, %.split71 ], [ false, %.split70 ], [ false, %.split69 ], [ false, %.split68 ], [ false, %.split67 ], [ false, %.split66 ], [ false, %.split65 ], [ false, %.split64 ], [ false, %.split63 ], [ false, %.split62 ], [ %i.eh, %bb.ay ], [ false, %bb.f ], [ false, %.split61 ], [ false, %bb.av ], [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ao ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.aw ], [ false, %bb.at ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.w ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.m ], [ false, %bb.i ], [ %i.fa, %bb.bg ], [ false, %bb.bb ], [ %.mux, %bb.ax ], [ false, %bb.bd ], [ false, %bb.ba ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.p = load i8, ptr %i.o, align 8, !range !45, !noundef !28
  %.not33 = icmp eq i8 %i.p, -1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.r = load i8, ptr %i.q, align 8, !range !45, !noundef !28
  %i.s = icmp eq i8 %i.r, -1                      ; 2 uses
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.c, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.g, label %bb.c

.split:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.t) #75
  br i1 %i.u, label %bb.g, label %bb.c

bb.g:                                             ; preds = %.split, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i64, ptr %i.v, align 8, !range !37, !noundef !28
  %.not35 = icmp eq i64 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = load i64, ptr %i.x, align 8, !range !37, !noundef !28
  %i.z = icmp eq i64 %i.y, -1                     ; 2 uses
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.c, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.k, label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !28
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %.split59, label %bb.c

.split59:                                         ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !28, !noundef !28
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.ag, i64 %i.ab)
  %i.aj = icmp eq i32 %bcmp, 0
  br i1 %i.aj, label %bb.k, label %bb.c

bb.k:                                             ; preds = %.split59, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !39, !noundef !28
  %.not37 = icmp eq i64 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !39, !noundef !28
  %i.ap = icmp eq i64 %i.ao, -1                   ; 2 uses
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.ap, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %i.ap, label %bb.o, label %bb.c

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs8_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aq) #75
  br i1 %i.ar, label %.split60, label %bb.c

.split60:                                         ; preds = %bb.n
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.an) #75
  br i1 %i.as, label %bb.o, label %bb.c

bb.o:                                             ; preds = %.split60, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !37, !noundef !28
  %.not39 = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !37, !noundef !28
  %i.ax = icmp eq i64 %i.aw, -1                   ; 2 uses
  br i1 %.not39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.c, label %.split61

bb.q:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.r, label %bb.c

.split61:                                         ; preds = %bb.p
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.av) #75
  br i1 %i.ay, label %bb.r, label %bb.c

bb.r:                                             ; preds = %.split61, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bb = load i8, ptr %i.ba, align 8, !range !45, !noundef !28
  %.not41 = icmp eq i8 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.bd = load i8, ptr %i.bc, align 8, !range !45, !noundef !28
  %i.be = icmp eq i8 %i.bd, -1                    ; 2 uses
  br i1 %.not41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.be, label %bb.c, label %.split62

bb.t:                                             ; preds = %bb.r
  br i1 %i.be, label %bb.u, label %bb.c

.split62:                                         ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXs8_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bf) #75
  br i1 %i.bg, label %bb.u, label %bb.c

bb.u:                                             ; preds = %.split62, %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = trunc nuw i64 %i.a to i1
end_hunk_8
