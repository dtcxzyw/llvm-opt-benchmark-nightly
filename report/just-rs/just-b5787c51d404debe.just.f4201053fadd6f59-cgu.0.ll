Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 598
loop-unroll.NumUnrolled: 723
begin_hunk_0_@_RINvMs_Cs44JxkgoI5V0_8tempfileNtB5_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just:bb.a
_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtNtNtB9_3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5278
  %i.dd = load i8, ptr %i.bj, align 8, !range !38, !noalias !5278, !noundef !28
  %i.de = icmp eq i8 %i.dd, 2
  br i1 %i.de, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i
  %.val29.i = load ptr, ptr %i.e, align 8, !noalias !5278, !nonnull !28, !noundef !28 ; 4 uses
  %i.df = ptrtoint ptr %.val29.i to i64           ; 3 uses
  %i.dg = and i64 %i.df, 3
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %bb.aq
    i64 3, label %bb.ar
    i64 0, label %bb.as
    i64 1, label %bb.at
  ], !prof !69

bb.aq:                                            ; preds = %bb.ap
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc52.i unwind label %bb.av, !noalias !5271

.noexc52.i:                                       ; preds = %bb.aq
  %i.di = lshr i64 %i.df, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !5271, !nonnull !28, !noundef !28
  %i.dm = invoke noundef i8 %i.dl(i32 noundef %i.dj)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.av, !noalias !5271, !inline_history !70

bb.ar:                                            ; preds = %bb.ap
  %i.dn = lshr i64 %i.df, 32
  %i.do = icmp ult ptr %.val29.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.dn to i8 ; 2 uses
  %i.dp = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.do)
  call void @llvm.assume(i1 %i.dp)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i

bb.as:                                            ; preds = %bb.ap
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
  %i.q = mul nuw i64 %i.m, 24                     ; 2 uses
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
end_hunk_0
begin_hunk_1_@_RINvNtNtCsaKJjC64KgbL_3std6thread6scoped5scopeNCNvMNtCskXtk6F4WjxZ_4just8justfileNtBN_8Justfile16run_dependencies0INtNtCsj6eKBz9Db1c_4core6result6ResultuNtNtBP_5error5ErrorEEBP_:bb.a
          cleanup
  br label %bb.cw

.loopexit.split-lp:                               ; preds = %bb.da, %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.07.0 = phi i1 [ true, %.loopexit ], [ %i.ij, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.id = load i64, ptr %i.t, align 8, !range !15662, !noundef !28
  switch i64 %i.id, label %bb.dg [
    i64 -2, label %bb.dh
    i64 -1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  ]

bb.cx:                                            ; preds = %.preheader, %bb.cz
  %i.ie = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load atomic i64, ptr %i.if acquire, align 8
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ii = load i64, ptr %i.t, align 8, !range !15662, !noundef !28
  %i.ij = icmp ne i64 %i.ii, -2                   ; 2 uses
  br i1 %i.ij, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.ik = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  invoke void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.il)
          to label %bb.cx unwind label %.loopexit

bb.da:                                            ; preds = %bb.cy
  %i.im = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !28, !noundef !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !nonnull !28, !align !35, !noundef !28
  invoke void @_RNvNtCsaKJjC64KgbL_3std5panic13resume_unwind(ptr noundef nonnull %i.in, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ip) #71
          to label %bb.df unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.cy
  %i.iq = load ptr, ptr %i.u, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load atomic i8, ptr %i.ir monotonic, align 1
  %.not = icmp eq i8 %i.is, 0
  br i1 %.not, label %bb.dc, label %bb.de, !prof !29

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.it = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !15663
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.dd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std6thread6scoped5ScopeECskXtk6F4WjxZ_4just.exit

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
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit: ; preds = %bb.cw, %bb.dg, %bb.dk, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !15664)
  call void @llvm.experimental.noalias.scope.decl(metadata !15665)
  call void @llvm.experimental.noalias.scope.decl(metadata !15666)
  %i.iw = load ptr, ptr %i.u, align 8, !alias.scope !15667, !nonnull !28, !noundef !28
  %i.ix = atomicrmw sub ptr %i.iw, i64 1 release, align 8, !noalias !15667
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %bb.dj, label %.thread

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #74
          to label %.thread unwind label %bb.di

bb.dk:                                            ; preds = %bb.dh
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val = load ptr, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val21 = load ptr, ptr %i.ja, align 8, !nonnull !28, !align !35, !noundef !28
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
  %i.ac = sub i64 %.sroa.026.0146.us, %i.m
  %i.ad = icmp ult i64 %i.ac, %i.o
  br i1 %i.ad, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us, label %.split151.us

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15707)
  %exitcond196.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond196.not, label %._crit_edge149, label %.lr.ph148.split.us

.loopexit.split-lp96.loopexit.split.us:           ; preds = %.lr.ph148.split.us
  %lpad.loopexit101.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

._crit_edge149:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load i64, ptr %i.h, align 8, !noundef !28 ; 5 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  %i.ag = shl nuw i64 %i.ae, 4                    ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ae, 576460752303423487
  br i1 %.not.i, label %bb.g, label %bb.d, !prof !42

bb.d:                                             ; preds = %._crit_edge149
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread, label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.d
  store i64 0, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.aj, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !15708
  %i.ak = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15708 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit

.lr.ph148.split:                                  ; preds = %.lr.ph148, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread
  %.sroa.026.0146 = phi i64 [ %i.am, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread ], [ %2, %.lr.ph148 ] ; 3 uses
  %i.am = add i64 %.sroa.026.0146, 1              ; 2 uses
  %i.an = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %5, i32 noundef %6)
          to label %bb.y unwind label %.loopexit.split-lp96.loopexit.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit: ; preds = %.loopexit95, %.loopexit.split-lp96.loopexit.split, %.loopexit.split-lp96.loopexit.split.us, %.loopexit.split-lp96.loopexit.split-lp, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.q ], [ %lpad.phi, %bb.p ], [ %lpad.loopexit97, %.loopexit95 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp96.loopexit.split-lp ], [ %lpad.loopexit101, %.loopexit.split-lp96.loopexit.split ], [ %lpad.loopexit101.us, %.loopexit.split-lp96.loopexit.split.us ]
  %.val55 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.ao = icmp eq i64 %.val55, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit
  %.val56 = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28
  %i.ap = shl nuw i64 %.val55, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit

.loopexit95:                                      ; preds = %bb.ai, %bb.an, %bb.ar
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

.loopexit.split-lp96.loopexit.split:              ; preds = %.lr.ph148.split
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

.loopexit.split-lp96.loopexit.split-lp:           ; preds = %.invoke, %.split151.us, %bb.g
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

bb.g:                                             ; preds = %._crit_edge149, %bb.e
  %.sroa.10.0.ph = phi i64 [ %i.ag, %bb.e ], [ undef, %._crit_edge149 ]
  %.sroa.485.0.ph = phi i64 [ 8, %bb.e ], [ 0, %._crit_edge149 ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.485.0.ph, i64 %.sroa.10.0.ph) #71
          to label %bb.r unwind label %.loopexit.split-lp96.loopexit.split-lp

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.e
  %.pre = load i64, ptr %i.h, align 8             ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.ak, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ar, align 8
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  %i.as = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.pre
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !noundef !28
  br label %bb.l

bb.j:                                             ; preds = %.split.us, %bb.h
  %.val53 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.aw = icmp eq i64 %.val53, 0
  br i1 %i.aw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val54 = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28
  %i.ax = shl nuw i64 %.val53, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit59

bb.l:                                             ; preds = %bb.s, %bb.i
  %i.ay = phi i64 [ 0, %bb.i ], [ %i.bo, %bb.s ]  ; 3 uses
  %.sroa.023.0 = phi i64 [ %i.av, %bb.i ], [ %i.bh, %bb.s ] ; 3 uses
  %i.az = load i64, ptr %i.j, align 8, !noundef !28 ; 2 uses
  %i.ba = icmp ult i64 %.sroa.023.0, %i.az
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.023.0 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load <2 x i64>, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.bc, align 8, !range !41, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15709, !noundef !28
  %i.bj = icmp eq i64 %i.ay, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #74
          to label %bb.s unwind label %.loopexit

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.023.0, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #71
          to label %bb.r unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val57 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.bk = icmp eq i64 %.val57, 0
  br i1 %i.bk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val58 = load ptr, ptr %i.aq, align 8, !nonnull !28, !noundef !28
  %i.bl = shl nuw i64 %.val57, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

bb.r:                                             ; preds = %bb.o, %bb.g
  unreachable

bb.s:                                             ; preds = %bb.m, %bb.n
  %i.bm = load ptr, ptr %i.aq, align 8, !alias.scope !15709, !nonnull !28, !noundef !28
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.ay
  store <2 x i64> %i.be, ptr %i.bn, align 8
  %i.bo = add i64 %i.ay, 1                        ; 5 uses
  store i64 %i.bo, ptr %i.ar, align 8, !alias.scope !15709
  %i.bp = trunc nuw i64 %i.bf to i1
  br i1 %i.bp, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.aq, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.br = lshr i64 %i.bo, 1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15710)
  call void @llvm.experimental.noalias.scope.decl(metadata !15711)
  %.not.i61 = icmp eq i64 %i.br, 0
  br i1 %.not.i61, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i: ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo ; 3 uses
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i
  %unroll_iter = and i64 %i.br, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.new ], [ %i.cd, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i ]
  %i.bu = xor i64 %.sroa.0.016.i, -1
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.0.016.i ; 2 uses
  %i.bw = getelementptr [16 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !15710, !noalias !15711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !alias.scope !15712
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !15711, !noalias !15710
  %i.by = xor i64 %.sroa.0.016.i, -2
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.0.016.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = getelementptr [16 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !15710, !noalias !15711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !15712
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !alias.scope !15711, !noalias !15710
  %i.cd = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i
  %i.ce = and i64 %i.bo, 2
  %lcmp.mod.not = icmp eq i64 %i.ce, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i ], [ %i.cd, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod319 = trunc i64 %i.br to i1
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75, !noalias !15984
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i: ; preds = %bb.f
  %i.af = xor i64 %i.s, -1
  %i.ag = add i64 %3, %i.af                       ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.v
  br i1 %i.ah, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #75, !noalias !15985
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ag
  %.val29.i = load i64, ptr %i.ai, align 8, !noalias !15975, !noundef !28
  %.val30.i = load i64, ptr %i.aj, align 8, !noalias !15975, !noundef !28
  %i.ak = icmp eq i64 %.val29.i, %.val30.i
  br i1 %i.ak, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.al = tail call fastcc noundef i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
  %cond.i = icmp eq i8 %i.al, 0
  br i1 %cond.i, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 120 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val6, i64 136 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !15986, !noalias !15987, !noundef !28 ; 4 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !43, !alias.scope !15986, !noalias !15987, !noundef !28
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #74, !noalias !15987
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15986, !noalias !15987, !nonnull !28, !noundef !28
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !15988
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15988
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.pre, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15988
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15988
  %i.au = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !15986, !noalias !15987
  %i.av = load i64, ptr %i.am, align 8, !range !43, !alias.scope !15989, !noalias !15990, !noundef !28
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #74, !noalias !15990
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i, %bb.l
  %i.ax = load ptr, ptr %i.ar, align 8, !alias.scope !15989, !noalias !15990, !nonnull !28, !noundef !28
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.au ; 4 uses
  store i64 2, ptr %i.ay, align 8, !noalias !15991
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !15991
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !15991
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %.pre12, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !15991
  %i.az = add i64 %i.ao, 2
  store i64 %i.az, ptr %i.an, align 8, !alias.scope !15989, !noalias !15990
  br label %bb.u

._crit_edge:                                      ; preds = %bb.a, %bb.b, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ba = add i64 %.pre12, %.pre                  ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %.sroa.011.0.i8 = sub nuw i64 %i.ba, %i.bb
  %i.bc = add nuw i64 %.sroa.011.0.i8, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15992
  call void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.bc), !noalias !15992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15992
  invoke void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.bc)
          to label %bb.o unwind label %bb.n, !noalias !15992

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i: ; preds = %bb.q, %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.p ], [ %i.bh, %bb.q ]
  %.val22.i = load i64, ptr %i.b, align 8, !alias.scope !15993, !noalias !15992 ; 2 uses
  %i.bd = icmp eq i64 %.val22.i, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val23.i = load ptr, ptr %i.be, align 8, !noalias !15992, !nonnull !28, !noundef !28
  %i.bf = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15994
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i

bb.n:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.o:                                             ; preds = %._crit_edge
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !alias.scope !15993, !noalias !15992 ; 2 uses
  %i.bi = icmp eq i64 %.val20.i, 0
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val21.i = load ptr, ptr %i.bj, align 8, !noalias !15992, !nonnull !28, !noundef !28
  %i.bk = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15995
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.r:                                             ; preds = %bb.o
  %.val18.i = load i64, ptr %i.a, align 8, !alias.scope !15993, !noalias !15992 ; 2 uses
  %i.bl = icmp eq i64 %.val18.i, 0
  br i1 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val19.i = load ptr, ptr %i.bm, align 8, !noalias !15992, !nonnull !28, !noundef !28
  %i.bn = shl nuw i64 %.val18.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15996
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15992
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !15993, !noalias !15992 ; 2 uses
  %i.bo = icmp eq i64 %.val.i, 0
  br i1 %i.bo, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val17.i = load ptr, ptr %i.bp, align 8, !noalias !15992, !nonnull !28, !noundef !28
  %i.bq = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15997
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15992
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !28 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !28 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !28 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph266, label %bb.h, !prof !29

.lr.ph266:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !28 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph266, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread
  %.sroa.048.0265 = phi i64 [ 0, %.lr.ph266 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0265, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0265          ; 6 uses
  br label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %bb.bf
  %.sroa.7.0249 = phi i64 [ %i.az, %bb.bf ], [ %.sroa.048.0265, %.lr.ph250.preheader ]
  %not..sroa.11163.0248 = phi i64 [ 1, %bb.bf ], [ 0, %.lr.ph250.preheader ]
  %i.av = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0249, i64 %not..sroa.11163.0248) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1       ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.av, 0       ; 10 uses
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 -1) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.ay, 1
  %i.bb = or i1 %i.aw, %i.ba
  %.not3.i.not = icmp slt i64 %i.ax, %i.au
  %or.cond188 = select i1 %i.aw, i1 true, i1 %.not3.i.not
  br i1 %or.cond188, label %.lr.ph263.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph250
  %i.bc = icmp eq i64 %i.ax, %i.au
  br i1 %i.bc, label %._crit_edge312.a, label %bb.al

._crit_edge312.a:                                 ; preds = %bb.j
  %.pre317 = add i64 %i.i, %i.ax
  br label %bb.am

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.ag
  %not..sroa.14172.0262 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph263.preheader ]
  %.sroa.7171.0261 = phi i64 [ %i.bh, %bb.ag ], [ %.sroa.048.0265, %.lr.ph263.preheader ]
  %i.bd = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7171.0261, i64 %not..sroa.14172.0262) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 10 uses
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bf, i64 -1) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bg, 1
  %i.bj = or i1 %i.be, %i.bi
  %.not3.i144.not = icmp slt i64 %i.bf, %i.au
  %or.cond190 = select i1 %i.be, i1 true, i1 %.not3.i144.not
  br i1 %or.cond190, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph263
  %i.bk = icmp eq i64 %i.bf, %i.au
  br i1 %i.bk, label %._crit_edge314.a, label %bb.l

._crit_edge314.a:                                 ; preds = %bb.k
  %.pre = add i64 %i.r, %i.bf
  br label %bb.m

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread: ; preds = %bb.ag, %.lr.ph263
  %exitcond310.not = icmp eq i64 %.sroa.048.0265, %.sroa.047.0
  br i1 %exitcond310.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bf, %.sroa.048.0265
  %.pre315 = add i64 %i.ap, %i.bf                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.n

bb.m:                                             ; preds = %._crit_edge314.a, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314.a ], [ %i.bo, %bb.q ] ; 3 uses
  %i.bl = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bl, label %bb.v, label %bb.w

._crit_edge313:                                   ; preds = %bb.l, %bb.q
  %i.bm = icmp ult i64 %.pre315, %i.t
  br i1 %i.bm, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp ult i64 %.pre315, %i.t
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = add i64 %i.r, %i.bf                     ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %i.t
  br i1 %i.bp, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.br = load i64, ptr %i.bq, align 8, !noundef !28
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bo
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !28
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %._crit_edge313

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.s:                                             ; preds = %._crit_edge313
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !28
  %i.bx = add i64 %i.bw, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cc, %bb.v ], [ %i.bx, %bb.s ] ; 5 uses
  %i.by = sub i64 %.sroa.014.0, %i.bf             ; 4 uses
  %i.bz = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.ca = icmp ult i64 %i.by, %.sroa.037.0
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !28
  br label %bb.u

bb.w:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.cr, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.by, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.cq, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cd = add i64 %i.bf, %i.q                     ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %i.t
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.cf = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cg = sub i64 %i.ar, %i.by                    ; 2 uses
  %i.ch = sub i64 %i.cf, %2
  %i.ci = sub i64 %i.cg, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch) ; 3 uses
  %.not269 = icmp eq i64 %..i, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.y
  %invariant.op256 = sub i64 %i.cg, %i.ae
  %invariant.op258 = sub i64 %i.cf, %i.ak
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph253, %bb.ac
  %.sroa.0.0.i136252 = phi i64 [ 0, %.lr.ph253 ], [ %i.cp, %bb.ac ] ; 3 uses
  %i.cj = xor i64 %.sroa.0.0.i136252, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cj    ; 3 uses
  %i.ck = icmp ult i64 %.reass257, %i.ag
  br i1 %i.ck, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !16006
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137: ; preds = %bb.z
  %.reass259 = add i64 %invariant.op258, %i.cj    ; 3 uses
  %i.cl = icmp ult i64 %.reass259, %i.am
  br i1 %i.cl, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !16007
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.cm, align 8, !noundef !28
  %.val140 = load i64, ptr %i.cn, align 8, !noundef !28
  %i.co = icmp eq i64 %.val, %.val140
  br i1 %i.co, label %bb.ac, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.cp = add nuw i64 %.sroa.0.0.i136252, 1       ; 2 uses
  %exitcond309.not = icmp eq i64 %i.cp, %..i
  br i1 %exitcond309.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.z

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, %bb.ac, %bb.y
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.y ], [ %..i, %bb.ac ], [ %.sroa.0.0.i136252, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.cq = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cr = add i64 %.sroa.0.0.i136.lcssa, %i.by
  br label %bb.x

bb.ad:                                            ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd
  store i64 %.sroa.014.1, ptr %i.cs, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.x
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ct = sub i64 %i.bf, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ct, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0265
  br i1 %.not131, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ai, %bb.ad
  %.not.i143 = icmp slt i64 %i.bh, %i.au
  %or.cond189 = select i1 %i.bj, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %.lr.ph263

bb.ah:                                            ; preds = %bb.af
  %i.cu = sub i64 %i.h, %i.ct                     ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.k
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cu
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !28
  %i.cy = add i64 %i.cx, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cy, %.sroa.025.0
  br i1 %.not132, label %bb.ag, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cz = sub i64 %i.aq, %.sroa.014.1
  %i.da = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge.sink.split

bb.al:                                            ; preds = %bb.j
  %.not133 = icmp eq i64 %i.ax, %.sroa.048.0265
  %.pre319 = add i64 %i.ac, %i.ax                 ; 6 uses
  br i1 %.not133, label %._crit_edge311, label %bb.an

bb.am:                                            ; preds = %._crit_edge312.a, %bb.aq
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312.a ], [ %i.de, %bb.aq ] ; 3 uses
  %i.db = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.db, label %bb.av, label %bb.aw

