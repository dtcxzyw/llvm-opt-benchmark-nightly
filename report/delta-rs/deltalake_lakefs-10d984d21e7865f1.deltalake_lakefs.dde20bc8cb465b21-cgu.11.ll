Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.11?download=true
inline.NumInlined: 364
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.ew = add i64 %i.et, 1                        ; 3 uses
  store i64 %i.ew, ptr %i.ak, align 8, !alias.scope !398, !noalias !401
  %exitcond.not.i.i.i = icmp eq i64 %i.ew, %i.er
  br i1 %exitcond.not.i.i.i, label %.loopexit22.i.i, label %bb.ba

.loopexit22.i.i:                                  ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !402
  store i64 2, ptr %i.f, align 8, !noalias !402
  %i.ex = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc62 unwind label %.loopexit.split-lp, !inline_history !403

.noexc62:                                         ; preds = %.loopexit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !402
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5.0178, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = icmp eq i8 %i.ev, 44
  br i1 %i.ey, label %bb.be, label %bb.bg, !prof !118

bb.be:                                            ; preds = %bb.bd
  %i.ez = add i64 %i.et, 1                        ; 3 uses
  store i64 %i.ez, ptr %i.ak, align 8, !alias.scope !404, !noalias !402
  call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !379
  %i.fa = icmp ult i64 %i.ez, %i.er
  br i1 %i.fa, label %.lr.ph.i7.i.i, label %.loopexit.i.i

.lr.ph.i7.i.i:                                    ; preds = %bb.be, %bb.bf
  %i.fb = phi i64 [ %i.fe, %bb.bf ], [ %i.ez, %bb.be ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !410, !noundef !3
  switch i8 %i.fd, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !130

bb.bf:                                            ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.fe = add i64 %i.fb, 1                        ; 3 uses
  store i64 %i.fe, ptr %i.ak, align 8, !alias.scope !418, !noalias !421
  %exitcond.not.i8.i.i = icmp eq i64 %i.fe, %i.er
  br i1 %exitcond.not.i8.i.i, label %.loopexit.i.i, label %.lr.ph.i7.i.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !402
  store i64 7, ptr %i.c, align 8, !noalias !402
  %i.ff = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc63 unwind label %.loopexit.split-lp, !inline_history !403

.noexc63:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !402
  br label %bb.bj

.loopexit.i.i:                                    ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !402
  store i64 5, ptr %i.d, align 8, !noalias !402
  %i.fg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc64 unwind label %.loopexit.split-lp, !inline_history !403

.noexc64:                                         ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !402
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !402
  store i64 21, ptr %i.e, align 8, !noalias !402
  %i.fh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc65 unwind label %.loopexit.split-lp, !inline_history !403

.noexc65:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !402
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !422
  invoke fastcc void @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #22
          to label %.noexc66 unwind label %.loopexit161, !inline_history !403

.noexc66:                                         ; preds = %.loopexit
  %i.fi = load i8, ptr %i.g, align 8, !range !11, !noalias !422, !noundef !3 ; 2 uses
  %i.fj = icmp eq i8 %i.fi, 6
  br i1 %i.fj, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc66
  %i.fk = load ptr, ptr %.sroa.592.0..sroa_idx, align 8, !noalias !422, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !422
  br label %bb.bj

.loopexit161:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %.loopexit22.i.i, %bb.bg, %.loopexit.i.i, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit161, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fq, %bb.bo ], [ %lpad.loopexit, %.loopexit161 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.p) #20
          to label %common.resume unwind label %bb.br, !noalias !379, !inline_history !423

bb.bj:                                            ; preds = %.noexc62, %.noexc63, %.noexc65, %.noexc64, %bb.bi
  %.sroa.10.1.ph = phi ptr [ %i.fk, %bb.bi ], [ %i.ex, %.noexc62 ], [ %i.ff, %.noexc63 ], [ %i.fh, %.noexc65 ], [ %i.fg, %.noexc64 ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bk, !noalias !379, !inline_history !423

bb.bk:                                            ; preds = %bb.bj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.bl, !noalias !379, !inline_history !423

bb.bl:                                            ; preds = %bb.bk
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !379, !inline_history !423
  unreachable

common.resume.sink.split:                         ; preds = %bb.cf, %bb.cp
  %.sroa.0.0.i.sink = phi ptr [ %.sroa.0.0.i, %bb.cp ], [ %.sroa.0.0.i6, %bb.cf ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.io, %bb.cp ], [ %i.hi, %bb.cf ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.sink, i64 noundef 40, i64 noundef 8) #18, !noalias !203
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.cm, %.body.i, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bk ], [ %i.hz, %bb.cm ], [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bj
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !379, !inline_history !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !372
  %.pre = load i64, ptr %i.al, align 8, !alias.scope !424, !noalias !433
  %.promoted.i.i4.pre = load i64, ptr %i.ak, align 8, !alias.scope !437, !noalias !438
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bm:                                            ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.491.0..sroa_idx, i64 7, i1 false)
  %.sroa.592.0.copyload = load ptr, ptr %.sroa.592.0..sroa_idx, align 8, !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.693.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !422
  store i8 %i.fi, ptr %i.o, align 8, !noalias !372
  store ptr %.sroa.592.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !372
  %i.fn = load i64, ptr %i.ep, align 8, !alias.scope !439, !noalias !442, !noundef !3 ; 3 uses
  %i.fo = load i64, ptr %i.p, align 8, !range !8, !alias.scope !439, !noalias !442, !noundef !3
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.bn, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bo, !noalias !444, !inline_history !423

