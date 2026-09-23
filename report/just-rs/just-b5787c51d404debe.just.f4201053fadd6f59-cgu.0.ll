Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceNCINvXNtNtCskXtk6F4WjxZ_4just8platform4unixNtB1f_8PlatformNtNtB1h_18platform_interface17PlatformInterface22install_signal_handlerNCNvMNtB1h_14signal_handlerNtB3h_13SignalHandler7install0E0uEB1h_:bb.a
default.unreachable:                              ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.eq = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.eo, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.et = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  store ptr %i.et, ptr %i.h, align 8, !alias.scope !15404, !noalias !15403
  store i8 3, ptr %i.a, align 8, !alias.scope !15404, !noalias !15403
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ag unwind label %bb.c

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just14signal_handlerNtB4_13SignalHandler7install0B6_.exit.i

bb.ah:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.ai:                                            ; preds = %bb.ac, %.loopexit.split-lp.i.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.ac ], [ %i.i, %bb.c ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ]
  %.val7.i = load i32, ptr %i.g, align 4, !range !74, !noundef !28
  %i.ev = call noundef i32 @close(i32 noundef %.val7.i) #70 ; 0 uses
  resume { ptr, i32 } %.pn.i

_RNCINvXNtNtCskXtk6F4WjxZ_4just8platform4unixNtB7_8PlatformNtNtB9_18platform_interface17PlatformInterface22install_signal_handlerNCNvMNtB9_14signal_handlerNtB27_13SignalHandler7install0E0B9_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val.i = load i32, ptr %i.g, align 4, !range !74, !noundef !28
  %i.ew = call noundef i32 @close(i32 noundef %.val.i) #70 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void asm sideeffect "", "~{memory}"() #70, !srcloc !105
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCINvXNtNtCskXtk6F4WjxZ_4just8platform4unixNtB23_8PlatformNtNtB25_18platform_interface17PlatformInterface22install_signal_handlerNCNvMNtB25_14signal_handlerNtB45_13SignalHandler7install0E0uEs_000uEB25_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !15407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15407
  call void asm sideeffect "", "~{memory}"() #70, !srcloc !105
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB22_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB24_5error5ErrorEEs_000uEB24_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !15410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15410
  call void asm sideeffect "", "~{memory}"() #70, !srcloc !105
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1e_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB1g_5error5ErrorEEB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15431)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !15431, !noalias !15432, !noundef !28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.m = load ptr, ptr %i.l, align 8, !noalias !15433, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !15431, !noalias !15432, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile10run_recipe(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %i.f, i1 noundef zeroext true, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.v)
          to label %bb.c unwind label %bb.b, !noalias !15431, !inline_history !15414

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBI_8Justfile16run_dependencies00EBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %1) #72, !noalias !15432, !inline_history !15414
  resume { ptr, i32 } %i.w

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15436)
  %i.x = icmp eq i64 %i.d, 0
  br i1 %i.x, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i.i.i ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15438)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !15439, !noalias !15440, !nonnull !28, !noundef !28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !15439, !noalias !15440, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15441)
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15443)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !15444, !noalias !15445 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !15444, !noalias !15445, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !15446, !inline_history !15414
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.ae, %.val1.i.i.i.i.i.i.i
  br i1 %i.ah, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !15439, !noalias !15440 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15445, !inline_history !15414
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i: ; preds = %bb.e, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.ak = icmp eq i64 %i.z, %i.d
  br i1 %i.ak, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5value5ValueEBF_.exit.i.i.i.i.i, %bb.c
  %.val2.i.i.i = load i64, ptr %1, align 8, !alias.scope !15447, !noalias !15432 ; 2 uses
  %i.al = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.al, label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  %i.am = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15440, !inline_history !15414
  br label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit

_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies00B8_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5value5ValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, %bb.f
  tail call void asm sideeffect "", "~{memory}"() #70, !srcloc !105
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
  %i.t = alloca [104 x i8], align 8               ; 22 uses
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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !15588
  %i.z = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15588 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.g, !prof !26

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #71
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !15589
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %.thread157

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #74
          to label %.thread157 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15590
  store i64 0, ptr %i.r, align 8, !noalias !15590
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !noalias !15590
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !noalias !15590
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.4.0.copyload) ]
  %i.ai = icmp ult i64 %.sroa.03.sroa.5.sroa.0.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.ai)
  %.idx = shl nuw nsw i64 %.sroa.03.sroa.5.sroa.0.0.copyload, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.sroa.4.0.copyload, i64 %.idx ; 4 uses
  %i.ak = icmp sgt ptr %.sroa.03.sroa.0.0.copyload, inttoptr (i64 -1 to ptr)
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15590
  store ptr %.sroa.03.sroa.4.0.copyload, ptr %i.q, align 8, !noalias !15590
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 11 uses
  store ptr %.sroa.03.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15590
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15590
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15590
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
  %eh.lpad-body33 = phi { ptr, i32 } [ %i.hb, %bb.cl ], [ %i.hh, %bb.cq ], [ %.pn27.i219423, %bb.bb ], [ %.pn27.i219423, %bb.ba ], [ %.pn27.i219423, %bb.bc ], [ %.pn.pn.i, %bb.az ], [ %lpad.loopexit.split-lp231, %.thread420 ], [ %.pn.pn.i, %.body75.thread ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #72, !noalias !15591, !inline_history !15466
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #72
          to label %.body30 unwind label %bb.cj, !noalias !15591, !inline_history !15466

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph, %bb.cs
  %i.bc = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.hj, %bb.cs ]
  %i.bd = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.hl, %bb.cs ] ; 4 uses
  %.sroa.448.8..sroa.42.0.copyload.i77308 = phi ptr [ %.sroa.03.sroa.4.0.copyload, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.lr.ph ], [ %i.be, %bb.cs ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 32 ; 13 uses
  %.sroa.5.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx, align 8, !noalias !15592 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit
  %.sroa.880.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, i64 16
  %.sroa.079.0.copyload = load ptr, ptr %.sroa.448.8..sroa.42.0.copyload.i77308, align 8, !noalias !15592, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.880.0..sroa.448.8..sroa.42.0.copyload.i77.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15590
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.6.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.7.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.8.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.9.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.5.sroa.10.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %i.o, align 8, !noalias !15590
  %i.bf = load ptr, ptr %.sroa.03.sroa.5.sroa.4.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bf, ptr %i.am, align 8, !noalias !15590
  %i.bg = load ptr, ptr %.sroa.03.sroa.5.sroa.5.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bg, ptr %i.an, align 8, !noalias !15590
  %i.bh = load ptr, ptr %.sroa.03.sroa.5.sroa.6.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bh, ptr %i.ao, align 8, !noalias !15590
  store ptr %.sroa.079.0.copyload, ptr %i.ap, align 8, !noalias !15590
  %i.bi = load ptr, ptr %.sroa.03.sroa.5.sroa.7.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bi, ptr %i.aq, align 8, !noalias !15590
  %i.bj = load ptr, ptr %.sroa.03.sroa.5.sroa.8.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bj, ptr %i.ar, align 8, !noalias !15590
  %i.bk = load ptr, ptr %.sroa.03.sroa.5.sroa.9.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bk, ptr %i.as, align 8, !noalias !15590
  %i.bl = load ptr, ptr %.sroa.03.sroa.5.sroa.10.0.copyload, align 8, !noalias !15591, !nonnull !28, !align !35, !noundef !28
  store ptr %i.bl, ptr %i.at, align 8, !noalias !15590
  %i.bm = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !15593
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.bd, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.z, ptr %i.k, align 8, !noalias !15594
  %i.bo = load atomic i64, ptr @_RNvNCNvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !15594 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15594
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @563, i64 noundef 14)
          to label %.noexc74 unwind label %.body75.thread412

.noexc74:                                         ; preds = %bb.j
  %i.bq = load i64, ptr %i.b, align 8, !range !37, !noalias !15594, !noundef !28 ; 5 uses
  %.not.i70 = icmp eq i64 %i.bq, -1
  br i1 %.not.i70, label %_RNCNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB17_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB19_5error5ErrorEE00B19_.exit.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.br = add i64 %i.bo, -1
  br label %_RNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB15_8Justfile16run_dependencies00INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtB17_5error5ErrorEE0B17_.exit