._crit_edge311:                                   ; preds = %bb.al, %bb.aq
  %i.dc = icmp ult i64 %.pre319, %i.k
  br i1 %i.dc, label %bb.as, label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.dd = icmp ult i64 %.pre319, %i.k
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.de = add i64 %i.i, %i.ax                     ; 4 uses
  %i.df = icmp ult i64 %i.de, %i.k
  br i1 %i.df, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !28
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.de
  %i.dj = load i64, ptr %i.di, align 8, !noundef !28
  %i.dk = icmp ult i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.am, label %._crit_edge311

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75
  unreachable

bb.as:                                            ; preds = %._crit_edge311
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !28
  %i.dn = add i64 %i.dm, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge311
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75
  unreachable

bb.au:                                            ; preds = %bb.av, %bb.as
  %.sroa.04.0 = phi i64 [ %i.dt, %bb.av ], [ %i.dn, %bb.as ] ; 6 uses
  %i.do = sub i64 %.sroa.04.0, %i.ax              ; 3 uses
  %i.dp = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dp, i1 false
  %i.dq = icmp ult i64 %i.do, %i.d
  %i.dr = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dr, i1 %i.dq, i1 false
  br i1 %or.cond186, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !28
  br label %bb.au

bb.aw:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75
  unreachable

bb.ax:                                            ; preds = %bb.au, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.04.1 = phi i64 [ %i.eg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.04.0, %bb.au ] ; 2 uses
  %i.du = add i64 %i.ax, %i.h                     ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.k
  br i1 %i.dv, label %bb.bd, label %bb.be

bb.ay:                                            ; preds = %bb.au
  %i.dw = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dx = add i64 %i.do, %5                       ; 2 uses
  %i.dy = sub i64 %3, %i.dw
  %i.dz = sub i64 %6, %i.dx
  %..i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dy) ; 3 uses
  %.not268 = icmp eq i64 %..i149, 0
  br i1 %.not268, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay
  %invariant.op = sub i64 %i.dx, %i.ae            ; 2 uses
  %invariant.op245 = sub i64 %i.dw, %i.ak         ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.bc
  %.sroa.0.0.i243 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %bb.bc ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i243, %invariant.op ; 2 uses
  %i.ea = icmp ult i64 %.reass, %i.ag
  br i1 %i.ea, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !16008
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139: ; preds = %bb.az
  %.reass246 = add nuw i64 %.sroa.0.0.i243, %invariant.op245 ; 2 uses
  %i.eb = icmp ult i64 %.reass246, %i.am
  br i1 %i.eb, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %umax308 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op245)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax308, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !16009
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass246
  %.val141 = load i64, ptr %i.ec, align 8, !noundef !28
  %.val142 = load i64, ptr %i.ed, align 8, !noundef !28
  %i.ee = icmp eq i64 %.val141, %.val142
  br i1 %i.ee, label %bb.bc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138
  %i.ef = add nuw i64 %.sroa.0.0.i243, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %..i149
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.az

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, %bb.bc, %bb.ay
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.ay ], [ %..i149, %bb.bc ], [ %.sroa.0.0.i243, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138 ]
  %i.eg = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ax

bb.bd:                                            ; preds = %bb.ax
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du
  store i64 %.sroa.04.1, ptr %i.eh, align 8
  br i1 %.not, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.ax
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.du, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bi, %bb.bd
  %.not.i = icmp slt i64 %i.az, %i.au
  %or.cond187 = select i1 %i.bb, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph263.preheader, label %.lr.ph250

.lr.ph263.preheader:                              ; preds = %.lr.ph250, %bb.bf
  br label %.lr.ph263

bb.bg:                                            ; preds = %bb.bd
  %i.ei = sub i64 %i.ax, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0265
  br i1 %.not134.not, label %bb.bh, label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  %i.ej = sub i64 %i.q, %i.ei                     ; 3 uses
  %i.ek = icmp ult i64 %i.ej, %i.t
  br i1 %i.ek, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ej
  %i.em = load i64, ptr %i.el, align 8, !noundef !28
  %i.en = add i64 %i.em, %.sroa.04.1
  %.not135 = icmp ult i64 %i.en, %.sroa.025.0
  br i1 %.not135, label %bb.bf, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.eo = add i64 %.sroa.04.0, %2
  %i.ep = add i64 %i.do, %5
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.bk, %bb.ak
  %.sink398 = phi i64 [ %i.cz, %bb.ak ], [ %i.eo, %bb.bk ]
  %.sink396 = phi i64 [ %i.da, %bb.ak ], [ %i.ep, %bb.bk ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.er, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, %._crit_edge.sink.split
  %.sink = phi i64 [ 1, %._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !28 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !28 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !28 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph266, label %bb.h, !prof !29

.lr.ph266:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !28 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph266, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread
  %.sroa.048.0265 = phi i64 [ 0, %.lr.ph266 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0265, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0265          ; 6 uses
  br label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph250.preheader, %bb.bf
  %.sroa.7.0249 = phi i64 [ %i.az, %bb.bf ], [ %.sroa.048.0265, %.lr.ph250.preheader ]
  %not..sroa.11163.0248 = phi i64 [ 1, %bb.bf ], [ 0, %.lr.ph250.preheader ]
  %i.av = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0249, i64 %not..sroa.11163.0248) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1       ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.av, 0       ; 10 uses
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 -1) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.ay, 1
  %i.bb = or i1 %i.aw, %i.ba
  %.not3.i.not = icmp slt i64 %i.ax, %i.au
  %or.cond188 = select i1 %i.aw, i1 true, i1 %.not3.i.not
  br i1 %or.cond188, label %.lr.ph263.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph250
  %i.bc = icmp eq i64 %i.ax, %i.au
  br i1 %i.bc, label %._crit_edge312.a, label %bb.al

._crit_edge312.a:                                 ; preds = %bb.j
  %.pre317 = add i64 %i.i, %i.ax
  br label %bb.am

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.ag
  %not..sroa.14172.0262 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph263.preheader ]
  %.sroa.7171.0261 = phi i64 [ %i.bh, %bb.ag ], [ %.sroa.048.0265, %.lr.ph263.preheader ]
  %i.bd = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7171.0261, i64 %not..sroa.14172.0262) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 10 uses
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bf, i64 -1) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bg, 1
  %i.bj = or i1 %i.be, %i.bi
  %.not3.i144.not = icmp slt i64 %i.bf, %i.au
  %or.cond190 = select i1 %i.be, i1 true, i1 %.not3.i144.not
  br i1 %or.cond190, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph263
  %i.bk = icmp eq i64 %i.bf, %i.au
  br i1 %i.bk, label %._crit_edge314.a, label %bb.l

._crit_edge314.a:                                 ; preds = %bb.k
  %.pre = add i64 %i.r, %i.bf
  br label %bb.m

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread: ; preds = %bb.ag, %.lr.ph263
  %exitcond310.not = icmp eq i64 %.sroa.048.0265, %.sroa.047.0
  br i1 %exitcond310.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bf, %.sroa.048.0265
  %.pre315 = add i64 %i.ap, %i.bf                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.n

bb.m:                                             ; preds = %._crit_edge314.a, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314.a ], [ %i.bo, %bb.q ] ; 3 uses
  %i.bl = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bl, label %bb.v, label %bb.w

._crit_edge313:                                   ; preds = %bb.l, %bb.q
  %i.bm = icmp ult i64 %.pre315, %i.t
  br i1 %i.bm, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp ult i64 %.pre315, %i.t
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = add i64 %i.r, %i.bf                     ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %i.t
  br i1 %i.bp, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.br = load i64, ptr %i.bq, align 8, !noundef !28
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bo
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !28
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %._crit_edge313

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.s:                                             ; preds = %._crit_edge313
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !28
  %i.bx = add i64 %i.bw, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cc, %bb.v ], [ %i.bx, %bb.s ] ; 5 uses
  %i.by = sub i64 %.sroa.014.0, %i.bf             ; 4 uses
  %i.bz = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.ca = icmp ult i64 %i.by, %.sroa.037.0
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !28
  br label %bb.u

bb.w:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.cr, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.by, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.cq, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cd = add i64 %i.bf, %i.q                     ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %i.t
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.cf = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cg = sub i64 %i.ar, %i.by                    ; 2 uses
  %i.ch = sub i64 %i.cf, %2
  %i.ci = sub i64 %i.cg, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch) ; 3 uses
  %.not269 = icmp eq i64 %..i, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.y
  %invariant.op256 = sub i64 %i.cg, %i.ae
  %invariant.op258 = sub i64 %i.cf, %i.ak
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph253, %bb.ac
  %.sroa.0.0.i136252 = phi i64 [ 0, %.lr.ph253 ], [ %i.cp, %bb.ac ] ; 3 uses
  %i.cj = xor i64 %.sroa.0.0.i136252, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cj    ; 3 uses
  %i.ck = icmp ult i64 %.reass257, %i.ag
  br i1 %i.ck, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !16018
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137: ; preds = %bb.z
  %.reass259 = add i64 %invariant.op258, %i.cj    ; 3 uses
  %i.cl = icmp ult i64 %.reass259, %i.am
  br i1 %i.cl, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !16019
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.cm, align 4, !noundef !28
  %.val140 = load i32, ptr %i.cn, align 4, !noundef !28
  %i.co = icmp eq i32 %.val, %.val140
  br i1 %i.co, label %bb.ac, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.cp = add nuw i64 %.sroa.0.0.i136252, 1       ; 2 uses
  %exitcond309.not = icmp eq i64 %i.cp, %..i
  br i1 %exitcond309.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.z

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, %bb.ac, %bb.y
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.y ], [ %..i, %bb.ac ], [ %.sroa.0.0.i136252, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.cq = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cr = add i64 %.sroa.0.0.i136.lcssa, %i.by
  br label %bb.x

bb.ad:                                            ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd
  store i64 %.sroa.014.1, ptr %i.cs, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.x
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ct = sub i64 %i.bf, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ct, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0265
  br i1 %.not131, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ai, %bb.ad
  %.not.i143 = icmp slt i64 %i.bh, %i.au
  %or.cond189 = select i1 %i.bj, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %.lr.ph263

bb.ah:                                            ; preds = %bb.af
  %i.cu = sub i64 %i.h, %i.ct                     ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.k
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cu
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !28
  %i.cy = add i64 %i.cx, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cy, %.sroa.025.0
  br i1 %.not132, label %bb.ag, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cz = sub i64 %i.aq, %.sroa.014.1
  %i.da = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge.sink.split

bb.al:                                            ; preds = %bb.j
  %.not133 = icmp eq i64 %i.ax, %.sroa.048.0265
  %.pre319 = add i64 %i.ac, %i.ax                 ; 6 uses
  br i1 %.not133, label %._crit_edge311, label %bb.an

bb.am:                                            ; preds = %._crit_edge312.a, %bb.aq
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312.a ], [ %i.de, %bb.aq ] ; 3 uses
  %i.db = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.db, label %bb.av, label %bb.aw

._crit_edge311:                                   ; preds = %bb.al, %bb.aq
  %i.dc = icmp ult i64 %.pre319, %i.k
  br i1 %i.dc, label %bb.as, label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.dd = icmp ult i64 %.pre319, %i.k
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.de = add i64 %i.i, %i.ax                     ; 4 uses
  %i.df = icmp ult i64 %i.de, %i.k
  br i1 %i.df, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !28
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.de
  %i.dj = load i64, ptr %i.di, align 8, !noundef !28
  %i.dk = icmp ult i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.am, label %._crit_edge311

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75
  unreachable

bb.as:                                            ; preds = %._crit_edge311
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !28
  %i.dn = add i64 %i.dm, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge311
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75
  unreachable

bb.au:                                            ; preds = %bb.av, %bb.as
  %.sroa.04.0 = phi i64 [ %i.dt, %bb.av ], [ %i.dn, %bb.as ] ; 6 uses
  %i.do = sub i64 %.sroa.04.0, %i.ax              ; 3 uses
  %i.dp = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dp, i1 false
  %i.dq = icmp ult i64 %i.do, %i.d
  %i.dr = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dr, i1 %i.dq, i1 false
  br i1 %or.cond186, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !28
  br label %bb.au

bb.aw:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75
  unreachable

bb.ax:                                            ; preds = %bb.au, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.04.1 = phi i64 [ %i.eg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.04.0, %bb.au ] ; 2 uses
  %i.du = add i64 %i.ax, %i.h                     ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.k
  br i1 %i.dv, label %bb.bd, label %bb.be

bb.ay:                                            ; preds = %bb.au
  %i.dw = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dx = add i64 %i.do, %5                       ; 2 uses
  %i.dy = sub i64 %3, %i.dw
  %i.dz = sub i64 %6, %i.dx
  %..i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dy) ; 3 uses
  %.not268 = icmp eq i64 %..i149, 0
  br i1 %.not268, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay
  %invariant.op = sub i64 %i.dx, %i.ae            ; 2 uses
  %invariant.op245 = sub i64 %i.dw, %i.ak         ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.bc
  %.sroa.0.0.i243 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %bb.bc ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i243, %invariant.op ; 2 uses
  %i.ea = icmp ult i64 %.reass, %i.ag
  br i1 %i.ea, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !16020
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139: ; preds = %bb.az
  %.reass246 = add nuw i64 %.sroa.0.0.i243, %invariant.op245 ; 2 uses
  %i.eb = icmp ult i64 %.reass246, %i.am
  br i1 %i.eb, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %umax308 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op245)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax308, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !16021
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass246
  %.val141 = load i32, ptr %i.ec, align 4, !noundef !28
  %.val142 = load i32, ptr %i.ed, align 4, !noundef !28
  %i.ee = icmp eq i32 %.val141, %.val142
  br i1 %i.ee, label %bb.bc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138
  %i.ef = add nuw i64 %.sroa.0.0.i243, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %..i149
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.az

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, %bb.bc, %bb.ay
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.ay ], [ %..i149, %bb.bc ], [ %.sroa.0.0.i243, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138 ]
  %i.eg = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ax

bb.bd:                                            ; preds = %bb.ax
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du
  store i64 %.sroa.04.1, ptr %i.eh, align 8
  br i1 %.not, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.ax
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.du, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bi, %bb.bd
  %.not.i = icmp slt i64 %i.az, %i.au
  %or.cond187 = select i1 %i.bb, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph263.preheader, label %.lr.ph250

.lr.ph263.preheader:                              ; preds = %.lr.ph250, %bb.bf
  br label %.lr.ph263

bb.bg:                                            ; preds = %bb.bd
  %i.ei = sub i64 %i.ax, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0265
  br i1 %.not134.not, label %bb.bh, label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  %i.ej = sub i64 %i.q, %i.ei                     ; 3 uses
  %i.ek = icmp ult i64 %i.ej, %i.t
  br i1 %i.ek, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ej
  %i.em = load i64, ptr %i.el, align 8, !noundef !28
  %i.en = add i64 %i.em, %.sroa.04.1
  %.not135 = icmp ult i64 %i.en, %.sroa.025.0
  br i1 %.not135, label %bb.bf, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.eo = add i64 %.sroa.04.0, %2
  %i.ep = add i64 %i.do, %5
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.bk, %bb.ak
  %.sink398 = phi i64 [ %i.cz, %bb.ak ], [ %i.eo, %bb.bk ]
  %.sink396 = phi i64 [ %i.da, %bb.ak ], [ %i.ep, %bb.bk ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.er, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, %._crit_edge.sink.split
  %.sink = phi i64 [ 1, %._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !28 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !28 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !28 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph307, label %bb.h, !prof !29

.lr.ph307:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = load i64, ptr %4, align 8, !range !41
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !28 ; 6 uses
  %i.aj = load i64, ptr %1, align 8, !range !41
  %.fr309 = freeze i64 %i.aj
  %i.ak = trunc i64 %.fr309 to i1                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !28 ; 8 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph307, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread
  %.sroa.048.0306 = phi i64 [ 0, %.lr.ph307 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0306, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0306          ; 6 uses
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %bb.bl
  %.sroa.7.0268 = phi i64 [ %i.az, %bb.bl ], [ %.sroa.048.0306, %.lr.ph269.preheader ]
  %not..sroa.11176.0267 = phi i64 [ 1, %bb.bl ], [ 0, %.lr.ph269.preheader ]
  %i.av = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0268, i64 %not..sroa.11176.0267) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1       ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.av, 0       ; 10 uses
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 -1) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.ay, 1
  %i.bb = or i1 %i.aw, %i.ba
  %.not3.i.not = icmp slt i64 %i.ax, %i.au
  %or.cond203 = select i1 %i.aw, i1 true, i1 %.not3.i.not
  br i1 %or.cond203, label %.lr.ph304.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph269
  %i.bc = icmp eq i64 %i.ax, %i.au
  br i1 %i.bc, label %._crit_edge378.a, label %bb.ao

._crit_edge378.a:                                 ; preds = %bb.j
  %.pre383 = add i64 %i.i, %i.ax
  br label %bb.ap

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %bb.aj
  %not..sroa.14185.0303 = phi i64 [ 1, %bb.aj ], [ 0, %.lr.ph304.preheader ]
  %.sroa.7184.0302 = phi i64 [ %i.bh, %bb.aj ], [ %.sroa.048.0306, %.lr.ph304.preheader ]
  %i.bd = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7184.0302, i64 %not..sroa.14185.0303) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 10 uses
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bf, i64 -1) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bg, 1
  %i.bj = or i1 %i.be, %i.bi
  %.not3.i138.not = icmp slt i64 %i.bf, %i.au
  %or.cond205 = select i1 %i.be, i1 true, i1 %.not3.i138.not
  br i1 %or.cond205, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph304
  %i.bk = icmp eq i64 %i.bf, %i.au
  br i1 %i.bk, label %._crit_edge380.a, label %bb.l

._crit_edge380.a:                                 ; preds = %bb.k
  %.pre = add i64 %i.r, %i.bf
  br label %bb.m

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread: ; preds = %bb.aj, %.lr.ph304
  %exitcond376.not = icmp eq i64 %.sroa.048.0306, %.sroa.047.0
  br i1 %exitcond376.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bf, %.sroa.048.0306
  %.pre381 = add i64 %i.ap, %i.bf                 ; 6 uses
  br i1 %.not130, label %._crit_edge379, label %bb.n

bb.m:                                             ; preds = %._crit_edge380.a, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge380.a ], [ %i.bo, %bb.q ] ; 3 uses
  %i.bl = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bl, label %bb.v, label %bb.w

