Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMs_Cs44JxkgoI5V0_8tempfileNtB5_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %.val29.i, i64 16
  %i.dr = load i8, ptr %i.dq, align 8, !range !71, !noalias !5271, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i

bb.at:                                            ; preds = %bb.ap
  %i.ds = getelementptr i8, ptr %.val29.i, i64 31
  %i.dt = load i8, ptr %i.ds, align 8, !range !71, !noalias !5271, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i

bb.au:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i, %_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5278
  %i.du = trunc nuw i8 %.sroa.015.2.i to i1
  %i.dv = icmp ne i64 %.sroa.069.2.i, 0
  %or.cond88.not.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond88.not.i, label %bb.bd, label %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit

bb.av:                                            ; preds = %.noexc57.i, %bb.ax, %.noexc52.i, %bb.aq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs44JxkgoI5V0_8tempfile3dir7TempDirNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #72
          to label %.body.i unwind label %bb.k, !noalias !5271

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.at, %bb.as, %bb.ar, %.noexc52.i
  %.sroa.0.0.i50.i = phi i8 [ %i.dt, %bb.at ], [ %switch.idx.cast.i.i.i.i, %bb.ar ], [ %i.dr, %bb.as ], [ %i.dm, %.noexc52.i ]
  %i.dx = icmp eq i8 %.sroa.0.0.i50.i, 12
  %or.cond.i = and i1 %i.ai, %i.dx
  br i1 %or.cond.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !5278, !nonnull !28, !noundef !28 ; 4 uses
  %i.dy = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.dz = and i64 %i.dy, 3
  switch i64 %i.dz, label %default.unreachable [
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 0, label %bb.az
    i64 1, label %bb.ba
  ], !prof !69

bb.ax:                                            ; preds = %bb.aw
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc57.i unwind label %bb.av, !noalias !5271

.noexc57.i:                                       ; preds = %bb.ax
  %i.eb = lshr i64 %i.dy, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !5271, !nonnull !28, !noundef !28
  %i.ef = invoke noundef i8 %i.ee(i32 noundef %i.ec)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i unwind label %bb.av, !noalias !5271, !inline_history !70

bb.ay:                                            ; preds = %bb.aw
  %i.eg = lshr i64 %i.dy, 32
  %i.eh = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i55.i = trunc i64 %i.eg to i8 ; 2 uses
  %i.ei = icmp ne i8 %switch.idx.cast.i.i.i55.i, -1
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ei)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i

bb.az:                                            ; preds = %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ek = load i8, ptr %i.ej, align 8, !range !71, !noalias !5271, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i

bb.ba:                                            ; preds = %bb.aw
  %i.el = getelementptr i8, ptr %.val.i, i64 31
  %i.em = load i8, ptr %i.el, align 8, !range !71, !noalias !5271, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i: ; preds = %bb.ba, %bb.az, %bb.ay, %.noexc57.i
  %.sroa.0.0.i54.i = phi i8 [ %i.em, %bb.ba ], [ %switch.idx.cast.i.i.i55.i, %bb.ay ], [ %i.ek, %bb.az ], [ %i.ef, %.noexc57.i ]
  %i.en = icmp eq i8 %.sroa.0.0.i54.i, 8
  %or.cond3.i = and i1 %i.ai, %i.en
  br i1 %or.cond3.i, label %bb.bb, label %bb.au

bb.bb:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs44JxkgoI5V0_8tempfile3dir7TempDirNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.i, !noalias !5271

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5278
  %exitcond.not = icmp eq i32 %i.bl, 65536
  br i1 %exitcond.not, label %bb.m, label %bb.n

bb.bd:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.2.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.2.i, i64 noundef %.sroa.069.2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5305
  br label %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit

bb.be:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %.sroa.069.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5306
  br label %.body

_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.bd, %bb.au, %bb.aa, %bb.z, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  call void @llvm.experimental.noalias.scope.decl(metadata !5308)
  %.val.i.i4 = load i64, ptr %2, align 8, !alias.scope !5309 ; 2 uses
  %i.eo = icmp eq i64 %.val.i.i4, 0
  br i1 %i.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit6, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5310
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit6: ; preds = %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit, %bb.bf
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeE14from_tokenizedNvYeNtNtB5_11abstraction11DiffableStr14tokenize_linesECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !37, !noundef !28 ; 5 uses
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11: ; preds = %bb.q, %bb.p, %bb.b
  ret void

bb.c:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit unwind label %bb.c

_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !28, !noundef !28 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !28 ; 6 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = load i64, ptr %i.b, align 8, !range !43, !noundef !28 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5362
  %i.q = mul nuw nsw i64 %i.m, 24                 ; 2 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.m, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.e, !prof !42

