Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
  %i.lm = icmp sgt i64 %i.bz, 0
  br i1 %i.lm, label %bb.ec, label %common.resume

bb.ec:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3124
  br label %common.resume

bb.ed:                                            ; preds = %bb.dp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2992
  br i1 %.sroa.018.2.i, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1719.2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2990
  store ptr %.sroa.1719.2.i, ptr %i.ae, align 8, !noalias !3125
  invoke fastcc void @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error4exitCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #27
          to label %bb.eg unwind label %bb.ef, !noalias !2990

bb.ef:                                            ; preds = %bb.ee
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.sroa.1719.2.i)
          to label %bb.eh unwind label %.body.i12.i, !noalias !2990

.body.i12.i:                                      ; preds = %bb.ef
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2990
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2990
  unreachable

bb.eg:                                            ; preds = %bb.ee
  unreachable

bb.eh:                                            ; preds = %bb.ef
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2990
  br label %.body.i

.critedge.i:                                      ; preds = %bb.ed
  %i.lp = icmp sgt i64 %i.bz, 0
  br i1 %i.lp, label %.critedge.thread.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

.critedge.thread.i:                               ; preds = %.critedge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3126
  br label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit

bb.ei:                                            ; preds = %bb.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.av), !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2992
  invoke void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef 0) #27
          to label %bb.ej unwind label %bb.eb, !noalias !2990

bb.ej:                                            ; preds = %bb.ei
  unreachable

bb.ek:                                            ; preds = %bb.o, %bb.j
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #28, !noalias !2990
  br label %bb.el

common.resume:                                    ; preds = %.body.i.i.i15, %.body6.i.i, %bb.in, %bb.ip, %bb.iv, %.body.i33, %bb.jx, %.body.i, %bb.ec, %bb.el
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.ph.i, %bb.el ], [ %eh.lpad-body.i, %bb.ec ], [ %i.xv, %bb.ip ], [ %eh.lpad-body7.i.i, %.body6.i.i ], [ %eh.lpad-body.i.i.i16, %.body.i.i.i15 ], [ %lpad.thr_comm.split-lp.i.i, %bb.in ], [ %i.yf, %bb.iv ], [ %eh.lpad-body.i34, %.body.i33 ], [ %i.zv, %bb.jx ]
  resume { ptr, i32 } %common.resume.op

bb.el:                                            ; preds = %bb.ek, %bb.i
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.by, %bb.i ], [ %i.lq, %bb.ek ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgYJ0xFPoqCG_13clap_complete3env11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.ba) #28
  br label %common.resume

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit: ; preds = %.critedge.i, %.critedge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3127
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3130
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sink.i.sroa.gep83.i = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 2 uses
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([760 x i8]) align 8 captures(address) dereferenceable(760) %i.t)
          to label %bb.em unwind label %bb.in, !noalias !3130

bb.em:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.az, align 8, !alias.scope !3131, !noalias !3128 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3131, !noalias !3128, !nonnull !13, !noundef !13 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3131, !noalias !3128 ; 7 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3131, !noalias !3128, !nonnull !13, !noundef !13 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3134
  call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3136
  %i.lr = icmp eq ptr %.sroa.4.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.lr, label %bb.en, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.em
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i, align 8, !noalias !3137 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.en, label %bb.es

bb.en:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i, %bb.em
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ls, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.em ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3136
  %i.lt = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64
  %i.lu = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.lv = sub nuw i64 %i.lt, %i.lu
  %i.lw = udiv exact i64 %i.lv, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.lx = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.lx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.en ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ly, align 8, !range !12, !alias.scope !3139, !noalias !3140, !noundef !13 ; 2 uses
  %i.ma = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ma, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mb = getelementptr i8, ptr %i.ly, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !3138, !noalias !3140, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3141
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mc = icmp eq i64 %i.lz, %i.lw
  br i1 %i.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.en
  %i.md = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.md, label %bb.fi, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.me = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3140
  br label %bb.fi

bb.eq:                                            ; preds = %bb.eu
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.mg, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3142
  br label %bb.fc