._crit_edge379:                                   ; preds = %bb.l, %bb.q
  %i.bm = icmp ult i64 %.pre381, %i.t
  br i1 %i.bm, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp ult i64 %.pre381, %i.t
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = add i64 %i.r, %i.bf                     ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %i.t
  br i1 %i.bp, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre381, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre381
  %i.br = load i64, ptr %i.bq, align 8, !noundef !28
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bo
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !28
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %._crit_edge379

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.s:                                             ; preds = %._crit_edge379
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre381
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !28
  %i.bx = add i64 %i.bw, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge379
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre381, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cc, %bb.v ], [ %i.bx, %bb.s ] ; 5 uses
  %i.by = sub i64 %.sroa.014.0, %i.bf             ; 4 uses
  %i.bz = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.ca = icmp ult i64 %i.by, %.sroa.037.0
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !28
  br label %bb.u

bb.w:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.dz, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.by, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.dy, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cd = add i64 %i.bf, %i.q                     ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %i.t
  br i1 %i.ce, label %bb.ag, label %bb.ah

bb.y:                                             ; preds = %bb.u
  %i.cf = sub i64 %i.aq, %.sroa.014.0             ; 4 uses
  %i.cg = sub i64 %i.ar, %i.by                    ; 4 uses
  %i.ch = sub i64 %i.cf, %2
  %i.ci = sub i64 %i.cg, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch) ; 7 uses
  %.not311 = icmp eq i64 %..i, 0
  br i1 %.not311, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.y
  br i1 %i.ae, label %.lr.ph272.split.us, label %.lr.ph272.split

.lr.ph272.split.us:                               ; preds = %.lr.ph272, %bb.ad
  %.sroa.0.0.i136271.us = phi i64 [ %i.cy, %bb.ad ], [ 0, %.lr.ph272 ] ; 4 uses
  %i.cj = xor i64 %.sroa.0.0.i136271.us, -1       ; 2 uses
  %i.ck = add i64 %i.cg, %i.cj                    ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ag
  br i1 %i.cl, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us: ; preds = %.lr.ph272.split.us
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ck ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = getelementptr i8, ptr %i.cm, i64 16
  %.sroa.0.1.i.i.us = load ptr, ptr %i.cn, align 8, !noalias !16048, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.us = load i64, ptr %i.co, align 8, !noalias !16048, !noundef !28 ; 2 uses
  %i.cp = add i64 %i.cf, %i.cj                    ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us
  br i1 %i.cq, label %bb.aa, label %.split279.us

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cp ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us

bb.ab:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us
  br i1 %i.cq, label %bb.ac, label %.split279.us

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.cp ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us: ; preds = %bb.ac, %bb.aa
  %.sroa.5.1.i.in.i143.us = phi ptr [ %i.cv, %bb.ac ], [ %i.cs, %bb.aa ]
  %.sroa.0.1.i.in.i144.us = phi ptr [ %i.cu, %bb.ac ], [ %i.cr, %bb.aa ]
  %.sroa.5.1.i.i146.us = load i64, ptr %.sroa.5.1.i.in.i143.us, align 8, !noalias !16049, !noundef !28
  %i.cw = icmp eq i64 %.sroa.5.1.i.i.us, %.sroa.5.1.i.i146.us
  br i1 %i.cw, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us
  %.sroa.0.1.i.i145.us = load ptr, ptr %.sroa.0.1.i.in.i144.us, align 8, !noalias !16049, !nonnull !28, !noundef !28
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i145.us, i64 %.sroa.5.1.i.i.us), !alias.scope !16050
  %i.cx = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.cx, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.ad:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us
  %i.cy = add nuw i64 %.sroa.0.0.i136271.us, 1    ; 2 uses
  %exitcond375.not = icmp eq i64 %i.cy, %..i
  br i1 %exitcond375.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272.split.us

.lr.ph272.split:                                  ; preds = %.lr.ph272
  br i1 %i.ak, label %.lr.ph272.split.split.us, label %.lr.ph272.split.split

.lr.ph272.split.split.us:                         ; preds = %.lr.ph272.split, %bb.ae
  %.sroa.0.0.i136271.us283 = phi i64 [ %i.dl, %bb.ae ], [ 0, %.lr.ph272.split ] ; 4 uses
  %i.cz = xor i64 %.sroa.0.0.i136271.us283, -1    ; 2 uses
  %i.da = add i64 %i.cg, %i.cz                    ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284: ; preds = %.lr.ph272.split.split.us
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.0.1.i.i.us285 = load ptr, ptr %i.dc, align 8, !noalias !16048, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.us286 = load i64, ptr %i.dd, align 8, !noalias !16048, !noundef !28 ; 2 uses
  %i.de = add i64 %i.cf, %i.cz                    ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.am
  br i1 %i.df, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287, label %.split279.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.de ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  %.sroa.5.1.i.i146.us290 = load i64, ptr %i.dh, align 8, !noalias !16049, !noundef !28
  %i.di = icmp eq i64 %.sroa.5.1.i.i.us286, %.sroa.5.1.i.i146.us290
  br i1 %i.di, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  %.sroa.0.1.i.i145.us292 = load ptr, ptr %i.dj, align 8, !noalias !16049, !nonnull !28, !noundef !28
  %bcmp.i.us293 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us285, ptr nonnull readonly %.sroa.0.1.i.i145.us292, i64 %.sroa.5.1.i.i.us286), !alias.scope !16050
  %i.dk = icmp eq i32 %bcmp.i.us293, 0
  br i1 %i.dk, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291
  %i.dl = add nuw i64 %.sroa.0.0.i136271.us283, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %i.dl, %..i
  br i1 %exitcond374.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272.split.split.us

.lr.ph272.split.split:                            ; preds = %.lr.ph272.split, %bb.af
  %.sroa.0.0.i136271 = phi i64 [ %i.dx, %bb.af ], [ 0, %.lr.ph272.split ] ; 4 uses
  %i.dm = xor i64 %.sroa.0.0.i136271, -1          ; 2 uses
  %i.dn = add i64 %i.cg, %i.dm                    ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.ag
  br i1 %i.do, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph272.split.split
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.1.i.i = load ptr, ptr %i.dp, align 8, !noalias !16048, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i = load i64, ptr %i.dq, align 8, !noalias !16048, !noundef !28 ; 2 uses
  %i.dr = add i64 %i.cf, %i.dm                    ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.am
  br i1 %i.ds, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147, label %.split279.us

.split277.us:                                     ; preds = %.lr.ph272.split.split, %.lr.ph272.split.split.us, %.lr.ph272.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !16051
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  %invariant.gep60.i = getelementptr [16 x i8], ptr %.val8.i.i.i.i.i, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.01.051.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.i, %bb.h ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.051.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.g
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax40.i, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #75, !noalias !19190
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond41.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.h
  br i1 %exitcond41.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #75, !noalias !19191
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19193)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !19192, !noalias !19194, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19192, !noalias !19194, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19195)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !19195, !noalias !19196, !noundef !28
  %i.o = sub i64 %i.l, %i.n                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !19195, !noalias !19196, !noundef !28 ; 2 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19197
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i
  %gep61.i = getelementptr [16 x i8], ptr %invariant.gep60.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !19195, !noalias !19196, !nonnull !28, !noundef !28
  %i.u = load ptr, ptr %gep61.i, align 8, !alias.scope !19193, !noalias !19198, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep61.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !19193, !noalias !19198, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19199)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !19199, !noalias !19200, !noundef !28
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !19199, !noalias !19200, !noundef !28 ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19201
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !19199, !noalias !19200, !nonnull !28, !noundef !28
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.z
  %.val.i.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !19202, !noundef !28
  %.val7.i.i.i.i.i = load i32, ptr %i.ag, align 4, !noalias !19202, !noundef !28
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.ah, label %bb.h, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit

bb.h:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread427, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.051.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread427

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread427, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i74426 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i74430, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread427 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i74426, %2           ; 3 uses
  %i.aj = add i64 %.sroa.0.0.i74426, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19204)
  %i.ak = icmp uge i64 %i.ai, %3
  %i.al = icmp uge i64 %i.aj, %6
  %or.cond.i75 = or i1 %i.ak, %i.al
  br i1 %or.cond.i75, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i76

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1498 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1498, align 8
  %.phi.trans.insert1500 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1500, align 8
  %.phi.trans.insert1502 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1502, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i76:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = sub nuw i64 %3, %i.ai                   ; 2 uses
  %i.ar = sub nuw i64 %6, %i.aj                   ; 2 uses
  %.val11.i.i.i.i.i77 = load i64, ptr %i.am, align 8, !alias.scope !19204, !noalias !19203 ; 5 uses
  %.val9.i.i.i.i.i78 = load i64, ptr %i.an, align 8, !alias.scope !19203, !noalias !19204 ; 5 uses
  %.val8.i.i.i.i.i79 = load ptr, ptr %i.ao, align 8, !alias.scope !19203, !noalias !19204 ; 4 uses
  %.val10.i.i.i.i.i80 = load ptr, ptr %i.ap, align 8, !alias.scope !19204, !noalias !19203 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i76
  %i.as = phi i64 [ %3, %.lr.ph.i.i.i.i76 ], [ %i.av, %bb.o ]
  %.sroa.01.049.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i76 ], [ %i.bz, %bb.o ] ; 3 uses
  %i.at = phi i64 [ %6, %.lr.ph.i.i.i.i76 ], [ %i.au, %bb.o ]
  %i.au = add i64 %i.at, -1                       ; 4 uses
  %exitcond.not.i.i.i.i81 = icmp eq i64 %.sroa.01.049.i.i.i.i, %i.aq
  br i1 %exitcond.not.i.i.i.i81, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add i64 %i.as, -1                       ; 4 uses
  %i.aw = icmp ult i64 %i.au, %.val11.i.i.i.i.i77
  br i1 %i.aw, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i77, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #75, !noalias !19205
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82: ; preds = %bb.j
  %i.ax = icmp ult i64 %i.av, %.val9.i.i.i.i.i78
  br i1 %i.ax, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i83, label %bb.l

bb.l:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i78, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #75, !noalias !19206
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i83: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i.i.i.i80, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19208)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !19207, !noalias !19209, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !19207, !noalias !19209, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19210)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !19210, !noalias !19211, !noundef !28
  %i.be = sub i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !19210, !noalias !19211, !noundef !28 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i84, label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i83
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19212
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i84: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i83
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.val8.i.i.i.i.i79, i64 %i.av ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !19210, !noalias !19211, !nonnull !28, !noundef !28
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !19208, !noalias !19213, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !19208, !noalias !19213, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19214)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !19214, !noalias !19215, !noundef !28
  %i.bq = sub i64 %i.bn, %i.bp                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !19214, !noalias !19215, !noundef !28 ; 2 uses
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i84
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19216
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i84
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.be
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !19214, !noalias !19215, !nonnull !28, !noundef !28
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bq
  %.val.i.i.i.i.i86 = load i32, ptr %i.bu, align 4, !noalias !19217, !noundef !28
  %.val7.i.i.i.i.i87 = load i32, ptr %i.bx, align 4, !noalias !19217, !noundef !28
  %i.by = icmp eq i32 %.val.i.i.i.i.i86, %.val7.i.i.i.i.i87
  br i1 %i.by, label %bb.o, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85
  %i.bz = add nuw i64 %.sroa.01.049.i.i.i.i, 1    ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.bz, %i.ar
  br i1 %exitcond102.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85, %bb.o, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val9.i.i.i.i.i78, %bb.o ], [ %.val9.i.i.i.i.i78, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85 ], [ %.val9.i.i.i.i.i78, %bb.i ] ; 22 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val8.i.i.i.i.i79, %bb.o ], [ %.val8.i.i.i.i.i79, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85 ], [ %.val8.i.i.i.i.i79, %bb.i ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val11.i.i.i.i.i77, %bb.o ], [ %.val11.i.i.i.i.i77, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85 ], [ %.val11.i.i.i.i.i77, %bb.i ] ; 24 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val10.i.i.i.i.i80, %bb.o ], [ %.val10.i.i.i.i.i80, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85 ], [ %.val10.i.i.i.i.i80, %bb.i ] ; 14 uses
  %.sroa.0.0.i88 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aq, %bb.i ], [ %.sroa.01.049.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i85 ], [ %i.ar, %bb.o ] ; 4 uses
  %i.ca = sub i64 %3, %.sroa.0.0.i88              ; 10 uses
  %i.cb = sub i64 %6, %.sroa.0.0.i88              ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.p

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread427: ; preds = %bb.h, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i74430 = phi i64 [ %.sroa.01.051.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.h ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !19218
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ci, align 8, !alias.scope !19218
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.cj, align 8, !alias.scope !19219
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !19219
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19219
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19219
  %i.ck = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.ck, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.ck, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.cl = select i1 %i.ck, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.cl, %.sroa.0.0.i74430
  store i64 1, ptr %i.cj, align 8, !alias.scope !19219
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !19219
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19219
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19219
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.p:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0379.0 = phi i64 [ %i.aj, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0379.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 47 uses
  %.sroa.0.0 = phi i64 [ %i.ai, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 45 uses
  %i.cm = icmp ult i64 %.sroa.0.0, %i.ca          ; 2 uses
  %i.cn = icmp ult i64 %.sroa.0379.0, %i.cb       ; 3 uses
  %or.cond461 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond461, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %bb.p
  br i1 %i.cm, label %bb.aw, label %bb.ax

bb.r:                                             ; preds = %bb.p
  %i.co = sub nuw i64 %i.ca, %.sroa.0.0           ; 6 uses
  %i.cp = sub nuw i64 %i.cb, %.sroa.0379.0        ; 5 uses
  %i.cq = icmp ult i64 %i.co, 97
  %i.cr = icmp ult i64 %i.cp, 97
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.co) ; 2 uses
  %..i89 = tail call noundef i64 @llvm.umax.i64(i64 %i.cp, i64 %i.co)
  %i.cs = shl nuw i64 %..i, 1
  %i.ct = icmp slt i64 %..i, 0
  br i1 %i.ct, label %bb.t, label %bb.u, !prof !44

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.052.0.i = phi i64 [ -1, %bb.t ], [ %i.cs, %bb.s ]
  %i.cu = icmp ult i64 %..i89, %.sroa.052.0.i
  br i1 %i.cu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp ule i64 %i.cp, %i.co
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.cv = icmp ule i64 %i.co, %i.cp               ; 2 uses
  br label %bb.w

.loopexit:                                        ; preds = %.outer.us, %bb.ad, %.lr.ph.split.split.split.us.4, %.lr.ph.split.split.us.4
  %.sroa.525.2.i.ph.lcssa764 = phi i64 [ %.sroa.525.0.i1104, %.lr.ph.split.split.us.4 ], [ %.sroa.525.2.i.ph1065.us, %bb.ad ], [ %.sroa.525.0.i1104, %.lr.ph.split.split.split.us.4 ], [ %.sroa.525.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa753 = phi i64 [ %.sroa.023.0.i1105, %.lr.ph.split.split.us.4 ], [ %.sroa.023.1.i.ph1066.us, %bb.ad ], [ %.sroa.023.0.i1105, %.lr.ph.split.split.split.us.4 ], [ %.sroa.023.2.i.us, %.outer.us ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa742 = phi i64 [ %.sroa.9.0.i1106, %.lr.ph.split.split.us.4 ], [ %.sroa.9.2.i.ph1067.us, %bb.ad ], [ %.sroa.9.0.i1106, %.lr.ph.split.split.split.us.4 ], [ %.sroa.9.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa731 = phi i64 [ %.sroa.12.0.i1107, %.lr.ph.split.split.us.4 ], [ %.sroa.12.2.i.ph1068.us, %bb.ad ], [ %.sroa.12.0.i1107, %.lr.ph.split.split.split.us.4 ], [ %.sroa.12.3.i.us, %.outer.us ] ; 2 uses
  %indvars.iv.next1487 = add i64 %indvars.iv1486, -1
  %exitcond1496 = icmp eq i64 %i.cw, 5
  br i1 %exitcond1496, label %bb.an, label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %indvars.iv1486 = phi i64 [ %i.co, %bb.v ], [ %indvars.iv.next1487, %.loopexit ] ; 2 uses
  %.sroa.12.0.i1107 = phi i64 [ undef, %bb.v ], [ %.sroa.12.2.i.ph.lcssa731, %.loopexit ] ; 3 uses
  %.sroa.9.0.i1106 = phi i64 [ undef, %bb.v ], [ %.sroa.9.2.i.ph.lcssa742, %.loopexit ] ; 3 uses
  %.sroa.023.0.i1105 = phi i64 [ 0, %bb.v ], [ %.sroa.023.1.i.ph.lcssa753, %.loopexit ] ; 3 uses
  %.sroa.525.0.i1104 = phi i64 [ undef, %bb.v ], [ %.sroa.525.2.i.ph.lcssa764, %.loopexit ] ; 3 uses
  %.sroa.0413.01103 = phi i64 [ 0, %bb.v ], [ %i.cw, %.loopexit ] ; 10 uses
  %i.cw = add nuw nsw i64 %.sroa.0413.01103, 1    ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0413.01103, 0        ; 2 uses
  %i.cy = add i64 %.sroa.0413.01103, %.sroa.0.0   ; 5 uses
  %i.cz = icmp ult i64 %i.cy, %.val61
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.cy ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %.fr = freeze i1 %i.cz
  %i.dc = sub i64 %i.ca, %i.cy
  br i1 %.fr, label %.lr.ph.us, label %.split1069

.lr.ph.us:                                        ; preds = %bb.w, %.outer.us
  %.sroa.12.2.i.ph1068.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i1107, %bb.w ] ; 7 uses
  %.sroa.9.2.i.ph1067.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i1106, %bb.w ] ; 7 uses
  %.sroa.023.1.i.ph1066.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i1105, %bb.w ] ; 4 uses
  %.sroa.525.2.i.ph1065.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i1104, %bb.w ] ; 7 uses
  %.sroa.0415.0.ph1064.us = phi i64 [ %i.df, %.outer.us ], [ 0, %bb.w ] ; 2 uses
  %i.dd = add i64 %.sroa.0379.0, %.sroa.0415.0.ph1064.us ; 2 uses
  %i.de = sub i64 %i.cb, %i.dd
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.us
  %indvars.iv1488 = phi i64 [ %indvars.iv.next1489, %bb.ad ], [ %i.de, %.lr.ph.us ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ %i.dd, %.lr.ph.us ] ; 2 uses
  %.sroa.0415.0855.us.us = phi i64 [ %i.df, %bb.ad ], [ %.sroa.0415.0.ph1064.us, %.lr.ph.us ] ; 10 uses
  %i.df = add i64 %.sroa.0415.0855.us.us, 1       ; 2 uses
  %i.dg = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19220
  br i1 %i.dg, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = icmp eq i64 %.sroa.0415.0855.us.us, 0   ; 2 uses
  %i.di = or i64 %.sroa.0415.0855.us.us, %.sroa.0413.01103
  %or.cond2.i.us.us = icmp eq i64 %i.di, 0
  br i1 %or.cond2.i.us.us, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.cx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.dh
  br i1 %brmerge.i.not.us.us, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %or.cond3.old.i.us.us = or i1 %i.cv, %i.dh
  br i1 %or.cond3.old.i.us.us, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = add i64 %.sroa.0415.0855.us.us, %.sroa.0379.0 ; 5 uses
  %i.dk = icmp ult i64 %i.dj, %.val63
  br i1 %i.dk, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us, label %.split864

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us: ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.dj ; 2 uses
  %.val56.us.us = load ptr, ptr %i.dl, align 8, !alias.scope !19221, !noalias !19222, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val57.us.us = load i64, ptr %i.dm, align 8, !alias.scope !19221, !noalias !19222, !noundef !28
  %.val58.us.us = load ptr, ptr %i.da, align 8    ; 4 uses
  %.val59.us.us = load i64, ptr %i.db, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19223)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !19223, !noalias !19224, !noundef !28
  %i.dp = sub i64 %.val57.us.us, %i.do            ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !19223, !noalias !19224, !noundef !28 ; 2 uses
  %i.ds = icmp ult i64 %i.dp, %i.dr
  br i1 %i.ds, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.us, label %.split867.us

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.us: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us
  %i.dt = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !19223, !noalias !19224, !nonnull !28, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19225)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !19225, !noalias !19226, !noundef !28
  %i.dx = sub i64 %.val59.us.us, %i.dw            ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !19225, !noalias !19226, !noundef !28 ; 2 uses
  %i.ea = icmp ult i64 %i.dx, %i.dz
  br i1 %i.ea, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us, label %.split871.us