bb.l:                                             ; preds = %.noexc74
  %.sroa.4.0.copyload.i72 = load ptr, ptr %.sroa.4.0..sroa_idx.i71, align 8, !noalias !15594, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i73, align 8, !noalias !15594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15595
end_hunk_0
begin_hunk_1_@_RINvNtNtCsaKJjC64KgbL_3std6thread6scoped5scopeNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBN_8Justfile16run_dependencies0INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtBP_5error5ErrorEEBP_:bb.a
  %i.ei = load ptr, ptr %i.j, align 8, !alias.scope !15616, !noalias !15594, !nonnull !28, !noundef !28
  %i.ej = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !15617
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.au, label %bb.ck

bb.au:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2n_.exit60
  fence acquire, !noalias !15594
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #74
          to label %bb.ck unwind label %.thread420

.body29.i.thread:                                 ; preds = %bb.ao, %bb.ak, %.body29.i, %bb.aw
  %eh.lpad-body30.i178 = phi { ptr, i32 } [ %i.dw, %.body29.i ], [ %i.en, %bb.aw ], [ %i.dr, %bb.ak ], [ %i.ea, %bb.ao ] ; 2 uses
  %i.el = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !15618
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.av, label %.thread168

bb.av:                                            ; preds = %.body29.i.thread
  fence acquire, !noalias !15594
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.g) #74
          to label %.thread168 unwind label %bb.ax

bb.aw:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvNtNtCsaKJjC64KgbL_3std6thread9lifecycle15spawn_uncheckedNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1H_8Justfile16run_dependencies00INtNtB4_6result6ResultuNtNtB1J_5error5ErrorEEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.f) #72
          to label %.body29.i.thread unwind label %bb.ax, !noalias !15594, !inline_history !15491

bb.ax:                                            ; preds = %bb.y, %bb.av, %bb.bc, %bb.ay, %bb.aw
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15594, !inline_history !15491
  unreachable

bb.ay:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread9spawnhook15ChildSpawnHooksECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #72
          to label %.thread168 unwind label %bb.ax, !noalias !15594, !inline_history !15491

bb.az:                                            ; preds = %.body75
  br i1 %.sroa.017.2.i, label %bb.ba, label %.body32

.body75.thread.thread:                            ; preds = %bb.m, %bb.n, %.body75.thread412
  %.pn27.i220.ph = phi { ptr, i32 } [ %lpad.loopexit230, %.body75.thread412 ], [ %i.bs, %bb.n ], [ %i.bs, %bb.m ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBI_8Justfile16run_dependencies00EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.o) #72, !noalias !15608, !inline_history !15491
  br label %bb.ba

.body75.thread:                                   ; preds = %.body75
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBI_8Justfile16run_dependencies00EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.o) #72, !noalias !15608, !inline_history !15491
  br i1 %.sroa.017.2.i, label %bb.ba, label %.body32

bb.ba:                                            ; preds = %.body75.thread.thread, %.body75.thread, %bb.az
  %.pn27.i219423 = phi { ptr, i32 } [ %.pn.pn.i, %.body75.thread ], [ %.pn.pn.i, %bb.az ], [ %.pn27.i220.ph, %.body75.thread.thread ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15619)
  %i.ep = load ptr, ptr %i.k, align 8, !alias.scope !15619, !noalias !15594, !noundef !28 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.body32, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.er = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !noalias !15620
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bc, label %.body32

bb.bc:                                            ; preds = %bb.bb
  fence acquire, !noalias !15594
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #74
          to label %.body32 unwind label %bb.ax

