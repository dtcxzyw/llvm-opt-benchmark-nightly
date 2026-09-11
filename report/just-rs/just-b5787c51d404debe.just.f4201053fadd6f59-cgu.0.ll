Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 598
loop-unroll.NumUnrolled: 723
begin_hunk_0_@_RNvNtCskXtk6F4WjxZ_4just11load_dotenv11load_dotenv:bb.a
  store i8 1, ptr %i.bd, align 8, !noalias !75155
  br label %bb.t

bb.r:                                             ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 8192, i64 noundef 1) #70, !noalias !75154
  br label %.body90.i

.body90.i:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsl7tMOFksck4_7dotenvy4iter4IterRShEECskXtk6F4WjxZ_4just.exit, %bb.s, %bb.r
  %.pn80.i = phi { ptr, i32 } [ %.pn78.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsl7tMOFksck4_7dotenvy4iter4IterRShEECskXtk6F4WjxZ_4just.exit ], [ %i.cr, %bb.s ], [ %i.cq, %bb.r ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #72
          to label %bb.da unwind label %bb.cv, !noalias !75144

bb.s:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

bb.t:                                             ; preds = %.noexc.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i
  %.pre-phi14.i.i = phi i64 [ %i.cp, %.noexc.i.i ], [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.co, %.noexc.i.i ], [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.cs = add i64 %.pre-phi.i.i, 1
  store i64 %i.cs, ptr %i.bc, align 8, !noalias !75153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !75142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.6.0..sroa_idx.i, i8 0, i64 17, i1 false), !noalias !75142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false), !noalias !75142
  store i64 %.pre-phi.i.i, ptr %.sroa.2148.0..sroa_idx.i, align 8, !noalias !75142
  store i64 %.pre-phi14.i.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !75142
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !75142
  store i64 8192, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !75142
  store ptr %.sroa.0192.0.copyload.i, ptr %.sroa.7151.0..sroa_idx.i, align 8, !noalias !75142
  store i64 %.sroa.5186.0.copyload.i, ptr %.sroa.8152.0..sroa_idx.i, align 8, !noalias !75142
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit111.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit111.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit111.i.backedge, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !75156)
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit16.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit111.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75158
  store i64 0, ptr %i.e, align 8, !noalias !75158
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !75158
  store i64 0, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !noalias !75158
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !75159, !noalias !75160 ; 3 uses
  %i.ct = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i, null
  %i.cu = load i64, ptr %.sroa.5149.0..sroa_idx.i, align 8, !alias.scope !75161, !noalias !75162 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.8152.0..sroa_idx.i, align 8, !alias.scope !75161, !noalias !75162 ; 2 uses
  %.promoted147.i.i.i = load ptr, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !75161, !noalias !75162 ; 2 uses
  br i1 %i.ct, label %.split.us.i.i.i, label %.split.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !75163)
  call void @llvm.experimental.noalias.scope.decl(metadata !75164)
  call void @llvm.experimental.noalias.scope.decl(metadata !75165)
  call void @llvm.experimental.noalias.scope.decl(metadata !75166)
  call void @llvm.experimental.noalias.scope.decl(metadata !75167)
  call void @llvm.experimental.noalias.scope.decl(metadata !75168)
  call void @llvm.experimental.noalias.scope.decl(metadata !75169)
  call void @llvm.experimental.noalias.scope.decl(metadata !75170)
  %.promoted84.i.i.i.i.us.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !75161, !noalias !75162
  %.promoted.i.i.i.i.us.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !75161, !noalias !75162
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i, %.split.us.i.i.i
  %i.cv = phi ptr [ %.promoted147.i.i.i, %.split.us.i.i.i ], [ %i.db, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i ] ; 2 uses
  %i.cw = phi i64 [ %.promoted.i.i.i, %.split.us.i.i.i ], [ %i.dc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i ] ; 3 uses
  %..i.i.i.i.i58.us.i.i.i.i.us.i.i.i = phi i64 [ %.promoted.i.i.i.i.us.i.i.i, %.split.us.i.i.i ], [ %..i.i.i.i.i57.us.i.i.i.i.us.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i ] ; 2 uses
  %i.cx = phi i64 [ %.promoted84.i.i.i.i.us.i.i.i, %.split.us.i.i.i ], [ %i.dd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75171)
  call void @llvm.experimental.noalias.scope.decl(metadata !75172)
  call void @llvm.experimental.noalias.scope.decl(metadata !75173)
  %.not.i.i.us.i.i.i.i.us.i.i.i = icmp ult i64 %i.cx, %..i.i.i.i.i58.us.i.i.i.i.us.i.i.i
  br i1 %.not.i.i.us.i.i.i.i.us.i.i.i, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !75174)
  %..i.i.i.i.i.us.i.i.i.i.us.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cu) ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %..i.i.i.i.i.us.i.i.i.i.us.i.i.i ; 2 uses
  %i.cz = sub nuw nsw i64 %i.cw, %..i.i.i.i.i.us.i.i.i.i.us.i.i.i ; 2 uses
  %i.da = icmp eq i64 %..i.i.i.i.i.us.i.i.i.i.us.i.i.i, 0
  call void @llvm.assume(i1 %i.da)
  store ptr %i.cy, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !75175, !noalias !75176, !captures !36
  store i64 %i.cz, ptr %.sroa.8152.0..sroa_idx.i, align 8, !alias.scope !75175, !noalias !75176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !75177, !noalias !75178
  br label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i: ; preds = %bb.w, %bb.v
  %i.db = phi ptr [ %i.cv, %bb.v ], [ %i.cy, %bb.w ]
  %i.dc = phi i64 [ %i.cw, %bb.v ], [ %i.cz, %bb.w ]
  %..i.i.i.i.i57.us.i.i.i.i.us.i.i.i = phi i64 [ %..i.i.i.i.i58.us.i.i.i.i.us.i.i.i, %bb.v ], [ 0, %bb.w ] ; 2 uses
  %i.dd = phi i64 [ %i.cx, %bb.v ], [ 0, %bb.w ]  ; 3 uses
  %i.de = sub nuw i64 %..i.i.i.i.i57.us.i.i.i.i.us.i.i.i, %i.dd ; 6 uses
  %i.df = inttoptr i64 %i.de to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = and i64 %i.de, 3
  switch i64 %i.dg, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %.split30.us.i.i.i.i.us.i.i.i
    i64 0, label %.split31.us.i.i.i.i.us.i.i.i
    i64 1, label %.split.us.i.i.i.i.us.i.i.i
  ], !prof !69

.split.us.i.i.i.i.us.i.i.i:                       ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i
  %i.dh = getelementptr i8, ptr %i.df, i64 31
  %i.di = load i8, ptr %i.dh, align 8, !range !71, !noalias !75179, !noundef !28
  %i.dj = icmp eq i8 %i.di, 35
  br i1 %i.dj, label %bb.x, label %.loopexit.i.i.loopexit.us.i.i.i

bb.x:                                             ; preds = %.split.us.i.i.i.i.us.i.i.i
  %i.dk = getelementptr i8, ptr %i.df, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75180
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  store ptr %i.dk, ptr %i.bg, align 8, !alias.scope !75181, !noalias !75180
  store i8 3, ptr %i.c, align 8, !alias.scope !75181, !noalias !75180
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i unwind label %.loopexit21.i.i.split.us.i.i.i, !noalias !75182

.split31.us.i.i.i.i.us.i.i.i:                     ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dm = load i8, ptr %i.dl, align 8, !range !71, !noalias !75179, !noundef !28
  %i.dn = icmp eq i8 %i.dm, 35
  br i1 %i.dn, label %.thread.us.i.i.i.i.us.i.i.i, label %.loopexit.i.i.loopexit.us.i.i.i

.split30.us.i.i.i.i.us.i.i.i:                     ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i
  %i.do = lshr i64 %i.de, 32
  %i.dp = icmp ult i64 %i.de, 188978561024        ; 2 uses
  %switch.idx.cast.i.i.i.us.i.i.i.i.us.i.i.i = trunc i64 %i.do to i8
  %spec.select.i.i.i.us.i.i.i.i.us.i.i.i = select i1 %i.dp, i8 %switch.idx.cast.i.i.i.us.i.i.i.i.us.i.i.i, i8 -1 ; 2 uses
  %i.dq = icmp ne i8 %spec.select.i.i.i.us.i.i.i.i.us.i.i.i, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i8 %spec.select.i.i.i.us.i.i.i.i.us.i.i.i, 35
  br i1 %i.dr, label %bb.y, label %.loopexit.i.i.loopexit.us.i.i.i