_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i.us.us
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dp
  %i.ec = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !19225, !noalias !19226, !nonnull !28, !noundef !28
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dx
  %.val.i.us.us = load i32, ptr %i.eb, align 4, !noundef !28
  %.val2.i.us.us = load i32, ptr %i.ee, align 4, !noundef !28
  %.not462.us.us = icmp eq i32 %.val.i.us.us, %.val2.i.us.us
  br i1 %.not462.us.us, label %.split875.us.us, label %bb.ad

bb.ad:                                            ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us, %bb.ab, %bb.aa, %bb.y
  %exitcond = icmp eq i64 %.sroa.0415.0855.us.us, 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next1489 = add i64 %indvars.iv1488, -1
  br i1 %exitcond, label %.loopexit, label %bb.x

.split875.us.us:                                  ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us
  %i.ef = sub i64 %i.cb, %i.dj
  %..i99.us = tail call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.dc)
  %.not1111 = icmp eq i64 %..i99.us, 0
  br i1 %.not1111, label %.outer.us, label %.lr.ph1061.us.preheader

.lr.ph1061.us.preheader:                          ; preds = %.split875.us.us
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv1486, i64 %indvars.iv1488) ; 2 uses
  br label %.lr.ph1061.us

.lr.ph1061.us:                                    ; preds = %.lr.ph1061.us.preheader, %bb.ag
  %.sroa.01.0.i1060.us = phi i64 [ %i.fj, %bb.ag ], [ 0, %.lr.ph1061.us.preheader ] ; 5 uses
  %i.eg = and i64 %.sroa.01.0.i1060.us, 1023
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph1061.us
  %i.ei = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19220
  br i1 %i.ei, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph1061.us
  %i.ej = add nuw i64 %.sroa.01.0.i1060.us, %i.dj ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.val63
  br i1 %i.ek, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit100.us, label %.split1081.us

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit100.us: ; preds = %bb.af
  %i.el = add nuw i64 %.sroa.01.0.i1060.us, %i.cy ; 3 uses
  %i.em = icmp ult i64 %i.el, %.val61
  br i1 %i.em, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit101.us, label %.split1085.us

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit101.us: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit100.us
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.ej ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.el ; 2 uses
  %.val52.us = load ptr, ptr %i.en, align 8, !alias.scope !19221, !noalias !19222, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val53.us = load i64, ptr %i.ep, align 8, !alias.scope !19221, !noalias !19222, !noundef !28
  %.val54.us = load ptr, ptr %i.eo, align 8       ; 4 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 8
  %.val55.us = load i64, ptr %i.eq, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19227)
  %i.er = getelementptr inbounds nuw i8, ptr %.val52.us, i64 24
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !19227, !noalias !19228, !noundef !28
  %i.et = sub i64 %.val53.us, %i.es               ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val52.us, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !19227, !noalias !19228, !noundef !28 ; 2 uses
  %i.ew = icmp ult i64 %i.et, %i.ev
  br i1 %i.ew, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i102.us, label %.split1089.us

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit1.i102.us: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit101.us
  %i.ex = getelementptr inbounds nuw i8, ptr %.val52.us, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !19227, !noalias !19228, !nonnull !28, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.us) ]
end_hunk_3
begin_hunk_4_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a

.lr.ph.i280:                                      ; preds = %bb.gn
  %i.acj = mul i64 %i.tf, %i.sx                   ; 2 uses
  %i.ack = mul i64 %.sroa.0102.0672.i277, %i.sx   ; 2 uses
  %i.acl = add i64 %i.tf, %.sroa.0.0              ; 3 uses
  %i.acm = icmp ult i64 %i.acl, %.val61
  %i.acn = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.acl ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %.fr.i281 = freeze i1 %i.acm
  br i1 %.fr.i281, label %.lr.ph.split.us.i285, label %.lr.ph.split.i282

.lr.ph.split.us.i285:                             ; preds = %.lr.ph.i280, %bb.gz
  %.sroa.0105.0639.us.i286 = phi i64 [ %i.acp, %bb.gz ], [ %.pre1505, %.lr.ph.i280 ] ; 3 uses
  %i.acp = add i64 %.sroa.0105.0639.us.i286, -1   ; 6 uses
  %i.acq = and i64 %i.acp, 1023
  %i.acr = icmp eq i64 %i.acq, 0
  br i1 %i.acr, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %.lr.ph.split.us.i285
  %i.acs = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gp unwind label %.loopexit.split-lp.loopexit.split.us.i295

bb.gp:                                            ; preds = %bb.go
  br i1 %i.acs, label %.loopexit43.i275, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.lr.ph.split.us.i285
  %i.act = add i64 %i.acp, %.sroa.0379.0          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.acu = icmp ult i64 %i.act, %.val63
  br i1 %i.acu, label %bb.gr, label %.invoke1717.i194

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.act ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19337)
  %i.acw = load ptr, ptr %i.acv, align 8, !alias.scope !19336, !noalias !19338, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.acy = load i64, ptr %i.acx, align 8, !alias.scope !19336, !noalias !19338, !noundef !28
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 24
  %i.ada = load i64, ptr %i.acz, align 8, !alias.scope !19339, !noalias !19340, !noundef !28
  %i.adb = sub i64 %i.acy, %i.ada                 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.add = load i64, ptr %i.adc, align 8, !alias.scope !19339, !noalias !19340, !noundef !28 ; 2 uses
  %i.ade = icmp ult i64 %i.adb, %i.add
  br i1 %i.ade, label %.noexc.us.i287, label %.invoke1717.i194

.noexc.us.i287:                                   ; preds = %bb.gr
  %i.adf = load ptr, ptr %i.acn, align 8, !alias.scope !19337, !noalias !19341, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.adg = load i64, ptr %i.aco, align 8, !alias.scope !19337, !noalias !19341, !noundef !28
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %i.adi = load i64, ptr %i.adh, align 8, !alias.scope !19342, !noalias !19343, !noundef !28
  %i.adj = sub i64 %i.adg, %i.adi                 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adl = load i64, ptr %i.adk, align 8, !alias.scope !19342, !noalias !19343, !noundef !28 ; 2 uses
  %i.adm = icmp ult i64 %i.adj, %i.adl
  br i1 %i.adm, label %bb.gs, label %.invoke1717.i194

bb.gs:                                            ; preds = %.noexc.us.i287
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !alias.scope !19339, !noalias !19340, !nonnull !28, !noundef !28
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.adb
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !alias.scope !19342, !noalias !19343, !nonnull !28, !noundef !28
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.adj
  %.val225.us.i288 = load i32, ptr %i.adp, align 4, !noundef !28
  %.val226.us.i289 = load i32, ptr %i.ads, align 4, !noundef !28
  %i.adt = icmp eq i32 %.val225.us.i288, %.val226.us.i289
  br i1 %i.adt, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.adu = add i64 %i.acp, %i.ack                 ; 3 uses
  %i.adv = icmp ult i64 %i.adu, %i.sz
  br i1 %i.adv, label %bb.gu, label %.invoke1715.i

bb.gu:                                            ; preds = %bb.gt
  %i.adw = add i64 %.sroa.0105.0639.us.i286, %i.acj ; 3 uses
  %i.adx = icmp ult i64 %i.adw, %i.sz
  br i1 %i.adx, label %bb.gv, label %.split659.us.invoke.i203

bb.gv:                                            ; preds = %bb.gu
  %i.ady = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.adu
  %i.adz = load i8, ptr %i.ady, align 1, !noundef !28
  %i.aea = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.adw
  %i.aeb = load i8, ptr %i.aea, align 1, !noundef !28
  %..i.us.i290 = tail call noundef i8 @llvm.umax.i8(i8 %i.aeb, i8 %i.adz)
  br label %bb.gy

bb.gw:                                            ; preds = %bb.gs
  %i.aec = add i64 %.sroa.0105.0639.us.i286, %i.ack ; 3 uses
  %i.aed = icmp ult i64 %i.aec, %i.sz
  br i1 %i.aed, label %bb.gx, label %.invoke1715.i

bb.gx:                                            ; preds = %bb.gw
  %i.aee = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.aec
  %i.aef = load i8, ptr %i.aee, align 1, !noundef !28
  %i.aeg = add i8 %i.aef, 1
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gv
  %.sroa.04.0.us.i291 = phi i8 [ %i.aeg, %bb.gx ], [ %..i.us.i290, %bb.gv ]
  %i.aeh = add i64 %i.acp, %i.acj                 ; 3 uses
  %i.aei = icmp ult i64 %i.aeh, %i.sz
  br i1 %i.aei, label %bb.gz, label %.split659.us.invoke.i203

bb.gz:                                            ; preds = %bb.gy
  %i.aej = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.aeh
  store i8 %.sroa.04.0.us.i291, ptr %i.aej, align 1
  %.not168.us.i292 = icmp eq i64 %i.acp, 0
  br i1 %.not168.us.i292, label %..loopexit47_crit_edge.split.us.i293, label %.lr.ph.split.us.i285

.loopexit.split-lp.loopexit.split.us.i295:        ; preds = %bb.go
  %lpad.loopexit48.us.i296 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i159

..loopexit47_crit_edge.split.us.i293:             ; preds = %bb.gz
  %.not.i294 = icmp eq i64 %i.tf, 0
  br i1 %.not.i294, label %.lr.ph698.i185, label %.lr.ph673.split.i276

.lr.ph.split.i282:                                ; preds = %.lr.ph.i280
  %i.aek = and i64 %.pre1505, 1023
  %i.ael = icmp eq i64 %i.aek, 1
  br i1 %i.ael, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %.lr.ph.split.i282
  %i.aem = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.hb unwind label %.loopexit.split-lp.loopexit.split.i283

bb.hb:                                            ; preds = %bb.ha
  br i1 %i.aem, label %.loopexit43.i275, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.split.i282
  %i.aen = add i64 %i.cb, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aeo = icmp ult i64 %i.aen, %.val63
  br i1 %i.aeo, label %bb.hd, label %.invoke1717.i194

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1717.i194

.split659.us.invoke.i203:                         ; preds = %bb.gy, %bb.gu, %bb.ez, %bb.ex, %bb.ga, %bb.fy, %bb.fj, %bb.fl, %bb.gk
  %i.aep = phi i64 [ %i.vg, %bb.ex ], [ %i.zy, %bb.ga ], [ %i.abz, %bb.gk ], [ %i.xn, %bb.fj ], [ %i.sz, %bb.fl ], [ %i.zq, %bb.fy ], [ %i.vt, %bb.ez ], [ %i.adw, %bb.gu ], [ %i.aeh, %bb.gy ]
  %i.aeq = phi ptr [ @270, %bb.ex ], [ @282, %bb.ga ], [ @286, %bb.gk ], [ @275, %bb.fj ], [ @277, %bb.fl ], [ @280, %bb.fy ], [ @272, %bb.ez ], [ @290, %bb.gu ], [ @292, %bb.gy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aep, i64 noundef %i.sz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeq) #71
          to label %.split659.us.cont.i206 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i204

.split659.us.cont.i206:                           ; preds = %.split659.us.invoke.i203
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread453: ; preds = %bb.fs, %bb.fd, %bb.gf, %.loopexit43.i275
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i182, %bb.en, %bb.eo
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread450

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.bb, %bb.bc, %.loopexit43.i275, %bb.ee, %.loopexit43.i, %bb.bf, %bb.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit250.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread453
  %.val68 = load ptr, ptr %i.ce, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cf, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cd, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19345)
  %i.aer = sub i64 %.pre, %.pre1505               ; 3 uses
  %i.aes = and i64 %i.aer, 1
  %.not.i298 = icmp eq i64 %i.aes, 0              ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aeu = load i64, ptr %i.aet, align 8, !alias.scope !19344, !noalias !19346, !noundef !28 ; 4 uses
  %i.aev = add i64 %i.aeu, 1                      ; 5 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aex = load i64, ptr %i.aew, align 8, !alias.scope !19344, !noalias !19346, !noundef !28 ; 16 uses
  %i.aey = icmp ult i64 %i.aev, %i.aex
  br i1 %i.aey, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  %i.aez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afa = load ptr, ptr %i.aez, align 8, !alias.scope !19344, !noalias !19346, !nonnull !28, !noundef !28 ; 7 uses
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.aev
  store i64 0, ptr %i.afb, align 8, !noalias !19347
  %i.afc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.afd = load i64, ptr %i.afc, align 8, !alias.scope !19345, !noalias !19348, !noundef !28 ; 4 uses
  %i.afe = add i64 %i.afd, 1                      ; 5 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !alias.scope !19345, !noalias !19348, !noundef !28 ; 16 uses
  %i.afh = icmp ult i64 %i.afe, %i.afg
  br i1 %i.afh, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aev, i64 noundef %i.aex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75, !noalias !19347
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.afi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !alias.scope !19345, !noalias !19348, !nonnull !28, !noundef !28 ; 7 uses
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.afe
  store i64 0, ptr %i.afk, align 8, !noalias !19347
  %i.afl = add i64 %.pre, %.pre1505               ; 2 uses
  %i.afm = lshr i64 %i.afl, 1
  %.sroa.047.0.i = sub nuw i64 %i.afl, %i.afm     ; 3 uses
  %i.afn = icmp ult i64 %i.aex, 1152921504606846976
  tail call void @llvm.assume(i1 %i.afn)
  %.not128.not.i = icmp ugt i64 %i.aex, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.hj, label %bb.hi, !prof !29

bb.hh:                                            ; preds = %bb.he
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.afe, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75, !noalias !19347
  unreachable

bb.hi:                                            ; preds = %bb.hg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75, !noalias !19347
  unreachable

bb.hj:                                            ; preds = %bb.hg
  %i.afo = icmp ult i64 %i.afg, 1152921504606846976
  tail call void @llvm.assume(i1 %i.afo)
  %.not129.not.i = icmp samesign ugt i64 %i.afg, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph133.i, label %bb.hk, !prof !29

.lr.ph133.i:                                      ; preds = %bb.hj
  %i.afp = add i64 %i.aeu, -1
  %i.afq = add i64 %i.afd, -1
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75, !noalias !19347
  unreachable

bb.hl:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, %.lr.ph133.i
  %.sroa.048.0132.i = phi i64 [ 0, %.lr.ph133.i ], [ %i.afr, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i ] ; 11 uses
  %i.afr = add nuw nsw i64 %.sroa.048.0132.i, 1
  %i.afs = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19347
  br i1 %i.afs, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph121.preheader.i

.lr.ph121.preheader.i:                            ; preds = %bb.hl
  %i.aft = sub nsw i64 0, %.sroa.048.0132.i       ; 6 uses
  %.pre222.i = sub i64 %i.aev, %.sroa.048.0132.i
  br label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %bb.jk, %.lr.ph121.preheader.i
  %.sroa.7.0120.i = phi i64 [ %i.afy, %bb.jk ], [ %.sroa.048.0132.i, %.lr.ph121.preheader.i ]
  %not..sroa.1118.0119.i = phi i64 [ 1, %bb.jk ], [ 0, %.lr.ph121.preheader.i ]
  %i.afu = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0120.i, i64 %not..sroa.1118.0119.i) ; 2 uses
  %i.afv = extractvalue { i64, i1 } %i.afu, 1     ; 2 uses
  %i.afw = extractvalue { i64, i1 } %i.afu, 0     ; 9 uses
  %i.afx = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.afw, i64 -1) ; 2 uses
  %i.afy = extractvalue { i64, i1 } %i.afx, 0     ; 2 uses
  %i.afz = extractvalue { i64, i1 } %i.afx, 1
  %i.aga = or i1 %i.afv, %i.afz
  %.not3.i.not.i = icmp slt i64 %i.afw, %i.aft
  %or.cond43.i = select i1 %i.afv, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond43.i, label %.lr.ph130.preheader.i, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph121.i
  %i.agb = icmp eq i64 %i.afw, %i.aft
  br i1 %i.agb, label %._crit_edge217.i.a, label %bb.ip

.lr.ph130.preheader.i:                            ; preds = %bb.jk, %.lr.ph121.i
  %.pre.i303 = sub i64 %i.afe, %.sroa.048.0132.i
  br label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %bb.ik, %.lr.ph130.preheader.i
  %not..sroa.1427.0129.i = phi i64 [ 1, %bb.ik ], [ 0, %.lr.ph130.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %i.agg, %bb.ik ], [ %.sroa.048.0132.i, %.lr.ph130.preheader.i ]
  %i.agc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0128.i, i64 %not..sroa.1427.0129.i) ; 2 uses
  %i.agd = extractvalue { i64, i1 } %i.agc, 1     ; 2 uses
  %i.age = extractvalue { i64, i1 } %i.agc, 0     ; 9 uses
  %i.agf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.age, i64 -1) ; 2 uses
  %i.agg = extractvalue { i64, i1 } %i.agf, 0     ; 2 uses
  %i.agh = extractvalue { i64, i1 } %i.agf, 1
  %i.agi = or i1 %i.agd, %i.agh
  %.not3.i152.not.i = icmp slt i64 %i.age, %i.aft
  %or.cond45.i = select i1 %i.agd, i1 true, i1 %.not3.i152.not.i
  br i1 %or.cond45.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph130.i
  %i.agj = icmp eq i64 %i.age, %i.aft
  br i1 %i.agj, label %._crit_edge219.i.a, label %bb.ho

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i: ; preds = %bb.ik, %.lr.ph130.i
  %exitcond215.not.i = icmp eq i64 %.sroa.048.0132.i, %.sroa.047.0.i
  br i1 %exitcond215.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.hl

bb.ho:                                            ; preds = %bb.hn
  %.not130.i = icmp eq i64 %i.age, %.sroa.048.0132.i
  %.pre220.i = add i64 %i.afq, %i.age             ; 6 uses
  br i1 %.not130.i, label %._crit_edge218.i.a, label %bb.hp

._crit_edge219.i.a:                               ; preds = %bb.hn, %bb.hs
  %.pre-phi.i = phi i64 [ %i.agn, %bb.hs ], [ %.pre.i303, %bb.hn ] ; 3 uses
  %i.agk = icmp ult i64 %.pre-phi.i, %i.afg
  br i1 %i.agk, label %bb.hx, label %bb.hy

._crit_edge218.i.a:                               ; preds = %bb.hs, %bb.ho
  %i.agl = icmp ult i64 %.pre220.i, %i.afg
  br i1 %i.agl, label %bb.hu, label %bb.hv

