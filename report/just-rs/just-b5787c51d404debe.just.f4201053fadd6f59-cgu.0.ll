Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMs_Cs44JxkgoI5V0_8tempfileNtB5_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just:bb.a
_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtNtNtB9_3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5102
  %i.dd = load i8, ptr %i.bj, align 8, !range !190, !noalias !5102, !noundef !29
  %i.de = icmp eq i8 %i.dd, 2
  br i1 %i.de, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i
  %.val29.i = load ptr, ptr %i.e, align 8, !noalias !5102, !nonnull !29, !noundef !29 ; 4 uses
  %i.df = ptrtoint ptr %.val29.i to i64           ; 3 uses
  %i.dg = and i64 %i.df, 3
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %bb.aq
    i64 3, label %bb.ar
    i64 0, label %bb.as
    i64 1, label %bb.at
  ], !prof !5136

bb.aq:                                            ; preds = %bb.ap
  %i.dh = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc52.i unwind label %bb.av, !noalias !5082

.noexc52.i:                                       ; preds = %bb.aq
  %i.di = lshr i64 %i.df, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !5082, !nonnull !29, !noundef !29
  %i.dm = invoke noundef i8 %i.dl(i32 noundef %i.dj)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.av, !noalias !5082, !inline_history !5138

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
  %i.dr = load i8, ptr %i.dq, align 8, !range !5139, !noalias !5082, !noundef !29
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i

bb.at:                                            ; preds = %bb.ap
  %i.ds = getelementptr i8, ptr %.val29.i, i64 31
  %i.dt = load i8, ptr %i.ds, align 8, !range !5139, !noalias !5082, !noundef !29
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i

bb.au:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i, %_RNCINvMs_Cs44JxkgoI5V0_8tempfileNtB7_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0CskXtk6F4WjxZ_4just.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5102
  %i.du = trunc nuw i8 %.sroa.015.2.i to i1
  %i.dv = icmp ne i64 %.sroa.069.2.i, 0
  %or.cond88.not.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond88.not.i, label %bb.bd, label %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit

bb.av:                                            ; preds = %.noexc57.i, %bb.ax, %.noexc52.i, %bb.aq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs44JxkgoI5V0_8tempfile3dir7TempDirNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #72
          to label %.body.i unwind label %bb.k, !noalias !5082

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.at, %bb.as, %bb.ar, %.noexc52.i
  %.sroa.0.0.i50.i = phi i8 [ %i.dt, %bb.at ], [ %switch.idx.cast.i.i.i.i, %bb.ar ], [ %i.dr, %bb.as ], [ %i.dm, %.noexc52.i ]
  %i.dx = icmp eq i8 %.sroa.0.0.i50.i, 12
  %or.cond.i = and i1 %i.ai, %i.dx
  br i1 %or.cond.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !5102, !nonnull !29, !noundef !29 ; 4 uses
  %i.dy = ptrtoint ptr %.val.i to i64             ; 3 uses
  %i.dz = and i64 %i.dy, 3
  switch i64 %i.dz, label %default.unreachable [
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 0, label %bb.az
    i64 1, label %bb.ba
  ], !prof !5136

bb.ax:                                            ; preds = %bb.aw
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc57.i unwind label %bb.av, !noalias !5082

.noexc57.i:                                       ; preds = %bb.ax
  %i.eb = lshr i64 %i.dy, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !5082, !nonnull !29, !noundef !29
  %i.ef = invoke noundef i8 %i.ee(i32 noundef %i.ec)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i unwind label %bb.av, !noalias !5082, !inline_history !5138

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
  %i.ek = load i8, ptr %i.ej, align 8, !range !5139, !noalias !5082, !noundef !29
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i

bb.ba:                                            ; preds = %bb.aw
  %i.el = getelementptr i8, ptr %.val.i, i64 31
  %i.em = load i8, ptr %i.el, align 8, !range !5139, !noalias !5082, !noundef !29
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i: ; preds = %bb.ba, %bb.az, %bb.ay, %.noexc57.i
  %.sroa.0.0.i54.i = phi i8 [ %i.em, %bb.ba ], [ %switch.idx.cast.i.i.i55.i, %bb.ay ], [ %i.ek, %bb.az ], [ %i.ef, %.noexc57.i ]
  %i.en = icmp eq i8 %.sroa.0.0.i54.i, 8
  %or.cond3.i = and i1 %i.ai, %i.en
  br i1 %or.cond3.i, label %bb.bb, label %bb.au

bb.bb:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit59.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs44JxkgoI5V0_8tempfile3dir7TempDirNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.i, !noalias !5082

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5102
  %exitcond.not = icmp eq i32 %i.bl, 65536
  br i1 %exitcond.not, label %bb.m, label %bb.n

bb.bd:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.2.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.2.i, i64 noundef %.sroa.069.2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5197
  br label %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit

bb.be:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %.sroa.069.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5204
  br label %.body