bb.bo:                                            ; preds = %bb.bn
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o) #20
          to label %.body.i unwind label %bb.bp, !noalias !379, !inline_history !423

bb.bp:                                            ; preds = %bb.bo
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !379, !inline_history !423
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bn, %bb.bm
  %i.fs = load ptr, ptr %i.eo, align 8, !alias.scope !439, !noalias !442, !nonnull !3, !noundef !3
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !379
  %i.fu = add i64 %i.fn, 1
  store i64 %i.fu, ptr %i.ep, align 8, !alias.scope !439, !noalias !442
  %i.fv = load i64, ptr %i.al, align 8, !alias.scope !445, !noalias !385, !noundef !3 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !447, !noalias !401 ; 2 uses
  %i.fw = icmp ult i64 %.promoted.i.i.i, %i.fv
  br i1 %i.fw, label %.lr.ph.i.i.i, label %.loopexit22.i.i

bb.bq:                                            ; preds = %bb.ba
  %.sroa.080.0.copyload = load ptr, ptr %i.p, align 8, !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !372
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.br:                                            ; preds = %.body.i
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !379, !inline_history !423
  unreachable

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bq
  %.promoted.i.i4 = phi i64 [ %.promoted.i.i4.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.et, %bb.bq ] ; 2 uses
  %i.fy = phi i64 [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.er, %bb.bq ] ; 4 uses
  %.sroa.073.0 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 4, %bb.bq ]
  %.sroa.7.0 = phi ptr [ %.sroa.10.1.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.sroa.080.0.copyload, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fz = load i8, ptr %i.cu, align 8, !alias.scope !206, !noalias !203, !noundef !3
  %i.ga = add i8 %i.fz, 1
  store i8 %i.ga, ptr %i.cu, align 8, !alias.scope !206, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !227
  store i8 %.sroa.073.0, ptr %i.ad, align 8, !noalias !227
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !227
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !227
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !450), !noalias !203
  %i.gb = icmp ult i64 %.promoted.i.i4, %i.fy
  br i1 %i.gb, label %.lr.ph.i.i7, label %.loopexit.i5

.lr.ph.i.i7:                                      ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.gc = load ptr, ptr %i.ao, align 8, !alias.scope !424, !noalias !433, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i7
  %i.gd = phi i64 [ %.promoted.i.i4, %.lr.ph.i.i7 ], [ %i.gg, %bb.bt ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451), !noalias !203
  call void @llvm.experimental.noalias.scope.decl(metadata !452), !noalias !203
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !453, !noundef !3
  switch i8 %i.gf, label %bb.bu [
    i8 32, label %bb.bt
    i8 10, label %bb.bt
    i8 9, label %bb.bt
    i8 13, label %bb.bt
    i8 93, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
    i8 44, label %bb.bv
  ], !prof !168

bb.bt:                                            ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.gg = add i64 %i.gd, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.ak, align 8, !alias.scope !454, !noalias !438
  %exitcond.not.i.i8 = icmp eq i64 %i.gg, %i.fy
  br i1 %exitcond.not.i.i8, label %.loopexit.i5, label %bb.bs

.loopexit.i5:                                     ; preds = %bb.bt, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !457
  store i64 2, ptr %i.q, align 8, !noalias !457
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc9 unwind label %bb.cb

.noexc9:                                          ; preds = %.loopexit.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !457
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !457
  store i64 22, ptr %i.r, align 8, !noalias !457
  %i.gi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc10 unwind label %bb.cb

.noexc10:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !457
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bv:                                            ; preds = %bb.bs
  %i.gj = add i64 %i.gd, 1                        ; 3 uses
  store i64 %i.gj, ptr %i.ak, align 8, !alias.scope !458, !noalias !203
  call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !203
  %i.gk = icmp ult i64 %i.gj, %i.fy
  br i1 %i.gk, label %.lr.ph.i12.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bv, %bb.bw
  %i.gl = phi i64 [ %i.go, %bb.bw ], [ %i.gj, %bb.bv ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !464, !noundef !3
  switch i8 %i.gn, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 93, label %bb.bx
  ]

bb.bw:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.go = add i64 %i.gl, 1                        ; 3 uses
  store i64 %i.go, ptr %i.ak, align 8, !alias.scope !472, !noalias !475
  %exitcond.not.i13.i = icmp eq i64 %i.go, %i.fy
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i: ; preds = %bb.bw, %.lr.ph.i12.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !457
  store i64 22, ptr %i.s, align 8, !noalias !457
  %i.gp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.bz unwind label %bb.ca, !noalias !203