bb.e:                                             ; preds = %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread, label %bb.f

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread: ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !noalias !5362
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !5362
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5363
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #70, !noalias !5363 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader

bb.g:                                             ; preds = %bb.f, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.q, %bb.f ], [ undef, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.f ], [ 0, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #71
          to label %.noexc.i.i unwind label %bb.m, !noalias !5362

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  store i64 %i.m, ptr %i.a, align 8, !noalias !5362
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !5362
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5365)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i = phi i64 [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.y = phi ptr [ %i.ac, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !5366, !nonnull !28, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5366, !noundef !28 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5367
  %i.ae = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 1) #70, !noalias !5367 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.ab) #71
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !5366

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.z, i64 range(i64 0, -9223372036854775808) %i.ab, i1 false), !noalias !5368
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.j ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.val11.i.i.i.i.i.i.i ; 3 uses
  store i64 %i.ab, ptr %i.ag, align 8, !noalias !5369
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5369
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ab, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5369
  %i.ah = add nuw nsw i64 %.val11.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread
  %i.ai = phi ptr [ %i.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread ], [ %i.x, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ]
  %.sroa.52.0.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread ], [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ]
  %i.aj = icmp eq i64 %i.p, 0
  br i1 %i.aj, label %bb.p, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ak = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5366
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i64 %.val11.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !5370, !noalias !5371
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %.body.i.i, label %.body.sink.split.i.i.i.i

.body.sink.split.i.i.i.i:                         ; preds = %bb.l
  %i.an = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5372
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.sink.split.i.i.i.i, %bb.l
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #72, !noalias !5362
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.p, 0
  br i1 %i.ap, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5373
  br label %.body

.body:                                            ; preds = %bb.n, %bb.m, %.body.i.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ao, %bb.n ], [ %i.al, %.body.i.i ], [ %i.ao, %bb.m ]
  %i.ar = icmp eq i64 %i.c, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.o

bb.o:                                             ; preds = %.body
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5374
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.p:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i
  store i64 %.sroa.52.0.i.i.i.i.i.i, ptr %i.ai, align 8, !alias.scope !5370, !noalias !5371
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5362
  store i64 1, ptr %0, align 8
  %i.at = icmp eq i64 %i.c, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5375
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.o, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3Arg11value_namesReAB19_j2_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.16.copyload = load ptr, ptr %2, align 8, !alias.scope !5419 ; 2 uses
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.16.copyload = load i64, ptr %.sroa.6.16..sroa_idx, align 8, !alias.scope !5419
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8, !alias.scope !5419 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !5419
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5420
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #70, !noalias !5420 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.b:                                             ; preds = %.noexc.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %1) #72
          to label %bb.e unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #71
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.16.copyload) ]
  store ptr %.sroa.4.16.copyload, ptr %i.a, align 8, !noalias !5421
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.16.copyload, ptr %i.d, align 8, !noalias !5422
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.16.copyload) ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.7.16.copyload, ptr %i.e, align 8, !noalias !5421
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.8.16.copyload, ptr %i.f, align 8, !noalias !5422
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrEECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28
  %i.j = shl nuw i64 %.val, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  store i64 2, ptr %i.g, align 8
  store ptr %i.a, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 2, ptr %.sroa.6.0..sroa_idx6, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3Arg12value_parserINtNtB7_12value_parser15EnumValueParserNtNtCskXtk6F4WjxZ_4just11alias_style10AliasStyleEEB1R_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5429)
  %i.b = load i64, ptr %i.a, align 8, !range !72, !alias.scope !5429, !noundef !28 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5431)
  %switch.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %switch.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5432 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5432, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !28, !noalias !5432 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.f, !noalias !5432

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq:bb.a
  %i.ok = load i8, ptr %i.oj, align 8, !range !125, !alias.scope !83036, !noalias !83035, !noundef !28
  %i.ol = icmp eq i8 %i.oi, %i.ok
  br i1 %i.ol, label %bb.ca, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ca:                                            ; preds = %bb.bz
  %i.om = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !83035, !noalias !83036, !noundef !28
  %i.oo = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !83036, !noalias !83035, !noundef !28
  %i.oq = icmp eq i64 %i.on, %i.op
  br i1 %i.oq, label %bb.cb, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cb:                                            ; preds = %bb.ca
  %i.or = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !83035, !noalias !83036, !noundef !28
  %i.ot = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.ou = load i64, ptr %i.ot, align 8, !alias.scope !83036, !noalias !83035, !noundef !28
  %i.ov = icmp eq i64 %i.os, %i.ou
  br i1 %i.ov, label %bb.cc, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cc:                                            ; preds = %bb.cb
  %i.ow = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !83035, !noalias !83036, !noundef !28
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !83036, !noalias !83035, !noundef !28
  %i.pa = icmp eq i64 %i.ox, %i.oz
  br i1 %i.pa, label %bb.cd, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cd:                                            ; preds = %bb.cc
  %i.pb = load ptr, ptr %i.et, align 8, !alias.scope !83035, !noalias !83036, !nonnull !28, !noundef !28
  %i.pc = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !83035, !noalias !83036, !noundef !28
  %i.pe = load ptr, ptr %i.eu, align 8, !alias.scope !83036, !noalias !83035, !nonnull !28, !noundef !28
  %i.pf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !83036, !noalias !83035, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83037
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pb, i64 noundef %i.pd), !noalias !83037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83037
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef %i.pg), !noalias !83037
  %i.ph = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c) #76, !noalias !83037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83037
  br i1 %i.ph, label %bb.ce, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ce:                                            ; preds = %bb.cd
  %i.pi = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !83035, !noalias !83036, !noundef !28 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !83036, !noalias !83035, !noundef !28
  %i.pm = icmp eq i64 %i.pj, %i.pl
  br i1 %i.pm, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201: ; preds = %bb.ce
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !83036, !noalias !83035, !nonnull !28, !noundef !28
  %i.pp = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !83035, !noalias !83036, !nonnull !28, !noundef !28
  %bcmp.i200 = tail call i32 @bcmp(ptr nonnull %i.pq, ptr nonnull %i.po, i64 %i.pj), !noalias !83037
  %i.pr = icmp eq i32 %bcmp.i200, 0
  br i1 %i.pr, label %tailrecurse.backedge.sink.split, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cf:                                            ; preds = %bb.y
  %i.ps = getelementptr inbounds nuw i8, ptr %.tr3470, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !nonnull !28, !noundef !28
  %i.pu = getelementptr inbounds nuw i8, ptr %.tr69, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !nonnull !28, !noundef !28
  %.not3182.not = icmp eq i64 %i.fd, 0
  br i1 %.not3182.not, label %._crit_edge, label %.lr.ph84