_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.bd, %bb.au, %bb.aa, %bb.z, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5211)
  call void @llvm.experimental.noalias.scope.decl(metadata !5214)
  %.val.i.i4 = load i64, ptr %2, align 8, !alias.scope !5217 ; 2 uses
  %i.eo = icmp eq i64 %.val.i.i4, 0
  br i1 %i.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit6, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCs44JxkgoI5V0_8tempfile4util13create_helperNtNtB4_3dir7TempDirNCINvMs_B4_NtB4_7Builder10tempdir_inNtNtCsaKJjC64KgbL_3std4path7PathBufE0ECskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5220
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
  %i.c = load i64, ptr %1, align 8, !range !183, !noundef !29 ; 5 uses
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !29, !noundef !29 ; 4 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !29, !noundef !29 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !29 ; 6 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = load i64, ptr %i.b, align 8, !range !306, !noundef !29 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5223
  %i.q = mul nuw i64 %i.m, 24                     ; 2 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.m, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.e, !prof !297

bb.e:                                             ; preds = %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread, label %bb.f

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.thread: ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !noalias !5223
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !5223
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5230
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #70, !noalias !5230 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader

bb.g:                                             ; preds = %bb.f, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.q, %bb.f ], [ undef, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.f ], [ 0, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceCskXtk6F4WjxZ_4just.exit ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #71
          to label %.noexc.i.i unwind label %bb.m, !noalias !5223

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  store i64 %i.m, ptr %i.a, align 8, !noalias !5223
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !5223
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5236)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.val11.i.i.i.i.i.i.i = phi i64 [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.y = phi ptr [ %i.ac, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !5239, !nonnull !29, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5239, !noundef !29 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5251
  %i.ae = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 1) #70, !noalias !5251 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.ab) #71
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !5239

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.z, i64 range(i64 0, -9223372036854775808) %i.ab, i1 false), !noalias !5266
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.j ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.val11.i.i.i.i.i.i.i ; 3 uses
  store i64 %i.ab, ptr %i.ag, align 8, !noalias !5267
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5267
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ab, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5267
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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5239
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i64 %.val11.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !5272, !noalias !5273
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %.body.i.i, label %.body.sink.split.i.i.i.i

.body.sink.split.i.i.i.i:                         ; preds = %bb.l
  %i.an = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5274
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.sink.split.i.i.i.i, %bb.l
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #72, !noalias !5223
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.p, 0
  br i1 %i.ap, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !5275
  br label %.body

.body:                                            ; preds = %bb.n, %bb.m, %.body.i.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ao, %bb.n ], [ %i.al, %.body.i.i ], [ %i.ao, %bb.m ]
  %i.ar = icmp eq i64 %i.c, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.o

bb.o:                                             ; preds = %.body
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5278
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.p:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i
  store i64 %.sroa.52.0.i.i.i.i.i.i, ptr %i.ai, align 8, !alias.scope !5272, !noalias !5273
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5223
  store i64 1, ptr %0, align 8
  %i.at = icmp eq i64 %i.c, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !5283
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit11

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.o, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3Arg11value_namesReAB19_j2_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.16.copyload = load ptr, ptr %2, align 8, !alias.scope !5288 ; 2 uses
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.16.copyload = load i64, ptr %.sroa.6.16..sroa_idx, align 8, !alias.scope !5288
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8, !alias.scope !5288 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !5288
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !5292
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #70, !noalias !5292 ; 6 uses
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
  store ptr %.sroa.4.16.copyload, ptr %i.a, align 8, !noalias !5301
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.16.copyload, ptr %i.d, align 8, !noalias !5334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.16.copyload) ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.7.16.copyload, ptr %i.e, align 8, !noalias !5301
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.8.16.copyload, ptr %i.f, align 8, !noalias !5334
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrEECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !29, !noundef !29
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
  %i.id = load i64, ptr %i.t, align 8, !range !15601, !noundef !29
  switch i64 %i.id, label %bb.dg [
    i64 -2, label %bb.dh
    i64 -1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCskXtk6F4WjxZ_4just5error5ErrorEEB12_.exit
  ]

bb.cx:                                            ; preds = %.preheader, %bb.cz
  %i.ie = load ptr, ptr %i.u, align 8, !nonnull !29, !noundef !29
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load atomic i64, ptr %i.if acquire, align 8
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ii = load i64, ptr %i.t, align 8, !range !15601, !noundef !29
  %i.ij = icmp ne i64 %i.ii, -2                   ; 2 uses
  br i1 %i.ij, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.ik = load ptr, ptr %i.u, align 8, !nonnull !29, !noundef !29
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  invoke void @_RNvMs_NtNtCsaKJjC64KgbL_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.il)
          to label %bb.cx unwind label %.loopexit

