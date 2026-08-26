Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tee-c5257adb85aca4e5.uu_tee.4459b5c3dfd6e51f-cgu.0?download=true
inline.NumInlined: 474
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs5RPjO8Kzn89_6uu_tee3tee:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.gw = add nuw nsw i64 %.sroa.0.0.i.i57.i, 4   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i.loopexit.unr-lcssa, label %bb.ag

.loopexit:                                        ; preds = %bb.ap, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.sroa.0.0.i.i57.i.lcssa = phi i64 [ %i.gt, %bb.aj ], [ %.sroa.0.0.i.i57.i, %bb.ag ], [ %i.gn, %bb.ah ], [ %i.gq, %bb.ai ], [ %.sroa.0.0.i.i57.i.epil, %bb.ap ] ; 3 uses
  %.lcssa256 = phi ptr [ %i.gu, %bb.aj ], [ %i.gl, %bb.ag ], [ %i.go, %bb.ah ], [ %i.gr, %bb.ai ], [ %i.hi, %bb.ap ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_(ptr noalias nofree noundef align 8 dereferenceable(32) %.lcssa256) #20, !noalias !257
  %.sroa.8.026.i.i.i = add nuw i64 %.sroa.0.0.i.i57.i.lcssa, 1 ; 2 uses
  %i.gx = icmp ult i64 %.sroa.8.026.i.i.i, %i.gg
  br i1 %i.gx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i, %.loopexit
  %.sroa.16.0.lcssa.i.i.i = phi i64 [ %.sroa.0.0.i.i57.i.lcssa, %.loopexit ], [ %.sroa.16.1.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i ]
  store i64 %.sroa.16.0.lcssa.i.i.i, ptr %i.du, align 8, !alias.scope !256
  br label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i
  %.sroa.8.028.i.i.i = phi i64 [ %.sroa.8.0.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i ], [ %.sroa.8.026.i.i.i, %.loopexit ] ; 2 uses
  %.sroa.16.027.i.i.i = phi i64 [ %.sroa.16.1.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i ], [ %.sroa.0.0.i.i57.i.lcssa, %.loopexit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %.sroa.8.028.i.i.i ; 6 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  %.val.i.i.i = load i64, ptr %i.gz, align 8, !noalias !257, !noundef !5
  %.not21.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not21.i.i.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %.val2.i.i.i.i = load i32, ptr %i.ha, align 8, !range !4, !alias.scope !258, !noalias !257, !noundef !5
  %i.hb = icmp eq i32 %.val2.i.i.i.i, 0
  br i1 %i.hb, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %.val3.i.i.i.i = load i32, ptr %i.hc, align 4, !alias.scope !258, !noalias !257
  %i.hd = call noundef i32 @close(i32 noundef %.val3.i.i.i.i) #20, !noalias !261 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.val.i.i.i.i = load i64, ptr %i.gy, align 8, !range !6, !alias.scope !258, !noalias !257, !noundef !5 ; 2 uses
  %i.he = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.he, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !258, !noalias !257, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !261
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %.sroa.16.027.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i64 32, i1 false), !noalias !257
  %i.hh = add i64 %.sroa.16.027.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i.i: ; preds = %bb.ao, %bb.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i
  %.sroa.16.1.i.i.i = phi i64 [ %i.hh, %bb.ao ], [ %.sroa.16.027.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i.i ], [ %.sroa.16.027.i.i.i, %bb.an ] ; 2 uses
  %.sroa.8.0.i.i.i = add nuw nsw i64 %.sroa.8.028.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.8.0.i.i.i, %i.gg
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i
  %.sroa.0.0.i.i57.i.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %i.gw, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod267 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod267)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.epil.preheader
  %.sroa.0.0.i.i57.i.epil = phi i64 [ %i.hk, %bb.aq ], [ %.sroa.0.0.i.i57.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.aq ], [ 0, %.epil.preheader ]
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %.sroa.0.0.i.i57.i.epil ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  %.val20.i.i.i.epil = load i64, ptr %i.hj, align 8, !noalias !257, !noundef !5
  %.not.i.i58.i.epil = icmp eq i64 %.val20.i.i.i.epil, 0
  br i1 %.not.i.i58.i.epil, label %.loopexit, label %bb.aq, !prof !93