bb.bd:                                            ; preds = %bb.h
  call void @llvm.trap(), !noalias !15591
  unreachable

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit, %bb.cs, %bb.g
  %.sroa.59.0.copyload.i = phi i64 [ 0, %bb.g ], [ %i.bd, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit ], [ %i.hl, %bb.cs ] ; 3 uses
  %.sroa.448.8..sroa.42.0.copyload.i78167 = phi ptr [ %.sroa.03.sroa.4.0.copyload, %bb.g ], [ %i.be, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit ], [ %i.aj, %bb.cs ] ; 2 uses
  %i.et = ptrtoint ptr %i.aj to i64
  %i.eu = ptrtoint ptr %.sroa.448.8..sroa.42.0.copyload.i78167 to i64
  %i.ev = sub nuw i64 %i.et, %i.eu
  %i.ew = lshr exact i64 %i.ev, 5
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtNtBJ_3vec3VecNtNtB1g_5value5ValueEEEB1g_(ptr noalias nofree noundef nonnull align 8 %.sroa.448.8..sroa.42.0.copyload.i78167, i64 noundef %i.ew), !noalias !15621
  %i.ex = icmp eq ptr %.sroa.03.sroa.0.0.copyload, null
  br i1 %i.ex, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit, label %bb.be

bb.be:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread
  %i.ey = shl nuw i64 %i.af, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.sroa.4.0.copyload, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15621
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit

bb.bf:                                            ; preds = %bb.ch, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body30

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit: ; preds = %bb.be, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15590
  %.sroa.07.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !15590 ; 2 uses
  %.sroa.48.0.copyload.i = load ptr, ptr %i.ag, align 8, !noalias !15590, !nonnull !28, !noundef !28 ; 5 uses
  %i.fa = icmp ult i64 %.sroa.59.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.fa)
  %.idx322 = mul nuw nsw i64 %.sroa.59.0.copyload.i, 24
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.idx322 ; 3 uses
  %i.fc = icmp sgt i64 %.sroa.07.0.copyload.i, -1
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15590
  store ptr %.sroa.48.0.copyload.i, ptr %i.n, align 8, !noalias !15590
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 9 uses
  store ptr %.sroa.48.0.copyload.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !15590
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.07.0.copyload.i, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !15590
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fb, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !15590
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
  %eh.lpad-body39 = phi { ptr, i32 } [ %lpad.phi225, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i ], [ %i.ff, %bb.bg ], [ %i.fv, %bb.bq ], [ %i.fv, %bb.br ], [ %lpad.phi225, %bb.bu ], [ %i.gr, %bb.cb ], [ %i.gr, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.gk, %bb.bw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #72
          to label %.body30 unwind label %bb.cj, !noalias !15591, !inline_history !15466

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph, %bb.cg
  %.sroa.48.0.copyload.i84319 = phi ptr [ %.sroa.48.0.copyload.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.lr.ph ], [ %i.fg, %bb.cg ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i84319, i64 24 ; 10 uses
  %.sroa.085.0.copyload86 = load ptr, ptr %.sroa.48.0.copyload.i84319, align 8, !noalias !15622 ; 2 uses
  %.sroa.887.0..sroa.48.0.copyload.i84.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i84319, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887.0..sroa.48.0.copyload.i84.sroa_idx, i64 16, i1 false), !noalias !15622
  %.not50.i = icmp eq ptr %.sroa.085.0.copyload86, null
  br i1 %.not50.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15590
  store ptr %.sroa.085.0.copyload86, ptr %i.m, align 8, !noalias !15590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.887, i64 16, i1 false), !noalias !15590
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !15623)
  %i.fh = load i64, ptr %i.fe, align 8, !alias.scope !15623, !noalias !15624, !noundef !28
  invoke void @_RNvMs0_NtNtNtCsaKJjC64KgbL_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.fh)
          to label %bb.bk unwind label %.loopexit221, !noalias !15625

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
  call void @llvm.experimental.noalias.scope.decl(metadata !15626), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15627), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15628), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15629), !noalias !15591
  %i.fi = load ptr, ptr %i.m, align 8, !alias.scope !15630, !noalias !15624, !nonnull !28, !noundef !28
  %i.fj = atomicrmw sub ptr %i.fi, i64 1 release, align 8, !noalias !15631
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire, !noalias !15591
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i unwind label %bb.bt, !noalias !15624

bb.bk:                                            ; preds = %bb.bh
  %.val.i = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15623, !noalias !15624, !nonnull !28, !noundef !28 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.fm = cmpxchg ptr %i.fl, i64 1, i64 -1 acquire monotonic, align 8, !noalias !15625
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.fm, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i, !prof !32