bb.da:                                            ; preds = %bb.cy
  %i.im = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !nonnull !29, !noundef !29
  %i.io = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !nonnull !29, !align !174, !noundef !29
  invoke void @_RNvNtCsaKJjC64KgbL_3std5panic13resume_unwind(ptr noundef nonnull %i.in, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ip) #71
          to label %bb.df unwind label %.loopexit.split-lp

bb.db:                                            ; preds = %bb.cy
  %i.iq = load ptr, ptr %i.u, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load atomic i8, ptr %i.ir monotonic, align 1
  %.not = icmp eq i8 %i.is, 0
  br i1 %.not, label %bb.dc, label %bb.de, !prof !36

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.it = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !15602
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
  call void @llvm.experimental.noalias.scope.decl(metadata !15609)
  call void @llvm.experimental.noalias.scope.decl(metadata !15612)
  call void @llvm.experimental.noalias.scope.decl(metadata !15615)
  %i.iw = load ptr, ptr %i.u, align 8, !alias.scope !15618, !nonnull !29, !noundef !29
  %i.ix = atomicrmw sub ptr %i.iw, i64 1 release, align 8, !noalias !15618
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
  %.val21 = load ptr, ptr %i.ja, align 8, !nonnull !29, !align !174, !noundef !29
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
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !29
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
  %i.y = load ptr, ptr %4, align 8, !nonnull !29  ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15619)
  %exitcond196.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond196.not, label %._crit_edge149, label %.lr.ph148.split.us

.loopexit.split-lp96.loopexit.split.us:           ; preds = %.lr.ph148.split.us
  %lpad.loopexit101.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

._crit_edge149:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load i64, ptr %i.h, align 8, !noundef !29 ; 5 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  %i.ag = shl nuw i64 %i.ae, 4                    ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ae, 576460752303423487
  br i1 %.not.i, label %bb.g, label %bb.d, !prof !297

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
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !15622
  %i.ak = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15622 ; 2 uses
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
  %.val56 = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
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
  %i.as = load ptr, ptr %i.g, align 8, !nonnull !29, !noundef !29
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.pre
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !noundef !29
  br label %bb.l

bb.j:                                             ; preds = %.split.us, %bb.h
  %.val53 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.aw = icmp eq i64 %.val53, 0
  br i1 %i.aw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val54 = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
  %i.ax = shl nuw i64 %.val53, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEECskXtk6F4WjxZ_4just.exit59

bb.l:                                             ; preds = %bb.s, %bb.i
  %i.ay = phi i64 [ 0, %bb.i ], [ %i.bo, %bb.s ]  ; 3 uses
  %.sroa.023.0 = phi i64 [ %i.av, %bb.i ], [ %i.bh, %bb.s ] ; 3 uses
  %i.az = load i64, ptr %i.j, align 8, !noundef !29 ; 2 uses
  %i.ba = icmp ult i64 %.sroa.023.0, %i.az
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.023.0 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load <2 x i64>, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.bc, align 8, !range !274, !noundef !29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load i64, ptr %i.a, align 8, !range !306, !alias.scope !15625, !noundef !29
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
  %.val58 = load ptr, ptr %i.aq, align 8, !nonnull !29, !noundef !29
  %i.bl = shl nuw i64 %.val57, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECskXtk6F4WjxZ_4just.exit

bb.r:                                             ; preds = %bb.o, %bb.g
  unreachable

bb.s:                                             ; preds = %bb.m, %bb.n
  %i.bm = load ptr, ptr %i.aq, align 8, !alias.scope !15625, !nonnull !29, !noundef !29
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.ay
  store <2 x i64> %i.be, ptr %i.bn, align 8
  %i.bo = add i64 %i.ay, 1                        ; 5 uses
  store i64 %i.bo, ptr %i.ar, align 8, !alias.scope !15625
  %i.bp = trunc nuw i64 %i.bf to i1
  br i1 %i.bp, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.aq, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.br = lshr i64 %i.bo, 1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15628)
  call void @llvm.experimental.noalias.scope.decl(metadata !15631)
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
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !15628, !noalias !15631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !alias.scope !15633
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !15631, !noalias !15628
  %i.by = xor i64 %.sroa.0.016.i, -2
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.0.016.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = getelementptr [16 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !15628, !noalias !15631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !15633
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !alias.scope !15631, !noalias !15628
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
begin_hunk_2_@_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe10run_scripts6_0B8_:bb.a
  %i.oi = ptrtoint ptr %i.aa to i64
  %i.oj = sub nuw i64 %i.oh, %i.oi
  %i.ok = udiv exact i64 %i.oj, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !33071)
  %i.ol = icmp eq ptr %i.q, %i.aa
  br i1 %i.ol, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i, label %.lr.ph.i.i.i85.i