bb.es:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !3143 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3143
  %i.mh = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64 ; 3 uses
  %i.mi = ptrtoint ptr %i.ls to i64
  %i.mj = sub nuw i64 %i.mh, %i.mi                ; 2 uses
  %i.mk = udiv exact i64 %i.mj, 24                ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.mk, i64 3) ; 2 uses
  %..i.i.i.i.i.i.i.i = add nuw nsw i64 %i.ml, 1   ; 2 uses
  %i.mm = mul i64 %..i.i.i.i.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.mj, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et, !prof !29

bb.et:                                            ; preds = %bb.es
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.ev, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.et
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3144
  %i.mo = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mm, i64 noundef range(i64 1, 9) 8) #26, !noalias !3144 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.es
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.mm, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.es ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.es ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i) #27
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.eq, !noalias !3136

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %bb.et
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.et ], [ %i.mo, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.et ], [ %..i.i.i.i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mq = icmp samesign ult i64 %i.ml, %.sroa.4.0.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.mq)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, align 8, !noalias !3136
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3136
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3136
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !3136
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3136
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3136
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !noalias !3145
  %.sroa.69.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx12.i.i.i.i.i, align 8, !noalias !3145
  %.sroa.10.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.6.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i, align 8, !noalias !3145
  call void @llvm.experimental.noalias.scope.decl(metadata !3146)
  call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  %i.mr = icmp eq ptr %i.ls, %.sroa.6.0.copyload.i.i
  br i1 %i.mr, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ev, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %i.ms = phi ptr [ %i.ng, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i, %bb.ev ]
  %i.mt = phi i64 [ %i.ni, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.ev ] ; 6 uses
  %.val41920.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ %i.ls, %bb.ev ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  %i.mu = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val41920.i.i.i.i.i.i.i.i.i, align 8, !noalias !3153 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, label %bb.ew

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40: ; preds = %bb.fa, %bb.ez
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #28, !noalias !3154
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28, !noalias !3136
  br label %.body.i.i.i15