bb.bx:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !457
  store i64 21, ptr %i.t, align 8, !noalias !457
  %i.gq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.by unwind label %bb.ca, !noalias !203

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !457
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bz:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !457
  br label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ca:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsj34PGqTgg0L_16deltalake_lakefs.exit16.thread.i, %bb.bx
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bu, %.loopexit.i5
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ca, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.gs, %bb.cb ], [ %i.gr, %bb.ca ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #20
          to label %common.resume unwind label %bb.cd, !noalias !203, !inline_history !228

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc10, %.noexc9, %bb.by, %bb.bz
  %.sroa.0.0.i6 = phi ptr [ %i.gi, %.noexc10 ], [ %i.gq, %bb.by ], [ %i.gh, %.noexc9 ], [ %i.gp, %bb.bz ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !227
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %.sroa.0.0.i6, ptr %i.gt, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !227
  %i.gu = load i8, ptr %i.ae, align 8, !range !11, !noalias !227, !noundef !3
  %i.gv = icmp eq i8 %i.gu, 6
  br i1 %i.gv, label %bb.ce, label %bb.cc

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.bs
  %i.gw = add i64 %i.gd, 1
  store i64 %i.gw, ptr %i.ak, align 8, !alias.scope !476, !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !227
  %i.gx = load i8, ptr %i.ae, align 8, !range !11, !noalias !227, !noundef !3 ; 2 uses
  %i.gy = icmp eq i8 %i.gx, 6
  br i1 %i.gy, label %.thread229, label %.thread227

.thread229:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  %i.hb = ptrtoint ptr %i.ha to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread152

.thread227:                                       ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %.sroa.24.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.24.0.copyload266 = load i8, ptr %.sroa.24.0..sroa_idx265, align 1, !noalias !227
  %.sroa.26.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.26.0..sroa_idx269, i64 6, i1 false), !noalias !227
  %.sroa.26271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.26271.0.copyload273 = load i64, ptr %.sroa.26271.0..sroa_idx272, align 8, !noalias !227
  %.sroa.41.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.hc = load <2 x i64>, ptr %.sroa.41.0..sroa_idx276, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread152

bb.cc:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.hd = ptrtoint ptr %.sroa.0.0.i6 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.ae), !noalias !203, !inline_history !228
  br label %.thread152

bb.cd:                                            ; preds = %bb.cm, %.body
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !203, !inline_history !228
  unreachable

.thread152:                                       ; preds = %.thread229, %.thread227, %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3
  %.sroa.26271.3 = phi i64 [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ %i.hd, %bb.cc ], [ %i.hb, %.thread229 ], [ %.sroa.26271.0.copyload273, %.thread227 ]
  %.sroa.24.1 = phi i8 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ undef, %bb.cc ], [ undef, %.thread229 ], [ %.sroa.24.0.copyload266, %.thread227 ]
  %.sroa.0.3 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ 6, %bb.cc ], [ 6, %.thread229 ], [ %i.gx, %.thread227 ]
  %i.hf = phi <2 x i64> [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 ], [ undef, %bb.cc ], [ undef, %.thread229 ], [ %i.hc, %.thread227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !227
  br label %bb.ag

bb.ce:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !227, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.0.i6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.cf, !noalias !203

bb.cf:                                            ; preds = %bb.ce
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %bb.ce
  %i.hj = ptrtoint ptr %i.hh to i64
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i6, i64 noundef 40, i64 noundef 8) #18, !noalias !203
  br label %.thread152

bb.cg:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !227
  store i64 24, ptr %i.ac, align 8, !noalias !227
  %i.hk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac), !noalias !203, !inline_history !228
end_hunk_0
begin_hunk_1_@_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !646
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !646
  %i.ds = load i64, ptr %i.a, align 8, !range !361, !noalias !646, !noundef !3
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !10, !noalias !646, !noundef !3 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.aw, label %bb.ax, !prof !341

bb.aw:                                            ; preds = %bb.av
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !646
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #21, !noalias !646
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !646, !nonnull !3, !noundef !3 ; 2 uses
  %i.dz = icmp ule i64 %.sroa.4.0.copyload.i, %i.dv
  call void @llvm.assume(i1 %i.dz), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !646
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.sink.split

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink186 = phi ptr [ %i.dq, %bb.au ], [ %i.dy, %bb.ax ] ; 2 uses
  %.sroa.24134.2.ph = phi i64 [ %i.dn, %bb.au ], [ %i.dv, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink186, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !523
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.dy, %bb.ax ], [ %i.dq, %bb.au ], [ %.sink186, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.sink.split ]
  %.sroa.24134.2 = phi i64 [ %i.dv, %bb.ax ], [ %i.dn, %bb.au ], [ %.sroa.24134.2.ph, %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !543
  %i.ea = insertelement <2 x i64> poison, i64 %.sroa.37.2, i64 0
  %i.eb = insertelement <2 x i64> %i.ea, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !543
  store i64 24, ptr %i.w, align 8, !noalias !543
  %i.ec = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !523, !inline_history !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !543
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !523, !noalias !526
  store i8 6, ptr %0, align 8, !alias.scope !523, !noalias !526
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ee = add i64 %i.ah, 1
  store i64 %i.ee, ptr %i.ab, align 8, !alias.scope !653, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !656
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 1, ptr %i.ef, align 8, !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !656
  store i64 0, ptr %i.m, align 8, !noalias !656
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !656
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.eh, align 8, !noalias !656
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !663
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %bb.bf, !inline_history !665

.noexc:                                           ; preds = %bb.ba
  %i.ej = load i8, ptr %i.d, align 8, !range !117, !noalias !663, !noundef !3
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !663, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !663
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc
  %i.en = load i8, ptr %i.ei, align 1, !range !117, !noalias !663, !noundef !3
  %i.eo = trunc nuw i8 %i.en to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !663
  br i1 %i.eo, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !663
  %i.ep = load ptr, ptr %i.n, align 8, !alias.scope !660, !noalias !666, !nonnull !3, !align !25, !noundef !3
  invoke fastcc void @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ep) #22
          to label %.noexc47 unwind label %bb.bf, !inline_history !665