.lr.ph.i.i.i85.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i
  %.sroa.0.010.i.i.i86.i = phi i64 [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i ] ; 2 uses
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.sroa.0.010.i.i.i86.i ; 2 uses
  %i.on = add nuw nsw i64 %.sroa.0.010.i.i.i86.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33074)
  call void @llvm.experimental.noalias.scope.decl(metadata !33077)
  %.val.i.i.i.i.i87.i = load i64, ptr %i.om, align 8, !alias.scope !33080, !noalias !33081 ; 2 uses
  %i.oo = icmp eq i64 %.val.i.i.i.i.i87.i, 0
  br i1 %i.oo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i85.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.val1.i.i.i.i.i88.i = load ptr, ptr %i.op, align 8, !alias.scope !33080, !noalias !33081, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i88.i, i64 noundef %.val.i.i.i.i.i87.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33086
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i: ; preds = %bb.df, %.lr.ph.i.i.i85.i
  %i.oq = icmp eq i64 %i.on, %i.ok
  br i1 %i.oq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i, label %.lr.ph.i.i.i85.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i89.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit80.i
  %i.or = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %i.or, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i, label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i
  %i.os = mul nuw i64 %.sroa.07.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33081
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i: ; preds = %bb.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32727
  call void @llvm.experimental.noalias.scope.decl(metadata !33087)
  call void @llvm.experimental.noalias.scope.decl(metadata !33090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33093
  %.not.i.i92.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i92.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i
  %.sroa.47.0.copyload.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !33094, !noalias !32727 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !33093
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33093
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33093
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !33093
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.y, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33093
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !33093
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i
  %.sink31.i.i.i = phi i64 [ 1, %bb.dh ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %i.z, %bb.dh ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit91.i ]
  store i64 %.sink31.i.i.i, ptr %i.b, align 8, !noalias !33093
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i, ptr %i.ot, align 8, !noalias !33093
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.ou, align 8, !noalias !33093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33095
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !33100
  %i.ov = load ptr, ptr %i.a, align 8, !noalias !33095, !noundef !29 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not5.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.di
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.dj

bb.dj:                                            ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ow = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i ], [ %i.pb, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !33095
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 360
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %.sroa.43.0.copyload.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33101)
  call void @llvm.experimental.noalias.scope.decl(metadata !33104)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.oy, align 8, !alias.scope !33107, !noalias !33108 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.oz, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.pa, align 8, !alias.scope !33107, !noalias !33108, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33109
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33095
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !33100
  %i.pb = load ptr, ptr %i.a, align 8, !noalias !33095, !noundef !29 ; 2 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i93.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i, label %bb.dj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33093
  br label %_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6inputs.exit

bb.dl:                                            ; preds = %.noexc59.i, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #72
          to label %bb.dm unwind label %bb.cw, !noalias !32730

bb.dm:                                            ; preds = %bb.dl, %bb.s, %.body.i, %bb.h
  %.sroa.034.2.ph.i = phi i1 [ true, %bb.dl ], [ true, %bb.h ], [ %.sroa.034.4.i, %.body.i ], [ %.sroa.034.4.i, %bb.s ]
  %.pn46.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.dl ], [ %i.av, %bb.h ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33110)
  call void @llvm.experimental.noalias.scope.decl(metadata !33113)
  %.val.i.i94.i = load i64, ptr %i.i, align 8, !alias.scope !33116, !noalias !32727 ; 2 uses
  %i.pc = icmp eq i64 %.val.i.i94.i, 0
  br i1 %i.pc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.val1.i.i95.i = load ptr, ptr %i.s, align 8, !alias.scope !33119, !noalias !32727, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i95.i, i64 noundef %.val.i.i94.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33120
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i: ; preds = %bb.dn, %bb.dm
  br i1 %.sroa.034.2.ph.i, label %bb.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i

bb.do:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i, %.thread.i, %bb.g
  %.pn46.pn134.i = phi { ptr, i32 } [ %i.ap, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.g ], [ %.pn46.ph.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit96.i ] ; 2 uses
  %i.pd = icmp eq i64 %.sroa.0.0.copyload100.i, 0
  br i1 %i.pd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8101.sroa.0.0.copyload.i, i64 noundef %.sroa.0.0.copyload100.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33123
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i

bb.dq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit99.i
  resume { ptr, i32 } %.pn49.i