bb.y:                                             ; preds = %.split30.us.i.i.i.i.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75180
  call void @llvm.assume(i1 %i.dp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i

bb.z:                                             ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i
  %i.ds = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.us.i.i.i.i.us.i.i.i unwind label %.split62.us.i.i.i.i.split.us.i.i.i, !noalias !75179

.noexc.us.i.i.i.i.us.i.i.i:                       ; preds = %bb.z
  %i.dt = lshr i64 %i.de, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !75179, !nonnull !28, !noundef !28
  %i.dx = invoke noundef zeroext i1 %i.dw(i32 noundef %i.du)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.us.i.i.i.i.us.i.i.i unwind label %.split62.us.i.i.i.i.split.us.i.i.i, !noalias !75179, !inline_history !13

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.us.i.i.i.i.us.i.i.i: ; preds = %.noexc.us.i.i.i.i.us.i.i.i
  br i1 %i.dx, label %.thread.us.i.i.i.i.us.i.i.i, label %.loopexit.i.i.loopexit.us.i.i.i

.thread.us.i.i.i.i.us.i.i.i:                      ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.us.i.i.i.i.us.i.i.i, %.split31.us.i.i.i.i.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75180
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.us.i.i.i.i.us.i.i.i: ; preds = %.thread.us.i.i.i.i.us.i.i.i, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75180
  br label %bb.v

bb.aa:                                            ; preds = %.loopexit.i.i.loopexit.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75183
  br label %.split183.i.i.i.sink.split

.loopexit.i.i.loopexit.us.i.i.i:                  ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.us.i.i.i.i.us.i.i.i, %.split30.us.i.i.i.i.us.i.i.i, %.split31.us.i.i.i.i.us.i.i.i, %.split.us.i.i.i.i.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75183
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.aa unwind label %.split166.us.i.i.i, !noalias !75182

.loopexit21.i.i.split.us.i.i.i:                   ; preds = %bb.x
  %lpad.loopexit.i.i.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.split62.us.i.i.i.i.split.us.i.i.i:               ; preds = %.noexc.us.i.i.i.i.us.i.i.i, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = getelementptr inbounds nuw i8, ptr null, i64 %i.dd
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr %i.dz, ptr nonnull %i.df) #72
          to label %.body.i.i.i unwind label %bb.ae, !noalias !75179

.split166.us.i.i.i:                               ; preds = %.loopexit.i.i.loopexit.us.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.split.split.i.i.i:                               ; preds = %bb.u
  %.promoted203.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !75161, !noalias !75162
  %.promoted205.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !75161, !noalias !75162
  br label %.outer.i.i.i.i.preheader.i.i.i