.noexc47:                                         ; preds = %bb.bd
  %i.eq = load i8, ptr %i.c, align 8, !range !11, !noalias !663, !noundef !3 ; 2 uses
  %i.er = icmp eq i8 %i.eq, 6
  br i1 %i.er, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc47
  %i.es = load ptr, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !663, !nonnull !3, !align !25, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !663
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bl, %bb.bf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.et, %bb.bf ], [ %i.ez, %bb.bl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.m) #20
          to label %common.resume unwind label %bb.bo, !noalias !667, !inline_history !668

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.10.1.ph = phi ptr [ %i.es, %bb.be ], [ %i.em, %bb.bb ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bh, !noalias !667, !inline_history !668

bb.bh:                                            ; preds = %bb.bg
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bi, !noalias !667, !inline_history !668

bb.bi:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !667, !inline_history !668
  unreachable

common.resume.sink.split:                         ; preds = %bb.bw, %bb.cf
  %.sink = phi ptr [ %i.fz, %bb.cf ], [ %i.fh, %bb.bw ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.gk, %bb.cf ], [ %i.ft, %bb.bw ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #18, !noalias !523
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.bp, %bb.bz, %.body.i, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.eu, %bb.bh ], [ %i.ga, %bb.bz ], [ %i.fi, %bb.bp ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bg
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !667, !inline_history !668
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bj:                                            ; preds = %.noexc47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.464.0..sroa_idx, i64 7, i1 false)
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.666.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !663
  store i8 %i.eq, ptr %i.l, align 8, !noalias !656
  store ptr %.sroa.565.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !656
  %i.ew = load i64, ptr %i.eh, align 8, !alias.scope !669, !noalias !672, !noundef !3 ; 3 uses
  %i.ex = load i64, ptr %i.m, align 8, !range !8, !alias.scope !669, !noalias !672, !noundef !3
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bk, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bl, !noalias !674, !inline_history !668

bb.bl:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #20
          to label %.body.i unwind label %bb.bm, !noalias !667, !inline_history !668

bb.bm:                                            ; preds = %bb.bl
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !667, !inline_history !668
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.bk, %bb.bj
  %i.fb = load ptr, ptr %i.eg, align 8, !alias.scope !669, !noalias !672, !nonnull !3, !noundef !3
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !667
  %i.fd = add i64 %i.ew, 1
  store i64 %i.fd, ptr %i.eh, align 8, !alias.scope !669, !noalias !672
  br label %bb.ba

bb.bn:                                            ; preds = %bb.bc
  %.sroa.058.0.copyload = load ptr, ptr %i.m, align 8, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !noalias !675
  br label %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bo:                                            ; preds = %.body.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !667, !inline_history !668
  unreachable

_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bn
  %.sroa.054.0 = phi i8 [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 4, %bb.bn ]
  %.sroa.7.0 = phi ptr [ %.sroa.10.1.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.sroa.058.0.copyload, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ff = load i8, ptr %i.cl, align 8, !alias.scope !526, !noalias !523, !noundef !3
  %i.fg = add i8 %i.ff, 1
  store i8 %i.fg, ptr %i.cl, align 8, !alias.scope !526, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !543
  store i8 %.sroa.054.0, ptr %i.u, align 8, !noalias !543
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !543
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !543
  %i.fh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bq unwind label %bb.bp, !noalias !523, !inline_history !544 ; 7 uses

bb.bp:                                            ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.u) #20
          to label %common.resume unwind label %bb.bu, !noalias !523, !inline_history !544

bb.bq:                                            ; preds = %_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !543
  %i.fj = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.fh, ptr %i.fj, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !543
  %i.fk = load i8, ptr %i.v, align 8, !range !11, !noalias !543, !noundef !3 ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 6
  br i1 %i.fl, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not31.i = icmp eq ptr %i.fh, null
  br i1 %.not31.i, label %.thread118, label %bb.bt

.thread118:                                       ; preds = %bb.br
  %.sroa.22.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.22.0.copyload129 = load i8, ptr %.sroa.22.0..sroa_idx128, align 1, !noalias !543
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx132, i64 6, i1 false), !noalias !543
  %.sroa.24134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.24134.0.copyload136 = load i64, ptr %.sroa.24134.0..sroa_idx135, align 8, !noalias !543
  %.sroa.37.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fm = load <2 x i64>, ptr %.sroa.37.0..sroa_idx139, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread91