_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6inputs.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtCs7q5LCsEFjLc_6blake34HashEECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32727
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
  %i.m = load i64, ptr %i.l, align 8, !range !32723, !noundef !29 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !33128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !33132
  %i.q = mul nuw i64 %.sroa.535.0.copyload, 48    ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.535.0.copyload, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d, !prof !297

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %.sroa.535.0.copyload, 0
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread, label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.d
  store i64 0, ptr %i.j, align 8, !noalias !33132
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !33132
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33145
  store ptr %.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !33158
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !33159
  %i.u = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #70, !noalias !33159 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.q, %bb.e ], [ undef, %bb.c ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #71
          to label %.noexc.i.i.i.i.i unwind label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !noalias !33132

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  store i64 %.sroa.535.0.copyload, ptr %i.j, align 8, !noalias !33132
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !33132
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33162)
  call void @llvm.experimental.noalias.scope.decl(metadata !33164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33166
  store ptr %.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !33167
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.034.0.copyload, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !33167
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !noalias !33167
  call void @llvm.experimental.noalias.scope.decl(metadata !33168)
  %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ab = load ptr, ptr %i.y, align 8, !nonnull !29
  %i.ac = load i64, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.o ] ; 3 uses
  %i.ad = phi ptr [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !33176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !33177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33180
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.m, !noalias !33182

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33180
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33177, !noalias !33182 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !33177, !noalias !33182, !nonnull !29, !noundef !29 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !33177, !noalias !33182
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.k unwind label %bb.i, !noalias !33183

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !33168, !noalias !33186
  %.sink5.i.sroa.gep1.i.le.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33187
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33193
  br label %bb.o

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !33198, !noalias !33180 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %.body.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink5.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink5.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.sink5.i.sroa.gep1.i.le.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i3.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.pn3.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.af, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val1.i.i4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink5.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33182, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i3.sink.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33182
  br label %.body.i.i.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !33168, !noalias !33186
  %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33203, !noalias !33182 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i3.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %.body.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread
  %i.al = phi ptr [ %i.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread ], [ %i.x, %bb.o ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.thread ], [ %i.ap, %bb.o ]
  %i.am = icmp eq i64 %.sroa.034.0.copyload, 0
  br i1 %i.am, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.an = mul nuw i64 %.sroa.034.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33176
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i

bb.o:                                             ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !33171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !33171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33171
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.val9.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !33171
  %i.ap = add nuw nsw i64 %.val9.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.p
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.g

.body.i.i.i.i.i:                                  ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn3.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit5.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.af, %.body.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.m ]
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !33208, !noalias !33209
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #72, !noalias !33186
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #72, !noalias !33132
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.be, %bb.bd, %.critedge.i.i.i, %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %.body.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %.pn.i.i.i, %.critedge.i.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.be ], [ %i.jf, %bb.bd ]
  resume { ptr, i32 } %common.resume.op.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33210), !noalias !33213
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.010.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33214), !noalias !33213
  call void @llvm.experimental.noalias.scope.decl(metadata !33217), !noalias !33213
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !33220, !noalias !33221 ; 2 uses
  %i.at = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !33220, !noalias !33221, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !33228
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %i.av = icmp eq i64 %i.as, %.sroa.535.0.copyload
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.aw = icmp eq i64 %.sroa.034.0.copyload, 0
  br i1 %i.aw, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.ax = mul nuw i64 %.sroa.034.0.copyload, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !33221
  br label %common.resume.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i: ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !33208, !noalias !33209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !33229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !33128, !noundef !29 ; 7 uses
  %i.ba = icmp ult i64 %i.az, 192153584101141163
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtBY_6string6StringENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB2a_6Recipe10run_scripts7_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecTB1F_NtNtCsaKJjC64KgbL_3std4path7PathBufEEEB2c_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_2
begin_hunk_3_@_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq:bb.a
  %i.ok = load i8, ptr %i.oj, align 8, !range !40754, !alias.scope !82994, !noalias !82991, !noundef !29
  %i.ol = icmp eq i8 %i.oi, %i.ok
  br i1 %i.ol, label %bb.ca, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ca:                                            ; preds = %bb.bz
  %i.om = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !82991, !noalias !82994, !noundef !29
  %i.oo = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !82994, !noalias !82991, !noundef !29
  %i.oq = icmp eq i64 %i.on, %i.op
  br i1 %i.oq, label %bb.cb, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cb:                                            ; preds = %bb.ca
  %i.or = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !82991, !noalias !82994, !noundef !29
  %i.ot = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.ou = load i64, ptr %i.ot, align 8, !alias.scope !82994, !noalias !82991, !noundef !29
  %i.ov = icmp eq i64 %i.os, %i.ou
  br i1 %i.ov, label %bb.cc, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cc:                                            ; preds = %bb.cb
  %i.ow = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !82991, !noalias !82994, !noundef !29
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !82994, !noalias !82991, !noundef !29
  %i.pa = icmp eq i64 %i.ox, %i.oz
  br i1 %i.pa, label %bb.cd, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cd:                                            ; preds = %bb.cc
  %i.pb = load ptr, ptr %i.et, align 8, !alias.scope !82991, !noalias !82994, !nonnull !29, !noundef !29
  %i.pc = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !82991, !noalias !82994, !noundef !29
  %i.pe = load ptr, ptr %i.eu, align 8, !alias.scope !82994, !noalias !82991, !nonnull !29, !noundef !29
  %i.pf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !82994, !noalias !82991, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82996
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pb, i64 noundef %i.pd), !noalias !82996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82996
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef %i.pg), !noalias !82996
  %i.ph = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c) #76, !noalias !82996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82996
  br i1 %i.ph, label %bb.ce, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ce:                                            ; preds = %bb.cd
  %i.pi = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !82991, !noalias !82994, !noundef !29 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !82994, !noalias !82991, !noundef !29
  %i.pm = icmp eq i64 %i.pj, %i.pl
  br i1 %i.pm, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit201: ; preds = %bb.ce
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !82994, !noalias !82991, !nonnull !29, !noundef !29
  %i.pp = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !82991, !noalias !82994, !nonnull !29, !noundef !29
  %bcmp.i200 = tail call i32 @bcmp(ptr nonnull %i.pq, ptr nonnull %i.po, i64 %i.pj), !noalias !82996
  %i.pr = icmp eq i32 %bcmp.i200, 0
  br i1 %i.pr, label %tailrecurse.backedge.sink.split, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cf:                                            ; preds = %bb.y
  %i.ps = getelementptr inbounds nuw i8, ptr %.tr3470, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !nonnull !29, !noundef !29
  %i.pu = getelementptr inbounds nuw i8, ptr %.tr69, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !nonnull !29, !noundef !29
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
  %i.pz = tail call fastcc noundef zeroext i1 @_RNvXs2_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.px, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.py) #76, !inline_history !82964
  br i1 %i.pz, label %bb.cg, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