.outer.i.i.i.i.preheader.i.i.i:                   ; preds = %.outer.i.i.i.i.preheader.i.i.i.backedge, %.split.split.i.i.i
  %i.eb = phi ptr [ inttoptr (i64 1 to ptr), %.split.split.i.i.i ], [ %i.fp, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 2 uses
  %..i.i.i.i.i.i.i.i.i208.i.i.i = phi i64 [ %.promoted205.i.i.i, %.split.split.i.i.i ], [ %..i.i.i.i.i.i.i.i.i206.i.i.i, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 2 uses
  %..i.i.i.i.i.i204.i.i.i = phi i64 [ %.promoted203.i.i.i, %.split.split.i.i.i ], [ %..i.i.i.i.i.i.i.i.i, %.outer.i.i.i.i.preheader.i.i.i.backedge ]
  %i.ec = phi ptr [ %.promoted147.i.i.i, %.split.split.i.i.i ], [ %i.eo, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 2 uses
  %i.ed = phi i64 [ %.promoted.i.i.i, %.split.split.i.i.i ], [ %i.ep, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 2 uses
  %i.ee = phi i64 [ 0, %.split.split.i.i.i ], [ %i.ft, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 8 uses
  %.sroa.08.0.i.i.i = phi i8 [ 0, %.split.split.i.i.i ], [ %i.ja, %.outer.i.i.i.i.preheader.i.i.i.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75163)
  call void @llvm.experimental.noalias.scope.decl(metadata !75164)
  call void @llvm.experimental.noalias.scope.decl(metadata !75165)
  call void @llvm.experimental.noalias.scope.decl(metadata !75166)
  call void @llvm.experimental.noalias.scope.decl(metadata !75167)
  call void @llvm.experimental.noalias.scope.decl(metadata !75168)
  call void @llvm.experimental.noalias.scope.decl(metadata !75169)
  call void @llvm.experimental.noalias.scope.decl(metadata !75170)
  br label %.outer.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %.outer.i.i.i.i.preheader.i.i.i
  %i.ef = phi ptr [ %i.fp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.eb, %.outer.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %i.fq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.eb, %.outer.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %..i.i.i.i.i.i.i.i.i207.i.i.i = phi i64 [ %..i.i.i.i.i.i.i.i.i206.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i.i208.i.i.i, %.outer.i.i.i.i.preheader.i.i.i ]
  %i.eh = phi ptr [ %i.eo, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ec, %.outer.i.i.i.i.preheader.i.i.i ]
  %i.ei = phi i64 [ %i.ep, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ed, %.outer.i.i.i.i.preheader.i.i.i ]
  %i.ej = phi i64 [ %i.ft, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ee, %.outer.i.i.i.i.preheader.i.i.i ] ; 5 uses
  %.promoted6090.i.i.i.i.i.i.i = phi ptr [ %.promoted6089.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ec, %.outer.i.i.i.i.preheader.i.i.i ] ; 3 uses
  %.promoted5987.i.i.i.i.i.i.i = phi i64 [ %.promoted5986.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.ed, %.outer.i.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.ek = phi i64 [ %i.eq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i.i208.i.i.i, %.outer.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.el = phi i64 [ %..i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i204.i.i.i, %.outer.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.fv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ 0, %.outer.i.i.i.i.preheader.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !75171)
  call void @llvm.experimental.noalias.scope.decl(metadata !75172)
  call void @llvm.experimental.noalias.scope.decl(metadata !75173)
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.el, %i.ek
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.outer.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75174)
  %..i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.promoted5987.i.i.i.i.i.i.i, i64 %i.cu) ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.promoted6090.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.en = sub nuw nsw i64 %.promoted5987.i.i.i.i.i.i.i, %..i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.promoted6090.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %..i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !alias.scope !75184, !noalias !75185
  store ptr %i.em, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !75175, !noalias !75176, !captures !36
  store i64 %i.en, ptr %.sroa.8152.0..sroa_idx.i, align 8, !alias.scope !75175, !noalias !75176
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !75159, !noalias !75160
  store i64 %..i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !alias.scope !75159, !noalias !75160
  br label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %.outer.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i.i206.i.i.i = phi i64 [ %..i.i.i.i.i.i.i.i.i207.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 2 uses
  %i.eo = phi ptr [ %i.eh, %.outer.i.i.i.i.i.i.i ], [ %i.em, %bb.ab ] ; 2 uses
  %i.ep = phi i64 [ %i.ei, %.outer.i.i.i.i.i.i.i ], [ %i.en, %bb.ab ] ; 2 uses
  %.promoted6089.i.i.i.i.i.i.i = phi ptr [ %.promoted6090.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.em, %bb.ab ]
  %.promoted5986.i.i.i.i.i.i.i = phi i64 [ %.promoted5987.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.en, %bb.ab ]
  %i.eq = phi i64 [ %i.ek, %.outer.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.er = phi i64 [ %i.el, %.outer.i.i.i.i.i.i.i ], [ 0, %bb.ab ] ; 3 uses
  %i.es = sub nuw i64 %i.eq, %i.er                ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i, i64 %i.er ; 3 uses
  %i.eu = icmp samesign ult i64 %i.es, 16
  br i1 %i.eu, label %.preheader.i.i.i.i.i.i.i.i, label %bb.ac

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ev = icmp sgt i64 %i.ej, -1
  call void @llvm.assume(i1 %i.ev)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.ew = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef range(i64 0, -9223372036854775808) %i.es)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !75182 ; 2 uses

.noexc11.i.i.i.i.i:                               ; preds = %bb.ac
  %i.ex = extractvalue { i64, i64 } %i.ew, 0
  %i.ey = extractvalue { i64, i64 } %i.ew, 1
  %i.ez = trunc nuw i64 %i.ex to i1
  br i1 %i.ez, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.ad
  %.sroa.04.011.i.i.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.ad ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sroa.04.011.i.i.i.i.i.i.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !75186, !noalias !75179, !noundef !28
  %i.fc = icmp eq i8 %i.fb, 10
  br i1 %i.fc, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fd = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, %i.es
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ey, %.noexc11.i.i.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fe = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.es
  call void @llvm.assume(i1 %i.fe)
  %i.ff = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i

_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ad, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i
  %i.fg = phi i1 [ true, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ false, %.noexc11.i.i.i.i.i ], [ false, %bb.ad ]
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ %i.ff, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.es, %.noexc11.i.i.i.i.i ], [ %i.es, %bb.ad ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75187)
  %i.fh = load i64, ptr %i.e, align 8, !range !43, !alias.scope !75188, !noalias !75189, !noundef !28
  %i.fi = sub i64 %i.fh, %i.ej
  %i.fj = icmp ugt i64 %.sroa.6.0.i.i.i.i.i.i.i, %i.fi
  br i1 %i.fj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, !prof !135

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ej, i64 noundef %.sroa.6.0.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !75190

.noexc12.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i
  %i.fk = load i64, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !75191, !noalias !75189, !noundef !28
  %.pre.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !alias.scope !75191, !noalias !75189 ; 2 uses
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i.i, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i
  %i.fl = phi ptr [ %.pre.i.i.i, %.noexc12.i.i.i.i.i ], [ %i.ef, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i ]
  %i.fm = phi ptr [ %.pre.i.i.i, %.noexc12.i.i.i.i.i ], [ %i.eg, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  %.sink124.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.noexc12.i.i.i.i.i ], [ %i.ej, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i.i ] ; 3 uses
  %i.fn = icmp sgt i64 %.sink124.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sink124.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr nonnull readonly align 1 %i.et, i64 %.sroa.6.0.i.i.i.i.i.i.i, i1 false), !noalias !75192
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i
  %i.fp = phi ptr [ %i.fl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ %i.ef, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i ] ; 12 uses
  %i.fq = phi ptr [ %i.fm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ %i.eg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i ]
  %.sroa.6.0114.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i ] ; 4 uses
  %i.fr = phi i1 [ %i.fg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ false, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i ]
  %i.fs = phi i64 [ %.sink124.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ %i.ej, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i.i ]
  %i.ft = add i64 %i.fs, %.sroa.6.0114.i.i.i.i.i.i.i ; 19 uses
  store i64 %i.ft, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !75191, !noalias !75189
  %i.fu = add i64 %.sroa.6.0114.i.i.i.i.i.i.i, %i.er
  %..i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.eq, i64 %i.fu) ; 3 uses
  store i64 %..i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !75193, !noalias !75162
  %i.fv = add i64 %.sroa.6.0114.i.i.i.i.i.i.i, %.sroa.01.0.ph.i.i.i.i.i.i.i ; 3 uses
  %i.fw = icmp eq i64 %.sroa.6.0114.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.fr, %i.fw
  br i1 %or.cond.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.fx = sub nuw i64 %i.ft, %i.ee                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ee ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75183
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fy, i64 noundef %i.fx)
          to label %bb.ag unwind label %.split166.i.i.i, !noalias !75182

bb.ae:                                            ; preds = %.split62.us.i.i.i.i.split.us.i.i.i
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !75179
  unreachable

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, %bb.ac
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.split166.i.i.i:                                  ; preds = %.loopexit.i.i.i.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = inttoptr i64 %i.fv to ptr
  br label %bb.af

bb.af:                                            ; preds = %.split166.i.i.i, %.split166.us.i.i.i
  %.us-phi167.i.i.i = phi ptr [ %i.gb, %.split166.i.i.i ], [ %i.df, %.split166.us.i.i.i ]
  %.us-phi168.i.i.i = phi i64 [ 0, %.split166.i.i.i ], [ 1, %.split166.us.i.i.i ]
  %.us-phi170.i.i.i = phi { ptr, i32 } [ %i.ga, %.split166.i.i.i ], [ %i.ea, %.split166.us.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(i64 %.us-phi168.i.i.i, ptr %.us-phi167.i.i.i) #72
          to label %.body.i.i.i unwind label %bb.ah, !noalias !75182

bb.ag:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.gc = load i64, ptr %i.d, align 8, !range !41, !noalias !75183, !noundef !28
  %.not.i.i.i.i.i = icmp eq i64 %i.gc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75183
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %.split183.i.i.i.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !75182
  unreachable

.loopexit68.split.i.i.i:                          ; preds = %bb.ax
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bc, %.split186.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit68.split.i.i.i, %bb.af, %.loopexit.split-lp.i.i.i.i.i, %.split62.us.i.i.i.i.split.us.i.i.i, %.loopexit21.i.i.split.us.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit68.split.i.i.i ], [ %.us-phi170.i.i.i, %bb.af ], [ %i.dy, %.split62.us.i.i.i.i.split.us.i.i.i ], [ %lpad.loopexit.i.i.us.i.i.i, %.loopexit21.i.i.split.us.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75194)
  call void @llvm.experimental.noalias.scope.decl(metadata !75195)
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !75196, !noalias !75158 ; 2 uses
  %i.ge = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ge, label %.body93.i, label %bb.ai

bb.ai:                                            ; preds = %.body.i.i.i
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !alias.scope !75196, !noalias !75158, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75197
  br label %.body93.i

bb.aj:                                            ; preds = %bb.ag
  %i.gf = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.gf)
  store i64 %i.ft, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !75198, !noalias !75199
  %i.gg = icmp eq i64 %i.fv, 0
  br i1 %i.gg, label %.split178.i.i.i, label %bb.ak

.split178.i.i.i:                                  ; preds = %bb.aj
  %i.gh = icmp eq i8 %.sroa.08.0.i.i.i, 0
  br i1 %i.gh, label %.split183.i.i.i, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !75200)
  %i.gi = getelementptr i8, ptr %i.fp, i64 %i.ft  ; 5 uses
  %i.gj = icmp samesign eq i64 %i.ft, 0           ; 2 uses
  br i1 %i.gj, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.gk = phi i64 [ %i.hz, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 0, %bb.ak ] ; 3 uses
  %i.gl = phi ptr [ %i.hv, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.fp, %bb.ak ] ; 6 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 3 uses
  %i.go = load i8, ptr %i.gl, align 1, !alias.scope !75200, !noalias !75201, !noundef !28 ; 5 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %bb.al, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gq = and i8 %i.go, 31
  %i.gr = zext nneg i8 %i.gq to i32               ; 3 uses
  %i.gs = icmp ne ptr %i.gn, %i.gi
  call void @llvm.assume(i1 %i.gs), !noalias !75202
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 2 ; 3 uses
  %i.gu = load i8, ptr %i.gn, align 1, !alias.scope !75200, !noalias !75201, !noundef !28
  %i.gv = shl nuw nsw i32 %i.gr, 6
  %i.gw = and i8 %i.gu, 63
  %i.gx = zext nneg i8 %i.gw to i32               ; 2 uses
  %i.gy = or disjoint i32 %i.gv, %i.gx
  %i.gz = icmp samesign ugt i8 %i.go, -33
  br i1 %i.gz, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ha = zext nneg i8 %i.go to i32
  br label %bb.am

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i
  %i.hb = icmp ne ptr %i.gt, %i.gi
  call void @llvm.assume(i1 %i.hb), !noalias !75202
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 3 ; 3 uses
  %i.hd = load i8, ptr %i.gt, align 1, !alias.scope !75200, !noalias !75201, !noundef !28
  %i.he = shl nuw nsw i32 %i.gx, 6
  %i.hf = and i8 %i.hd, 63
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = or disjoint i32 %i.he, %i.hg            ; 2 uses
  %i.hi = shl nuw nsw i32 %i.gr, 12
  %i.hj = or disjoint i32 %i.hh, %i.hi
  %i.hk = icmp samesign ugt i8 %i.go, -17
  br i1 %i.hk, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i, label %bb.am

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i
  %i.hl = icmp ne ptr %i.hc, %i.gi
  call void @llvm.assume(i1 %i.hl), !noalias !75202
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.hn = load i8, ptr %i.hc, align 1, !alias.scope !75200, !noalias !75201, !noundef !28
  %i.ho = shl nuw nsw i32 %i.gr, 18
  %i.hp = and i32 %i.ho, 1835008
  %i.hq = shl nuw nsw i32 %i.hh, 6
  %i.hr = and i8 %i.hn, 63
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = or disjoint i32 %i.hq, %i.hs
  %i.hu = or disjoint i32 %i.ht, %i.hp
  br label %bb.am

bb.am:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i, %bb.al, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i
  %i.hv = phi ptr [ %i.hc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i ], [ %i.hm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i ], [ %i.gt, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i ], [ %i.gn, %bb.al ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.hj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i ], [ %i.hu, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i ], [ %i.ha, %bb.al ] ; 8 uses
  %i.hw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.hw), !noalias !75202
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.gk, %i.gm
  %i.hz = add i64 %i.hy, %i.hx
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.an [
    i32 32, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  ]

bb.an:                                            ; preds = %bb.am
  %i.ia = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.ia, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ib = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.ib, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i [
    i32 0, label %bb.ar
    i32 22, label %bb.ap
    i32 32, label %bb.as
    i32 48, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ic = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.id = zext i1 %i.ic to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ie = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.if = zext i1 %i.ie to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ao
  %i.ig = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !75203, !noundef !28
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ao
  %i.ik = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !noalias !75203, !noundef !28
  %i.io = lshr i8 %i.in, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.if, %bb.aq ], [ %i.ij, %bb.ar ], [ %i.id, %bb.ap ], [ %i.io, %bb.as ]
  %i.ip = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ip, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  %i.iq = icmp eq ptr %i.hv, %i.gi
  br i1 %i.iq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.ao, %bb.an
  %.not.i.i.i.i = icmp eq i64 %i.ft, %i.gk
  br i1 %.not.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i

bb.at:                                            ; preds = %.split178.i.i.i
  %i.ir = inttoptr i64 %i.ft to ptr
  %.sroa.018.0.copyload19.i.i = load i64, ptr %i.e, align 8, !noalias !75204
  %.sroa.11.0.copyload21.i.i = load i64, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !75204
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i