bb.bs:                                            ; preds = %bb.bq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !543, !nonnull !3, !align !25, !noundef !3
  %i.fp = ptrtoint ptr %i.fo to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not97 = icmp eq ptr %i.fh, null
  br i1 %.not97, label %.thread91, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.fq = ptrtoint ptr %i.fh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.v), !noalias !523, !inline_history !544
  br label %.thread91

bb.bu:                                            ; preds = %bb.bz, %bb.bp
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !523, !inline_history !544
  unreachable

.thread91:                                        ; preds = %.thread118, %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1, %bb.bs
  %.sroa.24134.3 = phi i64 [ %i.fp, %bb.bs ], [ %i.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.24134.0.copyload136, %.thread118 ], [ %i.fq, %bb.bt ]
  %.sroa.22.1 = phi i8 [ undef, %bb.bs ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %.sroa.22.0.copyload129, %.thread118 ], [ undef, %bb.bt ]
  %.sroa.0.3 = phi i8 [ 6, %bb.bs ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %i.fk, %.thread118 ], [ 6, %bb.bt ]
  %i.fs = phi <2 x i64> [ undef, %bb.bs ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 ], [ %i.fm, %.thread118 ], [ undef, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !543
  br label %bb.ag

bb.bv:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.fh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1 unwind label %bb.bw, !noalias !523

bb.bw:                                            ; preds = %bb.bv
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit1: ; preds = %bb.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef 40, i64 noundef 8) #18, !noalias !523
  br label %.thread91

bb.bx:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !543
  store i64 24, ptr %i.t, align 8, !noalias !543
  %i.fu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !523, !inline_history !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !543
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !alias.scope !523, !noalias !526
  store i8 6, ptr %0, align 8, !alias.scope !523, !noalias !526
  br label %bb.ah

bb.by:                                            ; preds = %bb.ae
  %i.fw = add i64 %i.ah, 1
  store i64 %i.fw, ptr %i.ab, align 8, !alias.scope !676, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !543
  call void @_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !523, !inline_history !544
  %i.fx = load i8, ptr %i.cp, align 8, !alias.scope !526, !noalias !523, !noundef !3
  %i.fy = add i8 %i.fx, 1
  store i8 %i.fy, ptr %i.cp, align 8, !alias.scope !526, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !543
  %i.fz = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.ca unwind label %bb.bz, !noalias !523, !inline_history !544 ; 7 uses

bb.bz:                                            ; preds = %bb.by
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtB16_5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.q) #20
          to label %common.resume unwind label %bb.bu, !noalias !523, !inline_history !544

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.fz, ptr %i.gb, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !543
  %i.gc = load i8, ptr %i.r, align 8, !range !11, !noalias !543, !noundef !3
  %i.gd = icmp eq i8 %i.gc, 6
  br i1 %i.gd, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i = icmp eq ptr %i.fz, null
  br i1 %.not.i, label %.thread120, label %bb.cd

.thread120:                                       ; preds = %bb.cb
  %.sroa.0.0.copyload127 = load i8, ptr %i.s, align 8
  %.sroa.22.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.22.0.copyload131 = load i8, ptr %.sroa.22.0..sroa_idx130, align 1
  %.sroa.24.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx133, i64 6, i1 false)
  %.sroa.24134.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.24134.0.copyload138 = load i64, ptr %.sroa.24134.0..sroa_idx137, align 8
  %.sroa.37.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ge = load <2 x i64>, ptr %.sroa.37.0..sroa_idx141, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !543
  br label %.thread94

bb.cc:                                            ; preds = %bb.ca
  %i.gf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !543, !nonnull !3, !align !25, !noundef !3
  %i.gh = ptrtoint ptr %i.gg to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !543
  %.not = icmp eq ptr %i.fz, null
  br i1 %.not, label %.thread94, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.gi = ptrtoint ptr %i.fz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !543
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.r), !noalias !523, !inline_history !544
  br label %.thread94

.thread94:                                        ; preds = %.thread120, %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.cc
  %.sroa.24134.4 = phi i64 [ %i.gh, %bb.cc ], [ %i.gh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.24134.0.copyload138, %.thread120 ], [ %i.gi, %bb.cd ]
  %.sroa.22.2 = phi i8 [ undef, %bb.cc ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.22.0.copyload131, %.thread120 ], [ undef, %bb.cd ]
  %.sroa.0.4 = phi i8 [ 6, %bb.cc ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.0.0.copyload127, %.thread120 ], [ 6, %bb.cd ]
  %i.gj = phi <2 x i64> [ undef, %bb.cc ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.ge, %.thread120 ], [ undef, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !543
  br label %bb.ag

bb.ce:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.fz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.cf, !noalias !523

bb.cf:                                            ; preds = %bb.ce
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ce
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef 40, i64 noundef 8) #18, !noalias !523
  br label %.thread94