._crit_edge:                                      ; preds = %bb.cg, %bb.cf
  %i.qa = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fb) #76
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ch:                                            ; preds = %bb.z
  %i.qb = getelementptr inbounds nuw i8, ptr %.tr3470, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83000)
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr69, i64 56
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.qf = getelementptr inbounds nuw i8, ptr %.tr3470, i64 56
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.qh = icmp eq i64 %i.qe, %i.qg
  br i1 %i.qh, label %bb.ci, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ci:                                            ; preds = %bb.ch
  %i.qi = getelementptr inbounds nuw i8, ptr %.tr69, i64 88
  %i.qj = load i8, ptr %i.qi, align 8, !range !40754, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.qk = getelementptr inbounds nuw i8, ptr %.tr3470, i64 88
  %i.ql = load i8, ptr %i.qk, align 8, !range !40754, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.qm = icmp eq i8 %i.qj, %i.ql
  br i1 %i.qm, label %bb.cj, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cj:                                            ; preds = %bb.ci
  %i.qn = getelementptr inbounds nuw i8, ptr %.tr69, i64 64
  %i.qo = load i64, ptr %i.qn, align 8, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.qp = getelementptr inbounds nuw i8, ptr %.tr3470, i64 64
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.qr = icmp eq i64 %i.qo, %i.qq
  br i1 %i.qr, label %bb.ck, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.ck:                                            ; preds = %bb.cj
  %i.qs = getelementptr inbounds nuw i8, ptr %.tr69, i64 72
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.qu = getelementptr inbounds nuw i8, ptr %.tr3470, i64 72
  %i.qv = load i64, ptr %i.qu, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.qw = icmp eq i64 %i.qt, %i.qv
  br i1 %i.qw, label %bb.cl, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cl:                                            ; preds = %bb.ck
  %i.qx = getelementptr inbounds nuw i8, ptr %.tr69, i64 80
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.qz = getelementptr inbounds nuw i8, ptr %.tr3470, i64 80
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.rb = icmp eq i64 %i.qy, %i.ra
  br i1 %i.rb, label %bb.cm, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cm:                                            ; preds = %bb.cl
  %i.rc = load ptr, ptr %i.qc, align 8, !alias.scope !82997, !noalias !83000, !nonnull !29, !noundef !29
  %i.rd = getelementptr inbounds nuw i8, ptr %.tr69, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !alias.scope !82997, !noalias !83000, !noundef !29
  %i.rf = load ptr, ptr %i.qb, align 8, !alias.scope !83000, !noalias !82997, !nonnull !29, !noundef !29
  %i.rg = getelementptr inbounds nuw i8, ptr %.tr3470, i64 32
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83002
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rc, i64 noundef %i.re), !noalias !83002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83002
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rf, i64 noundef %i.rh), !noalias !83002
  %i.ri = call fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a) #76, !noalias !83002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83002
  br i1 %i.ri, label %bb.cn, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cn:                                            ; preds = %bb.cm
  %i.rj = getelementptr inbounds nuw i8, ptr %.tr69, i64 48
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !82997, !noalias !83000, !noundef !29 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.tr3470, i64 48
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !83000, !noalias !82997, !noundef !29
  %i.rn = icmp eq i64 %i.rk, %i.rm
  br i1 %i.rn, label %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit204: ; preds = %bb.cn
  %i.ro = getelementptr inbounds nuw i8, ptr %.tr3470, i64 40
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !83000, !noalias !82997, !nonnull !29, !noundef !29
  %i.rq = getelementptr inbounds nuw i8, ptr %.tr69, i64 40
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !82997, !noalias !83000, !nonnull !29, !noundef !29
  %bcmp.i203 = tail call i32 @bcmp(ptr nonnull %i.rr, ptr nonnull %i.rp, i64 %i.rk), !noalias !83002
  %i.rs = icmp eq i32 %bcmp.i203, 0
  br i1 %i.rs, label %tailrecurse.backedge.sink.split, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.co:                                            ; preds = %_RNvXs5_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit21
  %i.rt = getelementptr inbounds nuw i8, ptr %.tr69, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !range !5129, !noundef !29
  %i.rv = getelementptr inbounds nuw i8, ptr %.tr69, i64 12
  %i.rw = trunc nuw i32 %i.ru to i1
  %i.rx = getelementptr inbounds nuw i8, ptr %.tr3470, i64 8
  %i.ry = load i32, ptr %i.rx, align 8, !range !5129, !noundef !29
  %i.rz = trunc nuw i32 %i.ry to i1               ; 2 uses
  br i1 %i.rw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  br i1 %i.rz, label %bb.cr, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cq:                                            ; preds = %bb.co
  %i.sa = xor i1 %i.rz, true
  br label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit18