bb.aq:                                            ; preds = %bb.ap
  %i.hk = add nuw nsw i64 %.sroa.0.0.i.i57.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i, label %bb.ap, !llvm.loop !262

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs5RPjO8Kzn89_6uu_tee11NamedWriterE6retainNCNvMBH_NtBH_11MultiWriter15copy_unbuffered0EBH_.exit.i.loopexit.unr-lcssa, %bb.aq, %._crit_edge.i.i.i, %bb.af
  %i.hl = load i8, ptr %i.cq, align 8, !range !74, !alias.scope !224, !noundef !5
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter15copy_unbuffered.exit, label %bb.y

bb.ar:                                            ; preds = %bb.y
  %i.hn = call noundef i32 @close(i32 noundef %i.dh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !224
  %i.ho = call noundef i32 @close(i32 noundef %i.df) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !224
  %i.hp = call noundef i32 @close(i32 noundef %i.db) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !224
  %i.hq = call noundef i32 @close(i32 noundef %i.cz) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !224
  br label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i, %bb.ar, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !224
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  br label %bb.az

bb.at:                                            ; preds = %bb.s
  %i.hx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !224, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !227
  %i.hz = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ia = and i64 %i.hz, 3
  switch i64 %i.ia, label %default.unreachable [
    i64 2, label %bb.r
    i64 3, label %bb.au
    i64 0, label %bb.r
    i64 1, label %bb.av
  ], !prof !83

bb.au:                                            ; preds = %bb.at
  %i.ib = icmp ult ptr %i.hy, inttoptr (i64 188978561024 to ptr)
  %i.ic = and i64 %i.hz, 1095216660480
  %i.id = icmp ne i64 %i.ic, 1095216660480
  call void @llvm.assume(i1 %i.ib)
  call void @llvm.assume(i1 %i.id)
  br label %bb.r

bb.av:                                            ; preds = %bb.at
  %i.ie = getelementptr i8, ptr %i.hy, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ie) ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ie, ptr %i.if, align 8, !alias.scope !264, !noalias !227
  store i8 3, ptr %i.f, align 8, !alias.scope !264, !noalias !227
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.if) #20, !noalias !267
  br label %bb.r

bb.aw:                                            ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !224, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !268
  %i.ii = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ij = and i64 %i.ii, 3
  switch i64 %i.ij, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i
    i64 3, label %bb.ax
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i
    i64 1, label %bb.ay
  ], !prof !83

bb.ax:                                            ; preds = %bb.aw
  %i.ik = icmp ult ptr %i.ih, inttoptr (i64 188978561024 to ptr)
  %i.il = and i64 %i.ii, 1095216660480
  %i.im = icmp ne i64 %i.il, 1095216660480
  call void @llvm.assume(i1 %i.ik)
  call void @llvm.assume(i1 %i.im)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i

bb.ay:                                            ; preds = %bb.aw
  %i.in = getelementptr i8, ptr %i.ih, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.in) ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.in, ptr %i.io, align 8, !alias.scope !271, !noalias !268
  store i8 3, ptr %i.e, align 8, !alias.scope !271, !noalias !268
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.io) #20, !noalias !274
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit90.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !268
  br label %bb.as

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i, %bb.as
  %i.ip = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr null, ptr null, ptr nonnull dereferenceable(32768) %i.q, ptr nonnull inttoptr (i64 32768 to ptr)) #20, !noalias !275, !srcloc !280
  %i.iq = extractvalue { ptr, i32, i32 } %i.ip, 0 ; 5 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %.not.i.i.i.i = icmp sgt ptr %i.iq, inttoptr (i64 -4096 to ptr)
  %i.is = icmp slt ptr %i.iq, null
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.is
  br i1 %.sroa.0.0.i.i.i.i, label %bb.bb, label %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls4read.exit.i.i