bb.hp:                                            ; preds = %bb.ho
  %i.agm = icmp ult i64 %.pre220.i, %i.afg
  br i1 %i.agm, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.agn = add i64 %i.age, %i.afe                 ; 4 uses
  %i.ago = icmp ult i64 %i.agn, %i.afg
  br i1 %i.ago, label %bb.hs, label %bb.ht

bb.hr:                                            ; preds = %bb.hp
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre220.i, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75, !noalias !19347
  unreachable

bb.hs:                                            ; preds = %bb.hq
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.pre220.i
  %i.agq = load i64, ptr %i.agp, align 8, !noalias !19347, !noundef !28
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.agn
  %i.ags = load i64, ptr %i.agr, align 8, !noalias !19347, !noundef !28
  %i.agt = icmp ult i64 %i.agq, %i.ags
  br i1 %i.agt, label %._crit_edge219.i.a, label %._crit_edge218.i.a

bb.ht:                                            ; preds = %bb.hq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.agn, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75, !noalias !19347
  unreachable

bb.hu:                                            ; preds = %._crit_edge218.i.a
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.pre220.i
  %i.agv = load i64, ptr %i.agu, align 8, !noalias !19347, !noundef !28
  %i.agw = add i64 %i.agv, 1
  br label %bb.hw

bb.hv:                                            ; preds = %._crit_edge218.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre220.i, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75, !noalias !19347
  unreachable

bb.hw:                                            ; preds = %bb.hx, %bb.hu
  %.sroa.014.0.i = phi i64 [ %i.ahb, %bb.hx ], [ %i.agw, %bb.hu ] ; 5 uses
  %i.agx = sub i64 %.sroa.014.0.i, %i.age         ; 4 uses
  %i.agy = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.agz = icmp ult i64 %i.agx, %.pre1505
  %or.cond.i300 = select i1 %i.agy, i1 %i.agz, i1 false
  br i1 %or.cond.i300, label %bb.ia, label %bb.hz

bb.hx:                                            ; preds = %._crit_edge219.i.a
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %.pre-phi.i
  %i.ahb = load i64, ptr %i.aha, align 8, !noalias !19347, !noundef !28
  br label %bb.hw

bb.hy:                                            ; preds = %._crit_edge219.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75, !noalias !19347
  unreachable

bb.hz:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.hw
  %.sroa.020.0.i = phi i64 [ %i.aiq, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %i.agx, %bb.hw ]
  %.sroa.014.1.i = phi i64 [ %i.aip, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.014.0.i, %bb.hw ] ; 3 uses
  %i.ahc = add i64 %i.age, %i.afd                 ; 3 uses
  %i.ahd = icmp ult i64 %i.ahc, %i.afg
  br i1 %i.ahd, label %bb.ih, label %bb.ii

bb.ia:                                            ; preds = %bb.hw
  %i.ahe = sub i64 %i.ca, %.sroa.014.0.i          ; 2 uses
  %i.ahf = sub i64 %i.cb, %i.agx                  ; 2 uses
  %i.ahg = sub i64 %i.ahe, %.sroa.0.0
  %i.ahh = sub i64 %i.ahf, %.sroa.0379.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ahh, i64 %i.ahg) ; 3 uses
  %.not137.i = icmp eq i64 %..i.i, 0
  br i1 %.not137.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ig, %.lr.ph124.i
  %.sroa.0.0.i136123.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.aio, %bb.ig ] ; 3 uses
  %i.ahi = xor i64 %.sroa.0.0.i136123.i, -1       ; 2 uses
  %i.ahj = add i64 %i.ahf, %i.ahi                 ; 3 uses
  %i.ahk = icmp ult i64 %i.ahj, %.val71
  br i1 %i.ahk, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahj, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !19349
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ib
  %i.ahl = add i64 %i.ahe, %i.ahi                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.ahm = icmp ult i64 %i.ahl, %.val69
  br i1 %i.ahm, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i, label %bb.id

bb.id:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahl, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !19350
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ahj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19352)
  %i.aho = load ptr, ptr %i.ahn, align 8, !alias.scope !19351, !noalias !19353, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahq = load i64, ptr %i.ahp, align 8, !alias.scope !19351, !noalias !19353, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19354)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !19354, !noalias !19355, !noundef !28
  %i.aht = sub i64 %i.ahq, %i.ahs                 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahv = load i64, ptr %i.ahu, align 8, !alias.scope !19354, !noalias !19355, !noundef !28 ; 2 uses
  %i.ahw = icmp ult i64 %i.aht, %i.ahv
  br i1 %i.ahw, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i, label %bb.ie

bb.ie:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aht, i64 noundef %i.ahv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19356
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.ahl ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8, !alias.scope !19354, !noalias !19355, !nonnull !28, !noundef !28
  %i.aia = load ptr, ptr %i.ahx, align 8, !alias.scope !19352, !noalias !19357, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.aic = load i64, ptr %i.aib, align 8, !alias.scope !19352, !noalias !19357, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19358)
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aia, i64 24
  %i.aie = load i64, ptr %i.aid, align 8, !alias.scope !19358, !noalias !19359, !noundef !28
  %i.aif = sub i64 %i.aic, %i.aie                 ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %i.aih = load i64, ptr %i.aig, align 8, !alias.scope !19358, !noalias !19359, !noundef !28 ; 2 uses
  %i.aii = icmp ult i64 %i.aif, %i.aih
  br i1 %i.aii, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i, label %bb.if

bb.if:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aif, i64 noundef %i.aih, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19360
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aht
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.ail = load ptr, ptr %i.aik, align 8, !alias.scope !19358, !noalias !19359, !nonnull !28, !noundef !28
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.aif
  %.val141.i = load i32, ptr %i.aij, align 4, !noalias !19347, !noundef !28
  %.val142.i = load i32, ptr %i.aim, align 4, !noalias !19347, !noundef !28
  %i.ain = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.ain, label %bb.ig, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i

bb.ig:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i
  %i.aio = add nuw i64 %.sroa.0.0.i136123.i, 1    ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.aio, %..i.i
  br i1 %exitcond214.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %bb.ib

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ig, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i, %bb.ia
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ia ], [ %.sroa.0.0.i136123.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i ], [ %..i.i, %bb.ig ] ; 2 uses
  %i.aip = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aiq = add i64 %.sroa.0.0.i136.lcssa.i, %i.agx
  br label %bb.hz

bb.ih:                                            ; preds = %bb.hz
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.ahc
  store i64 %.sroa.014.1.i, ptr %i.air, align 8, !noalias !19347
  br i1 %.not.i298, label %bb.ij, label %bb.ik

bb.ii:                                            ; preds = %bb.hz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahc, i64 noundef %i.afg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75, !noalias !19347
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %i.ais = sub i64 %i.age, %i.aer                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.ais, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0132.i
  br i1 %.not131.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.im, %bb.ij, %bb.ih
  %.not.i151.i = icmp slt i64 %i.agg, %i.aft
  %or.cond44.i = select i1 %i.agi, i1 true, i1 %.not.i151.i
  br i1 %or.cond44.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, label %.lr.ph130.i

bb.il:                                            ; preds = %bb.ij
  %i.ait = sub i64 %i.aeu, %i.ais                 ; 3 uses
  %i.aiu = icmp ult i64 %i.ait, %i.aex
  br i1 %i.aiu, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.ait
  %i.aiw = load i64, ptr %i.aiv, align 8, !noalias !19347, !noundef !28
  %i.aix = add i64 %i.aiw, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.aix, %.pre
end_hunk_4
begin_hunk_5_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !19779, !noalias !19780, !nonnull !28, !noundef !28
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i

bb.o:                                             ; preds = %bb.l, %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19781
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.5.1.i.in.i10.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %i.al, %bb.m ]
  %.sroa.0.1.i.in.i11.i.i.i.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.5.1.i.i13.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i10.i.i.i.i.i, align 8, !noalias !19782, !noundef !28
  %i.ar = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.i, %.sroa.5.1.i.i13.i.i.i.i.i
  br i1 %i.ar, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i
  %.sroa.0.1.i.i12.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i11.i.i.i.i.i, align 8, !noalias !19782, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i12.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.i.i), !alias.scope !19783, !noalias !19784
  %i.as = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.as, label %bb.p, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit

bb.p:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread490, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.041.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread490

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread490, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i74489 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i74493, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread490 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.at = add i64 %.sroa.0.0.i74489, %2           ; 3 uses
  %i.au = add i64 %.sroa.0.0.i74489, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19786)
  %i.av = icmp uge i64 %i.at, %3
  %i.aw = icmp uge i64 %i.au, %6
  %or.cond.i75 = or i1 %i.av, %i.aw
  br i1 %or.cond.i75, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i76

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1420 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1420, align 8
  %.phi.trans.insert1422 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1422, align 8
  %.phi.trans.insert1424 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1424, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i76:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = sub nuw i64 %3, %i.at                   ; 2 uses
  %i.bc = sub nuw i64 %6, %i.au                   ; 2 uses
  %.val8.i.i.i.i.i77 = load i64, ptr %i.ax, align 8, !alias.scope !19786, !noalias !19785 ; 6 uses
  %.val6.i.i.i.i.i78 = load i64, ptr %i.ay, align 8, !alias.scope !19785, !noalias !19786 ; 6 uses
  %.val.i.i.i.i.i79 = load ptr, ptr %i.az, align 8, !alias.scope !19785, !noalias !19786 ; 5 uses
  %.val7.i.i.i.i.i80 = load ptr, ptr %i.ba, align 8, !alias.scope !19786, !noalias !19785 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.ae, %.lr.ph.i.i.i.i76
  %i.bd = phi i64 [ %3, %.lr.ph.i.i.i.i76 ], [ %i.bg, %bb.ae ]
  %.sroa.01.039.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i76 ], [ %i.cv, %bb.ae ] ; 4 uses
  %i.be = phi i64 [ %6, %.lr.ph.i.i.i.i76 ], [ %i.bf, %bb.ae ]
  %i.bf = add i64 %i.be, -1                       ; 4 uses
  %exitcond.not.i.i.i.i81 = icmp eq i64 %.sroa.01.039.i.i.i.i, %i.bb
  br i1 %exitcond.not.i.i.i.i81, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add i64 %i.bd, -1                       ; 4 uses
  %i.bh = icmp ult i64 %i.bf, %.val8.i.i.i.i.i77
  br i1 %i.bh, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef range(i64 0, 576460752303423488) %.val8.i.i.i.i.i77, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #75, !noalias !19787
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82: ; preds = %bb.r
  %i.bi = icmp ult i64 %i.bg, %.val6.i.i.i.i.i78
  br i1 %i.bi, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i83, label %bb.t

bb.t:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef range(i64 0, 576460752303423488) %.val6.i.i.i.i.i78, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #75, !noalias !19788
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i83: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i82
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i.i.i.i80, i64 %i.bf ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i79, i64 %i.bg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19790)
  %i.bl = load ptr, ptr %i.bj, align 8, !alias.scope !19789, !noalias !19791, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !19789, !noalias !19791, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19793), !noalias !19794
  %i.bo = load i64, ptr %i.bl, align 8, !range !41, !alias.scope !19795, !noalias !19796, !noundef !28
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !19795, !noalias !19796, !noundef !28
  %i.bs = icmp ult i64 %i.bn, %i.br               ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i83
  br i1 %i.bs, label %bb.x, label %bb.y

bb.v:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i83
  br i1 %i.bs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !19795, !noalias !19796, !nonnull !28, !noundef !28
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bn ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i84

bb.x:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !19795, !noalias !19796, !nonnull !28, !noundef !28
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bn ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i84

bb.y:                                             ; preds = %bb.v, %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19797
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i84: ; preds = %bb.x, %bb.w
  %.sroa.5.1.i.in.i.i.i.i.i.i85 = phi ptr [ %i.cb, %bb.x ], [ %i.bw, %bb.w ]
  %.sroa.0.1.i.in.i.i.i.i.i.i86 = phi ptr [ %i.ca, %bb.x ], [ %i.bv, %bb.w ]
  %.sroa.0.1.i.i.i.i.i.i.i87 = load ptr, ptr %.sroa.0.1.i.in.i.i.i.i.i.i86, align 8, !noalias !19798, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i.i.i.i.i88 = load i64, ptr %.sroa.5.1.i.in.i.i.i.i.i.i85, align 8, !noalias !19798, !noundef !28 ; 2 uses
  %i.cc = load ptr, ptr %i.bk, align 8, !alias.scope !19790, !noalias !19799, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !19790, !noalias !19799, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19801), !noalias !19794
  %i.cf = load i64, ptr %i.cc, align 8, !range !41, !alias.scope !19802, !noalias !19803, !noundef !28
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !19802, !noalias !19803, !noundef !28
  %i.cj = icmp ult i64 %i.ce, %i.ci               ; 2 uses
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i84
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.aa:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i84
  br i1 %i.cj, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !19802, !noalias !19803, !nonnull !28, !noundef !28
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ce ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89

bb.ac:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !19802, !noalias !19803, !nonnull !28, !noundef !28
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.ce ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89

bb.ad:                                            ; preds = %bb.aa, %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19804
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89: ; preds = %bb.ac, %bb.ab
  %.sroa.5.1.i.in.i10.i.i.i.i.i90 = phi ptr [ %i.cs, %bb.ac ], [ %i.cn, %bb.ab ]
  %.sroa.0.1.i.in.i11.i.i.i.i.i91 = phi ptr [ %i.cr, %bb.ac ], [ %i.cm, %bb.ab ]
  %.sroa.5.1.i.i13.i.i.i.i.i92 = load i64, ptr %.sroa.5.1.i.in.i10.i.i.i.i.i90, align 8, !noalias !19805, !noundef !28
  %i.ct = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.i88, %.sroa.5.1.i.i13.i.i.i.i.i92
  br i1 %i.ct, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89
  %.sroa.0.1.i.i12.i.i.i.i.i95 = load ptr, ptr %.sroa.0.1.i.in.i11.i.i.i.i.i91, align 8, !noalias !19805, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i96 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.i87, ptr nonnull readonly %.sroa.0.1.i.i12.i.i.i.i.i95, i64 %.sroa.5.1.i.i.i.i.i.i.i88), !alias.scope !19806, !noalias !19807
  %i.cu = icmp eq i32 %bcmp.i.i.i.i.i.i96, 0
  br i1 %i.cu, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94
  %i.cv = add nuw i64 %.sroa.01.039.i.i.i.i, 1    ; 2 uses
  %exitcond78.not.i.i.i.i = icmp eq i64 %i.cv, %i.bc
  br i1 %exitcond78.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.q

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.q, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94, %bb.ae, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val6.i.i.i.i.i78, %bb.ae ], [ %.val6.i.i.i.i.i78, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val6.i.i.i.i.i78, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89 ], [ %.val6.i.i.i.i.i78, %bb.q ] ; 20 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val.i.i.i.i.i79, %bb.ae ], [ %.val.i.i.i.i.i79, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val.i.i.i.i.i79, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89 ], [ %.val.i.i.i.i.i79, %bb.q ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val8.i.i.i.i.i77, %bb.ae ], [ %.val8.i.i.i.i.i77, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val8.i.i.i.i.i77, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89 ], [ %.val8.i.i.i.i.i77, %bb.q ] ; 24 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %.val7.i.i.i.i.i80, %bb.ae ], [ %.val7.i.i.i.i.i80, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val7.i.i.i.i.i80, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89 ], [ %.val7.i.i.i.i.i80, %bb.q ] ; 14 uses
  %.sroa.0.0.i93 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.bb, %bb.q ], [ %.sroa.01.039.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i89 ], [ %.sroa.01.039.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %i.bc, %bb.ae ] ; 4 uses
  %i.cw = sub i64 %3, %.sroa.0.0.i93              ; 10 uses
  %i.cx = sub i64 %6, %.sroa.0.0.i93              ; 12 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.af

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread490: ; preds = %bb.p, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i74493 = phi i64 [ %.sroa.01.041.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.p ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !19808
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.de, align 8, !alias.scope !19808
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.df, align 8, !alias.scope !19809
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !19809
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19809
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19809
  %i.dg = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.dg, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.dg, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.dh = select i1 %i.dg, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.dh, %.sroa.0.0.i74493
  store i64 1, ptr %i.df, align 8, !alias.scope !19809
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !19809
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19809
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19809
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.af:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0442.0 = phi i64 [ %i.au, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0442.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 47 uses
  %.sroa.0.0 = phi i64 [ %i.at, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 45 uses
  %i.di = icmp ult i64 %.sroa.0.0, %i.cw          ; 2 uses
  %i.dj = icmp ult i64 %.sroa.0442.0, %i.cx       ; 3 uses
  %or.cond526 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond526, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %bb.af
  br i1 %i.di, label %bb.cb, label %bb.cc

bb.ah:                                            ; preds = %bb.af
  %i.dk = sub nuw i64 %i.cw, %.sroa.0.0           ; 6 uses
  %i.dl = sub nuw i64 %i.cx, %.sroa.0442.0        ; 5 uses
  %i.dm = icmp ult i64 %i.dk, 97
  %i.dn = icmp ult i64 %i.dl, 97
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dk) ; 2 uses
  %..i97 = tail call noundef i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dk)
  %i.do = shl nuw i64 %..i, 1
  %i.dp = icmp slt i64 %..i, 0
  br i1 %i.dp, label %bb.aj, label %bb.ak, !prof !44

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.052.0.i = phi i64 [ -1, %bb.aj ], [ %i.do, %bb.ai ]
  %i.dq = icmp ult i64 %..i97, %.sroa.052.0.i
  br i1 %i.dq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i = icmp ule i64 %i.dl, %i.dk
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.dr = icmp ule i64 %i.dk, %i.dl               ; 2 uses
  br label %bb.am

.loopexit:                                        ; preds = %.outer.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1047.3, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1007.3
  %.sroa.525.2.i.ph.lcssa783 = phi i64 [ %.sroa.525.0.i1094, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1007.3 ], [ %.sroa.525.2.i.ph1063.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %.sroa.525.0.i1094, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1047.3 ], [ %.sroa.525.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa772 = phi i64 [ %.sroa.023.0.i1095, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1007.3 ], [ %.sroa.023.1.i.ph1064.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %.sroa.023.0.i1095, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1047.3 ], [ %.sroa.023.2.i.us, %.outer.us ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa761 = phi i64 [ %.sroa.9.0.i1096, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1007.3 ], [ %.sroa.9.2.i.ph1065.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %.sroa.9.0.i1096, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1047.3 ], [ %.sroa.9.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa750 = phi i64 [ %.sroa.12.0.i1097, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1007.3 ], [ %.sroa.12.2.i.ph1066.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %.sroa.12.0.i1097, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us1047.3 ], [ %.sroa.12.3.i.us, %.outer.us ] ; 2 uses
  %indvars.iv.next1409 = add i64 %indvars.iv1408, -1
  %exitcond1418 = icmp eq i64 %i.ds, 5
  br i1 %exitcond1418, label %bb.bs, label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit
  %indvars.iv1408 = phi i64 [ %i.dk, %bb.al ], [ %indvars.iv.next1409, %.loopexit ] ; 2 uses
  %.sroa.12.0.i1097 = phi i64 [ undef, %bb.al ], [ %.sroa.12.2.i.ph.lcssa750, %.loopexit ] ; 3 uses
  %.sroa.9.0.i1096 = phi i64 [ undef, %bb.al ], [ %.sroa.9.2.i.ph.lcssa761, %.loopexit ] ; 3 uses
  %.sroa.023.0.i1095 = phi i64 [ 0, %bb.al ], [ %.sroa.023.1.i.ph.lcssa772, %.loopexit ] ; 3 uses
  %.sroa.525.0.i1094 = phi i64 [ undef, %bb.al ], [ %.sroa.525.2.i.ph.lcssa783, %.loopexit ] ; 3 uses
  %.sroa.0476.01093 = phi i64 [ 0, %bb.al ], [ %i.ds, %.loopexit ] ; 10 uses
  %i.ds = add nuw nsw i64 %.sroa.0476.01093, 1    ; 2 uses
  %i.dt = icmp eq i64 %.sroa.0476.01093, 0        ; 2 uses
  %i.du = add i64 %.sroa.0476.01093, %.sroa.0.0   ; 5 uses
  %i.dv = icmp ult i64 %i.du, %.val61
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.du ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %.fr = freeze i1 %i.dv
  %i.dy = sub i64 %i.cw, %i.du
  br i1 %.fr, label %.lr.ph.us, label %.split1067

.lr.ph.us:                                        ; preds = %bb.am, %.outer.us
  %.sroa.12.2.i.ph1066.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i1097, %bb.am ] ; 7 uses
  %.sroa.9.2.i.ph1065.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i1096, %bb.am ] ; 7 uses
  %.sroa.023.1.i.ph1064.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i1095, %bb.am ] ; 4 uses
  %.sroa.525.2.i.ph1063.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i1094, %bb.am ] ; 7 uses
  %.sroa.0478.0.ph1062.us = phi i64 [ %i.eb, %.outer.us ], [ 0, %bb.am ] ; 2 uses
  %i.dz = add i64 %.sroa.0442.0, %.sroa.0478.0.ph1062.us ; 2 uses
  %i.ea = sub i64 %i.cx, %i.dz
  br label %bb.an