_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i: ; preds = %bb.bk
  %i.fn = load atomic i64, ptr %.val.i acquire, align 8, !noalias !15625
  %i.fo = icmp eq i64 %i.fn, 1
  store atomic i64 1, ptr %i.fl release, align 8, !noalias !15625
  br i1 %i.fo, label %bb.bl, label %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i, !prof !33

_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i: ; preds = %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i, %bb.bk
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1047, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1049) #71
          to label %bb.bm unwind label %.loopexit.split-lp222, !noalias !15625

bb.bl:                                            ; preds = %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.i
  %i.fp = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15623, !noalias !15624, !nonnull !28, !noundef !28 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.fq, align 8, !noalias !15625 ; 4 uses
  store i64 -3, ptr %i.fq, align 8, !noalias !15625
  %.not.i41 = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i41, label %bb.bp, label %bb.bn, !prof !44

bb.bm:                                            ; preds = %bb.bp, %_RNvMsD_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9is_uniqueB2a_.exit.thread.i
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.690.8.copyload91 = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !15632 ; 6 uses
  %.sroa.992.8..sroa.5.0..sroa_idx.i42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %.sroa.992.8.copyload93 = load ptr, ptr %.sroa.992.8..sroa.5.0..sroa_idx.i42.sroa_idx, align 8, !noalias !15632 ; 8 uses
  %.sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %.sroa.10.sroa.0114.0.copyload = load i64, ptr %.sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx, align 8, !noalias !15632
  %.sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %2 = load <2 x ptr>, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx, align 8, !noalias !15632
  %.sroa.10.sroa.5.sroa.6.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %3 = load <2 x ptr>, ptr %.sroa.10.sroa.5.sroa.6.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !15632
  %.sroa.10.sroa.5.sroa.8.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 88
  %i.fr = load <2 x ptr>, ptr %.sroa.10.sroa.5.sroa.8.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !15632
  %.sroa.10.sroa.5.sroa.10.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %.sroa.10.sroa.5.sroa.10.0.copyload = load ptr, ptr %.sroa.10.sroa.5.sroa.10.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !15632
  %.sroa.10.sroa.5.sroa.11.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11.0..sroa.10.sroa.5.0..sroa.10.8..sroa.5.0..sroa_idx.i42.sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !noalias !15632
  call void @llvm.experimental.noalias.scope.decl(metadata !15633), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15634), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15635), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15636), !noalias !15591
  %i.fs = load ptr, ptr %i.m, align 8, !alias.scope !15637, !noalias !15624, !nonnull !28, !noundef !28
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !15638
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.bo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire, !noalias !15591
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i unwind label %bb.bq, !noalias !15624

bb.bp:                                            ; preds = %bb.bl
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #71
          to label %bb.bm unwind label %.loopexit.split-lp222, !noalias !15625

bb.bq:                                            ; preds = %bb.bo
  %i.fv = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15639), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15640), !noalias !15591
  %i.fw = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15641, !noalias !15624, !nonnull !28, !noundef !28
  %i.fx = atomicrmw sub ptr %i.fw, i64 1 release, align 8, !noalias !15642
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.br, label %.body38

bb.br:                                            ; preds = %bb.bq
  fence acquire, !noalias !15591
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #74
          to label %.body38 unwind label %bb.bt, !noalias !15624

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !15643), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15644), !noalias !15591
  %i.fz = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15645, !noalias !15624, !nonnull !28, !noundef !28
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !15646
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bs, label %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i
  fence acquire, !noalias !15591
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #74
          to label %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit unwind label %bb.bg

bb.bt:                                            ; preds = %bb.bu, %bb.br, %bb.bj
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15624
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !15647), !noalias !15591
  call void @llvm.experimental.noalias.scope.decl(metadata !15648), !noalias !15591
  %i.gd = load ptr, ptr %.sroa.887.0..sroa_idx, align 8, !alias.scope !15649, !noalias !15624, !nonnull !28, !noundef !28
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !15650
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.bu, label %.body38