_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls4read.exit.i.i: ; preds = %bb.az
  %i.it = icmp ult ptr %i.iq, inttoptr (i64 32769 to ptr)
  br i1 %i.it, label %_RINvNtNtCscC7ZI6NG8RX_6rustix2io10read_write4readNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdQAINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninithEj8000_ECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.ba, !prof !104

bb.ba:                                            ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls4read.exit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22, !noalias !281
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.iu = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !224
  %.not.i.i = icmp eq ptr %i.iu, @13
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i, label %bb.bc, !prof !104

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.bc, %bb.bb
  %.neg.i = mul i64 %i.ir, -4294967296            ; 2 uses
  %i.iv = lshr exact i64 %.neg.i, 32
  %i.iw = trunc nuw i64 %i.iv to i32
  %i.ix = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !nonnull !5, !noundef !5
  %i.ja = call noundef i8 %i.iz(i32 noundef %i.iw) #20, !inline_history !288
  %i.jb = icmp eq i8 %i.ja, 35
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.bn

_RINvNtNtCscC7ZI6NG8RX_6rustix2io10read_write4readNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdQAINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninithEj8000_ECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2io8syscalls4read.exit.i.i
  %i.jc = icmp eq ptr %i.iq, null
  br i1 %i.jc, label %.loopexit322.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix2io10read_write4readNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdQAINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninithEj8000_ECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !292
  %i.jd = load i8, ptr %i.co, align 1, !range !151, !alias.scope !294, !noalias !295, !noundef !5
  store i8 %i.jd, ptr %i.d, align 1, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !292
  store ptr %i.q, ptr %i.c, align 8, !noalias !292
  store i64 %i.ir, ptr %i.hr, align 8, !noalias !292
  store ptr %i.cp, ptr %i.hs, align 8, !noalias !292
  store ptr %i.cq, ptr %i.ht, align 8, !noalias !292
  store ptr %i.d, ptr %i.hu, align 8, !noalias !292
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.je = load i64, ptr %i.hv, align 8, !alias.scope !299, !noalias !300, !noundef !5 ; 5 uses
  %i.jf = icmp ult i64 %i.je, 288230376151711744
  call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp eq i64 %i.je, 0
  br i1 %i.jg, label %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i, label %.preheader.i.i93.i

.preheader.i.i93.i:                               ; preds = %bb.bd
  %i.jh = load ptr, ptr %i.hw, align 8, !alias.scope !299, !noalias !300, !nonnull !5, !noundef !5 ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.preheader.i.i93.i
  %.sroa.0.0.i.i94.i = phi i64 [ %i.jk, %bb.bf ], [ 0, %.preheader.i.i93.i ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.jh, i64 %.sroa.0.0.i.i94.i ; 5 uses
  %i.jj = call fastcc noundef zeroext i1 @_RNCNvMCs5RPjO8Kzn89_6uu_teeNtB4_11MultiWriter11write_flush0B4_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ji) #21, !noalias !296
  br i1 %i.jj, label %bb.bf, label %bb.bg, !prof !104

bb.bf:                                            ; preds = %bb.be
  %i.jk = add nuw nsw i64 %.sroa.0.0.i.i94.i, 1   ; 2 uses
  %i.jl = icmp eq i64 %i.jk, %i.je
  br i1 %i.jl, label %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i, label %bb.be

bb.bg:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %.val2.i191.i = load i32, ptr %i.jm, align 4, !range !4, !alias.scope !302, !noalias !305, !noundef !5
  %i.jn = icmp eq i32 %.val2.i191.i, 0
  br i1 %i.jn, label %bb.bh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  %.val3.i194.i = load i32, ptr %i.jo, align 4, !alias.scope !302, !noalias !305
  %i.jp = call noundef i32 @close(i32 noundef %.val3.i194.i) #20, !noalias !306 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i: ; preds = %bb.bh, %bb.bg
  %.val.i192.i = load i64, ptr %i.ji, align 8, !range !6, !alias.scope !302, !noalias !305, !noundef !5 ; 2 uses
  %i.jq = icmp eq i64 %.val.i192.i, 0
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.val1.i193.i = load ptr, ptr %i.jr, align 8, !alias.scope !302, !noalias !305, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i193.i, i64 noundef %.val.i192.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !306
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i: ; preds = %bb.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i
  %.sroa.8.024.i.i.i = add nuw i64 %.sroa.0.0.i.i94.i, 1 ; 2 uses
  %i.js = icmp ult i64 %.sroa.8.024.i.i.i, %i.je
  br i1 %i.js, label %.lr.ph.i.i97.i, label %._crit_edge.i.i95.i