bb.an:                                            ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us, %.lr.ph.us
  %indvars.iv1410 = phi i64 [ %indvars.iv.next1411, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %i.ea, %.lr.ph.us ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %i.dz, %.lr.ph.us ] ; 2 uses
  %.sroa.0478.0854.us.us = phi i64 [ %i.eb, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us ], [ %.sroa.0478.0.ph1062.us, %.lr.ph.us ] ; 10 uses
  %i.eb = add i64 %.sroa.0478.0854.us.us, 1       ; 2 uses
  %i.ec = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19810
  br i1 %i.ec, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = icmp eq i64 %.sroa.0478.0854.us.us, 0   ; 2 uses
  %i.ee = or i64 %.sroa.0478.0854.us.us, %.sroa.0476.01093
  %or.cond2.i.us.us = icmp eq i64 %i.ee, 0
  br i1 %or.cond2.i.us.us, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.dt, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.ed
  br i1 %brmerge.i.not.us.us, label %bb.as, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us

bb.ar:                                            ; preds = %bb.ap
  %or.cond3.old.i.us.us = or i1 %i.dr, %i.ed
  br i1 %or.cond3.old.i.us.us, label %bb.as, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ef = add i64 %.sroa.0478.0854.us.us, %.sroa.0442.0 ; 5 uses
  %i.eg = icmp ult i64 %i.ef, %.val63
  br i1 %i.eg, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us, label %.split863

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us: ; preds = %bb.as
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.ef ; 2 uses
  %.val56.us.us = load ptr, ptr %i.eh, align 8, !alias.scope !19811, !noalias !19812, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val57.us.us = load i64, ptr %i.ei, align 8, !alias.scope !19811, !noalias !19812, !noundef !28 ; 3 uses
  %.val58.us.us = load ptr, ptr %i.dw, align 8    ; 5 uses
  %.val59.us.us = load i64, ptr %i.dx, align 8    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19814), !noalias !19815
  %i.ej = load i64, ptr %.val56.us.us, align 8, !range !41, !alias.scope !19816, !noalias !19817, !noundef !28
  %i.ek = trunc nuw i64 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !19816, !noalias !19817, !noundef !28
  %i.en = icmp ult i64 %.val57.us.us, %i.em       ; 2 uses
  br i1 %i.ek, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us
  br i1 %i.en, label %bb.au, label %.split866.us

bb.au:                                            ; preds = %bb.at
  %i.eo = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !19816, !noalias !19817, !nonnull !28, !noundef !28
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.val57.us.us ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.us

bb.av:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us.us
  br i1 %i.en, label %bb.aw, label %.split866.us

bb.aw:                                            ; preds = %bb.av
  %i.es = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !19816, !noalias !19817, !nonnull !28, !noundef !28
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %.val57.us.us ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = getelementptr i8, ptr %i.eu, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.us: ; preds = %bb.aw, %bb.au
  %.sroa.5.1.i.in.i.i.us.us = phi ptr [ %i.ew, %bb.aw ], [ %i.er, %bb.au ]
  %.sroa.0.1.i.in.i.i.us.us = phi ptr [ %i.ev, %bb.aw ], [ %i.eq, %bb.au ]
  %.sroa.0.1.i.i.i.us.us = load ptr, ptr %.sroa.0.1.i.in.i.i.us.us, align 8, !noalias !19818, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i.us.us = load i64, ptr %.sroa.5.1.i.in.i.i.us.us, align 8, !noalias !19818, !noundef !28 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19820), !noalias !19815
  %i.ex = load i64, ptr %.val58.us.us, align 8, !range !41, !alias.scope !19821, !noalias !19822, !noundef !28
  %i.ey = trunc nuw i64 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !19821, !noalias !19822, !noundef !28
  %i.fb = icmp ult i64 %.val59.us.us, %i.fa       ; 2 uses
  br i1 %i.ey, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.us
  br i1 %i.fb, label %bb.ay, label %.split868.us

bb.ay:                                            ; preds = %bb.ax
  %i.fc = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !19821, !noalias !19822, !nonnull !28, !noundef !28
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %.val59.us.us ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.us.us

bb.az:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.us.us
  br i1 %i.fb, label %bb.ba, label %.split868.us

bb.ba:                                            ; preds = %bb.az
  %i.fg = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !19821, !noalias !19822, !nonnull !28, !noundef !28
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.val59.us.us ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = getelementptr i8, ptr %i.fi, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.us.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.us.us: ; preds = %bb.ba, %bb.ay
  %.sroa.5.1.i.in.i1.i.us.us = phi ptr [ %i.fk, %bb.ba ], [ %i.ff, %bb.ay ]
  %.sroa.0.1.i.in.i2.i.us.us = phi ptr [ %i.fj, %bb.ba ], [ %i.fe, %bb.ay ]
  %.sroa.5.1.i.i4.i.us.us = load i64, ptr %.sroa.5.1.i.in.i1.i.us.us, align 8, !noalias !19823, !noundef !28
  %i.fl = icmp eq i64 %.sroa.5.1.i.i.i.us.us, %.sroa.5.1.i.i4.i.us.us
  br i1 %i.fl, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us

_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.us.us
  %.sroa.0.1.i.i3.i.us.us = load ptr, ptr %.sroa.0.1.i.in.i2.i.us.us, align 8, !noalias !19823, !nonnull !28, !noundef !28
  %bcmp.i.i.us.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.us.us, ptr nonnull readonly %.sroa.0.1.i.i3.i.us.us, i64 %.sroa.5.1.i.i.i.us.us), !alias.scope !19824, !noalias !19815
  %.not527.us.us = icmp eq i32 %bcmp.i.i.us.us, 0
  br i1 %.not527.us.us, label %.split870.us.us, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us

_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.thread.us.us: ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit5.i.us.us, %bb.ar, %bb.aq, %bb.ao
  %exitcond = icmp eq i64 %.sroa.0478.0854.us.us, 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next1411 = add i64 %indvars.iv1410, -1
  br i1 %exitcond, label %.loopexit, label %bb.an

.split870.us.us:                                  ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCskXtk6F4WjxZ_4just.exit.us.us
  %i.fm = sub i64 %i.cx, %i.ef
  %..i107.us = tail call noundef i64 @llvm.umin.i64(i64 %i.fm, i64 %i.dy)
  %.not1101 = icmp eq i64 %..i107.us, 0
  br i1 %.not1101, label %.outer.us, label %.lr.ph1058.us.preheader
end_hunk_5
begin_hunk_6_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  br i1 %i.aiy, label %bb.kg, label %.invoke1050.i216

bb.kg:                                            ; preds = %bb.kf
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.air, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8, !alias.scope !20010, !noalias !20011, !nonnull !28, !noundef !28
  %i.ajb = getelementptr inbounds nuw [16 x i8], ptr %i.aja, i64 %i.ait ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  br label %.noexc.us.i336

bb.kh:                                            ; preds = %bb.ke
  br i1 %i.aiy, label %bb.ki, label %.invoke1050.i216

bb.ki:                                            ; preds = %bb.kh
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.air, i64 16
  %i.aje = load ptr, ptr %i.ajd, align 8, !alias.scope !20010, !noalias !20011, !nonnull !28, !noundef !28
  %i.ajf = getelementptr inbounds nuw [24 x i8], ptr %i.aje, i64 %i.ait ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 8
  %i.ajh = getelementptr i8, ptr %i.ajf, i64 16
  br label %.noexc.us.i336

.noexc.us.i336:                                   ; preds = %bb.ki, %bb.kg
  %.sroa.5.1.i.in.i318.us.i337 = phi ptr [ %i.ajh, %bb.ki ], [ %i.ajc, %bb.kg ]
  %.sroa.0.1.i.in.i319.us.i338 = phi ptr [ %i.ajg, %bb.ki ], [ %i.ajb, %bb.kg ]
  %.sroa.0.1.i.i320.us.i339 = load ptr, ptr %.sroa.0.1.i.in.i319.us.i338, align 8, !noalias !20012, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i321.us.i340 = load i64, ptr %.sroa.5.1.i.in.i318.us.i337, align 8, !noalias !20012, !noundef !28 ; 2 uses
  %i.aji = load ptr, ptr %i.aii, align 8, !alias.scope !20006, !noalias !20013, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.ajj = load i64, ptr %i.aij, align 8, !alias.scope !20006, !noalias !20013, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20015)
  %i.ajk = load i64, ptr %i.aji, align 8, !range !41, !alias.scope !20016, !noalias !20017, !noundef !28
  %i.ajl = trunc nuw i64 %i.ajk to i1
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajn = load i64, ptr %i.ajm, align 8, !alias.scope !20016, !noalias !20017, !noundef !28
  %i.ajo = icmp ult i64 %i.ajj, %i.ajn            ; 2 uses
  br i1 %i.ajl, label %bb.kl, label %bb.kj

bb.kj:                                            ; preds = %.noexc.us.i336
  br i1 %i.ajo, label %bb.kk, label %.invoke1050.i216

bb.kk:                                            ; preds = %bb.kj
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8, !alias.scope !20016, !noalias !20017, !nonnull !28, !noundef !28
  %i.ajr = getelementptr inbounds nuw [16 x i8], ptr %i.ajq, i64 %i.ajj ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  br label %.noexc181.us.i341

bb.kl:                                            ; preds = %.noexc.us.i336
  br i1 %i.ajo, label %bb.km, label %.invoke1050.i216

bb.km:                                            ; preds = %bb.kl
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.aju = load ptr, ptr %i.ajt, align 8, !alias.scope !20016, !noalias !20017, !nonnull !28, !noundef !28
  %i.ajv = getelementptr inbounds nuw [24 x i8], ptr %i.aju, i64 %i.ajj ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 8
  %i.ajx = getelementptr i8, ptr %i.ajv, i64 16
  br label %.noexc181.us.i341

.noexc181.us.i341:                                ; preds = %bb.km, %bb.kk
  %.sroa.5.1.i.in.i324.us.i342 = phi ptr [ %i.ajx, %bb.km ], [ %i.ajs, %bb.kk ]
  %.sroa.0.1.i.in.i325.us.i343 = phi ptr [ %i.ajw, %bb.km ], [ %i.ajr, %bb.kk ]
  %.sroa.5.1.i.i327.us.i344 = load i64, ptr %.sroa.5.1.i.in.i324.us.i342, align 8, !noalias !20018, !noundef !28
  %i.ajy = icmp eq i64 %.sroa.5.1.i.i321.us.i340, %.sroa.5.1.i.i327.us.i344
  br i1 %i.ajy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351: ; preds = %.noexc181.us.i341
  %.sroa.0.1.i.i326.us.i352 = load ptr, ptr %.sroa.0.1.i.in.i325.us.i343, align 8, !noalias !20018, !nonnull !28, !noundef !28
  %bcmp.i331.us.i353 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i320.us.i339, ptr nonnull readonly %.sroa.0.1.i.i326.us.i352, i64 %.sroa.5.1.i.i321.us.i340), !alias.scope !20019
  %i.ajz = icmp eq i32 %bcmp.i331.us.i353, 0
  br i1 %i.ajz, label %bb.kp, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351, %.noexc181.us.i341
  %i.aka = add i64 %i.aik, %i.aif                 ; 3 uses
  %i.akb = icmp ult i64 %i.aka, %i.wy
  br i1 %i.akb, label %bb.kn, label %.invoke1046.i228

bb.kn:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345
  %i.akc = add i64 %.sroa.0105.0440.us.i335, %i.aie ; 3 uses
  %i.akd = icmp ult i64 %i.akc, %i.wy
  br i1 %i.akd, label %bb.ko, label %.split456.us.invoke.i230

bb.ko:                                            ; preds = %bb.kn
  %i.ake = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aka
  %i.akf = load i8, ptr %i.ake, align 1, !noundef !28
  %i.akg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.akc
  %i.akh = load i8, ptr %i.akg, align 1, !noundef !28
  %..i.us.i346 = tail call noundef i8 @llvm.umax.i8(i8 %i.akh, i8 %i.akf)
  br label %bb.kr

bb.kp:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351
  %i.aki = add i64 %.sroa.0105.0440.us.i335, %i.aif ; 3 uses
  %i.akj = icmp ult i64 %i.aki, %i.wy
  br i1 %i.akj, label %bb.kq, label %.invoke1046.i228

bb.kq:                                            ; preds = %bb.kp
  %i.akk = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aki
  %i.akl = load i8, ptr %i.akk, align 1, !noundef !28
  %i.akm = add i8 %i.akl, 1
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.ko
  %.sroa.04.0.us.i347 = phi i8 [ %i.akm, %bb.kq ], [ %..i.us.i346, %bb.ko ]
  %i.akn = add i64 %i.aik, %i.aie                 ; 3 uses
  %i.ako = icmp ult i64 %i.akn, %i.wy
  br i1 %i.ako, label %bb.ks, label %.split456.us.invoke.i230

bb.ks:                                            ; preds = %bb.kr
  %i.akp = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.akn
  store i8 %.sroa.04.0.us.i347, ptr %i.akp, align 1
  %.not168.us.i348 = icmp eq i64 %i.aik, 0
  br i1 %.not168.us.i348, label %..loopexit58_crit_edge.split.us.i349, label %.lr.ph.split.us.i334

.loopexit.split-lp.loopexit.split.us.i354:        ; preds = %bb.kb
  %lpad.loopexit59.us.i355 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i179

..loopexit58_crit_edge.split.us.i349:             ; preds = %bb.ks
  %.not.i350 = icmp eq i64 %i.xe, 0
  br i1 %.not.i350, label %.lr.ph495.i205, label %.lr.ph470.split.i325

.lr.ph.split.i331:                                ; preds = %.lr.ph.i329
  %i.akq = and i64 %.pre1427, 1023
  %i.akr = icmp eq i64 %i.akq, 1
  br i1 %i.akr, label %bb.kt, label %bb.kv

bb.kt:                                            ; preds = %.lr.ph.split.i331
  %i.aks = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ku unwind label %.loopexit.split-lp.loopexit.split.i332

bb.ku:                                            ; preds = %bb.kt
  br i1 %i.aks, label %.loopexit54.i324, label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %.lr.ph.split.i331
  %i.akt = add i64 %i.cx, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aku = icmp ult i64 %i.akt, %.val63
  br i1 %i.aku, label %bb.kw, label %.invoke1048.i214

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1048.i214

.split456.us.invoke.i230:                         ; preds = %bb.kr, %bb.kn, %bb.hs, %bb.hp, %bb.jf, %bb.jd, %bb.ii, %bb.ik, %bb.jw
  %i.akv = phi i64 [ %i.zs, %bb.hp ], [ %i.afi, %bb.jf ], [ %i.ahu, %bb.jw ], [ %i.ack, %bb.ii ], [ %i.wy, %bb.ik ], [ %i.afa, %bb.jd ], [ %i.aaf, %bb.hs ], [ %i.akc, %bb.kn ], [ %i.akn, %bb.kr ]
  %i.akw = phi ptr [ @270, %bb.hp ], [ @282, %bb.jf ], [ @286, %bb.jw ], [ @275, %bb.ii ], [ @277, %bb.ik ], [ @280, %bb.jd ], [ @272, %bb.hs ], [ @290, %bb.kn ], [ @292, %bb.kr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.akv, i64 noundef %i.wy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akw) #71
          to label %.split456.us.cont.i233 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i231

.split456.us.cont.i233:                           ; preds = %.split456.us.invoke.i230
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread518: ; preds = %bb.ir, %bb.hw, %bb.jk, %.loopexit54.i324
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xd, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i202, %bb.gz, %bb.ha
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xd, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.cg, %bb.ch, %.loopexit54.i324, %bb.gq, %.loopexit54.i, %bb.ck, %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit221.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread518
  %.val68 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.db, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cy, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cz, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20021)
  %i.akx = sub i64 %.pre, %.pre1427               ; 3 uses
  %i.aky = and i64 %i.akx, 1
  %.not.i357 = icmp eq i64 %i.aky, 0              ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ala = load i64, ptr %i.akz, align 8, !alias.scope !20020, !noalias !20022, !noundef !28 ; 4 uses
  %i.alb = add i64 %i.ala, 1                      ; 5 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ald = load i64, ptr %i.alc, align 8, !alias.scope !20020, !noalias !20022, !noundef !28 ; 16 uses
  %i.ale = icmp ult i64 %i.alb, %i.ald
  br i1 %i.ale, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  %i.alf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.alg = load ptr, ptr %i.alf, align 8, !alias.scope !20020, !noalias !20022, !nonnull !28, !noundef !28 ; 7 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.alb
  store i64 0, ptr %i.alh, align 8, !noalias !20023
  %i.ali = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.alj = load i64, ptr %i.ali, align 8, !alias.scope !20021, !noalias !20024, !noundef !28 ; 4 uses
  %i.alk = add i64 %i.alj, 1                      ; 5 uses
  %i.all = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.alm = load i64, ptr %i.all, align 8, !alias.scope !20021, !noalias !20024, !noundef !28 ; 16 uses
  %i.aln = icmp ult i64 %i.alk, %i.alm
  br i1 %i.aln, label %bb.kz, label %bb.la

bb.ky:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alb, i64 noundef %i.ald, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75, !noalias !20023
  unreachable