bb.cg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !543
  store i64 10, ptr %i.p, align 8, !noalias !543
  %i.gl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !523, !inline_history !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !543
  br label %bb.ci

bb.ch:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !543
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !523, !inline_history !544
  %i.gm = load i64, ptr %i.y, align 8, !range !336, !noalias !543, !noundef !3 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.gn, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %._crit_edge, %bb.cg
  %i.gp = phi ptr [ %i.cw, %._crit_edge ], [ %i.gl, %bb.cg ]
  %i.gq = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !523
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gq, ptr %i.gr, align 8, !alias.scope !523, !noalias !526
  store i8 6, ptr %0, align 8, !alias.scope !523, !noalias !526
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2C_12LakeFSClient11has_changes01__NtB2v_12DiffResponseNtB1l_11Deserialize11deserialize9___VisitorEB2E_:bb.a
  store i64 %storemerge51.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !879
  %i.ie = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !806

.noexc85.i:                                       ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !879
  br label %.loopexit115.i

bb.co:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2c_12LakeFSClient11has_changes01__NtB25_12DiffResponseNtB1a_11Deserialize11deserialize7___FieldEB2e_.exit.i
  %i.if = load i64, ptr %i.x, align 8, !range !10, !noalias !793, !noundef !3
  %.not54.i = icmp eq i64 %i.if, -9223372036854775808
  br i1 %.not54.i, label %bb.cq, label %bb.cp, !prof !118

bb.cp:                                            ; preds = %bb.co
  %i.ig = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7)
          to label %.loopexit115.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !806

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !793
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !1025, !noalias !1028, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i86.i = load i64, ptr %i.cw, align 8, !alias.scope !1035, !noalias !1036 ; 2 uses
  %i.ij = icmp ult i64 %.promoted.i.i.i.i86.i, %i.ii
  br i1 %i.ij, label %.lr.ph.i.i.i.i88.i, label %.loopexit.i.i.i87.i