._crit_edge.i.i95.i:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i
  %.sroa.16.0.lcssa.i.i96.i = phi i64 [ %.sroa.0.0.i.i94.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i ], [ %.sroa.16.1.i.i104.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i ]
  store i64 %.sroa.16.0.lcssa.i.i96.i, ptr %i.hv, align 8, !alias.scope !299, !noalias !300
  br label %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i

.lr.ph.i.i97.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i
  %.sroa.8.026.i.i98.i = phi i64 [ %.sroa.8.0.i.i105.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i ], [ %.sroa.8.024.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i ] ; 2 uses
  %.sroa.16.025.i.i.i = phi i64 [ %.sroa.16.1.i.i104.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i ], [ %.sroa.0.0.i.i94.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.jh, i64 %.sroa.8.026.i.i98.i ; 6 uses
  %i.ju = call fastcc noundef zeroext i1 @_RNCNvMCs5RPjO8Kzn89_6uu_teeNtB4_11MultiWriter11write_flush0B4_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef align 8 dereferenceable(32) %i.jt) #21, !noalias !296
  br i1 %i.ju, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i97.i
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %.val2.i.i.i99.i = load i32, ptr %i.jv, align 4, !range !4, !alias.scope !307, !noalias !305, !noundef !5
  %i.jw = icmp eq i32 %.val2.i.i.i99.i, 0
  br i1 %i.jw, label %bb.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i

bb.bk:                                            ; preds = %bb.bj
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  %.val3.i.i.i107.i = load i32, ptr %i.jx, align 4, !alias.scope !307, !noalias !305
  %i.jy = call noundef i32 @close(i32 noundef %.val3.i.i.i107.i) #20, !noalias !310 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i: ; preds = %bb.bk, %bb.bj
  %.val.i.i.i101.i = load i64, ptr %i.jt, align 8, !range !6, !alias.scope !307, !noalias !305, !noundef !5 ; 2 uses
  %i.jz = icmp eq i64 %.val.i.i.i101.i, 0
  br i1 %i.jz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.val1.i.i.i102.i = load ptr, ptr %i.ka, align 8, !alias.scope !307, !noalias !305, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i102.i, i64 noundef %.val.i.i.i101.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !310
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i

bb.bm:                                            ; preds = %.lr.ph.i.i97.i
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.jh, i64 %.sroa.16.025.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %i.jt, i64 32, i1 false), !noalias !305
  %i.kc = add i64 %.sroa.16.025.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEBD_.exit.i.i103.i: ; preds = %bb.bm, %bb.bl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i
  %.sroa.16.1.i.i104.i = phi i64 [ %i.kc, %bb.bm ], [ %.sroa.16.025.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5RPjO8Kzn89_6uu_tee6WriterEBD_.exit.i.i.i100.i ], [ %.sroa.16.025.i.i.i, %bb.bl ] ; 2 uses
  %.sroa.8.0.i.i105.i = add nuw nsw i64 %.sroa.8.026.i.i98.i, 1 ; 2 uses
  %exitcond.not.i.i106.i = icmp eq i64 %.sroa.8.0.i.i105.i, %i.je
  br i1 %exitcond.not.i.i106.i, label %._crit_edge.i.i95.i, label %.lr.ph.i.i97.i