.split183.i.i.i.sink.split:                       ; preds = %bb.ag, %bb.aa
  %.us-phi174.i.i.i.sink = phi i64 [ 0, %bb.aa ], [ %i.ee, %bb.ag ]
  %.sroa.11.0.i.i.ph = phi i64 [ %i.de, %bb.aa ], [ ptrtoint (ptr @195 to i64), %bb.ag ]
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.aa ], [ %i.fp, %bb.ag ]
  store i64 %.us-phi174.i.i.i.sink, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !noalias !75158
  br label %.split183.i.i.i

.split183.i.i.i:                                  ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i, %.split183.i.i.i.sink.split, %.split178.i.i.i
  %.sroa.11.0.i.i = phi i64 [ %.sroa.11.0.i.i.ph, %.split183.i.i.i.sink.split ], [ undef, %.split178.i.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %.sroa.018.0.i.i = phi i64 [ -9223372036854775808, %.split183.i.i.i.sink.split ], [ -2, %.split178.i.i.i ], [ -1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.is = phi ptr [ %.ph, %.split183.i.i.i.sink.split ], [ %i.fp, %.split178.i.i.i ], [ %i.fp, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !75205)
  call void @llvm.experimental.noalias.scope.decl(metadata !75206)
  %.val.i.i36.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !75207, !noalias !75158 ; 2 uses
  %i.it = icmp eq i64 %.val.i.i36.i.i.i, 0
  br i1 %i.it, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, label %bb.au

bb.au:                                            ; preds = %.split183.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef %.val.i.i36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75208
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gk
  %rhsc.i.i.i = load i8, ptr %i.iu, align 1, !noalias !75209
  %i.iv = icmp eq i8 %rhsc.i.i.i, 35
  br i1 %i.iv, label %.split183.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i: ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i, %bb.ak
  %i.iw = icmp eq i64 %i.ee, 0
  br i1 %i.iw, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i
  %.not.i39.i.i.i = icmp samesign ult i64 %i.ee, %i.ft
  br i1 %.not.i39.i.i.i, label %bb.aw, label %.split186.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ix = load i8, ptr %i.fy, align 1, !alias.scope !75210, !noalias !75209, !noundef !28
  %i.iy = icmp sgt i8 %i.ix, -65
  br i1 %i.iy, label %bb.ax, label %.split186.i.i.i

bb.ax:                                            ; preds = %bb.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i.i
  %i.iz = invoke { i64, i8 } @_RNvNtCsl7tMOFksck4_7dotenvy4iter14eval_end_state(i8 noundef %.sroa.08.0.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fy, i64 noundef %i.fx)
          to label %bb.az unwind label %.loopexit68.split.i.i.i, !noalias !75209 ; 2 uses

.split186.i.i.i:                                  ; preds = %bb.aw, %bb.av
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.ft, i64 noundef %i.ee, i64 noundef %i.ft, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2822) #71
          to label %bb.ay unwind label %.loopexit.split-lp.i.i.i, !noalias !75209

bb.ay:                                            ; preds = %.split186.i.i.i
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ja = extractvalue { i64, i8 } %i.iz, 1       ; 2 uses
  switch i8 %i.ja, label %.split192.i.i.i [
    i8 0, label %.split194.i.i.i
    i8 1, label %.outer.i.i.i.i.preheader.i.i.i.backedge
    i8 2, label %.outer.i.i.i.i.preheader.i.i.i.backedge
    i8 3, label %.outer.i.i.i.i.preheader.i.i.i.backedge
    i8 4, label %.outer.i.i.i.i.preheader.i.i.i.backedge
    i8 5, label %.outer.i.i.i.i.preheader.i.i.i.backedge
    i8 6, label %.split198.i.i.i
    i8 7, label %.outer.i.i.i.i.preheader.i.i.i.backedge
  ]

.outer.i.i.i.i.preheader.i.i.i.backedge:          ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  br label %.outer.i.i.i.i.preheader.i.i.i

.split192.i.i.i:                                  ; preds = %bb.az
  unreachable

.split198.i.i.i:                                  ; preds = %bb.az
  %i.jb = extractvalue { i64, i8 } %i.iz, 0
  %i.jc = add i64 %i.jb, %i.ee                    ; 6 uses
  %.not.i41.i.i.i = icmp ugt i64 %i.jc, %i.ft
  br i1 %.not.i41.i.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %.split198.i.i.i
  %i.jd = icmp ne i64 %i.jc, 0
  %.not3.i.i.i.i = icmp samesign ult i64 %i.jc, %i.ft
  %or.cond.i.i.i = select i1 %i.jd, i1 %.not3.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.bb, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.je = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !noalias !75211, !noundef !28
  %i.jg = icmp sgt i8 %i.jf, -65
  br i1 %i.jg, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @785, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2823) #75
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !75209

.noexc.i.i.i:                                     ; preds = %bb.bc
  unreachable

.split194.i.i.i:                                  ; preds = %bb.az
  br i1 %i.gj, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %.split194.i.i.i
  %i.jh = getelementptr i8, ptr %i.gi, i64 -1
  %rhsc65.i.i.i = load i8, ptr %i.jh, align 1, !noalias !75209
  %i.ji = icmp eq i8 %rhsc65.i.i.i, 10
  br i1 %i.ji, label %.thread.i.i.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

.thread.i.i.i.i:                                  ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.jj = add nsw i64 %i.ft, -1                   ; 9 uses
  store i64 %i.jj, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !75212, !noalias !75158
  %.not.i46.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i46.i.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i.i: ; preds = %.thread.i.i.i.i
  %i.jk = getelementptr i8, ptr %i.fp, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 -1
  %rhsc67.i.i.i = load i8, ptr %i.jl, align 1, !noalias !75209
  %i.jm = icmp eq i8 %rhsc67.i.i.i, 13
  br i1 %i.jm, label %bb.bd, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

bb.bd:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75213)
  %i.jn = load ptr, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !alias.scope !75213, !noalias !75158, !nonnull !28, !noundef !28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jj ; 4 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -1
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !75214, !noundef !28
  %i.jr = icmp sgt i8 %i.jq, -1
  br i1 %i.jr, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i.i: ; preds = %bb.bd
  %i.js = icmp ne i64 %i.jj, 1
  call void @llvm.assume(i1 %i.js), !noalias !75215
  %i.jt = getelementptr inbounds i8, ptr %i.jo, i64 -2
  %i.ju = load i8, ptr %i.jt, align 1, !noalias !75214, !noundef !28 ; 3 uses
  %i.jv = and i8 %i.ju, 31
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = icmp slt i8 %i.ju, -64
  br i1 %i.jx, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i.i, label %bb.bf

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i.i
  %i.jy = icmp ne i64 %i.jj, 2
  call void @llvm.assume(i1 %i.jy), !noalias !75215
  %i.jz = getelementptr inbounds i8, ptr %i.jo, i64 -3
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !75214, !noundef !28 ; 3 uses
  %i.kb = and i8 %i.ka, 15
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = icmp slt i8 %i.ka, -64
  br i1 %i.kd, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i.i, label %bb.be

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i.i
  %i.ke = icmp ne i64 %i.jj, 3
  call void @llvm.assume(i1 %i.ke), !noalias !75215
  %i.kf = getelementptr inbounds i8, ptr %i.jo, i64 -4
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !75214, !noundef !28
  %i.kh = and i8 %i.kg, 7
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 6
  %i.kk = and i8 %i.ka, 63
  %i.kl = zext nneg i8 %i.kk to i32
  %i.km = or disjoint i32 %i.kj, %i.kl
  br label %bb.be

bb.be:                                            ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i.i
  %.sroa.010.1.i.i.i.i = phi i32 [ %i.km, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i.i ], [ %i.kc, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i.i ]
  %i.kn = shl nuw nsw i32 %.sroa.010.1.i.i.i.i, 6
  %i.ko = and i8 %i.ju, 63
  %i.kp = zext nneg i8 %i.ko to i32
  %i.kq = or disjoint i32 %i.kn, %i.kp
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i.i
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.kq, %bb.be ], [ %i.jw, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i.i ] ; 4 uses
  %i.kr = icmp samesign ult i32 %.sroa.010.0.i.i.i.i, 17408
  call void @llvm.assume(i1 %i.kr), !noalias !75215
  %i.ks = icmp samesign ult i32 %.sroa.010.0.i.i.i.i, 2
  br i1 %i.ks, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kt = icmp samesign ult i32 %.sroa.010.0.i.i.i.i, 32
  br i1 %i.kt, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ku = icmp samesign ult i32 %.sroa.010.0.i.i.i.i, 1024
  %..i.i.i = select i1 %i.ku, i64 -3, i64 -4
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.sroa.03.0.neg.i.i.i = phi i64 [ -2, %bb.bg ], [ %..i.i.i, %bb.bh ], [ -1, %bb.bf ], [ -1, %bb.bd ]
  %i.kv = add nsw i64 %.sroa.03.0.neg.i.i.i, %i.jj
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i