bb.cr:                                            ; preds = %bb.cp
  %i.sb = getelementptr inbounds nuw i8, ptr %.tr3470, i64 12
  %i.sc = load i32, ptr %i.rv, align 4, !noundef !29
  %i.sd = load i32, ptr %i.sb, align 4, !noundef !29
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
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !297

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83003
  %i.i = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #70, !noalias !83003 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %.preheader.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ %i.g, %bb.d ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #71, !noalias !83008
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.j
  %.val10.i.i.i.i.i.i = phi i64 [ %i.r, %bb.j ], [ 0, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val10.i.i.i.i.i.i ; 2 uses
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !83009, !nonnull !29, !noundef !29
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !83009, !noundef !29 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val16.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.f, !prof !297

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.m = icmp eq i64 %.val16.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !83020
  %i.n = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val16.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83020 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %.preheader.i.i.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i) #71
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !83009

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val15.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i, i1 false), !noalias !83027
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.p = phi ptr [ %i.n, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.val10.i.i.i.i.i.i ; 3 uses
  store i64 %.val16.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !83028
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83028
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val16.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !83028
  %i.r = add nuw nsw i64 %.val10.i.i.i.i.i.i, 1   ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB3j_10ModulepathINtNtB22_7convert7TryFromRSB38_E8try_from0EE9from_iterB3l_.exit, label %.preheader.i.i.i

.body.i:                                          ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83033), !noalias !83008
  %i.u = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.u, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %.body.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39
  %.sroa.0.010.i.i.i36 = phi i64 [ %i.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39 ], [ 0, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i36 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.010.i.i.i36, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83036), !noalias !83008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83039), !noalias !83008
  %.val.i.i.i.i.i37 = load i64, ptr %i.v, align 8, !alias.scope !83042, !noalias !83043 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i37, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i35
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i.i.i38 = load ptr, ptr %i.y, align 8, !alias.scope !83042, !noalias !83043, !nonnull !29, !noundef !29
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i38, i64 noundef %.val.i.i.i.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !83046
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39: ; preds = %bb.k, %.lr.ph.i.i.i35
  %i.z = icmp eq i64 %i.w, %.val10.i.i.i.i.i.i
  br i1 %i.z, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40, label %.lr.ph.i.i.i35

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i40: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i39, %.body.i
  %i.aa = mul nuw nsw i64 %2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !83043
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
  %i.ab = load ptr, ptr %1, align 8, !nonnull !29, !noundef !29 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !29 ; 7 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83047
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1778, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #76
  %i.ak = load i64, ptr %i.b, align 8, !range !274, !noalias !83047, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83047
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
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !29 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.preheader, label %.lr.ph.preheader