bb.cg:                                            ; preds = %.lr.ph84
  %i.pw = add nuw i64 %.sroa.01.0.i2383, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.pw, %i.fd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.cf, %bb.cg
  %.sroa.01.0.i2383 = phi i64 [ %i.pw, %bb.cg ], [ 0, %bb.cf ] ; 3 uses
  %i.px = getelementptr inbounds nuw [128 x i8], ptr %i.pv, i64 %.sroa.01.0.i2383
  %i.py = getelementptr inbounds nuw [128 x i8], ptr %i.pt, i64 %.sroa.01.0.i2383
  %i.pz = tail call fastcc noundef zeroext i1 @_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.px, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.py) #76, !inline_history !82990
  br i1 %i.pz, label %bb.cg, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

._crit_edge:                                      ; preds = %bb.cg, %bb.cf
  %i.qa = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fb) #76
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ch:                                            ; preds = %bb.z
  %i.qb = getelementptr inbounds nuw i8, ptr %.tr3470, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83039)
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr69, i64 56
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.qf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 56
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.qh = icmp eq i64 %i.qe, %i.qg
  br i1 %i.qh, label %bb.ci, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ci:                                            ; preds = %bb.ch
  %i.qi = getelementptr inbounds nuw i8, ptr %.tr69, i64 88
  %i.qj = load i8, ptr %i.qi, align 8, !range !125, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.qk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 88
  %i.ql = load i8, ptr %i.qk, align 8, !range !125, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.qm = icmp eq i8 %i.qj, %i.ql
  br i1 %i.qm, label %bb.cj, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cj:                                            ; preds = %bb.ci
  %i.qn = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.qo = load i64, ptr %i.qn, align 8, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.qp = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.qr = icmp eq i64 %i.qo, %i.qq
  br i1 %i.qr, label %bb.ck, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ck:                                            ; preds = %bb.cj
  %i.qs = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.qu = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.qv = load i64, ptr %i.qu, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.qw = icmp eq i64 %i.qt, %i.qv
  br i1 %i.qw, label %bb.cl, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cl:                                            ; preds = %bb.ck
  %i.qx = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.qz = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.rb = icmp eq i64 %i.qy, %i.ra
  br i1 %i.rb, label %bb.cm, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cm:                                            ; preds = %bb.cl
  %i.rc = load ptr, ptr %i.qc, align 8, !alias.scope !83038, !noalias !83039, !nonnull !28, !noundef !28
  %i.rd = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !83038, !noalias !83039, !noundef !28
  %i.rf = load ptr, ptr %i.qb, align 8, !alias.scope !83039, !noalias !83038, !nonnull !28, !noundef !28
  %i.rg = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83040
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.re), !noalias !83040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83040
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rf, i64 noundef %i.rh), !noalias !83040
  %i.ri = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a) #76, !noalias !83040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83040
  br i1 %i.ri, label %bb.cn, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cn:                                            ; preds = %bb.cm
  %i.rj = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !83038, !noalias !83039, !noundef !28 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !83039, !noalias !83038, !noundef !28
  %i.rn = icmp eq i64 %i.rk, %i.rm
  br i1 %i.rn, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204: ; preds = %bb.cn
  %i.ro = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !83039, !noalias !83038, !nonnull !28, !noundef !28
  %i.rq = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !83038, !noalias !83039, !nonnull !28, !noundef !28
  %bcmp.i203 = tail call i32 @bcmp(ptr nonnull %i.rr, ptr nonnull %i.rp, i64 %i.rk), !noalias !83040
  %i.rs = icmp eq i32 %bcmp.i203, 0
  br i1 %i.rs, label %tailrecurse.backedge.sink.split, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.co:                                            ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit21
  %i.rt = getelementptr inbounds nuw i8, ptr %.tr69, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !range !68, !noundef !28
  %i.rv = getelementptr inbounds nuw i8, ptr %.tr69, i64 12
  %i.rw = trunc nuw i32 %i.ru to i1
  %i.rx = getelementptr inbounds nuw i8, ptr %.tr3470, i64 8
  %i.ry = load i32, ptr %i.rx, align 8, !range !68, !noundef !28
  %i.rz = trunc nuw i32 %i.ry to i1               ; 2 uses
  br i1 %i.rw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  br i1 %i.rz, label %bb.cr, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cq:                                            ; preds = %bb.co
  %i.sa = xor i1 %i.rz, true
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cr:                                            ; preds = %bb.cp
  %i.sb = getelementptr inbounds nuw i8, ptr %.tr3470, i64 12
  %i.sc = load i32, ptr %i.rv, align 4, !noundef !28
  %i.sd = load i32, ptr %i.sb, align 4, !noundef !28
  %i.se = icmp eq i32 %i.sc, %i.sd
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = icmp samesign ugt i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul nuw nsw i64 %2, 24                   ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83089
  %i.i = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #70, !noalias !83089 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ %i.g, %bb.d ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #71, !noalias !83090
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.j
  %.val10.i.i.i.i.i.i = phi i64 [ %i.r, %bb.j ], [ 0, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val10.i.i.i.i.i.i ; 2 uses
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !83091, !nonnull !28, !noundef !28
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !83091, !noundef !28 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val16.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.f, !prof !42

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.m = icmp eq i64 %.val16.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83092
  %i.n = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val16.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83092 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %.preheader.i.i.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i) #71
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !83091

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val15.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i, i1 false), !noalias !83093
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.p = phi ptr [ %i.n, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.val10.i.i.i.i.i.i ; 3 uses
  store i64 %.val16.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !83094
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83094
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val16.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83094
  %i.r = add nuw nsw i64 %.val10.i.i.i.i.i.i, 1   ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %.preheader.i.i.i

.body.i:                                          ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83095), !noalias !83090
  %i.u = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.u, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %.body.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39
  %.sroa.0.010.i.i.i36 = phi i64 [ %i.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39 ], [ 0, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i36 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.010.i.i.i36, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83096), !noalias !83090
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83097), !noalias !83090
  %.val.i.i.i.i.i37 = load i64, ptr %i.v, align 8, !alias.scope !83098, !noalias !83099 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i37, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i35
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i.i.i38 = load ptr, ptr %i.y, align 8, !alias.scope !83098, !noalias !83099, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i38, i64 noundef %.val.i.i.i.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83100
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39: ; preds = %bb.k, %.lr.ph.i.i.i35
  %i.z = icmp eq i64 %i.w, %.val10.i.i.i.i.i.i
  br i1 %i.z, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, %.body.i
  %3 = mul nuw nsw i64 %2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !83099
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit: ; preds = %bb.j, %bb.c
  %.sroa.4.0.i.i85 = phi i64 [ 0, %bb.c ], [ %2, %bb.j ]
  %.sroa.10.0.i.i84 = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.i, %bb.j ] ; 2 uses
  store i64 %.sroa.4.0.i.i85, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.10.0.i.i84, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28 ; 7 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.l
  %rhsc = load i8, ptr %i.aa, align 1
  %i.ad = icmp eq i8 %rhsc, 58
  br i1 %i.ad, label %bb.m, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  %i.ae = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %rhsc57 = load i8, ptr %i.af, align 1
  %i.ag = icmp eq i8 %rhsc57, 58
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.split, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit
  %i.ah = icmp ugt i64 %i.ac, 3
  br i1 %i.ah, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp eq i64 %i.ac, 3
  br i1 %i.ai, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