_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i.i, %.thread.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i.i, %.split194.i.i.i, %bb.bb, %bb.ba, %.split198.i.i.i
  %.sroa.17.1.ph.i.i = phi i64 [ 0, %.split194.i.i.i ], [ %i.kv, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i.i ], [ %i.jj, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i.i ], [ 0, %.thread.i.i.i.i ], [ %i.ft, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.ft, %.split198.i.i.i ], [ %i.jc, %bb.bb ], [ %i.jc, %bb.ba ]
  %.sroa.16.8.copyload29.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !75204
  %.sroa.11.1.ph.i.i = load i64, ptr %i.e, align 8, !noalias !75204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75158
  br label %bb.bi

_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.au, %.split183.i.i.i, %bb.at
  %.sroa.17.1.i.i = phi i64 [ 0, %.split183.i.i.i ], [ 0, %bb.au ], [ %i.ft, %bb.at ] ; 2 uses
  %.sroa.16.1.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.split183.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.au ], [ %i.ir, %bb.at ] ; 2 uses
  %.sroa.11.1.i.i = phi i64 [ %.sroa.11.0.i.i, %.split183.i.i.i ], [ %.sroa.11.0.i.i, %bb.au ], [ %.sroa.11.0.copyload21.i.i, %bb.at ] ; 2 uses
  %.sroa.018.1.i.i = phi i64 [ %.sroa.018.0.i.i, %.split183.i.i.i ], [ %.sroa.018.0.i.i, %bb.au ], [ %.sroa.018.0.copyload19.i.i, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75158
  switch i64 %.sroa.018.1.i.i, label %.thread251.i [
    i64 -2, label %_RNvXs0_NtCsl7tMOFksck4_7dotenvy4iterINtB5_4IterRShENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i
    i64 -1, label %bb.bi
  ]

bb.bi:                                            ; preds = %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i
  %.sroa.11.145.i.i = phi i64 [ %.sroa.11.1.ph.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i ], [ %.sroa.11.1.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i ] ; 8 uses
  %.sroa.16.144.i.i = phi ptr [ %.sroa.16.8.copyload29.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i ], [ %.sroa.16.1.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i ] ; 6 uses
  %.sroa.17.143.i.i = phi i64 [ %.sroa.17.1.ph.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.i ], [ %.sroa.17.1.i.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderRShEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75216
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.144.i.i) ]
  invoke void @_RNvNtCsl7tMOFksck4_7dotenvy5parse10parse_line(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.16.144.i.i, i64 noundef %.sroa.17.143.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %bb.bl unwind label %bb.bj, !noalias !75217

bb.bj:                                            ; preds = %bb.bi
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = icmp eq i64 %.sroa.11.145.i.i, 0
  br i1 %i.kx, label %.body93.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.144.i.i, i64 noundef %.sroa.11.145.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75218
  br label %.body93.i

bb.bl:                                            ; preds = %bb.bi
  %i.ky = load i64, ptr %i.f, align 8, !range !85, !noalias !75216, !noundef !28 ; 6 uses
  switch i64 %i.ky, label %bb.bo [
    i64 -2, label %bb.bm
    i64 -1, label %bb.bq
  ]

bb.bm:                                            ; preds = %bb.bl
  %.sroa.10154.8.copyload155.i = load i64, ptr %.sroa.10154.0..sroa_idx.i, align 8, !noalias !75219
  %.sroa.13.8.copyload156.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !75219
  %.sroa.14.8.copyload157.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !75219
  %.sroa.15.8.copyload158.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !75219
  %i.kz = icmp eq i64 %.sroa.11.145.i.i, 0
  br i1 %i.kz, label %.thread264.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.144.i.i, i64 noundef %.sroa.11.145.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75220
  br label %.thread264.i

bb.bo:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_RNvNtCskXtk6F4WjxZ_4just11load_dotenv14load_from_file:bb.a
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 16 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = tail call noundef zeroext i1 @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !75484
  store i128 18446745954905227264, ptr %i.i, align 16, !noalias !75484
  call void @_RNvMsj_NtCsaKJjC64KgbL_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !75484
  %i.s = load i32, ptr %i.q, align 8, !range !68, !noundef !28
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bw

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !noundef !28 ; 8 uses
  store ptr %i.w, ptr %i.p, align 8
  %i.x = ptrtoint ptr %i.w to i64                 ; 4 uses
  %i.y = and i64 %i.x, 3                          ; 2 uses
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !69

default.unreachable:                              ; preds = %bb.s, %bb.di, %bb.ce, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.de

.noexc:                                           ; preds = %bb.e
  %i.aa = lshr i64 %i.x, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28, !noundef !28
  %i.ae = invoke noundef i8 %i.ad(i32 noundef %i.ab)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.de, !inline_history !70

bb.f:                                             ; preds = %bb.d
  %i.af = lshr i64 %i.x, 32
  %i.ag = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.af to i8  ; 2 uses
  %i.ah = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.assume(i1 %i.ah)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !71, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %i.w, i64 31
  %i.al = load i8, ptr %i.ak, align 8, !range !71, !noundef !28
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.an = load i32, ptr %i.am, align 4, !range !74, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr null, ptr %i.o, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !75485
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !75486
  %i.ap = call noundef dereferenceable_or_null(8192) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75486 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %_RNvMNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileE13with_capacityCskXtk6F4WjxZ_4just.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #71
          to label %.noexc.i.i unwind label %bb.k, !noalias !75487

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.an) #70, !noalias !75487 ; 0 uses
  br label %.body

_RNvMNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileE13with_capacityCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx.i, i8 0, i64 17, i1 false), !noalias !75485
  store ptr %i.ap, ptr %i.h, align 8, !noalias !75485
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 8192, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !75485
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.an, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !75485
  %i.at = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !range !40, !noalias !75488, !noundef !28
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i: ; preds = %_RNvMNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileE13with_capacityCskXtk6F4WjxZ_4just.exit.i
  %.pre.i.i.i = load i64, ptr %i.at, align 8, !noalias !75489
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !75489
  br label %bb.m

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvMNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileE13with_capacityCskXtk6F4WjxZ_4just.exit.i
  %i.ax = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.l, !noalias !75485 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !noalias !75490
  store i8 1, ptr %i.au, align 8, !noalias !75490
  br label %bb.m

bb.l:                                             ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsl7tMOFksck4_7dotenvy4iter11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #72, !noalias !75485
  br label %.body