bb.bu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit.i
  fence acquire, !noalias !15591
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE9drop_slowB2a_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.887.0..sroa_idx) #74
          to label %.body38 unwind label %bb.bt, !noalias !15624

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit, %bb.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit
  %i.gg = phi ptr [ %.sroa.48.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtBI_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtBG_3VecNtNtB1M_5value5ValueEEEEB1M_.exit ], [ %i.fg, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit ], [ %i.fb, %bb.cg ]
  store ptr %i.gg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.cu unwind label %bb.bf, !noalias !15591, !inline_history !15466

_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6thread6ThreadECskXtk6F4WjxZ_4just.exit8.i, %bb.bs
  %i.gh = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.gh, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.690.8.copyload91) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.992.8.copyload93) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15651)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !15652
  %i.gi = call noundef dereferenceable_or_null(35) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !15652 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bx
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskXtk6F4WjxZ_4just(ptr nonnull %.sroa.690.8.copyload91, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.992.8.copyload93) #72
          to label %.body38 unwind label %bb.cd, !noalias !15653

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 35) #71
          to label %bb.cc unwind label %bb.bw, !noalias !15654

bb.by:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.gi, ptr noundef nonnull align 1 dereferenceable(35) @572, i64 35, i1 false), !noalias !15654
  %i.gl = load ptr, ptr %.sroa.992.8.copyload93, align 8, !invariant.load !28, !alias.scope !15651, !noalias !15653 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void %i.gl(ptr noundef nonnull %.sroa.690.8.copyload91)
          to label %bb.ca unwind label %bb.cb, !noalias !15654

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !43, !invariant.load !28, !alias.scope !15651, !noalias !15653 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.ca
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !48, !invariant.load !28, !alias.scope !15651, !noalias !15653
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.690.8.copyload91, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) %i.gq) #70, !noalias !15654
  br label %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.gr = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !43, !invariant.load !28, !alias.scope !15651, !noalias !15653 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.body38, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.cb
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.992.8.copyload93, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !48, !invariant.load !28, !alias.scope !15651, !noalias !15653
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.690.8.copyload91, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) %i.gw) #70, !noalias !15654
  br label %.body38

bb.cc:                                            ; preds = %bb.bx
  unreachable

bb.cd:                                            ; preds = %bb.bw
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15654
  unreachable

bb.ce:                                            ; preds = %_RNvMs1_NtNtCsaKJjC64KgbL_3std6thread9lifecycleINtB5_9JoinInnerINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEE4joinB1F_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.7.i.sroa.9.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  %.not51.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not51.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.fg, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.7.i.sroa.9.sroa.13, i64 16, i1 false)
  %i.gy = inttoptr i64 %.sroa.10.sroa.0114.0.copyload to ptr
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15590
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887)
  %i.gz = icmp eq ptr %i.fg, %i.fb
  br i1 %i.gz, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit

bb.ch:                                            ; preds = %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit, %bb.cf
  %.sroa.635.sroa.5.sroa.5.0 = phi ptr [ inttoptr (i64 35 to ptr), %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %i.gy, %bb.cf ]
  %.sroa.635.sroa.5.sroa.0.0.in = phi ptr [ %i.gi, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.992.8.copyload93, %bb.cf ]
  %.sroa.635.sroa.6.0 = phi ptr [ undef, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.10.sroa.5.sroa.10.0.copyload, %bb.cf ]
  %.sroa.635.sroa.0.0 = phi ptr [ inttoptr (i64 35 to ptr), %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.690.8.copyload91, %bb.cf ]
  %.sroa.034.0 = phi i64 [ 54, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %.sroa.0.0.copyload.i, %bb.cf ]
  %4 = phi <2 x ptr> [ undef, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %2, %bb.cf ]
  %5 = phi <2 x ptr> [ undef, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %3, %bb.cf ]
  %6 = phi <2 x ptr> [ undef, %_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit ], [ %i.fr, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15590
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.ci unwind label %bb.bf, !noalias !15591, !inline_history !15466

_RNCNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB6_8Justfile16run_dependencies0s_0B8_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.sroa.11)
  br label %bb.ch