.lr.ph.i.i.i.i88.i:                               ; preds = %bb.cq
  %i.ik = load ptr, ptr %i.cv, align 8, !alias.scope !1025, !noalias !1028, !nonnull !3, !noundef !3
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %.lr.ph.i.i.i.i88.i
  %i.il = phi i64 [ %.promoted.i.i.i.i86.i, %.lr.ph.i.i.i.i88.i ], [ %i.io, %bb.cs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !noalias !1038, !noundef !3
  switch i8 %i.in, label %bb.ct [
    i8 32, label %bb.cs
    i8 10, label %bb.cs
    i8 9, label %bb.cs
    i8 13, label %bb.cs
    i8 58, label %bb.cu
  ], !prof !727

bb.cs:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.io = add i64 %i.il, 1                        ; 3 uses
  store i64 %i.io, ptr %i.cw, align 8, !alias.scope !1039, !noalias !1036
  %exitcond.not.i.i.i.i89.i = icmp eq i64 %i.io, %i.ii
  br i1 %exitcond.not.i.i.i.i89.i, label %.loopexit.i.i.i87.i, label %bb.cr

.loopexit.i.i.i87.i:                              ; preds = %bb.cq, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1042
  store i64 3, ptr %i.b, align 8, !noalias !1042
  %i.ip = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !806

.noexc90.i:                                       ; preds = %.loopexit.i.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1042
  br label %.loopexit127.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1042
  store i64 6, ptr %i.c, align 8, !noalias !1042
  %i.iq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc91.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !806

.noexc91.i:                                       ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1042
  br label %.loopexit127.i

bb.cu:                                            ; preds = %bb.cr
  %i.ir = add i64 %i.il, 1
  store i64 %i.ir, ptr %i.cw, align 8, !alias.scope !1043, !noalias !1046
  invoke void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtB8_11Deserialize11deserializeQINtNtB1k_2de12DeserializerNtNtB1k_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !806

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.cu
  %.pr109.i = load i64, ptr %i.w, align 8, !noalias !793 ; 3 uses
  %i.is = icmp eq i64 %.pr109.i, -9223372036854775808
  %.pre.i = load ptr, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !793 ; 3 uses
  br i1 %i.is, label %.loopexit127.i, label %bb.cv

.loopexit127.i:                                   ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.noexc91.i, %.noexc90.i
  %i.it = phi ptr [ %i.iq, %.noexc91.i ], [ %i.ip, %.noexc90.i ], [ %.pre.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !793
  br label %.loopexit115.i

bb.cv:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.647.0.copyload.i = load i64, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !793 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !793
  %i.iu = load i64, ptr %i.x, align 8, !range !10, !alias.scope !1047, !noalias !793, !noundef !3
  %i.iv = icmp eq i64 %i.iu, -9223372036854775808
  br i1 %i.iv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.cx, !noalias !806

bb.cx:                                            ; preds = %bb.cw
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread.i unwind label %bb.cy, !noalias !806

bb.cy:                                            ; preds = %bb.cx
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !806
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.cw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.cz, !noalias !806

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cz, %bb.cx
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.iy, %bb.cz ], [ %i.iw, %bb.cx ]
  store i64 %.pr109.i, ptr %i.x, align 8, !noalias !793
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !793
  store i64 %.sroa.647.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !793
  br label %bb.di

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.cv
  store i64 %.pr109.i, ptr %i.x, align 8, !noalias !793
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !793
  store i64 %.sroa.647.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !793
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsj34PGqTgg0L_16deltalake_lakefs.exit.i.backedge

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsj34PGqTgg0L_16deltalake_lakefs.exit.i.backedge: ; preds = %bb.bm, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.da:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2c_12LakeFSClient11has_changes01__NtB25_12DiffResponseNtB1a_11Deserialize11deserialize7___FieldEB2e_.exit.thread103.i
  %.sroa.336.0.copyload.i = load ptr, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !793
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !793
  br label %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit

bb.db:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2c_12LakeFSClient11has_changes01__NtB25_12DiffResponseNtB1a_11Deserialize11deserialize7___FieldEB2e_.exit.thread103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !793
  invoke void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB1t_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !806

bb.dc:                                            ; preds = %bb.db
  %i.iz = load i64, ptr %i.v, align 8, !range !10, !noalias !793, !noundef !3 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, -9223372036854775808
  %i.jb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !793 ; 2 uses
  br i1 %i.ja, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !793
  br label %.loopexit115.i

bb.de:                                            ; preds = %bb.dc
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.650.0.copyload.i = load i64, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !793
  br label %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit

.loopexit115.i:                                   ; preds = %.noexc80.i, %.noexc76.i, %.noexc73.i, %.noexc72.i, %bb.dd, %.loopexit127.i, %bb.cp, %.noexc85.i, %.noexc83.i, %.noexc82.i, %.noexc81.i, %.noexc79.i, %.noexc78.i, %.noexc75.i, %.noexc71.i, %.noexc70.i, %.noexc69.i, %.noexc68.i, %.noexc67.i, %.noexc66.i, %.noexc65.i, %.noexc64.i, %.noexc63.i, %bb.ag, %bb.ac
  %.sroa.1194.1.ph.sink.i = phi ptr [ %i.jc, %bb.dd ], [ %i.ig, %bb.cp ], [ %i.it, %.loopexit127.i ], [ %i.cr, %bb.ac ], [ %i.dc, %bb.ag ], [ %i.es, %.noexc66.i ], [ %i.ie, %.noexc85.i ], [ %i.eg, %.noexc65.i ], [ %i.fu, %.noexc71.i ], [ %i.dv, %.noexc63.i ], [ %i.hq, %.noexc81.i ], [ %i.fe, %.noexc68.i ], [ %i.ft, %.noexc70.i ], [ %i.gg, %.noexc75.i ], [ %i.ia, %.noexc83.i ], [ %i.et, %.noexc67.i ], [ %i.ff, %.noexc69.i ], [ %i.gt, %.noexc78.i ], [ %i.hn, %.noexc79.i ], [ %i.dw, %.noexc64.i ], [ %i.hy, %.noexc82.i ], [ %i.fy, %.noexc73.i ], [ %i.hp, %.noexc80.i ], [ %i.gh, %.noexc76.i ], [ %i.fw, %.noexc72.i ] ; 2 uses
  %i.jd = load i64, ptr %i.x, align 8, !range !10, !noalias !793, !noundef !3
  %.not58.i = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not58.i, label %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit, label %bb.df

bb.df:                                            ; preds = %.loopexit115.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 unwind label %bb.dg, !noalias !806

bb.dg:                                            ; preds = %bb.df
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.dh, !noalias !806

bb.dh:                                            ; preds = %bb.dg
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !806
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45: ; preds = %bb.df
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !806
  br label %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit

bb.di:                                            ; preds = %.thread.i, %.loopexit.split-lp.i
  %.pn97.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.x) #20
          to label %common.resume unwind label %bb.dj, !noalias !806

bb.dj:                                            ; preds = %bb.di
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !806
  unreachable