.split:                                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83101
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1778, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #76
  %i.aj = load i64, ptr %i.b, align 8, !range !41, !noalias !83101, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83101
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.o
  %i.al = load i16, ptr %i.aa, align 1
  %i.am = xor i16 14906, %i.al
  %i.an = getelementptr i8, ptr %i.aa, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %i.aq = xor i16 58, %i.ap
  %i.ar = or i16 %i.am, %i.aq
  %i.as = icmp ne i16 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.l, %bb.o, %.split, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.ac, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 1, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  store i8 0, ptr %.sroa.721.0..sroa_idx, align 1
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitReENvYeNtB13_8ToString9to_stringEE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre71 = load i64, ptr %.phi.trans.insert70, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit
  %i.av = phi i64 [ %.pre71, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread ], [ %2, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit ] ; 3 uses
  %i.aw = phi ptr [ %.pre, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread ], [ %.sroa.10.0.i.i84, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit ] ; 4 uses
  %.idx = mul nuw nsw i64 %i.av, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph66

.loopexit:                                        ; preds = %bb.w
  %i.az = icmp eq ptr %i.ba, %i.ax
  br i1 %i.az, label %._crit_edge, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.p, %.loopexit
  %.sroa.0.065 = phi ptr [ %i.ba, %.loopexit ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !28 ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %.lr.ph.i.i.i.preheader, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %.loopexit, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bf = zext i1 %i.e to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bf, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph66
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bc ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.sroa.0.04464 = phi ptr [ %.sroa.0.1, %bb.w ], [ %i.bh, %.lr.ph.preheader ] ; 5 uses
  %.sroa.11.063 = phi i64 [ %i.cr, %bb.w ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.04464, i64 1 ; 3 uses
  %i.bk = load i8, ptr %.sroa.0.04464, align 1, !noalias !83102, !noundef !28 ; 5 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.q, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i: ; preds = %.lr.ph
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp ne ptr %i.bj, %i.bi
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.04464, i64 2 ; 3 uses
  %i.bq = load i8, ptr %i.bj, align 1, !noalias !83102, !noundef !28
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.bw = zext nneg i8 %i.bk to i32
  br label %bb.r

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i
  %i.bx = icmp ne ptr %i.bp, %i.bi
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.04464, i64 3 ; 3 uses
  %i.bz = load i8, ptr %i.bp, align 1, !noalias !83102, !noundef !28
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i, label %bb.r

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i
  %i.ch = icmp ne ptr %i.by, %i.bi
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.04464, i64 4
  %i.cj = load i8, ptr %i.by, align 1, !noalias !83102, !noundef !28
  %i.ck = shl nuw nsw i32 %i.bn, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cd, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i, %bb.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i
  %.sroa.0.1 = phi ptr [ %i.bj, %bb.q ], [ %i.ci, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i ], [ %i.by, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.bw, %bb.q ], [ %i.cq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i ] ; 9 uses
  %i.cr = add i64 %.sroa.11.063, 1
  %i.cs = icmp eq i64 %.sroa.11.063, 0
  %i.ct = add nsw i32 %spec.select.i.ph.i, -97
  %or.cond = icmp ult i32 %i.ct, 26               ; 2 uses
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %or.cond, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cu = icmp samesign ugt i32 %spec.select.i.ph.i, 64
  br i1 %i.cu, label %bb.v, label %.lr.ph.i.i.i.preheader

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp samesign ult i32 %spec.select.i.ph.i, 91
  %i.cw = icmp eq i32 %spec.select.i.ph.i, 95
  %or.cond1 = or i1 %i.cv, %i.cw
  br i1 %or.cond1, label %bb.w, label %.lr.ph.i.i.i.preheader

bb.w:                                             ; preds = %bb.y, %bb.t, %bb.z, %bb.s, %bb.v
  %.not.i.i = icmp eq ptr %.sroa.0.1, %i.bi
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph

bb.x:                                             ; preds = %bb.t
  %i.cx = icmp samesign ugt i32 %spec.select.i.ph.i, 64
end_hunk_1