end_hunk_3
begin_hunk_4_@_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathB13_EB13_ENCNCNvMNtB3q_6configNtB4o_6Config14from_argumentss_00EE9from_iterB3q_:bb.a
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
  call void @llvm.assume(i1 %i.ax), !noalias !105886
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
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !105887, !nonnull !29, !noundef !29 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !105891

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.az, %bb.k ], [ %i.ba, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bb = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.bb, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bc, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bd, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.be, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bf, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bg, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bh, align 8, !noalias !105887, !nonnull !29, !noundef !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bi, align 8, !noalias !105887, !nonnull !29, !noundef !29 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.bj, label %.loopexit.i.i.i.i, label %.new

bb.l:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !105886
  unreachable

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #75
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !105892

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
  call void @llvm.assume(i1 %i.bn), !noalias !105886
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 624
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !105893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105896
  call void @llvm.experimental.noalias.scope.decl(metadata !105898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105901
  store ptr %i.bq, ptr %i.c, align 8, !noalias !105901, !captures !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105901
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !105906, !noalias !105907, !nonnull !29, !noundef !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !105906, !noalias !105907, !noundef !29
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit14.i.i.i.i, !noalias !105896

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105901
  store ptr %i.b, ptr %i.a, align 8, !noalias !105901
  store ptr @_RNvXs3_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105901
  store ptr %i.c, ptr %i.o, align 8, !noalias !105901
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !105901
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @571, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i unwind label %bb.m, !noalias !105908

bb.m:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #72, !noalias !105909
  br label %.body

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105901
  call void @llvm.experimental.noalias.scope.decl(metadata !105910)
  call void @llvm.experimental.noalias.scope.decl(metadata !105913)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !105916, !noalias !105901, !nonnull !29, !noundef !29 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !105916, !noalias !105901, !noundef !29 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105917)
  %i.bw = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105920)
  call void @llvm.experimental.noalias.scope.decl(metadata !105923)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !105926, !noalias !105927 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !105926, !noalias !105927, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !105928
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = icmp eq i64 %i.by, %.val1.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !105916, !noalias !105901 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.cd = mul nuw i64 %.val2.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !105927
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105901
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.val8.i29.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !105908
  %i.cf = add nuw i64 %.val8.i29.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105896
  %i.cg = icmp eq i64 %i.t, 0
  br i1 %i.cg, label %.loopexit, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.loopexit14.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.m
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %lpad.loopexit.i.i.i.i, %.loopexit14.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  store i64 %.val8.i29.i.i.i.i, ptr %i.n, align 8, !alias.scope !105929, !noalias !105930
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #72
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringERB1I_EB1I_uNCNCNvMNtB11_6configNtB2D_6Config14from_argumentss_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtB1M_3vecINtB4t_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtNtB1M_11collections5btree3map4IterBW_B1I_EB2w_EE0E0E0B11_.exit.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  store i64 %.val, ptr %i.n, align 8, !alias.scope !105929, !noalias !105930
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
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !105931, !noalias !105936, !nonnull !29, !noundef !29 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !105931, !noalias !105936, !nonnull !29, !noundef !29 ; 2 uses
  %i.d = ptrtoint ptr %.val3.i.i to i64           ; 2 uses
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !105931, !noalias !105936, !noundef !29 ; 4 uses
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.i) ; 4 uses
  %i.k = mul nuw i64 %i.j, 24                     ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !297

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskXtk6F4WjxZ_4just.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !105939
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !105939 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105945)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105948
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.g unwind label %.body, !noalias !105965

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !105966
  %i.x = add i64 %.val10.i.i.i.i.i.i, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105948
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
  store i64 %.val10.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !105971, !noalias !105972
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72
  resume { ptr, i32 } %i.ac

.loopexit:                                        ; preds = %bb.g, %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.49.0.copyload.sink.i.i.i.i = phi i64 [ 0, %bb.h ], [ 0, %._crit_edge.i.i.i.i.i ], [ %i.u, %bb.g ]
  store i64 %.sroa.49.0.copyload.sink.i.i.i.i, ptr %i.p, align 8, !alias.scope !105971, !noalias !105973
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
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !105974, !noalias !105977, !noundef !29 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null                ; 3 uses
  %i.d = load i64, ptr %1, align 8, !range !8557, !alias.scope !105974, !noalias !105977, !noundef !29 ; 7 uses
  %.not7.i.not.not = icmp eq i64 %i.d, -2         ; 2 uses
  br i1 %.not.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !105974, !noalias !105977, !nonnull !29, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i = load ptr, ptr %i.f, align 8, !alias.scope !105974, !noalias !105977, !nonnull !29, !noundef !29
  %i.g = ptrtoint ptr %.val10.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24
  %narrow = icmp ult i64 %i.d, -2
  %i.k = zext i1 %narrow to i64
  %.sink21.i = add nuw nsw i64 %i.j, %i.k         ; 3 uses
  %i.l = mul i64 %.sink21.i, 24                   ; 2 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sink21.i, 384307168202282325
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !34440

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
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !105979
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #70, !noalias !105979 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105990)
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !105992, !noalias !105995, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !105992, !noalias !105995, !nonnull !29, !noundef !29
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
  br i1 %i.ag, label %bb.j, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i, !prof !74911

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sink21.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i unwind label %.body, !noalias !105997

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i: ; preds = %bb.j
  %.pre.i = load i64, ptr %i.u, align 8, !alias.scope !105998, !noalias !105997
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !105998, !noalias !105997
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  %i.ah = phi ptr [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i ], [ %.sroa.10.0.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.ai = phi i64 [ %.pre.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just.exit.i_crit_edge.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtB8_7sources4once4OnceB1N_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !105997, !noalias !105998 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !105997, !noalias !105998 ; 3 uses
  br i1 %.not.i, label %_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1x_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1D_8adapters5chain5ChainBI_INtNtNtB1D_7sources4once4OnceBX_EEE0E0ECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.k
end_hunk_4