bb.ew:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3155 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3155
  %i.mv = icmp samesign ult i64 %i.mt, 384307168202282326
  call void @llvm.assume(i1 %i.mv)
  %i.mw = load i64, ptr %i.p, align 8, !range !12, !alias.scope !3156, !noalias !3157, !noundef !13
  %i.mx = icmp eq i64 %i.mt, %i.mw
  br i1 %i.mx, label %bb.fb, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload524.i.i.i.i.i = phi i64 [ %i.mt, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ni, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i = ptrtoint ptr %i.mu to i64
  %.pre26.i.i.i.i.i = sub nuw i64 %i.mh, %.pre.i.i.i.i.i
  %.pre28.i.i.i.i.i = udiv exact i64 %.pre26.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, %bb.ev
  %.pre-phi29.i.i.i.i.i = phi i64 [ %.pre28.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 0, %bb.ev ]
  %.sroa.6.0.copyload5.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload524.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ 1, %bb.ev ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i ], [ %i.ls, %bb.ev ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3158)
  %i.my = icmp eq ptr %.sroa.6.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.my, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.na, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.na = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mz, align 8, !range !12, !alias.scope !3159, !noalias !3160, !noundef !13 ; 2 uses
  %i.nb = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nc = getelementptr i8, ptr %i.mz, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nc, align 8, !alias.scope !3158, !noalias !3160, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3161
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nd = icmp eq i64 %i.na, %.pre-phi29.i.i.i.i.i
  br i1 %i.nd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ne = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.ne, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nf = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3160
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i, %bb.ew
  %i.ng = phi ptr [ %.pre.i.i.i.i.i.i.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ms, %bb.ew ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.mt ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, ptr %i.nh, align 8, !noalias !3162
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3162
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3162
  %i.ni = add nuw nsw i64 %i.mt, 1                ; 3 uses
  store i64 %i.ni, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3156, !noalias !3157
  %i.nj = icmp eq ptr %i.mu, %.sroa.6.0.copyload.i.i
  br i1 %i.nj, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i.i.i

bb.ez:                                            ; preds = %bb.fb
  %i.nk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mu, ptr %.sroa.69.0..sroa_idx10.i.i.i.i.i, align 8, !alias.scope !3163, !noalias !3164
  %i.nl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3165
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40

bb.fb:                                            ; preds = %bb.ew
  %i.nm = ptrtoint ptr %i.mu to i64
  %i.nn = sub nuw i64 %i.mh, %i.nm
  %i.no = udiv exact i64 %i.nn, 24
  %i.np = add nuw nsw i64 %i.no, 1
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.mt, i64 noundef %i.np, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i unwind label %bb.ez, !noalias !3157

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.fb
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3156, !noalias !3157
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.ey, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3136
  %.sroa.0.0.copyload1.i.i.i.i.i13 = load i64, ptr %i.p, align 8, !noalias !3166
  %.sroa.5.0.copyload3.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3136
  br label %bb.fi

bb.fc:                                            ; preds = %bb.er, %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !3167), !noalias !3168
  %i.nq = icmp eq ptr %.sroa.6.0.copyload.i.i, %i.ls
  br i1 %i.nq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41:                 ; preds = %bb.fc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42 = phi i64 [ %i.ns, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45 ], [ 0, %bb.fc ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42 ; 2 uses
  %i.ns = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i42, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i43 = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !3169, !noalias !3170, !noundef !13 ; 2 uses
  %i.nt = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i43, 0
  br i1 %i.nt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41
  %i.nu = getelementptr i8, ptr %i.nr, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i44 = load ptr, ptr %i.nu, align 8, !alias.scope !3167, !noalias !3170, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i44, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i43, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3171
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45: ; preds = %bb.fd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41
  %i.nv = icmp eq i64 %i.ns, %i.mk
  br i1 %i.nv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i41

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i45, %bb.fc
  %i.nw = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.nw, label %.body.i.i.i15, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.nx = mul nuw i64 %.sroa.5.0.copyload.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.nx, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3170
  br label %.body.i.i.i15

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.gw, %.body.i.i.i.i, %bb.fh
  %.pn56.i.i.i.i = phi { ptr, i32 } [ %i.og, %bb.fh ], [ %.pn.i.i.i.i, %bb.gw ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  call void @llvm.experimental.noalias.scope.decl(metadata !3173), !noalias !3174
  %.val4.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3175, !noalias !3176, !nonnull !13, !noundef !13 ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3175, !noalias !3176, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3177), !noalias !3174
  %i.ny = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ny, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.oa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i ] ; 2 uses
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.oa = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.nz, align 8, !range !12, !alias.scope !3178, !noalias !3179, !noundef !13 ; 2 uses
  %i.ob = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.ob, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.oc = getelementptr i8, ptr %i.nz, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.oc, align 8, !alias.scope !3177, !noalias !3179, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3180
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.ff, %.lr.ph.i.i.i.i.i.i.i
  %i.od = icmp eq i64 %i.oa, %.val5.i.i.i.i.i
  br i1 %i.od, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !range !12, !alias.scope !3175, !noalias !3176, !noundef !13 ; 2 uses
  %i.oe = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.oe, label %.body.i.i.i15, label %bb.fg

bb.fg:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.of = mul nuw i64 %.val.i.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef %i.of, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3179
  br label %.body.i.i.i15

bb.fh:                                            ; preds = %.invoke.i.i.i.i, %bb.hj, %bb.hh, %bb.hg, %bb.fm, %bb.fk
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i