_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i: ; preds = %bb.bf, %._crit_edge.i.i95.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  %i.kd = load i8, ptr %i.cq, align 8, !range !74, !alias.scope !294, !noalias !295, !noundef !5
  %i.ke = trunc nuw i8 %i.kd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !292
  br i1 %i.ke, label %.loopexit322.i.thread, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i

.loopexit322.i.thread:                            ; preds = %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !224
  br label %bb.dt

.loopexit322.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i, %_RINvNtNtCscC7ZI6NG8RX_6rustix2io10read_write4readNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned10BorrowedFdQAINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninithEj8000_ECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !224
  br label %bb.do

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %_RNvMCs5RPjO8Kzn89_6uu_teeNtB2_11MultiWriter11write_flush.exit.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  %i.kf = load i64, ptr %i.hv, align 8, !alias.scope !224, !noundef !5 ; 2 uses
  %i.kg = icmp ult i64 %i.kf, 288230376151711744
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp eq i64 %i.kf, 0
  br i1 %i.kh, label %.loopexit322.i, label %bb.az

bb.bn:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  %i.ki = or disjoint i64 %.neg.i, 2
  %i.kj = inttoptr i64 %i.ki to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !224
  store ptr %i.kj, ptr %i.p, align 8, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !224
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.o, align 8, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !224
  store i64 0, ptr %i.m, align 8, !noalias !224
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !224
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !224
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !224, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !noalias !224, !noundef !5 ; 16 uses
  %.not.i108.i = icmp slt i64 %i.kn, 0
  br i1 %.not.i108.i, label %bb.bp, label %bb.bo, !prof !43

bb.bo:                                            ; preds = %bb.bn
  %i.ko = icmp eq i64 %i.kn, 0                    ; 2 uses
  br i1 %i.ko, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread308.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.bo
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !311
  %i.kp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kn, i64 noundef range(i64 1, 9) 1) #20, !noalias !311 ; 3 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.bp, label %bb.ce