bb.kz:                                            ; preds = %bb.kx
  %i.alo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.alp = load ptr, ptr %i.alo, align 8, !alias.scope !20021, !noalias !20024, !nonnull !28, !noundef !28 ; 7 uses
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %i.alk
  store i64 0, ptr %i.alq, align 8, !noalias !20023
  %i.alr = add i64 %.pre, %.pre1427               ; 2 uses
  %i.als = lshr i64 %i.alr, 1
  %.sroa.047.0.i = sub nuw i64 %i.alr, %i.als     ; 3 uses
  %i.alt = icmp ult i64 %i.ald, 1152921504606846976
  tail call void @llvm.assume(i1 %i.alt)
  %.not128.not.i = icmp ugt i64 %i.ald, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.lc, label %bb.lb, !prof !29

bb.la:                                            ; preds = %bb.kx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alk, i64 noundef %i.alm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75, !noalias !20023
  unreachable

bb.lb:                                            ; preds = %bb.kz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75, !noalias !20023
  unreachable

bb.lc:                                            ; preds = %bb.kz
  %i.alu = icmp ult i64 %i.alm, 1152921504606846976
  tail call void @llvm.assume(i1 %i.alu)
  %.not129.not.i = icmp samesign ugt i64 %i.alm, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph125.i, label %bb.ld, !prof !29

.lr.ph125.i:                                      ; preds = %bb.lc
  %i.alv = add i64 %i.ala, -1
  %i.alw = add i64 %i.alj, -1
  br label %bb.le

bb.ld:                                            ; preds = %bb.lc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75, !noalias !20023
  unreachable

bb.le:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, %.lr.ph125.i
  %.sroa.048.0124.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.alx, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i ] ; 11 uses
  %i.alx = add nuw nsw i64 %.sroa.048.0124.i, 1
  %i.aly = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !20023
  br i1 %i.aly, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph112.preheader.i

.lr.ph112.preheader.i:                            ; preds = %bb.le
  %i.alz = sub nsw i64 0, %.sroa.048.0124.i       ; 6 uses
  %.pre193.i = sub i64 %i.alb, %.sroa.048.0124.i
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.nt, %.lr.ph112.preheader.i
  %.sroa.7.0111.i = phi i64 [ %i.ame, %bb.nt ], [ %.sroa.048.0124.i, %.lr.ph112.preheader.i ]
  %not..sroa.1118.0110.i = phi i64 [ 1, %bb.nt ], [ 0, %.lr.ph112.preheader.i ]
  %i.ama = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0111.i, i64 %not..sroa.1118.0110.i) ; 2 uses
  %i.amb = extractvalue { i64, i1 } %i.ama, 1     ; 2 uses
  %i.amc = extractvalue { i64, i1 } %i.ama, 0     ; 9 uses
  %i.amd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amc, i64 -1) ; 2 uses
  %i.ame = extractvalue { i64, i1 } %i.amd, 0     ; 2 uses
  %i.amf = extractvalue { i64, i1 } %i.amd, 1
  %i.amg = or i1 %i.amb, %i.amf
  %.not3.i.not.i = icmp slt i64 %i.amc, %i.alz
  %or.cond45.i = select i1 %i.amb, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond45.i, label %.lr.ph122.preheader.i, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph112.i
  %i.amh = icmp eq i64 %i.amc, %i.alz
  br i1 %i.amh, label %._crit_edge188.i.a, label %bb.mq

.lr.ph122.preheader.i:                            ; preds = %bb.nt, %.lr.ph112.i
  %.pre.i = sub i64 %i.alk, %.sroa.048.0124.i
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.ml, %.lr.ph122.preheader.i
  %not..sroa.1427.0121.i = phi i64 [ 1, %bb.ml ], [ 0, %.lr.ph122.preheader.i ]
  %.sroa.726.0120.i = phi i64 [ %i.amm, %bb.ml ], [ %.sroa.048.0124.i, %.lr.ph122.preheader.i ]
  %i.ami = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0120.i, i64 %not..sroa.1427.0121.i) ; 2 uses
  %i.amj = extractvalue { i64, i1 } %i.ami, 1     ; 2 uses
  %i.amk = extractvalue { i64, i1 } %i.ami, 0     ; 9 uses
  %i.aml = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amk, i64 -1) ; 2 uses
  %i.amm = extractvalue { i64, i1 } %i.aml, 0     ; 2 uses
  %i.amn = extractvalue { i64, i1 } %i.aml, 1
  %i.amo = or i1 %i.amj, %i.amn
  %.not3.i145.not.i = icmp slt i64 %i.amk, %i.alz
  %or.cond47.i = select i1 %i.amj, i1 true, i1 %.not3.i145.not.i
  br i1 %or.cond47.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, label %bb.lg

bb.lg:                                            ; preds = %.lr.ph122.i
  %i.amp = icmp eq i64 %i.amk, %i.alz
  br i1 %i.amp, label %._crit_edge190.i.a, label %bb.lh

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i: ; preds = %bb.ml, %.lr.ph122.i
  %exitcond186.not.i = icmp eq i64 %.sroa.048.0124.i, %.sroa.047.0.i
  br i1 %exitcond186.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.le

bb.lh:                                            ; preds = %bb.lg
  %.not130.i = icmp eq i64 %i.amk, %.sroa.048.0124.i
  %.pre191.i = add i64 %i.alw, %i.amk             ; 6 uses
  br i1 %.not130.i, label %._crit_edge189.i.a, label %bb.li

._crit_edge190.i.a:                               ; preds = %bb.lg, %bb.ll
  %.pre-phi.i = phi i64 [ %i.amt, %bb.ll ], [ %.pre.i, %bb.lg ] ; 3 uses
  %i.amq = icmp ult i64 %.pre-phi.i, %i.alm
  br i1 %i.amq, label %bb.lq, label %bb.lr

._crit_edge189.i.a:                               ; preds = %bb.ll, %bb.lh
  %i.amr = icmp ult i64 %.pre191.i, %i.alm
  br i1 %i.amr, label %bb.ln, label %bb.lo

bb.li:                                            ; preds = %bb.lh
  %i.ams = icmp ult i64 %.pre191.i, %i.alm
  br i1 %i.ams, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.amt = add i64 %i.amk, %i.alk                 ; 4 uses
  %i.amu = icmp ult i64 %i.amt, %i.alm
  br i1 %i.amu, label %bb.ll, label %bb.lm

bb.lk:                                            ; preds = %bb.li
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre191.i, i64 noundef %i.alm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75, !noalias !20023
  unreachable

bb.ll:                                            ; preds = %bb.lj
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %.pre191.i
  %i.amw = load i64, ptr %i.amv, align 8, !noalias !20023, !noundef !28
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %i.amt
  %i.amy = load i64, ptr %i.amx, align 8, !noalias !20023, !noundef !28
  %i.amz = icmp ult i64 %i.amw, %i.amy
  br i1 %i.amz, label %._crit_edge190.i.a, label %._crit_edge189.i.a

bb.lm:                                            ; preds = %bb.lj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.amt, i64 noundef %i.alm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75, !noalias !20023
  unreachable

bb.ln:                                            ; preds = %._crit_edge189.i.a
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %.pre191.i
  %i.anb = load i64, ptr %i.ana, align 8, !noalias !20023, !noundef !28
  %i.anc = add i64 %i.anb, 1
  br label %bb.lp

bb.lo:                                            ; preds = %._crit_edge189.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre191.i, i64 noundef %i.alm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75, !noalias !20023
  unreachable

bb.lp:                                            ; preds = %bb.lq, %bb.ln
  %.sroa.014.0.i = phi i64 [ %i.anh, %bb.lq ], [ %i.anc, %bb.ln ] ; 5 uses
  %i.and = sub i64 %.sroa.014.0.i, %i.amk         ; 4 uses
  %i.ane = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.anf = icmp ult i64 %i.and, %.pre1427
  %or.cond.i359 = select i1 %i.ane, i1 %i.anf, i1 false
  br i1 %or.cond.i359, label %bb.lt, label %bb.ls

bb.lq:                                            ; preds = %._crit_edge190.i.a
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %.pre-phi.i
  %i.anh = load i64, ptr %i.ang, align 8, !noalias !20023, !noundef !28
  br label %bb.lp

bb.lr:                                            ; preds = %._crit_edge190.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.alm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75, !noalias !20023
  unreachable

bb.ls:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.lp
  %.sroa.020.0.i = phi i64 [ %i.aph, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %i.and, %bb.lp ]
  %.sroa.014.1.i = phi i64 [ %i.apg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.014.0.i, %bb.lp ] ; 3 uses
  %i.ani = add i64 %i.amk, %i.alj                 ; 3 uses
  %i.anj = icmp ult i64 %i.ani, %i.alm
  br i1 %i.anj, label %bb.mi, label %bb.mj

bb.lt:                                            ; preds = %bb.lp
  %i.ank = sub i64 %i.cw, %.sroa.014.0.i          ; 2 uses
  %i.anl = sub i64 %i.cx, %i.and                  ; 2 uses
  %i.anm = sub i64 %i.ank, %.sroa.0.0
  %i.ann = sub i64 %i.anl, %.sroa.0442.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ann, i64 %i.anm) ; 3 uses
  %.not128.i = icmp eq i64 %..i.i, 0
  br i1 %.not128.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.lu

bb.lu:                                            ; preds = %bb.mh, %.lr.ph115.i
  %.sroa.0.0.i136114.i = phi i64 [ 0, %.lr.ph115.i ], [ %i.apf, %bb.mh ] ; 4 uses
  %i.ano = xor i64 %.sroa.0.0.i136114.i, -1       ; 2 uses
  %i.anp = add i64 %i.anl, %i.ano                 ; 3 uses
  %i.anq = icmp ult i64 %i.anp, %.val71
  br i1 %i.anq, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anp, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !20025
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.lu
  %i.anr = add i64 %i.ank, %i.ano                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.ans = icmp ult i64 %i.anr, %.val69
  br i1 %i.ans, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i, label %bb.lw

bb.lw:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anr, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !20026
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.anp ; 2 uses
  %i.anu = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.anr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20028)
  %i.anv = load ptr, ptr %i.ant, align 8, !alias.scope !20027, !noalias !20029, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !alias.scope !20027, !noalias !20029, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20031), !noalias !20032
  %i.any = load i64, ptr %i.anv, align 8, !range !41, !alias.scope !20033, !noalias !20034, !noundef !28
  %i.anz = trunc nuw i64 %i.any to i1
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anv, i64 24
  %i.aob = load i64, ptr %i.aoa, align 8, !alias.scope !20033, !noalias !20034, !noundef !28
  %i.aoc = icmp ult i64 %i.anx, %i.aob            ; 2 uses
  br i1 %i.anz, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i
  br i1 %i.aoc, label %bb.ma, label %bb.mb

bb.ly:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i
  br i1 %i.aoc, label %bb.lz, label %bb.mb

bb.lz:                                            ; preds = %bb.ly
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %i.aoe = load ptr, ptr %i.aod, align 8, !alias.scope !20033, !noalias !20034, !nonnull !28, !noundef !28
  %i.aof = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.anx ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362

bb.ma:                                            ; preds = %bb.lx
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %i.aoi = load ptr, ptr %i.aoh, align 8, !alias.scope !20033, !noalias !20034, !nonnull !28, !noundef !28
  %i.aoj = getelementptr inbounds nuw [24 x i8], ptr %i.aoi, i64 %i.anx ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aoj, i64 8
  %i.aol = getelementptr i8, ptr %i.aoj, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362

bb.mb:                                            ; preds = %bb.ly, %bb.lx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !20035
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362: ; preds = %bb.ma, %bb.lz
  %.sroa.5.1.i.in.i.i363 = phi ptr [ %i.aol, %bb.ma ], [ %i.aog, %bb.lz ]
  %.sroa.0.1.i.in.i.i364 = phi ptr [ %i.aok, %bb.ma ], [ %i.aof, %bb.lz ]
  %.sroa.0.1.i.i.i365 = load ptr, ptr %.sroa.0.1.i.in.i.i364, align 8, !noalias !20036, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i366 = load i64, ptr %.sroa.5.1.i.in.i.i363, align 8, !noalias !20036, !noundef !28 ; 2 uses
  %i.aom = load ptr, ptr %i.anu, align 8, !alias.scope !20028, !noalias !20037, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.aoo = load i64, ptr %i.aon, align 8, !alias.scope !20028, !noalias !20037, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20039), !noalias !20032
  %i.aop = load i64, ptr %i.aom, align 8, !range !41, !alias.scope !20040, !noalias !20041, !noundef !28
  %i.aoq = trunc nuw i64 %i.aop to i1
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aom, i64 24
  %i.aos = load i64, ptr %i.aor, align 8, !alias.scope !20040, !noalias !20041, !noundef !28
  %i.aot = icmp ult i64 %i.aoo, %i.aos            ; 2 uses
  br i1 %i.aoq, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362
  br i1 %i.aot, label %bb.mf, label %bb.mg

bb.md:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362
  br i1 %i.aot, label %bb.me, label %bb.mg

bb.me:                                            ; preds = %bb.md
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  %i.aov = load ptr, ptr %i.aou, align 8, !alias.scope !20040, !noalias !20041, !nonnull !28, !noundef !28
  %i.aow = getelementptr inbounds nuw [16 x i8], ptr %i.aov, i64 %i.aoo ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i

bb.mf:                                            ; preds = %bb.mc
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8, !alias.scope !20040, !noalias !20041, !nonnull !28, !noundef !28
  %i.apa = getelementptr inbounds nuw [24 x i8], ptr %i.aoz, i64 %i.aoo ; 2 uses
  %i.apb = getelementptr i8, ptr %i.apa, i64 8
  %i.apc = getelementptr i8, ptr %i.apa, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i

bb.mg:                                            ; preds = %bb.md, %bb.mc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !20042
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i: ; preds = %bb.mf, %bb.me
  %.sroa.5.1.i.in.i151.i = phi ptr [ %i.apc, %bb.mf ], [ %i.aox, %bb.me ]
  %.sroa.0.1.i.in.i152.i = phi ptr [ %i.apb, %bb.mf ], [ %i.aow, %bb.me ]
  %.sroa.5.1.i.i154.i = load i64, ptr %.sroa.5.1.i.in.i151.i, align 8, !noalias !20043, !noundef !28
  %i.apd = icmp eq i64 %.sroa.5.1.i.i.i366, %.sroa.5.1.i.i154.i
  br i1 %i.apd, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i

end_hunk_6
begin_hunk_7_@_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe10run_scripts6_0B8_:bb.a
  %i.oi = ptrtoint ptr %i.aa to i64
  %i.oj = sub nuw i64 %i.oh, %i.oi
  %i.ok = udiv exact i64 %i.oj, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !33138)
  %i.ol = icmp eq ptr %i.q, %i.aa
  br i1 %i.ol, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i, label %.lr.ph.i.i.i85.i

.lr.ph.i.i.i85.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i
  %.sroa.0.010.i.i.i86.i = phi i64 [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i ] ; 2 uses
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.sroa.0.010.i.i.i86.i ; 2 uses
  %i.on = add nuw nsw i64 %.sroa.0.010.i.i.i86.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33139)
  call void @llvm.experimental.noalias.scope.decl(metadata !33140)
  %.val.i.i.i.i.i87.i = load i64, ptr %i.om, align 8, !alias.scope !33141, !noalias !33142 ; 2 uses
  %i.oo = icmp eq i64 %.val.i.i.i.i.i87.i, 0
  br i1 %i.oo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i85.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.val1.i.i.i.i.i88.i = load ptr, ptr %i.op, align 8, !alias.scope !33141, !noalias !33142, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i88.i, i64 noundef %.val.i.i.i.i.i87.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33143
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i: ; preds = %bb.df, %.lr.ph.i.i.i85.i
  %i.oq = icmp eq i64 %i.on, %i.ok
  br i1 %i.oq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i, label %.lr.ph.i.i.i85.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i
  %i.or = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %i.or, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i, label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i
  %i.os = mul nuw i64 %.sroa.07.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33142
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i: ; preds = %bb.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33014
  call void @llvm.experimental.noalias.scope.decl(metadata !33144)
  call void @llvm.experimental.noalias.scope.decl(metadata !33145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33146
  %.not.i.i92.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i92.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i
  %.sroa.47.0.copyload.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !33147, !noalias !33014 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !33146
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33146
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33146
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !33146
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.y, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33146
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33146
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i
  %.sink31.i.i.i = phi i64 [ 1, %bb.dh ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %i.z, %bb.dh ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i ]
  store i64 %.sink31.i.i.i, ptr %i.b, align 8, !noalias !33146
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i, ptr %i.ot, align 8, !noalias !33146
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.ou, align 8, !noalias !33146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33148
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !33149
  %i.ov = load ptr, ptr %i.a, align 8, !noalias !33148, !noundef !28 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not5.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.di
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.dj

bb.dj:                                            ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ow = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i ], [ %i.pb, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !33148
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 360
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %.sroa.43.0.copyload.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33150)
  call void @llvm.experimental.noalias.scope.decl(metadata !33151)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.oy, align 8, !alias.scope !33152, !noalias !33153 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.oz, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.pa, align 8, !alias.scope !33152, !noalias !33153, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33154
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33148
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !33149
  %i.pb = load ptr, ptr %i.a, align 8, !noalias !33148, !noundef !28 ; 2 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i93.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i, label %bb.dj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33146
  br label %_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6inputs.exit

bb.dl:                                            ; preds = %.noexc59.i, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #72
          to label %bb.dm unwind label %bb.cw, !noalias !33015

bb.dm:                                            ; preds = %bb.dl, %bb.s, %.body.i, %bb.h
  %.sroa.034.2.ph.i = phi i1 [ true, %bb.dl ], [ true, %bb.h ], [ %.sroa.034.4.i, %.body.i ], [ %.sroa.034.4.i, %bb.s ]
  %.pn46.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.dl ], [ %i.av, %bb.h ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33155)
  call void @llvm.experimental.noalias.scope.decl(metadata !33156)
  %.val.i.i94.i = load i64, ptr %i.i, align 8, !alias.scope !33157, !noalias !33014 ; 2 uses
  %i.pc = icmp eq i64 %.val.i.i94.i, 0
  br i1 %i.pc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.val1.i.i95.i = load ptr, ptr %i.s, align 8, !alias.scope !33158, !noalias !33014, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i95.i, i64 noundef %.val.i.i94.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33159
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i: ; preds = %bb.dn, %bb.dm
  br i1 %.sroa.034.2.ph.i, label %bb.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i

bb.do:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i, %.thread.i, %bb.g
  %.pn46.pn134.i = phi { ptr, i32 } [ %i.ap, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.g ], [ %.pn46.ph.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i ] ; 2 uses
  %i.pd = icmp eq i64 %.sroa.0.0.copyload100.i, 0
  br i1 %i.pd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8101.sroa.0.0.copyload.i, i64 noundef %.sroa.0.0.copyload100.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33160
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i

bb.dq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i
  resume { ptr, i32 } %.pn49.i

_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6inputs.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !33014
  br label %bb.dr