_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit: ; preds = %bb.da, %bb.de, %.loopexit115.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45
  %.sroa.056.0 = phi i64 [ -9223372036854775808, %.loopexit115.i ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 ], [ %i.dm, %bb.da ], [ %i.iz, %bb.de ]
  %.sroa.657.0 = phi ptr [ %.sroa.1194.1.ph.sink.i, %.loopexit115.i ], [ %.sroa.1194.1.ph.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 ], [ %.sroa.336.0.copyload.i, %bb.da ], [ %i.jc, %bb.de ]
  %.sroa.858.0 = phi i64 [ undef, %.loopexit115.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 ], [ %.sroa.4.0.copyload.i, %bb.da ], [ %.sroa.650.0.copyload.i, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jh = load i8, ptr %i.ba, align 8, !noundef !3
  %i.ji = add i8 %i.jh, 1
  store i8 %i.ji, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.056.0, ptr %i.ac, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.657.0, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.858.0, ptr %.sroa.858.0..sroa_idx, align 8
  %i.jj = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.dl unwind label %bb.dk     ; 7 uses

bb.dk:                                            ; preds = %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB1b_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #20
          to label %common.resume unwind label %bb.w

bb.dl:                                            ; preds = %_RINvXs0_NvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBi_12LakeFSClient11has_changes01__NtBb_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1S_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3w_4read9SliceReadEEBk_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.jj, ptr %i.jl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.jm = load i64, ptr %i.ad, align 8, !range !10, !noundef !3 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %i.jn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.not = icmp eq ptr %i.jj, null
  br i1 %.not, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.224.0.copyload = load ptr, ptr %.sroa.224.0..sroa_idx, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.325.0.copyload = load i64, ptr %.sroa.325.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51: ; preds = %bb.dl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !3, !align !25, !noundef !3 ; 2 uses
  %.not548 = icmp eq ptr %i.jj, null
  br i1 %.not548, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51.thread, label %bb.dr

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48: ; preds = %bb.do
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51.thread: ; preds = %bb.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51
  %.sroa.09.2401 = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51 ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52 ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48 ], [ %i.jm, %bb.dn ]
  %.sroa.10.2400 = phi ptr [ %i.jp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51 ], [ %i.jp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52 ], [ %i.jj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48 ], [ %.sroa.224.0.copyload, %bb.dn ]
  %.sroa.14.2399 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51 ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52 ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i48 ], [ %.sroa.325.0.copyload, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.z

bb.dr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit52: ; preds = %bb.dr
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jj, i64 noundef 40, i64 noundef 8) #18
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit51.thread

bb.dt:                                            ; preds = %bb.d, %bb.z
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.z ], [ %i.av, %bb.d ]
  %i.jt = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jt, ptr %i.ju, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.z
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.228.0..sroa_idx, align 8
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.1, ptr %.sroa.329.0..sroa_idx, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %.loopexit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !117, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !25, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !117, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !25, !noundef !3
  call fastcc void @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k) #22, !inline_history !1050
  %i.l = load i8, ptr %i.a, align 8, !range !11, !noundef !3
  %i.m = icmp eq i8 %i.l, 6
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !25, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i8 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !117, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !25, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !117, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !25, !noundef !3
  call void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k)
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1v_11ObjectStoreEL_EEB2Q_13delete_stream00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1q_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %i.b, align 8, !range !1703, !noundef !3 ; 2 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775788
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.v = add i64 %i.m, 1
  store i64 %i.v, ptr %i.n, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.w = phi i64 [ %i.r, %.lr.ph ], [ %i.aa, %bb.i ] ; 2 uses
  %.not = icmp eq i64 %i.w, -9223372036854775789
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.w, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %i.x = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.aa = load i64, ptr %i.b, align 8, !range !1703, !noundef !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -9223372036854775788
  br i1 %i.ab, label %._crit_edge, label %bb.f

bb.j:                                             ; preds = %bb.g
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h, %bb.j, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1x_11ObjectStoreEL_EEB2S_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %i.b, align 8, !range !1703, !noundef !3 ; 2 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775788
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.v = add i64 %i.m, 1
  store i64 %i.v, ptr %i.n, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

._crit_edge:                                      ; preds = %bb.i, %bb.c
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.w = phi i64 [ %i.r, %.lr.ph ], [ %i.aa, %bb.i ] ; 2 uses
  %.not = icmp eq i64 %i.w, -9223372036854775789
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.w, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %i.x = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.aa = load i64, ptr %i.b, align 8, !range !1703, !noundef !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -9223372036854775788
  br i1 %i.ab, label %._crit_edge, label %bb.f

bb.j:                                             ; preds = %bb.g
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h, %bb.j, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %1 = alloca [24 x i8], align 8                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !341

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1730
  invoke void @_RNvMsh_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !1730, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !341

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1730
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
          to label %.noexc1.i unwind label %bb.g, !noalias !1727

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1730
  store ptr %i.k, ptr %i.a, align 8, !noalias !1730
  invoke void @_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !1727

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.g, !noalias !1727 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1q_5slice4iter4IterINtNtNtB1q_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB3j_11ObjectStore10get_ranges00ENtB7_9StreamExt8bufferedCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB3O_11ObjectStore10get_ranges00EE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store5parse5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCsjyY8HP3IvQ6_12object_store5parseNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10take_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBc_12LakeFSClient11has_changes01__NtB5_12DiffResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2N_4read9SliceReadEEBe_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB1t_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs1gOyXocuPRE_10serde_core2deReNtB5_8Expected3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCsj34PGqTgg0L_16deltalake_lakefs(i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtB8_11Deserialize11deserializeQINtNtB1k_2de12DeserializerNtNtB1k_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB1V_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtB8_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtCseqDwI8vvjGQ_10serde_json3raw15BoxedFromStringNtB4_8Expected3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtBb_7Visitor9visit_seqINtNtB2c_2de9SeqAccessNtNtB2c_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deINtNvXsh_NtB4_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtB4_8Expected3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient11has_changes01__NtBG_12DiffResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBP_(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsk_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB6_13KeyClassifierNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsk_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB6_13KeyClassifierNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_6deleteCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #10

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

end_hunk_3