.body:                                            ; preds = %.body91, %bb.l, %bb.k
  %.pn75 = phi { ptr, i32 } [ %.pn73, %.body91 ], [ %i.bb, %bb.l ], [ %i.ar, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #72
          to label %bb.dd unwind label %bb.cy

bb.m:                                             ; preds = %.noexc.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i
  %.pre-phi8.i = phi i64 [ %i.az, %.noexc.i ], [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.ay, %.noexc.i ], [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ] ; 2 uses
  %i.bc = add i64 %.pre-phi.i, 1
  store i64 %i.bc, ptr %i.at, align 8, !noalias !75489
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !75485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.pre-phi.i, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.pre-phi8.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bm = trunc nuw i8 %.285.val to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103.backedge, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !75491)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit16.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103
  call void @llvm.experimental.noalias.scope.decl(metadata !75492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75493
  store i64 0, ptr %i.f, align 8, !noalias !75493
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !75493
  store i64 0, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !75493
  br label %bb.o

bb.o:                                             ; preds = %.backedge, %bb.n
  %i.bp = phi ptr [ inttoptr (i64 1 to ptr), %bb.n ], [ %i.ei, %.backedge ] ; 2 uses
  %i.bq = phi i64 [ 0, %bb.n ], [ %.pr.i.i, %.backedge ] ; 8 uses
  %.sroa.08.0.i.i = phi i8 [ 0, %bb.n ], [ %i.hm, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75494)
  call void @llvm.experimental.noalias.scope.decl(metadata !75495)
  call void @llvm.experimental.noalias.scope.decl(metadata !75496)
  call void @llvm.experimental.noalias.scope.decl(metadata !75497)
  call void @llvm.experimental.noalias.scope.decl(metadata !75498)
  call void @llvm.experimental.noalias.scope.decl(metadata !75499)
  call void @llvm.experimental.noalias.scope.decl(metadata !75500)
  call void @llvm.experimental.noalias.scope.decl(metadata !75501)
  br label %.outer.i.i.i.i.i.i

.outer.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.o
  %i.br = phi ptr [ %i.du, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %i.bp, %bb.o ] ; 6 uses
  %i.bs = phi ptr [ %i.dv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  %i.bt = phi i64 [ %i.ea, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %i.bq, %bb.o ] ; 9 uses
  %.sroa.01.0.ph.i.i.i.i.i.i = phi i64 [ %i.ec, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ 0, %bb.o ]
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %.outer.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75502)
  call void @llvm.experimental.noalias.scope.decl(metadata !75503)
  %i.bu = load i64, ptr %i.bd, align 8, !alias.scope !75504, !noalias !75505, !noundef !28 ; 2 uses
  %i.bv = load i64, ptr %i.be, align 8, !alias.scope !75504, !noalias !75505, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.bu, %i.bv
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !75504, !noalias !75505 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75506
  %i.bw = load i64, ptr %i.bg, align 8, !alias.scope !75504, !noalias !75505, !noundef !28
  store ptr %.pre.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !75506
  store i64 %i.bw, ptr %i.bh, align 8, !noalias !75506
  store i64 0, ptr %i.bi, align 8, !noalias !75506
  %i.bx = load i8, ptr %i.bk, align 8, !range !40, !alias.scope !75504, !noalias !75505, !noundef !28
  store i8 %i.bx, ptr %i.bj, align 8, !noalias !75506
  %i.by = invoke noundef ptr @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !75507 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.q
  store i64 0, ptr %i.bd, align 8, !alias.scope !75504, !noalias !75505
  %i.bz = load i64, ptr %i.bi, align 8, !noalias !75506, !noundef !28 ; 2 uses
  store i64 %i.bz, ptr %i.be, align 8, !alias.scope !75504, !noalias !75505
  %i.ca = load i8, ptr %i.bj, align 8, !range !40, !noalias !75506, !noundef !28
  store i8 %i.ca, ptr %i.bk, align 8, !alias.scope !75504, !noalias !75505
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not3.i.i.i.i.i.i.i.i, label %bb.r, label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.cb = ptrtoint ptr %i.by to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75506
  br label %bb.s

bb.r:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75506
  br label %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %i.cc = phi i64 [ %i.bv, %bb.p ], [ %i.bz, %bb.r ] ; 2 uses
  %i.cd = phi i64 [ %i.bu, %bb.p ], [ 0, %bb.r ]  ; 3 uses
  %i.ce = sub nuw i64 %i.cc, %i.cd                ; 8 uses
  %i.cf = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, null
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i
  %.sroa.9.030.i.i.i.i.i.i = phi i64 [ %i.cb, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i ], [ %i.ce, %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 5 uses
  %i.cg = inttoptr i64 %.sroa.9.030.i.i.i.i.i.i to ptr ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = and i64 %.sroa.9.030.i.i.i.i.i.i, 3
  switch i64 %i.ch, label %default.unreachable [
    i64 2, label %bb.t
    i64 3, label %.split37.i.i.i.i.i.i
    i64 0, label %.split38.i.i.i.i.i.i
    i64 1, label %.split.i.i.i.i.i.i
  ], !prof !69

bb.t:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i.i.i unwind label %bb.y, !noalias !75508

.noexc.i.i.i.i.i.i:                               ; preds = %bb.t
  %i.cj = lshr i64 %.sroa.9.030.i.i.i.i.i.i, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !75508, !nonnull !28, !noundef !28
  %i.cn = invoke noundef zeroext i1 %i.cm(i32 noundef %i.ck)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i unwind label %bb.y, !noalias !75508, !inline_history !13

.split37.i.i.i.i.i.i:                             ; preds = %bb.s
  %i.co = lshr i64 %.sroa.9.030.i.i.i.i.i.i, 32
  %i.cp = icmp ult i64 %.sroa.9.030.i.i.i.i.i.i, 188978561024 ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i.i.i = trunc i64 %i.co to i8
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cp, i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.cq = icmp ne i8 %spec.select.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i.i, 35
  br i1 %i.cr, label %bb.z, label %.loopexit22.i.i.i.i

.split38.i.i.i.i.i.i:                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ct = load i8, ptr %i.cs, align 8, !range !71, !noalias !75508, !noundef !28
  %i.cu = icmp eq i8 %i.ct, 35
  br i1 %i.cu, label %.thread.i.i.i.i.i.i, label %.loopexit22.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.s
  %i.cv = getelementptr i8, ptr %i.cg, i64 31
  %i.cw = load i8, ptr %i.cv, align 8, !range !71, !noalias !75508, !noundef !28
  %i.cx = icmp eq i8 %i.cw, 35
  br i1 %i.cx, label %bb.aa, label %.loopexit22.i.i.i.i

bb.u:                                             ; preds = %_RNvXs5_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i, i64 %i.cd ; 3 uses
  %i.cz = icmp samesign ult i64 %i.ce, 16
  br i1 %i.cz, label %.preheader.i.i.i.i.i.i.i, label %bb.v

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.u
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %i.da = icmp sgt i64 %i.bt, -1
  call void @llvm.assume(i1 %i.da)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.db = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.ce)
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !75507 ; 2 uses

.noexc11.i.i.i.i:                                 ; preds = %bb.v
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = extractvalue { i64, i64 } %i.db, 1
  %i.de = trunc nuw i64 %i.dc to i1
  br i1 %i.de, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.w
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.w ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !75509, !noalias !75508, !noundef !28
  %i.dh = icmp eq i8 %i.dg, 10
  br i1 %i.dh, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.di = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.di, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc11.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.dd, %.noexc11.i.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ce
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i

_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i: ; preds = %bb.w, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %.noexc11.i.i.i.i
  %i.dl = phi i1 [ true, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ false, %.noexc11.i.i.i.i ], [ false, %bb.w ]
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ %i.dk, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %i.ce, %.noexc11.i.i.i.i ], [ %i.ce, %bb.w ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75510)
  %i.dm = load i64, ptr %i.f, align 8, !range !43, !alias.scope !75511, !noalias !75512, !noundef !28
  %i.dn = sub i64 %i.dm, %i.bt
  %i.do = icmp ugt i64 %.sroa.6.0.i.i.i.i.i.i, %i.dn
  br i1 %i.do, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, !prof !135

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bt, i64 noundef %.sroa.6.0.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !75513

.noexc12.i.i.i.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i
  %i.dp = load i64, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !75514, !noalias !75512, !noundef !28
  %.pre.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !75514, !noalias !75512 ; 2 uses
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i.i, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i
  %i.dq = phi ptr [ %.pre.i.i, %.noexc12.i.i.i.i ], [ %i.br, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i ]
  %i.dr = phi ptr [ %.pre.i.i, %.noexc12.i.i.i.i ], [ %i.bs, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %.sink83.i.i.i.i.i.i = phi i64 [ %i.dp, %.noexc12.i.i.i.i ], [ %i.bt, %_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink83.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sink83.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr nonnull readonly align 1 %i.cy, i64 %.sroa.6.0.i.i.i.i.i.i, i1 false), !noalias !75515
  %.pre.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !75516, !noalias !75508
  %.pre19.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !75516, !noalias !75508
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i
  %i.du = phi ptr [ %i.dq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ] ; 2 uses
  %i.dv = phi ptr [ %i.dr, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.bs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ]
  %i.dw = phi i64 [ %.pre19.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ]
  %i.dx = phi i64 [ %.pre.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.cd, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ]
  %.sroa.6.070.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ] ; 4 uses
  %i.dy = phi i1 [ %i.dl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ false, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ]
  %i.dz = phi i64 [ %.sink83.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ %i.bt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.thread.i.i.i.i.i.i ]
  %i.ea = add i64 %i.dz, %.sroa.6.070.i.i.i.i.i.i ; 3 uses
  store i64 %i.ea, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !75514, !noalias !75512
  %i.eb = add i64 %.sroa.6.070.i.i.i.i.i.i, %i.dx
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dw, i64 %i.eb)
  store i64 %..i.i.i.i.i.i.i.i, ptr %i.bd, align 8, !alias.scope !75516, !noalias !75508
  %i.ec = add i64 %.sroa.6.070.i.i.i.i.i.i, %.sroa.01.0.ph.i.i.i.i.i.i ; 2 uses
  %i.ed = icmp eq i64 %.sroa.6.070.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.dy, %i.ed
  br i1 %or.cond.i.i.i.i.i.i, label %bb.x, label %.outer.i.i.i.i.i.i