bb.ci:                                            ; preds = %bb.ch
  %.sroa.635.sroa.5.sroa.0.0 = ptrtoint ptr %.sroa.635.sroa.5.sroa.0.0.in to i64
  br label %bb.cu

bb.cj:                                            ; preds = %.body32, %.body38
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15591, !inline_history !15466
  unreachable

bb.ck:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEEB2n_.exit60, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15655
  store ptr %i.ee, ptr %i.l, align 8, !noalias !15655
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @592, i64 noundef 22, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @788, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594) #71
          to label %bb.cm unwind label %bb.cl, !noalias !15655

bb.cl:                                            ; preds = %bb.ck
  %i.hb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #72
          to label %.body32 unwind label %bb.cn, !noalias !15655

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15655
  unreachable

bb.co:                                            ; preds = %bb.ar
  %i.hd = ptrtoint ptr %i.ee to i64
  %i.he = load ptr, ptr %i.j, align 8, !noalias !15594, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !15656)
  call void @llvm.experimental.noalias.scope.decl(metadata !15657)
  store ptr %i.he, ptr %i.p, align 8, !alias.scope !15658, !noalias !15591
  store ptr %i.df, ptr %.sroa.695.0..sroa_idx, align 8, !alias.scope !15658, !noalias !15591
  store i64 %i.hd, ptr %.sroa.996.0..sroa_idx, align 8, !alias.scope !15658, !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15590
  call void @llvm.experimental.noalias.scope.decl(metadata !15659)
  %i.hf = load i64, ptr %i.r, align 8, !range !43, !alias.scope !15659, !noalias !15660, !noundef !28
  %i.hg = icmp eq i64 %i.bd, %i.hf
  br i1 %i.hg, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEE8grow_oneB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %._crit_edge unwind label %bb.cq, !noalias !15660

._crit_edge:                                      ; preds = %bb.cp
  %.pre = load ptr, ptr %i.ag, align 8, !alias.scope !15659, !noalias !15660
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.hh = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #72
          to label %.body32 unwind label %bb.cr, !noalias !15661

bb.cr:                                            ; preds = %bb.cq
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !15661
  unreachable

bb.cs:                                            ; preds = %._crit_edge, %bb.co
  %i.hj = phi ptr [ %.pre, %._crit_edge ], [ %i.bc, %bb.co ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !15661
  %i.hl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.hl, ptr %i.ah, align 8, !alias.scope !15659, !noalias !15660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15590
  %i.hm = icmp eq ptr %i.be, %i.aj
  br i1 %i.hm, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEINtB7_3VecNtNtB1j_5value5ValueEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1j_.exit

.body30:                                          ; preds = %.body38, %bb.bf, %.body32
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.ez, %bb.bf ], [ %eh.lpad-body33, %.body32 ], [ %eh.lpad-body39, %.body38 ]
  %i.hn = extractvalue { ptr, i32 } %eh.lpad-body31, 0
  %i.ho = invoke { ptr, ptr } @_RNvNvNtCsaKJjC64KgbL_3std9panicking12catch_unwind7cleanup(ptr noundef %i.hn)
          to label %bb.cv unwind label %bb.ct     ; 2 uses

bb.ct:                                            ; preds = %.body30
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #73
  unreachable