bb.fi:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %bb.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ep ], [ %.sroa.6.0.copyload5.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.ep ], [ %.sroa.5.0.copyload3.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ep ], [ %.sroa.0.0.copyload1.i.i.i.i.i13, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgIMNuTmDvdf_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.s, align 8, !alias.scope !3135, !noalias !3181
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3135, !noalias !3181
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3135, !noalias !3181
  %i.oh = getelementptr inbounds nuw i8, ptr %i.t, i64 748
  %.val62.i.i.i.i = load i32, ptr %i.oh, align 4, !alias.scope !3182, !noalias !3183, !noundef !13 ; 2 uses
  %i.oi = and i32 %.val62.i.i.i.i, 2048
  %.not122.i.i.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not122.i.i.i.i, label %bb.hd, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.not.i.i.i.i14 = icmp eq i64 %.sroa.6.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i14, label %bb.hd, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i.i.i, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !3134, !nonnull !13, !noundef !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i.i.i, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !noalias !3134, !noundef !13
  %i.on = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ok, i64 noundef %i.om)
          to label %bb.fl unwind label %bb.fh, !noalias !3134 ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  %i.oo = extractvalue { ptr, i64 } %i.on, 0      ; 2 uses
  %.not49.i.i.i.i = icmp eq ptr %i.oo, null
  br i1 %.not49.i.i.i.i, label %bb.hd, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.op = extractvalue { ptr, i64 } %i.on, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3184
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oo, i64 noundef %i.op)
          to label %bb.fn unwind label %bb.fh, !noalias !3134

bb.fn:                                            ; preds = %bb.fm
  %i.oq = load i64, ptr %i.n, align 8, !range !28, !noalias !3184, !noundef !13
  %i.or = trunc nuw i64 %i.oq to i1
  %i.os = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !3184, !nonnull !13
  %i.ou = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ov = load i64, ptr %i.ou, align 8, !noalias !3184 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3184
  br i1 %i.or, label %bb.hd, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3134
  %.not.i.i.i.i.i17 = icmp slt i64 %i.ov, 0
  br i1 %.not.i.i.i.i.i17, label %.invoke.i.i.i.i, label %bb.fp, !prof !29

bb.fp:                                            ; preds = %bb.fo
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit.thread105.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i18

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i18: ; preds = %bb.fp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3185
  %i.ox = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ov, i64 noundef range(i64 1, 9) 1) #26, !noalias !3185 ; 3 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %.invoke.i.i.i.i, label %bb.gv

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit.thread105.i.i.i.i: ; preds = %bb.gv, %bb.fp
  %i.oz = phi ptr [ %i.ox, %bb.gv ], [ inttoptr (i64 1 to ptr), %bb.fp ] ; 2 uses
  store i64 %i.ov, ptr %i.r, align 8, !noalias !3134
  %.sroa.4.0..sroa_idx.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr %i.oz, ptr %.sroa.4.0..sroa_idx.i.i.i.i19, align 8, !noalias !3134
  %.sroa.626.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 %i.ov, ptr %.sroa.626.0..sroa_idx.i.i.i.i, align 8, !noalias !3134
  call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3187
  call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  %i.pa = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3191, !noalias !3192, !noundef !13 ; 6 uses
  %i.pb = icmp ult i64 %i.pa, 384307168202282326
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp eq i64 %i.pa, 0
  br i1 %i.pc, label %.noexc.i.i.i.i.i.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, !prof !11

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit.thread105.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #30
          to label %.noexc.i.i.i.i39 unwind label %bb.gx, !noalias !3134

.noexc.i.i.i.i39:                                 ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit.thread105.i.i.i.i
  %i.pd = ptrtoint ptr %i.r to i64
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3191, !noalias !3192
  %i.pe = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3191, !noalias !3192, !nonnull !13, !noundef !13 ; 3 uses
  %i.pf = add nsw i64 %i.pa, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3188, !noalias !3193
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 9 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3188, !noalias !3193
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 6 uses
  store i64 %i.pf, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3188, !noalias !3193
  %i.pg = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  store i64 0, ptr %i.pg, align 8, !alias.scope !3194, !noalias !3195
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3194, !noalias !3195
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.pd, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3194, !noalias !3195
  call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  call void @llvm.experimental.noalias.scope.decl(metadata !3197)
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !3198, !noalias !3187
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3198, !noalias !3187
  %i.ph = icmp eq i64 %i.pa, 1
  br i1 %i.ph, label %bb.fq, label %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

bb.fq:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 dereferenceable(24) %i.pg)
          to label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i unwind label %bb.gc, !noalias !3134

bb.fr:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs6SXwsBSuFuw_4just.exit.thread6.peel.i39.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3200
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
end_hunk_0