bb.x:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.ee = inttoptr i64 %i.ec to ptr
  br label %.loopexit22.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.t
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr null, ptr nonnull %i.cg) #72
          to label %.body.i.i unwind label %bb.ab, !noalias !75508

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  br i1 %i.cn, label %.thread.i.i.i.i.i.i, label %.loopexit22.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i, %.split38.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75517
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %.split37.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75517
  call void @llvm.assume(i1 %i.cp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %.split.i.i.i.i.i.i
  %i.eg = getelementptr i8, ptr %i.cg, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75517
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  store ptr %i.eg, ptr %i.bl, align 8, !alias.scope !75518, !noalias !75517
  store i8 3, ptr %i.c, align 8, !alias.scope !75518, !noalias !75517
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !75507

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75517
  br label %bb.p

bb.ab:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !75508
  unreachable

.loopexit.i.i.i.i:                                ; preds = %bb.aa, %bb.q
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i, %bb.v
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit22.i.i.i.i:                              ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.split38.i.i.i.i.i.i, %.split37.i.i.i.i.i.i, %bb.x
  %i.ei = phi ptr [ %i.du, %bb.x ], [ %i.br, %.split37.i.i.i.i.i.i ], [ %i.br, %.split38.i.i.i.i.i.i ], [ %i.br, %.split.i.i.i.i.i.i ], [ %i.br, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i ] ; 9 uses
  %.pr.i.i = phi i64 [ %i.ea, %bb.x ], [ %i.bt, %.split37.i.i.i.i.i.i ], [ %i.bt, %.split38.i.i.i.i.i.i ], [ %i.bt, %.split.i.i.i.i.i.i ], [ %i.bt, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i ] ; 18 uses
  %.sroa.3.0.i.i.i.i.i.i = phi ptr [ %i.ee, %bb.x ], [ %i.cg, %.split37.i.i.i.i.i.i ], [ %i.cg, %.split38.i.i.i.i.i.i ], [ %i.cg, %.split.i.i.i.i.i.i ], [ %i.cg, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ 1, %.split37.i.i.i.i.i.i ], [ 1, %.split38.i.i.i.i.i.i ], [ 1, %.split.i.i.i.i.i.i ], [ 1, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ej = sub nuw i64 %.pr.i.i, %i.bq             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.bq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75519
  invoke void @_RNvMNtCsj6eKBz9Db1c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.ej)
          to label %bb.ad unwind label %bb.ac, !noalias !75507

bb.ac:                                            ; preds = %.loopexit22.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(i64 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.3.0.i.i.i.i.i.i) #72
          to label %.body.i.i unwind label %bb.ae, !noalias !75507

bb.ad:                                            ; preds = %.loopexit22.i.i.i.i
  %i.em = load i64, ptr %i.e, align 8, !range !41, !noalias !75519, !noundef !28
  %.not.i.i.i.i = icmp eq i64 %i.em, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75519
  br i1 %.not.i.i.i.i, label %bb.ag, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ad
  %i.en = trunc nuw i64 %.sroa.0.0.i.i.i.i.i.i to i1
  %spec.select.i.i.i.i = select i1 %i.en, ptr %.sroa.3.0.i.i.i.i.i.i, ptr @195
  store i64 %i.bq, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !75520, !noalias !75521
  br label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !75507
  unreachable

.loopexit68.i.i:                                  ; preds = %bb.aw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.be, %bb.ax
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit68.i.i, %bb.ac, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.y
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit68.i.i ], [ %i.el, %bb.ac ], [ %i.ef, %bb.y ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75522)
  call void @llvm.experimental.noalias.scope.decl(metadata !75523)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !75524, !noalias !75493 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ep, label %.body91, label %bb.af

bb.af:                                            ; preds = %.body.i.i
  %.val1.i.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !75524, !noalias !75493, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75525
  br label %.body91

bb.ag:                                            ; preds = %bb.ad
  %i.eq = icmp sgt i64 %.pr.i.i, -1
  call void @llvm.assume(i1 %i.eq)
  store i64 %.pr.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !75520, !noalias !75521
  %i.er = trunc nuw i64 %.sroa.0.0.i.i.i.i.i.i to i1
  br i1 %i.er, label %.loopexit.i.i, label %bb.ah

.loopexit.i.i:                                    ; preds = %bb.ag, %.thread.i.i
  %.sroa.5.0.i.i56.i.i = phi ptr [ %spec.select.i.i.i.i, %.thread.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %bb.ag ]
  %i.es = ptrtoint ptr %.sroa.5.0.i.i56.i.i to i64
  br label %.loopexit.i

bb.ah:                                            ; preds = %bb.ag
  %i.et = icmp eq ptr %.sroa.3.0.i.i.i.i.i.i, null
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = icmp eq i8 %.sroa.08.0.i.i, 0
  br i1 %i.eu, label %.loopexit.i, label %bb.as

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !75526)
  %i.ev = getelementptr i8, ptr %i.ei, i64 %.pr.i.i ; 5 uses
  %i.ew = icmp samesign eq i64 %.pr.i.i, 0        ; 2 uses
  br i1 %i.ew, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.ex = phi i64 [ %i.gm, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 0, %bb.aj ] ; 4 uses
  %i.ey = phi ptr [ %i.gi, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.ei, %bb.aj ] ; 6 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  %i.fb = load i8, ptr %i.ey, align 1, !alias.scope !75526, !noalias !75527, !noundef !28 ; 5 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.ak, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fd = and i8 %i.fb, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = icmp ne ptr %i.fa, %i.ev
  call void @llvm.assume(i1 %i.ff), !noalias !75528
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  %i.fh = load i8, ptr %i.fa, align 1, !alias.scope !75526, !noalias !75527, !noundef !28
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fb, -33
  br i1 %i.fm, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fn = zext nneg i8 %i.fb to i32
  br label %bb.al

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i
  %i.fo = icmp ne ptr %i.fg, %i.ev
  call void @llvm.assume(i1 %i.fo), !noalias !75528
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 3 ; 3 uses
  %i.fq = load i8, ptr %i.fg, align 1, !alias.scope !75526, !noalias !75527, !noundef !28
  %i.fr = shl nuw nsw i32 %i.fk, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft            ; 2 uses
  %i.fv = shl nuw nsw i32 %i.fe, 12
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fb, -17
  br i1 %i.fx, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i, label %bb.al

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i
  %i.fy = icmp ne ptr %i.fp, %i.ev
  call void @llvm.assume(i1 %i.fy), !noalias !75528
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.ga = load i8, ptr %i.fp, align 1, !alias.scope !75526, !noalias !75527, !noundef !28
  %i.gb = shl nuw nsw i32 %i.fe, 18
  %i.gc = and i32 %i.gb, 1835008
  %i.gd = shl nuw nsw i32 %i.fu, 6
  %i.ge = and i8 %i.ga, 63
  %i.gf = zext nneg i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  %i.gh = or disjoint i32 %i.gg, %i.gc
  br label %bb.al

bb.al:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i, %bb.ak, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i
  %i.gi = phi ptr [ %i.fp, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i ], [ %i.fz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i ], [ %i.fg, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i ], [ %i.fa, %bb.ak ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.fw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i ], [ %i.gh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i ], [ %i.fl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i ], [ %i.fn, %bb.ak ] ; 8 uses
  %i.gj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gj), !noalias !75528
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.ex, %i.ez
  %i.gm = add i64 %i.gl, %i.gk
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.am [
    i32 32, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  ]

bb.am:                                            ; preds = %bb.al
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.gn, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.go = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.go, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i [
    i32 0, label %bb.aq
    i32 22, label %bb.ao
    i32 32, label %bb.ar
    i32 48, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gp = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.gq = zext i1 %i.gp to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gr = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.gs = zext i1 %i.gr to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.an
  %i.gt = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !75529, !noundef !28
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.an
  %i.gx = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !75529, !noundef !28
  %i.hb = lshr i8 %i.ha, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.gs, %bb.ap ], [ %i.gw, %bb.aq ], [ %i.gq, %bb.ao ], [ %i.hb, %bb.ar ]
  %i.hc = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.hc, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.hd = icmp eq ptr %i.gi, %i.ev
  br i1 %i.hd, label %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.an, %bb.am, %bb.aj
  %.sroa.0.0.i18.i = phi i64 [ 0, %bb.aj ], [ %.pr.i.i, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.ex, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.ex, %bb.am ], [ %i.ex, %bb.an ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %.pr.i.i, %.sroa.0.0.i18.i
  br i1 %.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i

bb.as:                                            ; preds = %bb.ai
  %i.he = inttoptr i64 %.pr.i.i to ptr
  %.sroa.019.0.copyload20.i = load i64, ptr %i.f, align 8, !noalias !75530
  %.sroa.11.0.copyload22.i = load i64, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !75530
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

.loopexit.i:                                      ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.ai, %.loopexit.i.i
  %.sroa.11.0.i = phi i64 [ %i.es, %.loopexit.i.i ], [ undef, %bb.ai ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %.sroa.019.0.i = phi i64 [ -9223372036854775808, %.loopexit.i.i ], [ -2, %bb.ai ], [ -1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75531)
  call void @llvm.experimental.noalias.scope.decl(metadata !75532)
  %.val.i.i36.i.i = load i64, ptr %i.f, align 8, !alias.scope !75533, !noalias !75493 ; 2 uses
  %i.hf = icmp eq i64 %.val.i.i36.i.i, 0
  br i1 %i.hf, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %.val.i.i36.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75534
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.0.i18.i
  %rhsc.i.i = load i8, ptr %i.hg, align 1, !noalias !75513
  %i.hh = icmp eq i8 %rhsc.i.i, 35
  br i1 %i.hh, label %.loopexit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.i.i, %_RINvMNtCsj6eKBz9Db1c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just.exit.i
  %i.hi = icmp eq i64 %i.bq, 0
  br i1 %i.hi, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i
  %.not.i39.i.i = icmp samesign ult i64 %i.bq, %.pr.i.i
  br i1 %.not.i39.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hj = load i8, ptr %i.ek, align 1, !alias.scope !75535, !noalias !75513, !noundef !28
  %i.hk = icmp sgt i8 %i.hj, -65
  br i1 %i.hk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.hl = invoke { i64, i8 } @_RNvNtCsl7tMOFksck4_7dotenvy4iter14eval_end_state(i8 noundef %.sroa.08.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.ej)
          to label %bb.az unwind label %.loopexit68.i.i, !noalias !75513 ; 2 uses

bb.ax:                                            ; preds = %bb.av, %bb.au
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ei, i64 noundef %.pr.i.i, i64 noundef %i.bq, i64 noundef %.pr.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2822) #71
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !noalias !75513

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.hm = extractvalue { i64, i8 } %i.hl, 1       ; 2 uses
  switch i8 %i.hm, label %bb.ba [
    i8 0, label %bb.bf
    i8 1, label %.backedge
    i8 2, label %.backedge
    i8 3, label %.backedge
    i8 4, label %.backedge
    i8 5, label %.backedge
    i8 6, label %bb.bb
    i8 7, label %.backedge
  ]

.backedge:                                        ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  br label %bb.o

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.hn = extractvalue { i64, i8 } %i.hl, 0
  %i.ho = add i64 %i.hn, %i.bq                    ; 6 uses
  %.not.i41.i.i = icmp ugt i64 %i.ho, %.pr.i.i
  br i1 %.not.i41.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hp = icmp ne i64 %i.ho, 0
  %.not3.i.i.i = icmp samesign ult i64 %i.ho, %.pr.i.i
  %or.cond.i.i = select i1 %i.hp, i1 %.not3.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.bd, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ho
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !75536, !noundef !28
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i, label %bb.be, !prof !29

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @785, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2823) #75
          to label %.noexc.i.i89 unwind label %.loopexit.split-lp.i.i, !noalias !75513