bb.cu:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread, %bb.ci
  %.sroa.635.sroa.5.sroa.5.1 = phi ptr [ %.sroa.635.sroa.5.sroa.5.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.635.sroa.5.sroa.0.1 = phi i64 [ %.sroa.635.sroa.5.sroa.0.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.635.sroa.6.1 = phi ptr [ %.sroa.635.sroa.6.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.635.sroa.0.1 = phi ptr [ %.sroa.635.sroa.0.0, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %.sroa.034.1 = phi i64 [ %.sroa.034.0, %bb.ci ], [ -1, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %7 = phi <2 x ptr> [ %4, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %8 = phi <2 x ptr> [ %5, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  %9 = phi <2 x ptr> [ %6, %bb.ci ], [ undef, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsaKJjC64KgbL_3std6thread6scoped16ScopedJoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEENtNtNtNtB1W_4iter6traits8iterator8Iterator4nextB2y_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15590
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.724.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635.sroa.7, i64 16, i1 false)
  %i.hq = inttoptr i64 %.sroa.034.1 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7)
  store ptr %i.hq, ptr %i.t, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.635.sroa.0.1, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.635.sroa.5.sroa.0.1, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %.sroa.635.sroa.5.sroa.5.1, ptr %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.5.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x ptr> %7, ptr %.sroa.522.sroa.5.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.7.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <2 x ptr> %8, ptr %.sroa.522.sroa.7.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.sroa.9.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store <2 x ptr> %9, ptr %.sroa.522.sroa.9.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr %.sroa.635.sroa.6.1, ptr %.sroa.623.0..sroa_idx, align 8
  br label %.preheader

.preheader:                                       ; preds = %bb.cv, %bb.cu
  br label %bb.cx

bb.cv:                                            ; preds = %.body30
  %i.hr = extractvalue { ptr, ptr } %i.ho, 0      ; 2 uses
  %i.hs = extractvalue { ptr, ptr } %i.ho, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hr) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.hr, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.hs, ptr %i.hu, align 8
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
  %.sroa.07.0 = phi i1 [ true, %.loopexit ], [ %i.ib, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hv = load i64, ptr %i.t, align 8, !range !15662, !noundef !28
  switch i64 %i.hv, label %bb.dg [
    i64 -2, label %bb.dh
    i64 -1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  ]

bb.cx:                                            ; preds = %.preheader, %bb.cz
  %i.hw = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ia = load i64, ptr %i.t, align 8, !range !15662, !noundef !28
  %i.ib = icmp ne i64 %i.ia, -2                   ; 2 uses
  br i1 %i.ib, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.ic = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  invoke void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.id)
          to label %bb.cx unwind label %.loopexit

bb.da:                                            ; preds = %bb.cy
  %i.ie = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !nonnull !28, !noundef !28
  %i.ig = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !28, !align !35, !noundef !28
  invoke void @_RNvNtCsaKJjC64KgbL_3std5panic13resume_unwind(ptr noundef nonnull %i.if, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ih) #71
          to label %bb.df unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.cy
  %i.ii = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load atomic i8, ptr %i.ij monotonic, align 1
  %.not = icmp eq i8 %i.ik, 0
  br i1 %.not, label %bb.dc, label %bb.de, !prof !29

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.il = atomicrmw sub ptr %i.ii, i64 1 release, align 8, !noalias !15663
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.dd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #74
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit

bb.de:                                            ; preds = %bb.db
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @964) #71
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
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit: ; preds = %bb.cw, %bb.dg, %bb.dk, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !15664)
  call void @llvm.experimental.noalias.scope.decl(metadata !15665)
  call void @llvm.experimental.noalias.scope.decl(metadata !15666)
  %i.io = load ptr, ptr %i.u, align 8, !alias.scope !15667, !nonnull !28, !noundef !28
  %i.ip = atomicrmw sub ptr %i.io, i64 1 release, align 8, !noalias !15667
  %i.iq = icmp eq i64 %i.ip, 1
  br i1 %i.iq, label %bb.dj, label %.thread

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #74
          to label %.thread unwind label %bb.di

bb.dk:                                            ; preds = %bb.dh
  %i.ir = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val21 = load ptr, ptr %i.is, align 8, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskXtk6F4WjxZ_4just(ptr %.val, ptr nonnull %.val21) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit unwind label %bb.di

.thread:                                          ; preds = %.thread157, %bb.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  %.pn156 = phi { ptr, i32 } [ %lpad.phi, %bb.dj ], [ %eh.lpad-body160, %.thread157 ], [ %lpad.phi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit ]
  resume { ptr, i32 } %.pn156

.thread157:                                       ; preds = %bb.d, %bb.e, %.thread161
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.w, %.thread161 ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBG_8Justfile16run_dependencies0EBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #72
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
          to label %bb.b unwind label %.loopexit.split-lp96.loopexit.split.us

bb.b:                                             ; preds = %.lr.ph148.split.us
  br i1 %i.ab, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