bb.dr:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6inputs.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe10run_scripts7_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 16 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [104 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator14evaluate_value(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
  %i.m = load i64, ptr %i.l, align 8, !range !117, !noundef !28 ; 2 uses
  %.not = icmp eq i64 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.034.0.copyload = load i64, ptr %i.n, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.535.0.copyload = load i64, ptr %.sroa.535.0..sroa_idx, align 8 ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.514.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.m, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.034.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.535.0.copyload, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.o = icmp ult i64 %.sroa.535.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.o)
  %.idx = mul nuw nsw i64 %.sroa.535.0.copyload, 24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !33329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !33330
  %i.q = mul nuw i64 %.sroa.535.0.copyload, 48    ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.535.0.copyload, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %.sroa.535.0.copyload, 0
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread, label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.d
  store i64 0, ptr %i.j, align 8, !noalias !33330
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !33330
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33331
  store ptr %.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !33332
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !33333
  %i.u = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #70, !noalias !33333 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ undef, %bb.c ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #71
          to label %.noexc.i.i.i.i.i unwind label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !noalias !33330

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  store i64 %.sroa.535.0.copyload, ptr %i.j, align 8, !noalias !33330
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !33330
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33334)
  call void @llvm.experimental.noalias.scope.decl(metadata !33335)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33336
  store ptr %.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !33337
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.034.0.copyload, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !33337
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !noalias !33337
  call void @llvm.experimental.noalias.scope.decl(metadata !33338)
  %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ab = load ptr, ptr %i.y, align 8, !nonnull !28
  %i.ac = load i64, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.o ] ; 3 uses
  %i.ad = phi ptr [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33340
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !33341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33342
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.m, !noalias !33343

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33342
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33341, !noalias !33343 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !33341, !noalias !33343, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !33341, !noalias !33343
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.k unwind label %bb.i, !noalias !33344

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !33338, !noalias !33345
  %.sink5.i.sroa.gep1.i.le.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33346
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33347
  br label %bb.o

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !33348, !noalias !33342 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %.body.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink5.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.sink5.i.sroa.gep1.i.le.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i3.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.pn3.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.af, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val1.i.i4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink5.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33343, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i3.sink.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33343
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !33338, !noalias !33345
  %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33349, !noalias !33343 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %.body.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread
  %i.al = phi ptr [ %i.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread ], [ %i.x, %bb.o ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread ], [ %i.ap, %bb.o ]
  %i.am = icmp eq i64 %.sroa.034.0.copyload, 0
  br i1 %i.am, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.an = mul nuw i64 %.sroa.034.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33340
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i

bb.o:                                             ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !33339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !33339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33339
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.val9.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !33339
  %i.ap = add nuw nsw i64 %.val9.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.p
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.g

.body.i.i.i.i.i:                                  ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn3.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.af, %.body.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.m ]
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !33350, !noalias !33351
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #72, !noalias !33345
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #72, !noalias !33330
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.be, %bb.bd, %.critedge.i.i.i, %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %.body.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %.pn.i.i.i, %.critedge.i.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.be ], [ %i.jf, %bb.bd ]
  resume { ptr, i32 } %common.resume.op.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33352), !noalias !33353
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.010.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33354), !noalias !33353
  call void @llvm.experimental.noalias.scope.decl(metadata !33355), !noalias !33353
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !33356, !noalias !33357 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !33356, !noalias !33357, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33358
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %i.av = icmp eq i64 %i.as, %.sroa.535.0.copyload
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.aw = icmp eq i64 %.sroa.034.0.copyload, 0
  br i1 %i.aw, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.ax = mul nuw i64 %.sroa.034.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33357
  br label %common.resume.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i: ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !33350, !noalias !33351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !33359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33330
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !33329, !noundef !28 ; 7 uses
  %i.ba = icmp ult i64 %i.az, 192153584101141163
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_7
begin_hunk_8_@_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq:bb.a
  %i.ok = load i8, ptr %i.oj, align 8, !range !125, !alias.scope !83037, !noalias !83036, !noundef !28
  %i.ol = icmp eq i8 %i.oi, %i.ok
  br i1 %i.ol, label %bb.ca, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ca:                                            ; preds = %bb.bz
  %i.om = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !83036, !noalias !83037, !noundef !28
  %i.oo = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !83037, !noalias !83036, !noundef !28
  %i.oq = icmp eq i64 %i.on, %i.op
  br i1 %i.oq, label %bb.cb, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cb:                                            ; preds = %bb.ca
  %i.or = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !83036, !noalias !83037, !noundef !28
  %i.ot = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.ou = load i64, ptr %i.ot, align 8, !alias.scope !83037, !noalias !83036, !noundef !28
  %i.ov = icmp eq i64 %i.os, %i.ou
  br i1 %i.ov, label %bb.cc, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cc:                                            ; preds = %bb.cb
  %i.ow = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !83036, !noalias !83037, !noundef !28
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !83037, !noalias !83036, !noundef !28
  %i.pa = icmp eq i64 %i.ox, %i.oz
  br i1 %i.pa, label %bb.cd, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cd:                                            ; preds = %bb.cc
  %i.pb = load ptr, ptr %i.et, align 8, !alias.scope !83036, !noalias !83037, !nonnull !28, !noundef !28
  %i.pc = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !83036, !noalias !83037, !noundef !28
  %i.pe = load ptr, ptr %i.eu, align 8, !alias.scope !83037, !noalias !83036, !nonnull !28, !noundef !28
  %i.pf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !83037, !noalias !83036, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83038
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pb, i64 noundef %i.pd), !noalias !83038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83038
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef %i.pg), !noalias !83038
  %i.ph = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c) #76, !noalias !83038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83038
  br i1 %i.ph, label %bb.ce, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ce:                                            ; preds = %bb.cd
  %i.pi = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !83036, !noalias !83037, !noundef !28 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !83037, !noalias !83036, !noundef !28
  %i.pm = icmp eq i64 %i.pj, %i.pl
  br i1 %i.pm, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201: ; preds = %bb.ce
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !83037, !noalias !83036, !nonnull !28, !noundef !28
  %i.pp = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !83036, !noalias !83037, !nonnull !28, !noundef !28
  %bcmp.i200 = tail call i32 @bcmp(ptr nonnull %i.pq, ptr nonnull %i.po, i64 %i.pj), !noalias !83038
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
  %i.pz = tail call fastcc noundef zeroext i1 @_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.px, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.py) #76, !inline_history !82991
  br i1 %i.pz, label %bb.cg, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

._crit_edge:                                      ; preds = %bb.cg, %bb.cf
  %i.qa = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fb) #76
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ch:                                            ; preds = %bb.z
  %i.qb = getelementptr inbounds nuw i8, ptr %.tr3470, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83040)
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr69, i64 56
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.qf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 56
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.qh = icmp eq i64 %i.qe, %i.qg
  br i1 %i.qh, label %bb.ci, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ci:                                            ; preds = %bb.ch
  %i.qi = getelementptr inbounds nuw i8, ptr %.tr69, i64 88
  %i.qj = load i8, ptr %i.qi, align 8, !range !125, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.qk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 88
  %i.ql = load i8, ptr %i.qk, align 8, !range !125, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.qm = icmp eq i8 %i.qj, %i.ql
  br i1 %i.qm, label %bb.cj, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cj:                                            ; preds = %bb.ci
  %i.qn = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.qo = load i64, ptr %i.qn, align 8, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.qp = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.qr = icmp eq i64 %i.qo, %i.qq
  br i1 %i.qr, label %bb.ck, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ck:                                            ; preds = %bb.cj
  %i.qs = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.qu = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.qv = load i64, ptr %i.qu, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.qw = icmp eq i64 %i.qt, %i.qv
  br i1 %i.qw, label %bb.cl, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cl:                                            ; preds = %bb.ck
  %i.qx = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.qz = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.rb = icmp eq i64 %i.qy, %i.ra
  br i1 %i.rb, label %bb.cm, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cm:                                            ; preds = %bb.cl
  %i.rc = load ptr, ptr %i.qc, align 8, !alias.scope !83039, !noalias !83040, !nonnull !28, !noundef !28
  %i.rd = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !83039, !noalias !83040, !noundef !28
  %i.rf = load ptr, ptr %i.qb, align 8, !alias.scope !83040, !noalias !83039, !nonnull !28, !noundef !28
  %i.rg = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83041
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.re), !noalias !83041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83041
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rf, i64 noundef %i.rh), !noalias !83041
  %i.ri = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a) #76, !noalias !83041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83041
  br i1 %i.ri, label %bb.cn, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cn:                                            ; preds = %bb.cm
  %i.rj = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !83039, !noalias !83040, !noundef !28 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !83040, !noalias !83039, !noundef !28
  %i.rn = icmp eq i64 %i.rk, %i.rm
  br i1 %i.rn, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204: ; preds = %bb.cn
  %i.ro = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !83040, !noalias !83039, !nonnull !28, !noundef !28
  %i.rq = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !83039, !noalias !83040, !nonnull !28, !noundef !28
  %bcmp.i203 = tail call i32 @bcmp(ptr nonnull %i.rr, ptr nonnull %i.rp, i64 %i.rk), !noalias !83041
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
  %i.g = mul nuw i64 %2, 24                       ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83090
  %i.i = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #70, !noalias !83090 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ %i.g, %bb.d ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #71, !noalias !83091
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.j
  %.val10.i.i.i.i.i.i = phi i64 [ %i.r, %bb.j ], [ 0, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val10.i.i.i.i.i.i ; 2 uses
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !83092, !nonnull !28, !noundef !28
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !83092, !noundef !28 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val16.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.f, !prof !42

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.m = icmp eq i64 %.val16.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83093
  %i.n = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val16.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83093 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %.preheader.i.i.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i) #71
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !83092

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val15.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i, i1 false), !noalias !83094
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.p = phi ptr [ %i.n, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.val10.i.i.i.i.i.i ; 3 uses
  store i64 %.val16.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !83095
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83095
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val16.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83095
  %i.r = add nuw nsw i64 %.val10.i.i.i.i.i.i, 1   ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %.preheader.i.i.i

.body.i:                                          ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83096), !noalias !83091
  %i.u = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.u, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %.body.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39
  %.sroa.0.010.i.i.i36 = phi i64 [ %i.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39 ], [ 0, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i36 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.010.i.i.i36, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83097), !noalias !83091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83098), !noalias !83091
  %.val.i.i.i.i.i37 = load i64, ptr %i.v, align 8, !alias.scope !83099, !noalias !83100 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i37, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i35
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i.i.i38 = load ptr, ptr %i.y, align 8, !alias.scope !83099, !noalias !83100, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i38, i64 noundef %.val.i.i.i.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83101
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39: ; preds = %bb.k, %.lr.ph.i.i.i35
  %i.z = icmp eq i64 %i.w, %.val10.i.i.i.i.i.i
  br i1 %i.z, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, %.body.i
  %i.aa = mul nuw nsw i64 %2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !83100
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
  %i.ab = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !28 ; 7 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.l
  %rhsc = load i8, ptr %i.ab, align 1
  %i.ae = icmp eq i8 %rhsc, 58
  br i1 %i.ae, label %bb.m, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %rhsc57 = load i8, ptr %i.ag, align 1
  %i.ah = icmp eq i8 %rhsc57, 58
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.split, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit
  %i.ai = icmp ugt i64 %i.ad, 3
  br i1 %i.ai, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp eq i64 %i.ad, 3
  br i1 %i.aj, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

.split:                                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83102
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1778, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #76
  %i.ak = load i64, ptr %i.b, align 8, !range !41, !noalias !83102, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83102
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.m, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.o
  %i.am = load i16, ptr %i.ab, align 1
  %i.an = xor i16 14906, %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 58, %i.aq
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.l, %bb.o, %.split, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.ad, ptr %.sroa.519.0..sroa_idx, align 8
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
  %i.aw = phi i64 [ %.pre71, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread ], [ %2, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit ] ; 3 uses
  %i.ax = phi ptr [ %.pre, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread ], [ %.sroa.10.0.i.i84, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit ] ; 4 uses
  %.idx = mul nuw nsw i64 %i.aw, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %._crit_edge, label %.lr.ph66

.loopexit:                                        ; preds = %bb.w
  %i.ba = icmp eq ptr %i.bb, %i.ay
  br i1 %i.ba, label %._crit_edge, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.p, %.loopexit
  %.sroa.0.065 = phi ptr [ %i.bb, %.loopexit ], [ %i.ax, %bb.p ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !28 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.preheader, label %.lr.ph.preheader

end_hunk_8
begin_hunk_9_@_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathB13_EB13_ENCNCNvMNtB3q_6configNtB4o_6Config14from_argumentss_00EE9from_iterB3q_:bb.a
bb.i:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ao, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.an, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2v_E10init_frontB1O_.exit.i.i.i.i.i ] ; 4 uses
  %i.av = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ax), !noalias !105947
  %i.ay = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 904
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 2 uses
  %xtraiter50 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ba, %.prol.preheader ], [ %i.az, %bb.k ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.k ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.prol.preheader ], [ 0, %bb.k ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !105948, !nonnull !28, !noundef !28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !105920

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.az, %bb.k ], [ %i.ba, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bb = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.bb, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bc, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bd, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.be, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bf, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bg, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bh, align 8, !noalias !105948, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bi, align 8, !noalias !105948, !nonnull !28, !noundef !28 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.bj, label %.loopexit.i.i.i.i, label %.new

bb.l:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !105947
  unreachable

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #75
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !105949

.noexc.i.i.i.i:                                   ; preds = %.critedge.i.i.i.i.i
  unreachable

.loopexit14.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i.i.i:                       ; preds = %.critedge.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %bb.j
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.j ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 8
  %i.bn = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bn), !noalias !105947
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 624
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105951
  call void @llvm.experimental.noalias.scope.decl(metadata !105952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105953
  store ptr %i.bq, ptr %i.c, align 8, !noalias !105953, !captures !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105953
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !105954, !noalias !105955, !nonnull !28, !noundef !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !105954, !noalias !105955, !noundef !28
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit14.i.i.i.i, !noalias !105951

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105953
  store ptr %i.b, ptr %i.a, align 8, !noalias !105953
  store ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105953
  store ptr %i.c, ptr %i.o, align 8, !noalias !105953
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105953
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @571, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i unwind label %bb.m, !noalias !105956

bb.m:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #72, !noalias !105957
  br label %.body

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105953
  call void @llvm.experimental.noalias.scope.decl(metadata !105958)
  call void @llvm.experimental.noalias.scope.decl(metadata !105959)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !105960, !noalias !105953, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !105960, !noalias !105953, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105961)
  %i.bw = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105962)
  call void @llvm.experimental.noalias.scope.decl(metadata !105963)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !105964, !noalias !105965 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !105964, !noalias !105965, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !105966
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = icmp eq i64 %i.by, %.val1.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !105960, !noalias !105953 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.cd = mul nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !105965
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105953
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val8.i29.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !105956
  %i.cf = add nuw i64 %.val8.i29.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105951
  %i.cg = icmp eq i64 %i.t, 0
  br i1 %i.cg, label %.loopexit, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.loopexit14.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.m
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %lpad.loopexit.i.i.i.i, %.loopexit14.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  store i64 %.val8.i29.i.i.i.i, ptr %i.n, align 8, !alias.scope !105967, !noalias !105968
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #72
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  store i64 %.val, ptr %i.n, align 8, !alias.scope !105967, !noalias !105968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB1Y_4skip4SkipINtNtNtB22_5slice4iter4IterB13_EEEE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !106001, !noalias !106002, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !106001, !noalias !106002, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val3.i.i to i64           ; 2 uses
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !106001, !noalias !106002, !noundef !28 ; 4 uses
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.i) ; 4 uses
  %i.k = mul nuw i64 %i.j, 24                     ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !106003
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !106003 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #71
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = icmp samesign ule i64 %i.j, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106005)
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.h

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  %i.q = phi ptr [ %i.ab, %bb.h ], [ %.val.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %.val3.i.i
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub nuw i64 %i.d, %i.s
  %i.u = udiv exact i64 %i.t, 24                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.val10.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.x, %bb.g ] ; 4 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.val10.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106006
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.g unwind label %.body, !noalias !106007

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !106008
  %i.x = add i64 %.val10.i.i.i.i.i.i, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106006
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.loopexit, label %bb.f

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  %i.z = add i64 %i.i, -1                         ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp ult i64 %i.z, %i.g
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.loopexit

.body:                                            ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !106009, !noalias !106010
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72
  resume { ptr, i32 } %i.ac

.loopexit:                                        ; preds = %bb.g, %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.49.0.copyload.sink.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %._crit_edge.i.i.i.i.i ], [ %i.u, %bb.g ]
  store i64 %.sroa.49.0.copyload.sink.i.i.i.i, ptr %i.p, align 8, !alias.scope !106009, !noalias !106011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB13_EINtNtNtB2e_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !106042, !noalias !106043, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null                ; 3 uses
  %i.d = load i64, ptr %1, align 8, !range !85, !alias.scope !106042, !noalias !106043, !noundef !28 ; 7 uses
  %.not7.i.not.not = icmp eq i64 %i.d, -2         ; 2 uses
  br i1 %.not.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !106042, !noalias !106043, !nonnull !28, !noundef !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i = load ptr, ptr %i.f, align 8, !alias.scope !106042, !noalias !106043, !nonnull !28, !noundef !28
  %i.g = ptrtoint ptr %.val10.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24
  %narrow = icmp ult i64 %i.d, -2
  %i.k = zext i1 %narrow to i64
  %.sink21.i = add nuw nsw i64 %i.j, %i.k         ; 3 uses
  %i.l = mul i64 %.sink21.i, 24                   ; 2 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sink21.i, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !118

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a
  %narrow14 = icmp ult i64 %i.d, -2               ; 2 uses
  %.sink21.i.ph = zext i1 %narrow14 to i64
  %i.m = select i1 %narrow14, i64 24, i64 0
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit
  %i.n = phi i64 [ %i.m, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread ], [ %i.l, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %.sink21.i13 = phi i64 [ %.sink21.i.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread ], [ %.sink21.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !106044
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #70, !noalias !106044 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit
  %i.r = phi i64 [ %i.n, %bb.c ], [ %i.l, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.r) #71
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %.sink21.i13, %bb.c ] ; 3 uses
  %i.s = icmp samesign ule i64 %.sink21.i13, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106048)
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !106049, !noalias !106050, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !106049, !noalias !106050, !nonnull !28, !noundef !28
  %i.x = ptrtoint ptr %.val10.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24                 ; 2 uses
  br i1 %.not7.i.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i.not.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ne i64 %i.d, -1
  %i.ac = zext i1 %i.ab to i64
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.ad = icmp ne i64 %i.d, -1
  %i.ae = zext i1 %i.ad to i64
  %i.af = add nuw nsw i64 %i.aa, %i.ae
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %.sink21.i.i.i = phi i64 [ %i.af, %bb.i ], [ %i.ac, %bb.h ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = icmp samesign ugt i64 %.sink21.i.i.i, %.sroa.4.0.i
  br i1 %i.ag, label %bb.j, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i, !prof !135

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sink21.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i unwind label %.body, !noalias !106051

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i: ; preds = %bb.j
  %.pre.i = load i64, ptr %i.u, align 8, !alias.scope !106052, !noalias !106051
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !106052, !noalias !106051
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  %i.ah = phi ptr [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i ], [ %.sroa.10.0.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.ai = phi i64 [ %.pre.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !106051, !noalias !106052 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !106051, !noalias !106052 ; 3 uses
  br i1 %.not.i, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1x_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1D_8adapters5chain5ChainBI_INtNtNtB1D_7sources4once4OnceBX_EEE0E0ECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.k
end_hunk_9