.noexc.i.i89:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.az
  br i1 %i.ew, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.bf
  %i.ht = getelementptr i8, ptr %i.ev, i64 -1
  %rhsc65.i.i = load i8, ptr %i.ht, align 1, !noalias !75513
  %i.hu = icmp eq i8 %rhsc65.i.i, 10
  br i1 %i.hu, label %.thread.i.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i

.thread.i.i.i:                                    ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i
  %i.hv = add nsw i64 %.pr.i.i, -1                ; 9 uses
  store i64 %i.hv, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !75537, !noalias !75493
  %.not.i46.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i46.i.i, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i: ; preds = %.thread.i.i.i
  %i.hw = getelementptr i8, ptr %i.ei, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -1
  %rhsc67.i.i = load i8, ptr %i.hx, align 1, !noalias !75513
  %i.hy = icmp eq i8 %rhsc67.i.i, 13
  br i1 %i.hy, label %bb.bg, label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i

bb.bg:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75538)
  %i.hz = load ptr, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !alias.scope !75538, !noalias !75539, !nonnull !28, !noundef !28
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hv ; 4 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !75540, !noundef !28
  %i.id = icmp sgt i8 %i.ic, -1
  br i1 %i.id, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i: ; preds = %bb.bg
  %i.ie = icmp ne i64 %i.hv, 1
  call void @llvm.assume(i1 %i.ie), !noalias !75528
  %i.if = getelementptr inbounds i8, ptr %i.ia, i64 -2
  %i.ig = load i8, ptr %i.if, align 1, !noalias !75540, !noundef !28 ; 3 uses
  %i.ih = and i8 %i.ig, 31
  %i.ii = zext nneg i8 %i.ih to i32
  %i.ij = icmp slt i8 %i.ig, -64
  br i1 %i.ij, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i, label %bb.bi

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i
  %i.ik = icmp ne i64 %i.hv, 2
  call void @llvm.assume(i1 %i.ik), !noalias !75528
  %i.il = getelementptr inbounds i8, ptr %i.ia, i64 -3
  %i.im = load i8, ptr %i.il, align 1, !noalias !75540, !noundef !28 ; 3 uses
  %i.in = and i8 %i.im, 15
  %i.io = zext nneg i8 %i.in to i32
  %i.ip = icmp slt i8 %i.im, -64
  br i1 %i.ip, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i, label %bb.bh

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i
  %i.iq = icmp ne i64 %i.hv, 3
  call void @llvm.assume(i1 %i.iq), !noalias !75528
  %i.ir = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.is = load i8, ptr %i.ir, align 1, !noalias !75540, !noundef !28
  %i.it = and i8 %i.is, 7
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 6
  %i.iw = and i8 %i.im, 63
  %i.ix = zext nneg i8 %i.iw to i32
  %i.iy = or disjoint i32 %i.iv, %i.ix
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i
  %.sroa.010.1.i.i.i = phi i32 [ %i.iy, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit21.i.i.i ], [ %i.io, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit19.i.i.i ]
  %i.iz = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ja = and i8 %i.ig, 63
  %i.jb = zext nneg i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iz, %i.jb
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.jc, %bb.bh ], [ %i.ii, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskXtk6F4WjxZ_4just.exit17.i.i.i ] ; 4 uses
  %i.jd = icmp samesign ult i32 %.sroa.010.0.i.i.i, 17408
  call void @llvm.assume(i1 %i.jd), !noalias !75528
  %i.je = icmp samesign ult i32 %.sroa.010.0.i.i.i, 2
  br i1 %i.je, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jf = icmp samesign ult i32 %.sroa.010.0.i.i.i, 32
  br i1 %i.jf, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jg = icmp samesign ult i32 %.sroa.010.0.i.i.i, 1024
  %..i.i = select i1 %i.jg, i64 -3, i64 -4
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.sroa.03.0.neg.i.i = phi i64 [ -2, %bb.bj ], [ %..i.i, %bb.bk ], [ -1, %bb.bi ], [ -1, %bb.bg ]
  %i.jh = add nsw i64 %.sroa.03.0.neg.i.i, %i.hv
  br label %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i

_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i, %.thread.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.bf, %bb.bd, %bb.bc, %bb.bb
  %.sroa.17.1.ph.i = phi i64 [ 0, %bb.bf ], [ %i.jh, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit.i ], [ %i.hv, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit49.i.i ], [ 0, %.thread.i.i.i ], [ %.pr.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ], [ %.pr.i.i, %bb.bb ], [ %i.ho, %bb.bd ], [ %i.ho, %bb.bc ]
  %.sroa.16.8.copyload30.i = load ptr, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !75530
  %.sroa.11.1.ph.i = load i64, ptr %i.f, align 8, !noalias !75530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !75493
  br label %bb.bl

_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.at, %.loopexit.i, %bb.as
  %.sroa.17.1.i = phi i64 [ 0, %.loopexit.i ], [ 0, %bb.at ], [ %.pr.i.i, %bb.as ] ; 2 uses
  %.sroa.16.1.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit.i ], [ inttoptr (i64 1 to ptr), %bb.at ], [ %i.he, %bb.as ] ; 2 uses
  %.sroa.11.1.i = phi i64 [ %.sroa.11.0.i, %.loopexit.i ], [ %.sroa.11.0.i, %bb.at ], [ %.sroa.11.0.copyload22.i, %bb.as ] ; 2 uses
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %.loopexit.i ], [ %.sroa.019.0.i, %bb.at ], [ %.sroa.019.0.copyload20.i, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !75493
  switch i64 %.sroa.019.1.i, label %.thread [
    i64 -2, label %_RNvXs0_NtCsl7tMOFksck4_7dotenvy4iterINtB5_4IterNtNtCsaKJjC64KgbL_3std2fs4FileENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
    i64 -1, label %bb.bl
  ]

bb.bl:                                            ; preds = %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i
  %.sroa.11.146.i = phi i64 [ %.sroa.11.1.ph.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i ], [ %.sroa.11.1.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i ] ; 8 uses
  %.sroa.16.145.i = phi ptr [ %.sroa.16.8.copyload30.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i ], [ %.sroa.16.1.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i ] ; 6 uses
  %.sroa.17.144.i = phi i64 [ %.sroa.17.1.ph.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i ], [ %.sroa.17.1.i, %_RNvXs_NtCsl7tMOFksck4_7dotenvy4iterINtB4_11QuotedLinesINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !75541
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.145.i) ]
  invoke void @_RNvNtCsl7tMOFksck4_7dotenvy5parse10parse_line(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.16.145.i, i64 noundef %.sroa.17.144.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.n)
          to label %bb.bo unwind label %bb.bm, !noalias !75542

bb.bm:                                            ; preds = %bb.bl
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = icmp eq i64 %.sroa.11.146.i, 0
  br i1 %i.jj, label %.body91, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.145.i, i64 noundef %.sroa.11.146.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75543
  br label %.body91

bb.bo:                                            ; preds = %bb.bl
  %i.jk = load i64, ptr %i.g, align 8, !range !85, !noalias !75541, !noundef !28 ; 6 uses
  switch i64 %i.jk, label %bb.br [
    i64 -2, label %bb.bp
    i64 -1, label %bb.bt
  ]

bb.bp:                                            ; preds = %bb.bo
  %.sroa.103.8.copyload4 = load i64, ptr %.sroa.103.0..sroa_idx, align 8, !noalias !75491
  %.sroa.13.8.copyload5 = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !75491
  %.sroa.14.8.copyload6 = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !75491
  %.sroa.15.8.copyload7 = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !75491
  %i.jl = icmp eq i64 %.sroa.11.146.i, 0
  br i1 %i.jl, label %.thread77, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.16.145.i, i64 noundef %.sroa.11.146.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75544
  br label %.thread77

bb.br:                                            ; preds = %bb.bo
end_hunk_1