bb.bp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.bn
  %.sroa.4258.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.bn ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4258.0.ph.i, i64 %i.kn) #23
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread308.i: ; preds = %bb.ce, %bb.bo
  %i.kr = phi ptr [ %i.kp, %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.bo ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %.val.i110.i = load i64, ptr %i.l, align 8, !range !6, !alias.scope !314, !noalias !224, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %.val.i110.i, 0
  br i1 %i.ks, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread308.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kl, i64 noundef %.val.i110.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !314
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i: ; preds = %bb.bq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread308.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !224
  switch i64 %i.kn, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %i.kt = load i8, ptr %i.kr, align 1, !alias.scope !317, !noalias !320, !noundef !5 ; 2 uses
  switch i8 %i.kt, label %bb.bs [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  %.pr.i.i = load i8, ptr %i.kr, align 1, !alias.scope !317, !noalias !320
  br label %bb.bs

bb.bs:                                            ; preds = %thread-pre-split.i.i, %bb.br
  %i.ku = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.kt, %bb.br ]
  switch i8 %i.ku, label %bb.bz [
    i8 43, label %bb.bt
    i8 45, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kw = add nsw i64 %i.kn, -1
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  %i.ky = add nsw i64 %i.kn, -1                   ; 3 uses
  %i.kz = icmp samesign ult i64 %i.kn, 17
  br i1 %i.kz, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.bu
  %.not103137.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %bb.bx
  %.sroa.0.1136.i.i = phi ptr [ %i.la, %bb.bx ], [ %i.kx, %bb.bu ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.lb, %bb.bx ], [ %i.ky, %bb.bu ]
  %.sroa.084.0134.i.i = phi i64 [ %i.lm, %bb.bx ], [ 0, %bb.bu ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.lb = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.lc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 0
  %i.le = extractvalue { i64, i1 } %i.lc, 1
  br i1 %i.le, label %.loopexit.i, label %bb.bv, !prof !93

bb.bv:                                            ; preds = %.lr.ph.i.i
  %i.lf = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48                  ; 2 uses
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %bb.bw, label %.loopexit.i

bb.bw:                                            ; preds = %bb.bv
  %i.lj = zext nneg i32 %i.lh to i64
  %i.lk = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ld, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  br i1 %i.ll, label %.loopexit.i, label %bb.bx, !prof !93

bb.bx:                                            ; preds = %bb.bw
  %i.lm = extractvalue { i64, i1 } %i.lk, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.by
  %.sroa.0.2140.i.i = phi ptr [ %i.lt, %bb.by ], [ %i.kx, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.ls, %bb.by ], [ %i.ky, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.lv, %bb.by ], [ 0, %.preheader114.i.i ]
  %i.ln = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nsw i32 %i.lo, -48                  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 10
  br i1 %i.lq, label %bb.by, label %.loopexit.i

bb.by:                                            ; preds = %.lr.ph141.i.i
  %i.lr = mul i64 %.sroa.084.2138.i.i, 10
  %i.ls = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.lu = zext nneg i32 %i.lp to i64
  %i.lv = sub i64 %i.lr, %i.lu                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ls, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.bz:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.26.0.i.i = phi i64 [ %i.kw, %bb.bt ], [ %i.kn, %bb.bs ] ; 4 uses
  %.sroa.0.0.i113.i = phi ptr [ %i.kv, %bb.bt ], [ %i.kr, %bb.bs ] ; 2 uses
  %i.lw = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.lw, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.bz
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.bz, %bb.cc
  %.sroa.0.3145.i.i = phi ptr [ %i.lx, %bb.cc ], [ %.sroa.0.0.i113.i, %bb.bz ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.ly, %bb.cc ], [ %.sroa.26.0.i.i, %bb.bz ]
  %.sroa.084.3143.i.i = phi i64 [ %i.mj, %bb.cc ], [ 0, %bb.bz ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.ly = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.lz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.ma = extractvalue { i64, i1 } %i.lz, 0
  %i.mb = extractvalue { i64, i1 } %i.lz, 1
  br i1 %i.mb, label %.loopexit.i, label %bb.ca, !prof !93

bb.ca:                                            ; preds = %.preheader111.i.i
  %i.mc = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.md = zext i8 %i.mc to i32
  %i.me = add nsw i32 %i.md, -48                  ; 2 uses
  %i.mf = icmp ult i32 %i.me, 10
  br i1 %i.mf, label %bb.cb, label %.loopexit.i

bb.cb:                                            ; preds = %bb.ca
  %i.mg = zext nneg i32 %i.me to i64
  %i.mh = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ma, i64 %i.mg) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 1
  br i1 %i.mi, label %.loopexit.i, label %bb.cc, !prof !93

bb.cc:                                            ; preds = %bb.cb
  %i.mj = extractvalue { i64, i1 } %i.mh, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.cd
  %.sroa.0.4149.i.i = phi ptr [ %i.mq, %bb.cd ], [ %.sroa.0.0.i113.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.mp, %bb.cd ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ms, %bb.cd ], [ 0, %.preheader.i.i ]
  %i.mk = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !317, !noalias !320, !noundef !5
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -48                  ; 2 uses
  %i.mn = icmp ult i32 %i.mm, 10
  br i1 %i.mn, label %bb.cd, label %.loopexit.i

bb.cd:                                            ; preds = %.lr.ph150.i.i
  %i.mo = mul i64 %.sroa.084.4147.i.i, 10
  %i.mp = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.mr = zext nneg i32 %i.mm to i64
  %i.ms = add i64 %i.mo, %i.mr                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.ce:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr nonnull align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5RPjO8Kzn89_6uu_tee.exit.thread308.i

.loopexit.i:                                      ; preds = %bb.bw, %bb.bv, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.cb, %bb.ca, %.preheader111.i.i, %.lr.ph150.i.i, %bb.br, %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5RPjO8Kzn89_6uu_tee.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !224
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kr, i64 noundef %i.kn) #25
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvCs5RPjO8Kzn89_6uu_tee3tees0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !750, !noalias !749
  store i8 3, ptr %i.a, align 8, !alias.scope !750, !noalias !749
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #20, !noalias !749
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !749
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i.i, %bb.t
  store ptr %.sroa.7.013.i.i.i.i, ptr %i.k, align 8, !alias.scope !703, !noalias !745
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit

.loopexit:                                        ; preds = %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i, %.thread.i.i.i.i
  %.sroa.13.0 = phi i32 [ %i.aw, %.thread.i.i.i.i ], [ %.sroa.11.012.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.8.0 = phi ptr [ inttoptr (i64 1 to ptr), %.thread.i.i.i.i ], [ %.sroa.7.013.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  %.sroa.0.0 = phi i64 [ 0, %.thread.i.i.i.i ], [ %.sroa.0.014.i.i.i.i, %_RNCNvCs5RPjO8Kzn89_6uu_tee3tees0_0B3_.exit.i.i.i.i ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.13.0, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCs5RPjO8Kzn89_6uu_tee11NamedWriterEEB1i_.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtB4_2io5error5ErrorEEECs5RPjO8Kzn89_6uu_tee.exit.i.i.i.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.x
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_Cs5RPjO8Kzn89_6uu_teeNtB5_11NamedWriterNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = trunc nuw i32 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4, !range !38, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6result6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !35, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.d = load i16, ptr %i.c, align 8, !range !756, !alias.scope !753, !noalias !757, !noundef !5
  %i.e = trunc nuw i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !759
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.f, ptr %i.a, align 8, !noalias !759
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !759
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !759
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !noalias !759
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !759
  br label %_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit

_RNvXst_NtCs6JMX4GRUq9U_4core6resultINtB5_6ResultjNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoENtNtB7_3fmt5Debug3fmtCs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtNtCscC7ZI6NG8RX_6rustix7backend2io5errno5ErrnoNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !760, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCscC7ZI6NG8RX_6rustix2io5errnoNtNtNtNtB9_7backend2io5errno5ErrnoNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !35, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !761, !noalias !764, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_Cs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #20
  %i.b = load i64, ptr %i.a, align 8, !range !16, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !35, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !766
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #20, !noalias !766 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !93

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23, !noalias !766
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @50, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #20
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCs5RPjO8Kzn89_6uu_tee(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !772
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #20, !noalias !772 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #23, !noalias !780
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.l, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.10.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.7.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %i.j = add nsw i64 %.sroa.7.052.i.i.i, -1       ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.054.i.i.i, %i.h
  br i1 %i.k, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.m = add nuw nsw i64 %.sroa.10.053.i.i.i, 1
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.10.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !780
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !784, !noalias !785, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !784, !noalias !785, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !16, !alias.scope !784, !noalias !785, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #20, !noalias !785
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !787
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !784, !noalias !785, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !784, !noalias !785, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !791
  %i.y = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, 9) 8) #20, !noalias !791 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #23, !noalias !797
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.021.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.020.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.ab = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %i.aa
  br i1 %i.ab, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = add nsw i64 %.sroa.7.020.i.i.i.i.i.i, -1 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.10.021.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.10.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !788, !noalias !798, !nonnull !5, !noundef !5
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !788, !noalias !798, !noundef !5
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !797
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !797
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i31.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !74, !alias.scope !784, !noalias !785, !noundef !5
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !780
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !799
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i31.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !799
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !799
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !799
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !799
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !799
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !799
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i66.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !800
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #20, !noalias !800 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !93

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23, !noalias !800
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i66.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @44, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCs5RPjO8Kzn89_6uu_tee(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #20
  %i.b = load i64, ptr %i.a, align 8, !range !16, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !35, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !803
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #20, !noalias !803 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !93

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23, !noalias !803
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @50, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #20
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCs5RPjO8Kzn89_6uu_tee(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !806
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #20, !noalias !806
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !806, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !806, !noundef !5
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !6, !alias.scope !809, !noalias !806, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5RPjO8Kzn89_6uu_tee.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !809
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5RPjO8Kzn89_6uu_tee.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cs5RPjO8Kzn89_6uu_tee.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !806
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals17ignore_interrupts() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19disable_pipe_errors() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals24ensure_stdout_not_broken(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_1
