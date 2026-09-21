Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.01?download=true
inline.NumInlined: 343
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCsaPlfBUY5LAj_10serde_json2de10from_traitINtNtB4_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB4_5value5ValueECsamv9RYRPgRi_15candle_examples:bb.a
    i8 32, label %.peel.next.i.preheader
    i8 10, label %.peel.next.i.preheader
    i8 9, label %.peel.next.i.preheader
    i8 13, label %.peel.next.i.preheader
  ]

.peel.next.i.preheader:                           ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.backedge, %.peel.next.i.preheader
  store i8 0, ptr %i.j, align 8, !alias.scope !48, !noalias !49
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  invoke void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.peel.next.i
  %i.u = load i8, ptr %i.a, align 8, !range !7, !noalias !51, !noundef !5
  switch i8 %i.u, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i [
    i8 2, label %.thread33.i
    i8 0, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i
  ], !prof !8

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i: ; preds = %.noexc6
  %i.v = load ptr, ptr %i.m, align 8, !noalias !51, !nonnull !5, !noundef !5
  %i.w = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.v)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE3endCsamv9RYRPgRi_15candle_examples.exit

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %.noexc6
  %i.x = load i8, ptr %i.l, align 1, !noalias !51, !noundef !5 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !43, !noalias !44
  store i8 %i.x, ptr %i.k, align 1, !alias.scope !43, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  switch i8 %i.x, label %.thread.i [
    i8 32, label %.peel.next.i.backedge
    i8 10, label %.peel.next.i.backedge
    i8 9, label %.peel.next.i.backedge
    i8 13, label %.peel.next.i.backedge
  ]

.peel.next.i.backedge:                            ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i
  br label %.peel.next.i, !llvm.loop !40

.thread.i:                                        ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41
  store i64 22, ptr %i.b, align 8, !noalias !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !41, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i = load i64, ptr %i.z, align 8, !alias.scope !41, !noundef !5
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val1.i)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE3endCsamv9RYRPgRi_15candle_examples.exit

.loopexit:                                        ; preds = %.peel.next.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f, %bb.g, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i, %.thread.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #16
          to label %bb.b unwind label %bb.o

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE3endCsamv9RYRPgRi_15candle_examples.exit: ; preds = %.noexc7, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread21, %.noexc8
  %.sroa.0.1.i = phi ptr [ %i.aa, %.noexc8 ], [ %i.w, %.noexc7 ], [ %i.q, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread21 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i, ptr %i.ab, align 8
  store i8 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.c

.thread33.i:                                      ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerINtNtBG_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples.exit10 unwind label %bb.j

bb.j:                                             ; preds = %.thread33.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.ac, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerINtNtBG_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples.exit10: ; preds = %.thread33.i, %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.d, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE3endCsamv9RYRPgRi_15candle_examples.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerINtNtBG_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples.exit10 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.b
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaPlfBUY5LAj_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCsamv9RYRPgRi_15candle_examples13chat_template11TokenConfigEB17_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtB5_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEEB7_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #16
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !68, !noalias !69, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !70, !noalias !71 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !68, !noalias !69, !nonnull !5, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !74, !noundef !5
  switch i8 %i.p, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !75, !noalias !71
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  store i64 22, ptr %i.a, align 8, !noalias !66
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template11TokenConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #16
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template11TokenConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsamv9RYRPgRi_15candle_examples.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsamv9RYRPgRi_15candle_examples.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsamv9RYRPgRi_15candle_examples.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEBF_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEBF_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEBF_.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEBF_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateEEB1c_.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEBF_.exit

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateEEB1c_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateEEB1c_.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtNtB11_5error5ErrorEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i8 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.d
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples13chat_template11TokenConfigEBF_:bb.a
  unreachable

bb.n:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !95, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.e
    i8 14, label %bb.i
    i8 15, label %bb.e
    i8 16, label %bb.e
    i8 17, label %bb.l
    i8 18, label %bb.e
    i8 19, label %bb.n
    i8 20, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsamv9RYRPgRi_15candle_examples.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.sink.split:                         ; preds = %bb.m, %bb.o
  %.sink = phi ptr [ %i.o, %bb.o ], [ %i.l, %bb.m ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.m, %bb.m ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #18, !noalias !5
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.j, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.g ], [ %i.r, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsamv9RYRPgRi_15candle_examples.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsamv9RYRPgRi_15candle_examples.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsamv9RYRPgRi_15candle_examples.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.e

bb.l:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !96, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit unwind label %bb.m, !noalias !96, !inline_history !92

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 32, i64 noundef 8) #18, !noalias !96
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !97, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit3 unwind label %bb.o, !noalias !97, !inline_history !92

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit3: ; preds = %bb.n
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 32, i64 noundef 8) #18, !noalias !97
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !123, !noalias !124, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !122, !noalias !125 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !123, !noalias !124, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !128, !noundef !5 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !129, !noalias !125
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.z = phi i64 [ %i.ac, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !132, !noundef !5
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 93, label %bb.k
  ], !prof !17

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !133, !noalias !134
  %exitcond.not.i8 = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 7, ptr %i.a, align 8
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.g, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9MapAccesspENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess13next_key_seed12has_next_keyINtNtBa_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 57 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i = load i8, ptr %i.j, align 8, !range !6, !alias.scope !156, !noalias !157
  %i.o = trunc nuw i8 %.pre.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  br i1 %i.o, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !159
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l), !noalias !157
  %i.p = load i8, ptr %i.b, align 8, !range !7, !noalias !159, !noundef !5
  switch i8 %i.p, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !prof !8

bb.b:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.m, align 1, !noalias !159, !noundef !5 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !160, !noalias !157
  store i8 %i.q, ptr %i.k, align 1, !alias.scope !160, !noalias !157
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.n, align 8, !noalias !159, !nonnull !5, !noundef !5
  %i.s = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !noalias !157
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.t = phi ptr [ undef, %bb.b ], [ %i.s, %bb.c ], [ undef, %bb.a ]
  %i.u = phi i8 [ %i.q, %bb.b ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.v = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sink.i.i.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !159
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel

bb.e:                                             ; preds = %.peel.begin
  %i.w = load i8, ptr %i.k, align 1, !alias.scope !160, !noalias !157, !noundef !5
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ undef, %bb.e ], [ %i.t, %bb.d ]
  %i.y = phi i8 [ %i.w, %bb.e ], [ %i.u, %bb.d ]  ; 4 uses
  %i.z = phi i1 [ true, %bb.e ], [ %i.v, %bb.d ]  ; 2 uses
  %i.aa = phi i1 [ false, %bb.e ], [ %.sink.i.i.peel, %bb.d ] ; 2 uses
  %.not.i.peel = xor i1 %i.aa, true
  %or.cond.i.peel = and i1 %i.z, %.not.i.peel
  br i1 %or.cond.i.peel, label %bb.f, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit

bb.f:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel
  switch i8 %i.y, label %.loopexit45 [
    i8 32, label %.peel.next.preheader
    i8 10, label %.peel.next.preheader
    i8 9, label %.peel.next.preheader
    i8 13, label %.peel.next.preheader
    i8 125, label %.loopexit46
  ]

.peel.next.preheader:                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  store i8 0, ptr %i.j, align 8, !alias.scope !161, !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l), !noalias !157
  %i.ab = load i8, ptr %i.b, align 8, !range !7, !noalias !164, !noundef !5
  switch i8 %i.ab, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread [
    i8 2, label %.thread128
    i8 0, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i
  ], !prof !8

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread: ; preds = %.peel.next
  %i.ac = load ptr, ptr %i.n, align 8, !noalias !164, !nonnull !5, !noundef !5
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ac), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  br label %bb.g

.thread128:                                       ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  br label %bb.i

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %.peel.next
  %i.ae = load i8, ptr %i.m, align 1, !noalias !164, !noundef !5 ; 3 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !156, !noalias !157
  store i8 %i.ae, ptr %i.k, align 1, !alias.scope !156, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !164
  switch i8 %i.ae, label %.loopexit45 [
    i8 32, label %.peel.next.backedge
    i8 10, label %.peel.next.backedge
    i8 9, label %.peel.next.backedge
    i8 13, label %.peel.next.backedge
    i8 125, label %.loopexit46
  ]

.peel.next.backedge:                              ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i
  br label %.peel.next, !llvm.loop !144

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit: ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit
  %.lcssa95110 = phi ptr [ %i.ad, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread ], [ %i.x, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa95110) ]
  br label %bb.j

bb.h:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit
  br i1 %i.z, label %.thread, label %bb.i, !prof !18

.thread:                                          ; preds = %bb.h
  %i.af = icmp eq i8 %i.y, 125
  br i1 %i.af, label %.loopexit46, label %.loopexit45

bb.i:                                             ; preds = %.thread128, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 3, ptr %i.h, align 8
  %i.ag = getelementptr i8, ptr %i.i, i64 32
  %.val14 = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ah = getelementptr i8, ptr %i.i, i64 40
  %.val15 = load i64, ptr %i.ah, align 8, !noundef !5
  %i.ai = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.val14, i64 noundef %.val15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sink = phi ptr [ %i.ai, %bb.i ], [ %.lcssa95110, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aj, align 8
  br label %bb.v

.loopexit46:                                      ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i, %bb.f, %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ak, align 1
  br label %bb.v

.loopexit45:                                      ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i, %bb.f, %.thread
  %i.al = phi i8 [ %i.y, %.thread ], [ %i.y, %bb.f ], [ %i.ae, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !range !6, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit45
  %i.ap = icmp eq i8 %i.al, 44
  br i1 %i.ap, label %bb.m, label %bb.q, !prof !16

bb.l:                                             ; preds = %.loopexit45
  store i8 0, ptr %i.am, align 8
  %i.aq = icmp eq i8 %i.al, 34
  br i1 %i.aq, label %bb.t, label %bb.u, !prof !16

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.j, align 8, !alias.scope !165
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l), !noalias !169
  %i.at = load i8, ptr %i.a, align 8, !range !7, !noalias !168, !noundef !5
  switch i8 %i.at, label %bb.r [
    i8 2, label %bb.s
    i8 0, label %bb.o
  ], !prof !8

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %i.ar, align 1, !noalias !168, !noundef !5 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !170, !noalias !169
  store i8 %i.au, ptr %i.k, align 1, !alias.scope !170, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  switch i8 %i.au, label %.loopexit [
    i8 32, label %bb.p
    i8 10, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
    i8 34, label %.loopexit43
    i8 125, label %.loopexit44
  ], !prof !19

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  store i8 0, ptr %i.j, align 8, !alias.scope !171, !noalias !172
  br label %bb.n

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 8, ptr %i.c, align 8
  %i.av = getelementptr i8, ptr %i.i, i64 32
  %.val12 = load i64, ptr %i.av, align 8, !noundef !5
  %i.aw = getelementptr i8, ptr %i.i, i64 40
  %.val13 = load i64, ptr %i.aw, align 8, !noundef !5
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val12, i64 noundef %.val13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.as, align 8, !noalias !168, !nonnull !5, !noundef !5
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.az), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.bc = getelementptr i8, ptr %i.i, i64 32
  %.val10 = load i64, ptr %i.bc, align 8, !noundef !5
  %i.bd = getelementptr i8, ptr %i.i, i64 40
  %.val11 = load i64, ptr %i.bd, align 8, !noundef !5
  %i.be = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val10, i64 noundef %.val11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  br label %bb.v

.loopexit:                                        ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.bg = getelementptr i8, ptr %i.i, i64 32
  %.val8 = load i64, ptr %i.bg, align 8, !noundef !5
  %i.bh = getelementptr i8, ptr %i.i, i64 40
  %.val9 = load i64, ptr %i.bh, align 8, !noundef !5
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val8, i64 noundef %.val9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  br label %bb.v

.loopexit43:                                      ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bk, align 1
  br label %bb.v

.loopexit44:                                      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 21, ptr %i.f, align 8
  %i.bl = getelementptr i8, ptr %i.i, i64 32
  %.val6 = load i64, ptr %i.bl, align 8, !noundef !5
  %i.bm = getelementptr i8, ptr %i.i, i64 40
  %.val7 = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bn = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val6, i64 noundef %.val7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bp, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 17, ptr %i.g, align 8
  %i.bq = getelementptr i8, ptr %i.i, i64 32
  %.val = load i64, ptr %i.bq, align 8, !noundef !5
  %i.br = getelementptr i8, ptr %i.i, i64 40
  %.val5 = load i64, ptr %i.br, align 8, !noundef !5
  %i.bs = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val, i64 noundef %.val5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %.loopexit, %.loopexit43, %.loopexit44, %bb.t, %bb.u, %bb.q, %bb.j, %bb.r, %.loopexit46
  %.sink134 = phi i8 [ 1, %bb.s ], [ 1, %.loopexit ], [ 0, %.loopexit43 ], [ 1, %.loopexit44 ], [ 0, %bb.t ], [ 1, %bb.u ], [ 1, %bb.q ], [ 1, %bb.j ], [ 1, %bb.r ], [ 0, %.loopexit46 ]
  store i8 %.sink134, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9MapAccesspENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !198, !noalias !199, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !197, !noalias !200 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !198, !noalias !199, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !203, !noundef !5 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !204, !noalias !200
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !6, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !16

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !207, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !19

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !208, !noalias !209
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [40 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.879 = alloca [16 x i8], align 8          ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 47 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 29 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 13 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.pre.i = load i8, ptr %i.aj, align 8, !range !6, !alias.scope !337, !noalias !338
  %i.ao = trunc nuw i8 %.pre.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !334
  %.sink302.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sink302.sroa.gep308 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink302.sroa.gep309 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink303.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sink303.sroa.gep310 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink303.sroa.gep311 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br i1 %i.ao, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !340
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al), !noalias !338
  %i.ap = load i8, ptr %i.h, align 8, !range !7, !noalias !340, !noundef !5
  switch i8 %i.ap, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !prof !8

bb.b:                                             ; preds = %bb.a
  %i.aq = load i8, ptr %i.am, align 1, !noalias !340, !noundef !5 ; 2 uses
  store i8 1, ptr %i.aj, align 8, !alias.scope !341, !noalias !338
  store i8 %i.aq, ptr %i.ak, align 1, !alias.scope !341, !noalias !338
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !340, !nonnull !5, !noundef !5
  %i.as = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ar), !noalias !338
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.at = phi ptr [ undef, %bb.b ], [ %i.as, %bb.c ], [ undef, %bb.a ]
  %i.au = phi i8 [ %i.aq, %bb.b ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.av = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sink.i.i.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !340
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel

bb.e:                                             ; preds = %.peel.begin
  %i.aw = load i8, ptr %i.ak, align 1, !alias.scope !341, !noalias !338, !noundef !5
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel: ; preds = %bb.e, %bb.d
  %i.ax = phi ptr [ undef, %bb.e ], [ %i.at, %bb.d ]
  %i.ay = phi i8 [ %i.aw, %bb.e ], [ %i.au, %bb.d ] ; 3 uses
  %i.az = phi i1 [ true, %bb.e ], [ %i.av, %bb.d ] ; 2 uses
  %i.ba = phi i1 [ false, %bb.e ], [ %.sink.i.i.peel, %bb.d ] ; 2 uses
  %.not.i56.peel = xor i1 %i.ba, true
  %or.cond.i57.peel = and i1 %i.az, %.not.i56.peel
  br i1 %or.cond.i57.peel, label %bb.f, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit

bb.f:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel
  switch i8 %i.ay, label %.thread [
    i8 32, label %.peel.next.preheader
    i8 10, label %.peel.next.preheader
    i8 9, label %.peel.next.preheader
    i8 13, label %.peel.next.preheader
  ]

.peel.next.preheader:                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  store i8 0, ptr %i.aj, align 8, !alias.scope !342, !noalias !343
  call void @llvm.experimental.noalias.scope.decl(metadata !344), !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !345
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al), !noalias !338
  %i.bb = load i8, ptr %i.h, align 8, !range !7, !noalias !345, !noundef !5
  switch i8 %i.bb, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread [
    i8 2, label %.thread291
    i8 0, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i
  ], !prof !8

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread: ; preds = %.peel.next
  %i.bc = load ptr, ptr %i.an, align 8, !noalias !345, !nonnull !5, !noundef !5
  %i.bd = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.bc), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !345
  br label %bb.g

.thread291:                                       ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !345
  br label %bb.i

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %.peel.next
  %i.be = load i8, ptr %i.am, align 1, !noalias !345, !noundef !5 ; 3 uses
  store i8 1, ptr %i.aj, align 8, !alias.scope !337, !noalias !338
  store i8 %i.be, ptr %i.ak, align 1, !alias.scope !337, !noalias !338
end_hunk_1
begin_hunk_2_@_RINvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples:.peel.begin
  %.sroa.6.0.copyload6.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !alias.scope !428, !noalias !429
  br label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i

bb.cl:                                            ; preds = %bb.cj
  store i8 0, ptr %i.v, align 8, !noalias !427
  call void @llvm.experimental.noalias.scope.decl(metadata !430), !noalias !334
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v), !noalias !431
  br label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i

_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.cl, %bb.ck
  %.sroa.5.sroa.5.0.i.i = phi double [ %.sroa.5.sroa.5.0.copyload10.i.i, %bb.ck ], [ %i.is, %bb.cl ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i, %bb.ck ], [ 2, %bb.cl ]
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload6.i.i, %bb.ck ], [ undef, %bb.cl ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.ck ], [ 2, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !427
  store i8 %.sroa.0.0.i.i, ptr %i.ah, align 8, !alias.scope !432, !noalias !433
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.5.sroa.4.0.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !432, !noalias !433
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store double %.sroa.5.sroa.5.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !432, !noalias !433
  br label %_RINvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.cm:                                            ; preds = %bb.ci
  store i8 2, ptr %i.ah, align 8, !alias.scope !434, !noalias !433
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !434, !noalias !433
  br label %_RINvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.cn:                                            ; preds = %bb.ci
  %.lobit.i.i = lshr i64 %.sroa.476.0.copyload, 63
  store i8 2, ptr %i.ah, align 8, !alias.scope !435, !noalias !433
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.lobit.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i, align 8, !alias.scope !435, !noalias !433
  br label %_RINvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit

_RINvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i, %bb.cm, %bb.cn
  %.sink303.sroa.phi = phi ptr [ %.sink303.sroa.gep, %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i ], [ %.sink303.sroa.gep310, %bb.cm ], [ %.sink303.sroa.gep311, %bb.cn ]
  %.sroa.6.0.i.i.sink = phi i64 [ %.sroa.6.0.i.i, %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit.i ], [ %.sroa.476.0.copyload, %bb.cm ], [ %.sroa.476.0.copyload, %bb.cn ]
  store i64 %.sroa.6.0.i.i.sink, ptr %.sink303.sroa.phi, align 8, !alias.scope !425, !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !346
  br label %bb.u

.thread102:                                       ; preds = %bb.t, %bb.x, %bb.z, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !335
  br label %bb.co

bb.co:                                            ; preds = %.thread102, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !346
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2V_5ValueNtB1P_11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit

_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2V_5ValueNtB1P_11Deserialize11deserialize12ValueVisitorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.j, %bb.v, %bb.co
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !24, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i8 3, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.67.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtB2s_11TokenConfigNtB1j_11Deserialize11deserialize9___VisitorEB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 12 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.3100.i.sroa.4 = alloca [16 x i8], align 8 ; 2 uses
  %.sroa.3104.i = alloca [24 x i8], align 8       ; 2 uses
  %.sroa.3108.i = alloca [24 x i8], align 8       ; 2 uses
  %.sroa.3112.i = alloca [24 x i8], align 8       ; 2 uses
  %.sroa.3116.i = alloca [24 x i8], align 8       ; 2 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.793.i = alloca [16 x i8], align 8        ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.776.i = alloca [16 x i8], align 8        ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.759.i = alloca [16 x i8], align 8        ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.742.i = alloca [16 x i8], align 8        ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 16 uses
  %i.aj = alloca [32 x i8], align 8               ; 16 uses
  %i.ak = alloca [32 x i8], align 8               ; 16 uses
  %i.al = alloca [32 x i8], align 8               ; 16 uses
  %i.am = alloca [32 x i8], align 8               ; 15 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.060.i.sroa.5 = alloca [112 x i8], align 8 ; 5 uses
  %.sroa.459.i = alloca [16 x i8], align 8        ; 2 uses
  %i.ay = alloca [32 x i8], align 8               ; 9 uses
  %i.az = alloca [32 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 9 uses
  %i.bb = alloca [32 x i8], align 8               ; 10 uses
  %i.bc = alloca [16 x i8], align 8               ; 14 uses
  %i.bd = alloca [160 x i8], align 8              ; 15 uses
  %i.be = alloca [168 x i8], align 8              ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [160 x i8], align 8              ; 10 uses
  %i.bh = alloca [168 x i8], align 8              ; 9 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [144 x i8], align 8          ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !752, !noalias !753, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.bk, align 8, !alias.scope !751, !noalias !754 ; 2 uses
  %i.bn = icmp ult i64 %.promoted.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !752, !noalias !753, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bq = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bt, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !757, !noundef !5 ; 2 uses
  switch i8 %i.bs, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bt = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bk, align 8, !alias.scope !758, !noalias !754
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bm
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.bs, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !759

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i64 5, ptr %i.bj, align 8
  %i.bu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ha

bb.d:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit
  %i.bw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a)
  br label %bb.gx

bb.e:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.by = load i8, ptr %i.bx, align 8, !noundef !5
  %i.bz = add i8 %i.by, -1                        ; 2 uses
  store i8 %i.bz, ptr %i.bx, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.h, !prof !21

bb.f:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 8, !noundef !5
  %i.cd = add i8 %i.cc, -1                        ; 2 uses
  store i8 %i.cd, ptr %i.cb, align 8
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.bc, label %bb.bd, !prof !21

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 24, ptr %i.bi, align 8
  %i.cf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.at

bb.h:                                             ; preds = %bb.e
  %i.cg = add i64 %i.bq, 1
  store i64 %i.cg, ptr %i.bk, align 8, !alias.scope !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %1, ptr %i.bc, align 8, !noalias !761
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i8 1, ptr %i.ch, align 8, !noalias !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !764
  call fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc), !noalias !765
  %i.ci = load i8, ptr %i.ax, align 8, !range !6, !noalias !764, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !764, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !764
  br label %_RINvXs0_NvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBb_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB30_4read7StrReadEEBd_.exit

bb.j:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !range !6, !noalias !764, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !764
  br i1 %i.co, label %bb.k, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit.i.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !764
  %i.cp = load ptr, ptr %i.bc, align 8, !alias.scope !766, !noalias !767, !nonnull !5, !align !15, !noundef !5
  call void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cp), !noalias !768
  %i.cq = load i64, ptr %i.aw, align 8, !range !10, !noalias !764, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !769 ; 2 uses
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !764
  br label %_RINvXs0_NvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBb_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB30_4read7StrReadEEBd_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i, i64 16, i1 false), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !764
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ct, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !761
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit.i.thread

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit.i.thread: ; preds = %bb.j, %bb.m
  %.sroa.0.0.sink.i = phi i64 [ %i.cq, %bb.m ], [ 2, %bb.j ]
  store i64 %.sroa.0.0.sink.i, ptr %i.bb, align 8, !noalias !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !761
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !772
  invoke fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.noexc.i unwind label %bb.s, !noalias !773

.noexc.i:                                         ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit.i.thread
  %i.cu = load i8, ptr %i.av, align 8, !range !6, !noalias !772, !noundef !5
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !772, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !772
  br label %bb.as

bb.o:                                             ; preds = %.noexc.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !6, !noalias !772, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !772
  br i1 %i.da, label %bb.p, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit88.i.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !772
  %i.db = load ptr, ptr %i.bc, align 8, !alias.scope !774, !noalias !775, !nonnull !5, !align !15, !noundef !5
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.db)
          to label %.noexc87.i unwind label %bb.s, !noalias !773

.noexc87.i:                                       ; preds = %bb.p
  %i.dc = load i64, ptr %i.au, align 8, !range !10, !noalias !772, !noundef !5 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, -1
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !776 ; 2 uses
  br i1 %i.dd, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !772
  br label %bb.as

bb.r:                                             ; preds = %bb.y, %bb.s
  %.pn85.i = phi { ptr, i32 } [ %i.dg, %bb.s ], [ %.pn83.i, %bb.y ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bb) #16
          to label %common.resume unwind label %bb.aq, !noalias !773

bb.s:                                             ; preds = %bb.ar, %bb.p, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit.i.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %.noexc87.i
  %.sroa.13100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13100.0..sroa_idx.i, i64 16, i1 false), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !772
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.df, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !761
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit88.i.thread

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit88.i.thread: ; preds = %bb.o, %bb.t
  %.sroa.098.0.sink.i = phi i64 [ %i.dc, %bb.t ], [ 2, %bb.o ]
  store i64 %.sroa.098.0.sink.i, ptr %i.ba, align 8, !noalias !761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !761
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !779
  invoke fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.noexc89.i unwind label %bb.z, !noalias !773

.noexc89.i:                                       ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit88.i.thread
  %i.dh = load i8, ptr %i.at, align 8, !range !6, !noalias !779, !noundef !5
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc89.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !779, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !779
  br label %bb.ar

bb.v:                                             ; preds = %.noexc89.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !range !6, !noalias !779, !noundef !5
  %i.dn = trunc nuw i8 %i.dm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !779
  br i1 %i.dn, label %bb.w, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2G_.exit91.i.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !779
  %i.do = load ptr, ptr %i.bc, align 8, !alias.scope !780, !noalias !781, !nonnull !5, !align !15, !noundef !5
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.do)
          to label %.noexc90.i unwind label %bb.z, !noalias !773

.noexc90.i:                                       ; preds = %bb.w
  %i.dp = load i64, ptr %i.as, align 8, !range !10, !noalias !779, !noundef !5 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtB2s_11TokenConfigNtB1j_11Deserialize11deserialize9___VisitorEB2u_:bb.a
.noexc.i42:                                       ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i
  %i.fm = load i8, ptr %i.ac, align 8, !range !6, !noalias !799, !noundef !5
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc.i42
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !799, !nonnull !5, !align !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !799
  br label %.loopexit288.i

bb.bf:                                            ; preds = %.noexc.i42
  %i.fq = load i8, ptr %i.fk, align 1, !range !6, !noalias !799, !noundef !5
  %i.fr = trunc nuw i8 %i.fq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !799
  br i1 %i.fr, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.fs = load ptr, ptr %i.an, align 8, !alias.scope !801, !noalias !802, !nonnull !5, !align !15, !noundef !5 ; 47 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 11 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 47 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !807, !noalias !808, !noundef !5
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 8, !alias.scope !807, !noalias !808
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 6 uses
  store i64 0, ptr %i.fx, align 8, !alias.scope !809, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !810
  invoke void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

.noexc173.i:                                      ; preds = %bb.bg
  %i.fy = load i64, ptr %i.ab, align 8, !range !11, !noalias !810, !noundef !5
  %i.fz = icmp eq i64 %i.fy, 2
  %i.ga = load ptr, ptr %i.fl, align 8, !noalias !810, !nonnull !5, !noundef !5 ; 11 uses
  br i1 %i.fz, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %.noexc173.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !810 ; 2 uses
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bu [
    i64 9, label %bb.bi
    i64 13, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.gb = load i64, ptr %i.ga, align 1
  %i.gc = xor i64 %i.gb, 7308057365947051874
  %i.gd = getelementptr i8, ptr %i.ga, i64 8
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i64
  %i.gg = xor i64 %i.gf, 110
  %i.gh = or i64 %i.gc, %i.gg
  %i.gi = icmp ne i64 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gl = load i64, ptr %i.ga, align 1
  %i.gm = xor i64 %i.gl, 7308057365947051877
  %i.gn = getelementptr i8, ptr %i.ga, i64 8
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gp, 110
  %i.gr = or i64 %i.gm, %i.gq
  %i.gs = icmp ne i64 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gv = load i64, ptr %i.ga, align 1
  %i.gw = xor i64 %i.gv, 7308057365946527349
  %i.gx = getelementptr i8, ptr %i.ga, i64 8
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gz, 110
  %i.hb = or i64 %i.gw, %i.ha
  %i.hc = icmp ne i64 %i.hb, 0
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hf = load i64, ptr %i.ga, align 1
  %i.hg = xor i64 %i.hf, 7308057365946065264
  %i.hh = getelementptr i8, ptr %i.ga, i64 8
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i64
  %i.hk = xor i64 %i.hj, 110
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bs, label %bb.bu

bb.bm:                                            ; preds = %bb.bh
  %i.hp = load i64, ptr %i.ga, align 1
  %i.hq = xor i64 %i.hp, 7882834676105177187
  %i.hr = getelementptr i8, ptr %i.ga, i64 5
  %i.hs = load i64, ptr %i.hr, align 1
  %i.ht = xor i64 %i.hs, 7310575213499737460
  %i.hu = or i64 %i.hq, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bt, label %bb.bu

bb.bn:                                            ; preds = %.noexc173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  br label %.loopexit288.i

.loopexit.split-lp.i:                             ; preds = %bb.fg, %bb.ey, %bb.eq, %bb.ei, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i46
  %.pn.ph.i = phi { ptr, i32 } [ %i.ph, %bb.fg ], [ %i.or, %bb.ey ], [ %i.ob, %bb.eq ], [ %i.nl, %bb.ei ], [ %lpad.loopexit.i, %.loopexit.i46 ], [ %lpad.loopexit294.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp295.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.ai, align 8, !noalias !796
  %.not155.i = icmp eq i64 %.pr.i, -1
  br i1 %.not155.i, label %bb.fz, label %bb.gl

.loopexit.i46:                                    ; preds = %bb.dr, %bb.dc, %bb.cy, %bb.cx, %bb.cw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.fl, %bb.fd, %bb.ev, %bb.en, %bb.ef, %bb.bg, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i
  %lpad.loopexit294.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.fk, %.loopexit.i.i.i239.i, %bb.fc, %.loopexit.i.i.i228.i, %bb.eu, %.loopexit.i.i.i217.i, %bb.em, %.loopexit.i.i.i206.i, %bb.ee, %.loopexit.i.i.i198.i, %bb.ea, %.invoke.i, %bb.dx, %.loopexit124.i.i.i.i.i.i.i, %bb.ds, %.loopexit125.i.i.i.i.i.i.i, %bb.dh, %bb.db, %.loopexit232.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.bx, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp295.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bf
  %i.hy = load i64, ptr %i.am, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not143.i = icmp eq i64 %i.hy, -1
  br i1 %.not143.i, label %bb.fq, label %bb.fp

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.hz = load i64, ptr %i.am, align 8, !range !10, !noalias !796, !noundef !5
  %.not153.i = icmp eq i64 %i.hz, -1
  br i1 %.not153.i, label %bb.eb, label %.invoke, !prof !16

bb.bq:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ia = load i64, ptr %i.al, align 8, !range !10, !noalias !796, !noundef !5
  %.not152.i = icmp eq i64 %i.ia, -1
  br i1 %.not152.i, label %bb.ej, label %.invoke, !prof !16

bb.br:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ib = load i64, ptr %i.ak, align 8, !range !10, !noalias !796, !noundef !5
  %.not151.i = icmp eq i64 %i.ib, -1
  br i1 %.not151.i, label %bb.er, label %.invoke, !prof !16

bb.bs:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ic = load i64, ptr %i.aj, align 8, !range !10, !noalias !796, !noundef !5
  %.not150.i = icmp eq i64 %i.ic, -1
  br i1 %.not150.i, label %bb.ez, label %.invoke, !prof !16

bb.bt:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.id = load i64, ptr %i.ai, align 8, !range !10, !noalias !796, !noundef !5
  %.not149.i = icmp eq i64 %i.id, -1
  br i1 %.not149.i, label %bb.fh, label %.invoke, !prof !16

bb.bu:                                            ; preds = %bb.bm, %bb.bl, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !813, !noalias !814, !noundef !5 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !815, !noalias !816 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i.i.i.i.i, %i.if
  br i1 %i.ig, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bu
  %i.ih = load ptr, ptr %i.ft, align 8, !alias.scope !813, !noalias !814, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i.i.i.i.i
  %i.ii = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.il, %bb.bw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !819, !noundef !5
  switch i8 %i.ik, label %bb.bx [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 58, label %bb.by
  ], !prof !25

bb.bw:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.il = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.il, ptr %i.fu, align 8, !alias.scope !820, !noalias !816
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.il, %i.if
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bv

.loopexit.i.i.i.i:                                ; preds = %bb.bu, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !821
  store i64 3, ptr %i.z, align 8, !noalias !821
  %i.im = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc174.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc174.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !821
  br label %.loopexit288.i

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !821
  store i64 6, ptr %i.aa, align 8, !noalias !821
  %i.in = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc175.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc175.i:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !821
  br label %.loopexit288.i

bb.by:                                            ; preds = %bb.bv
  %i.io = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.io, ptr %i.fu, align 8, !alias.scope !822, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  store i64 0, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.ip = icmp ult i64 %i.io, %i.if
  br i1 %i.ip, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i:                     ; preds = %bb.by
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.dy, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i
  %i.ir = phi ptr [ %i.ih, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.ms, %bb.dy ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %i.io, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.dy ]
  %i.is = phi i64 [ %i.if, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.mr, %bb.dy ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.dy ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.dy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.lr.ph.i.i.i.i.i.i.i.i
  %i.it = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.iw, %bb.ca ] ; 17 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !829, !noundef !5 ; 3 uses
  switch i8 %i.iv, label %bb.cb [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 110, label %bb.cc
    i8 116, label %bb.ci
    i8 102, label %bb.co
    i8 45, label %bb.cw
    i8 34, label %bb.cx
    i8 91, label %bb.cy
    i8 123, label %bb.cy
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.iw = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.iw, ptr %i.fu, align 8, !alias.scope !830, !noalias !831
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.iw, %i.is
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.bz

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.by, %bb.dy, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !832
  store i64 5, ptr %i.y, align 8, !noalias !832
  %i.ix = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc176.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc176.i:                                      ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !832
  br label %.loopexit288.i

bb.cb:                                            ; preds = %bb.bz
  %i.iy = add i8 %i.iv, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.iy, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.dc, label %bb.db, !prof !20

bb.cc:                                            ; preds = %bb.bz
  %i.iz = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.iz, ptr %i.fu, align 8, !alias.scope !833, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iz, i64 %i.is) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.iz, %i.is
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.cd, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !837, !noundef !5
  %i.jc = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.jc, ptr %i.fu, align 8, !alias.scope !838, !noalias !839
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jb, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.jc, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !noalias !842, !noundef !5
  %i.jf = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.jf, ptr %i.fu, align 8, !alias.scope !843, !noalias !839
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.je, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.cg, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.jf, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !846, !noundef !5
  %i.ji = add i64 %i.it, 4
  store i64 %i.ji, ptr %i.fu, align 8, !alias.scope !847, !noalias !839
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.jh, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.ce, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !848
  store i64 5, ptr %i.q, align 8, !noalias !848
  %i.jj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc177.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc177.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !848
  br label %.loopexit288.i

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.ch, %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !848
  store i64 9, ptr %i.p, align 8, !noalias !848
  %i.jk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc178.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc178.i:                                      ; preds = %.loopexit246.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !848
  br label %.loopexit288.i

bb.ci:                                            ; preds = %bb.bz
  %i.jl = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.jl, ptr %i.fu, align 8, !alias.scope !849, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.is) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.jl, %i.is
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.cj, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !853, !noundef !5
  %i.jo = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.jo, ptr %i.fu, align 8, !alias.scope !854, !noalias !855
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.jn, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.ck, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.jo, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !858, !noundef !5
  %i.jr = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.jr, ptr %i.fu, align 8, !alias.scope !859, !noalias !855
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.jq, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.cm, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.jr, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !noalias !862, !noundef !5
  %i.ju = add i64 %i.it, 4
  store i64 %i.ju, ptr %i.fu, align 8, !alias.scope !863, !noalias !855
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.jt, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.ck, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !864
  store i64 5, ptr %i.o, align 8, !noalias !864
  %i.jv = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc179.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc179.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !864
  br label %.loopexit288.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.cn, %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !864
  store i64 9, ptr %i.n, align 8, !noalias !864
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc180.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc180.i:                                      ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !864
  br label %.loopexit288.i

bb.co:                                            ; preds = %bb.bz
  %i.jx = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.jx, ptr %i.fu, align 8, !alias.scope !865, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 %i.is) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.jx, %i.is
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.cp, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !869, !noundef !5
  %i.ka = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.ka, ptr %i.fu, align 8, !alias.scope !870, !noalias !871
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.jz, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.cq, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.ka, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !874, !noundef !5
  %i.kd = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.kd, ptr %i.fu, align 8, !alias.scope !875, !noalias !871
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.kc, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.cs, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.kd, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !noalias !878, !noundef !5
  %i.kg = add i64 %i.it, 4                        ; 3 uses
  store i64 %i.kg, ptr %i.fu, align 8, !alias.scope !879, !noalias !871
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.kf, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.cu, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.kg, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !882, !noundef !5
  %i.kj = add i64 %i.it, 5
  store i64 %i.kj, ptr %i.fu, align 8, !alias.scope !883, !noalias !871
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.ki, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.cu, %bb.cs, %bb.cq, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !884
  store i64 5, ptr %i.m, align 8, !noalias !884
  %i.kk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc181.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc181.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !884
  br label %.loopexit288.i

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.cv, %bb.ct, %bb.cr, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !884
  store i64 9, ptr %i.l, align 8, !noalias !884
  %i.kl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc182.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc182.i:                                      ; preds = %.loopexit232.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !884
  br label %.loopexit288.i

bb.cw:                                            ; preds = %bb.bz
  %i.km = add i64 %i.it, 1
  store i64 %i.km, ptr %i.fu, align 8, !alias.scope !885, !noalias !800
  %i.kn = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.noexc183.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc183.i:                                      ; preds = %bb.cw
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.cx:                                            ; preds = %bb.bz
  %i.ko = add i64 %i.it, 1
  store i64 %i.ko, ptr %i.fu, align 8, !alias.scope !886, !noalias !800
  %i.kp = invoke noundef align 8 ptr @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %.noexc184.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc184.i:                                      ; preds = %bb.cx
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.cy:                                            ; preds = %bb.bz, %bb.bz
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i)
          to label %.noexc185.i unwind label %.loopexit.i46, !noalias !800

.noexc185.i:                                      ; preds = %bb.cy
  %i.kq = load i64, ptr %i.fu, align 8, !alias.scope !887, !noalias !800, !noundef !5
  %i.kr = add i64 %i.kq, 1
  store i64 %i.kr, ptr %i.fu, align 8, !alias.scope !887, !noalias !800
  br label %bb.da

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i: ; preds = %.noexc187.i, %.noexc184.i, %.noexc183.i, %bb.cv, %bb.cn, %bb.ch
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i
  %i.ks = load i64, ptr %i.fx, align 8, !alias.scope !827, !noalias !800, !noundef !5 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge, label %bb.dd

bb.da:                                            ; preds = %bb.dd, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, %.noexc185.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.iv, %.noexc185.i ], [ %i.lg, %bb.dd ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc185.i ], [ true, %bb.dd ], [ true, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i ]
  %i.ku = load i64, ptr %i.ie, align 8, !alias.scope !888, !noalias !889, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !890, !noalias !891 ; 2 uses
  %i.kv = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.ku
  br i1 %i.kv, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.da
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.kw = load ptr, ptr %i.ft, align 8, !alias.scope !888, !noalias !889, !nonnull !5, !noundef !5 ; 3 uses
  %i.kx = load i64, ptr %i.fs, align 8, !range !22, !alias.scope !827, !noalias !800
  %i.ky = load ptr, ptr %i.iq, align 8, !alias.scope !827, !noalias !800, !nonnull !5
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !832
  store i64 10, ptr %i.x, align 8, !noalias !832
  %i.kz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc186.i:                                      ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !832
  br label %.loopexit288.i

bb.dc:                                            ; preds = %bb.cb
  %i.la = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.noexc187.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc187.i:                                      ; preds = %bb.dc
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.dd:                                            ; preds = %bb.cz
  %i.lb = add i64 %i.ks, -1                       ; 3 uses
  store i64 %i.lb, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.lc = load i64, ptr %i.fs, align 8, !range !22, !alias.scope !827, !noalias !800, !noundef !5
  %i.ld = icmp ult i64 %i.lb, %i.lc
  call void @llvm.assume(i1 %i.ld)
  %i.le = load ptr, ptr %i.iq, align 8, !alias.scope !827, !noalias !800, !nonnull !5, !noundef !5
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lb
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !800, !noundef !5
  br label %bb.da

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.dn, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lr, %bb.dn ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.dn ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lw, %bb.dn ] ; 6 uses
  %i.lh = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lt, %bb.dn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.li = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.ll, %bb.df ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !895, !noundef !5
  switch i8 %i.lk, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.df
    i8 10, label %bb.df
    i8 9, label %bb.df
    i8 13, label %bb.df
    i8 44, label %bb.di
    i8 93, label %bb.dj
    i8 125, label %bb.dk
  ]

bb.df:                                            ; preds = %bb.de, %bb.de, %bb.de, %bb.de
  %i.ll = add i64 %i.li, 1                        ; 3 uses
  store i64 %i.ll, ptr %i.fu, align 8, !alias.scope !896, !noalias !891
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.ll, %i.ku
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.de

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.da, %bb.dn, %bb.df
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.lw, %bb.dn ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.da ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !832
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.dh
    i8 123, label %bb.dg
  ]

bb.dg:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.dg ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !832
  %i.lm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc189.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc189.i:                                      ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !832
  br label %.loopexit288.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.dk, %bb.dj, %bb.de
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.do, label %.critedge.i.i.i.i.i.i.i, !prof !21

bb.di:                                            ; preds = %bb.de
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.dl, label %.critedge.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.de
  %i.ln = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.ln, label %bb.dm, label %.loopexit.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.de
  %i.lo = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.lo, label %bb.dm, label %.loopexit.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.di
  %i.lp = add i64 %i.li, 1                        ; 2 uses
  store i64 %i.lp, ptr %i.fu, align 8, !alias.scope !897, !noalias !800
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.dl, %bb.di, %.loopexit.i.i.i.i.i.i.i
  %.promoted.i80.i.i.i.i.i.i.i = phi i64 [ %i.li, %bb.di ], [ %i.li, %.loopexit.i.i.i.i.i.i.i ], [ %i.lp, %bb.dl ] ; 3 uses
  %i.lq = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.lq, label %bb.dp, label %bb.dy

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.lr = add i64 %i.li, 1                        ; 3 uses
  store i64 %i.lr, ptr %i.fu, align 8, !alias.scope !898, !noalias !800
  %i.ls = icmp eq i64 %i.lh, 0
  br i1 %i.ls, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lt = add i64 %i.lh, -1                       ; 4 uses
  store i64 %i.lt, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.lu = icmp ult i64 %i.lt, %i.kx
  call void @llvm.assume(i1 %i.lu)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lt
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !800, !noundef !5 ; 2 uses
  %i.lx = icmp ult i64 %i.lr, %i.ku
  br i1 %i.lx, label %.lr.ph.i75.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

bb.do:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !832
  switch i8 %.sroa.027.2163.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.ea
    i8 123, label %bb.dz
  ]

bb.dp:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ly = icmp ult i64 %.promoted.i80.i.i.i.i.i.i.i, %i.ku
  br i1 %i.ly, label %.lr.ph.i82.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i

.lr.ph.i82.i.i.i.i.i.i.i:                         ; preds = %bb.dp, %bb.dq
  %i.lz = phi i64 [ %i.mc, %bb.dq ], [ %.promoted.i80.i.i.i.i.i.i.i, %bb.dp ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !noalias !900, !noundef !5
  switch i8 %i.mb, label %bb.ds [
    i8 32, label %bb.dq
    i8 10, label %bb.dq
    i8 9, label %bb.dq
    i8 13, label %bb.dq
    i8 34, label %bb.dr
  ], !prof !25

bb.dq:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i
  %i.mc = add i64 %i.lz, 1                        ; 3 uses
  store i64 %i.mc, ptr %i.fu, align 8, !alias.scope !901, !noalias !902
  %exitcond.not.i83.i.i.i.i.i.i.i = icmp eq i64 %i.mc, %i.ku
  br i1 %exitcond.not.i83.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i.i.i

.loopexit125.i.i.i.i.i.i.i:                       ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !832
  store i64 3, ptr %i.t, align 8, !noalias !832
  %i.md = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc190.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc190.i:                                      ; preds = %.loopexit125.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !832
  br label %.loopexit288.i

bb.dr:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  %i.me = add i64 %i.lz, 1
  store i64 %i.me, ptr %i.fu, align 8, !alias.scope !903, !noalias !800
  %i.mf = invoke noundef align 8 ptr @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %.noexc191.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc191.i:                                      ; preds = %bb.dr
  %.not50.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not50.i.i.i.i.i.i.i, label %bb.dt, label %.loopexit288.i

bb.ds:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !832
  store i64 17, ptr %i.u, align 8, !noalias !832
  %i.mg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc192.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc192.i:                                      ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !832
  br label %.loopexit288.i

bb.dt:                                            ; preds = %.noexc191.i
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.mh = load i64, ptr %i.ie, align 8, !alias.scope !905, !noalias !906, !noundef !5 ; 3 uses
  %.promoted.i87.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !907, !noalias !908 ; 2 uses
  %i.mi = icmp ult i64 %.promoted.i87.i.i.i.i.i.i.i, %i.mh
  br i1 %i.mi, label %.lr.ph.i89.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i.i.i:                         ; preds = %bb.dt
  %i.mj = load ptr, ptr %i.ft, align 8, !alias.scope !905, !noalias !906, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dv, %.lr.ph.i89.i.i.i.i.i.i.i
  %i.mk = phi i64 [ %.promoted.i87.i.i.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i.i.i ], [ %i.mn, %bb.dv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !911, !noundef !5
  switch i8 %i.mm, label %bb.dx [
    i8 32, label %bb.dv
    i8 10, label %bb.dv
    i8 9, label %bb.dv
    i8 13, label %bb.dv
    i8 58, label %bb.dw
  ], !prof !25

bb.dv:                                            ; preds = %bb.du, %bb.du, %bb.du, %bb.du
  %i.mn = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mn, ptr %i.fu, align 8, !alias.scope !912, !noalias !908
  %exitcond.not.i90.i.i.i.i.i.i.i = icmp eq i64 %i.mn, %i.mh
  br i1 %exitcond.not.i90.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i, label %bb.du

.loopexit124.i.i.i.i.i.i.i:                       ; preds = %bb.dt, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !832
  store i64 3, ptr %i.r, align 8, !noalias !832
  %i.mo = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc193.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc193.i:                                      ; preds = %.loopexit124.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !832
  br label %.loopexit288.i

bb.dw:                                            ; preds = %bb.du
  %i.mp = add i64 %i.mk, 1                        ; 2 uses
  store i64 %i.mp, ptr %i.fu, align 8, !alias.scope !913, !noalias !800
  br label %bb.dy

bb.dx:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !832
  store i64 6, ptr %i.s, align 8, !noalias !832
  %i.mq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc194.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc194.i:                                      ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !832
  br label %.loopexit288.i

bb.dy:                                            ; preds = %bb.dw, %.critedge.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.mp, %bb.dw ] ; 2 uses
  %i.mr = phi i64 [ %i.ku, %.critedge.i.i.i.i.i.i.i ], [ %i.mh, %bb.dw ] ; 2 uses
  %i.ms = phi ptr [ %i.kw, %.critedge.i.i.i.i.i.i.i ], [ %i.mj, %bb.dw ]
  %i.mt = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.mr
  br i1 %i.mt, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.invoke.i:                                        ; preds = %bb.do, %.loopexit123.i.i.i.i.i.i.i
  %i.mu = phi ptr [ @11, %.loopexit123.i.i.i.i.i.i.i ], [ @12, %bb.do ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mu) #21
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.dz:                                            ; preds = %bb.do
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.do
  %storemerge51.i.i.i.i.i.i.i = phi i64 [ 8, %bb.dz ], [ 7, %bb.do ]
  store i64 %storemerge51.i.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !832
  %i.mv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc196.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc196.i:                                      ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !832
  br label %.loopexit288.i

bb.eb:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !796
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !916, !noalias !917, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i197.i = load i64, ptr %i.fu, align 8, !alias.scope !918, !noalias !919 ; 2 uses
  %i.my = icmp ult i64 %.promoted.i.i.i.i197.i, %i.mx
  br i1 %i.my, label %.lr.ph.i.i.i.i199.i, label %.loopexit.i.i.i198.i

.lr.ph.i.i.i.i199.i:                              ; preds = %bb.eb
  %i.mz = load ptr, ptr %i.ft, align 8, !alias.scope !916, !noalias !917, !nonnull !5, !noundef !5
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ed, %.lr.ph.i.i.i.i199.i
  %i.na = phi i64 [ %.promoted.i.i.i.i197.i, %.lr.ph.i.i.i.i199.i ], [ %i.nd, %bb.ed ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !noalias !922, !noundef !5
  switch i8 %i.nc, label %bb.ee [
    i8 32, label %bb.ed
    i8 10, label %bb.ed
    i8 9, label %bb.ed
    i8 13, label %bb.ed
    i8 58, label %bb.ef
  ], !prof !25

bb.ed:                                            ; preds = %bb.ec, %bb.ec, %bb.ec, %bb.ec
  %i.nd = add i64 %i.na, 1                        ; 3 uses
  store i64 %i.nd, ptr %i.fu, align 8, !alias.scope !923, !noalias !919
  %exitcond.not.i.i.i.i200.i = icmp eq i64 %i.nd, %i.mx
  br i1 %exitcond.not.i.i.i.i200.i, label %.loopexit.i.i.i198.i, label %bb.ec

.loopexit.i.i.i198.i:                             ; preds = %bb.eb, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !924
  store i64 3, ptr %i.j, align 8, !noalias !924
  %i.ne = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc201.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc201.i:                                      ; preds = %.loopexit.i.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !924
  br label %.loopexit306.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !924
  store i64 6, ptr %i.k, align 8, !noalias !924
  %i.nf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc202.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc202.i:                                      ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !924
  br label %.loopexit306.i

bb.ef:                                            ; preds = %bb.ec
  %i.ng = add i64 %i.na, 1
  store i64 %i.ng, ptr %i.fu, align 8, !alias.scope !925, !noalias !926
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit.i: ; preds = %bb.ef
  %.pr278.i = load i64, ptr %i.ah, align 8, !noalias !796 ; 3 uses
  %i.nh = icmp eq i64 %.pr278.i, -1
  %.pre682.i = load ptr, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !796 ; 3 uses
  br i1 %i.nh, label %.loopexit306.i, label %bb.eg

.loopexit306.i:                                   ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit.i, %.noexc202.i, %.noexc201.i
  %i.ni = phi ptr [ %i.nf, %.noexc202.i ], [ %i.ne, %.noexc201.i ], [ %.pre682.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %.loopexit288.i

bb.eg:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !796
  %i.nj = load i64, ptr %i.am, align 8, !range !10, !alias.scope !927, !noalias !796, !noundef !5
  %i.nk = icmp eq i64 %i.nj, -1
  br i1 %i.nk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit.i unwind label %bb.ei, !noalias !800

bb.ei:                                            ; preds = %bb.eh
  %i.nl = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr278.i, ptr %i.am, align 8, !noalias !796
  store ptr %.pre682.i, ptr %.sroa.623.0..sroa_idx24.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx26.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !796
  br label %.loopexit.split-lp.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit.i: ; preds = %bb.eh, %bb.eg
  store i64 %.pr278.i, ptr %i.am, align 8, !noalias !796
  store ptr %.pre682.i, ptr %.sroa.623.0..sroa_idx24.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx26.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge

bb.ej:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.742.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !796
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !930, !noalias !931, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i205.i = load i64, ptr %i.fu, align 8, !alias.scope !932, !noalias !933 ; 2 uses
  %i.no = icmp ult i64 %.promoted.i.i.i.i205.i, %i.nn
  br i1 %i.no, label %.lr.ph.i.i.i.i208.i, label %.loopexit.i.i.i206.i

.lr.ph.i.i.i.i208.i:                              ; preds = %bb.ej
  %i.np = load ptr, ptr %i.ft, align 8, !alias.scope !930, !noalias !931, !nonnull !5, !noundef !5
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %.lr.ph.i.i.i.i208.i
  %i.nq = phi i64 [ %.promoted.i.i.i.i205.i, %.lr.ph.i.i.i.i208.i ], [ %i.nt, %bb.el ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !noalias !936, !noundef !5
  switch i8 %i.ns, label %bb.em [
    i8 32, label %bb.el
    i8 10, label %bb.el
    i8 9, label %bb.el
    i8 13, label %bb.el
    i8 58, label %bb.en
  ], !prof !25

bb.el:                                            ; preds = %bb.ek, %bb.ek, %bb.ek, %bb.ek
  %i.nt = add i64 %i.nq, 1                        ; 3 uses
  store i64 %i.nt, ptr %i.fu, align 8, !alias.scope !937, !noalias !933
  %exitcond.not.i.i.i.i209.i = icmp eq i64 %i.nt, %i.nn
  br i1 %exitcond.not.i.i.i.i209.i, label %.loopexit.i.i.i206.i, label %bb.ek

.loopexit.i.i.i206.i:                             ; preds = %bb.ej, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !938
  store i64 3, ptr %i.h, align 8, !noalias !938
  %i.nu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc210.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc210.i:                                      ; preds = %.loopexit.i.i.i206.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !938
  br label %.loopexit304.i

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !938
  store i64 6, ptr %i.i, align 8, !noalias !938
  %i.nv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc211.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc211.i:                                      ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !938
  br label %.loopexit304.i

bb.en:                                            ; preds = %bb.ek
  %i.nw = add i64 %i.nq, 1
  store i64 %i.nw, ptr %i.fu, align 8, !alias.scope !939, !noalias !940
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit213.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit213.i: ; preds = %bb.en
  %.pr279.i = load i64, ptr %i.ag, align 8, !noalias !796 ; 3 uses
  %i.nx = icmp eq i64 %.pr279.i, -1
  %.pre681.i = load ptr, ptr %.sroa.4131.0..sroa_idx.i, align 8, !noalias !796 ; 3 uses
  br i1 %i.nx, label %.loopexit304.i, label %bb.eo

.loopexit304.i:                                   ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit213.i, %.noexc211.i, %.noexc210.i
  %i.ny = phi ptr [ %i.nv, %.noexc211.i ], [ %i.nu, %.noexc210.i ], [ %.pre681.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit213.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i)
  br label %.loopexit288.i

bb.eo:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit213.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5132.0..sroa_idx.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !796
  %i.nz = load i64, ptr %i.al, align 8, !range !10, !alias.scope !941, !noalias !796, !noundef !5
  %i.oa = icmp eq i64 %i.nz, -1
  br i1 %i.oa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit215.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit215.i unwind label %bb.eq, !noalias !800

bb.eq:                                            ; preds = %bb.ep
  %i.ob = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr279.i, ptr %i.al, align 8, !noalias !796
  store ptr %.pre681.i, ptr %.sroa.639.0..sroa_idx40.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.0..sroa_idx43.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i, i64 16, i1 false), !noalias !796
  br label %.loopexit.split-lp.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit215.i: ; preds = %bb.ep, %bb.eo
  store i64 %.pr279.i, ptr %i.al, align 8, !noalias !796
  store ptr %.pre681.i, ptr %.sroa.639.0..sroa_idx40.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.0..sroa_idx43.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i)
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge

bb.er:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.759.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !796
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.od = load i64, ptr %i.oc, align 8, !alias.scope !944, !noalias !945, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i216.i = load i64, ptr %i.fu, align 8, !alias.scope !946, !noalias !947 ; 2 uses
  %i.oe = icmp ult i64 %.promoted.i.i.i.i216.i, %i.od
  br i1 %i.oe, label %.lr.ph.i.i.i.i219.i, label %.loopexit.i.i.i217.i

.lr.ph.i.i.i.i219.i:                              ; preds = %bb.er
  %i.of = load ptr, ptr %i.ft, align 8, !alias.scope !944, !noalias !945, !nonnull !5, !noundef !5
  br label %bb.es

bb.es:                                            ; preds = %bb.et, %.lr.ph.i.i.i.i219.i
  %i.og = phi i64 [ %.promoted.i.i.i.i216.i, %.lr.ph.i.i.i.i219.i ], [ %i.oj, %bb.et ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !noalias !950, !noundef !5
  switch i8 %i.oi, label %bb.eu [
    i8 32, label %bb.et
    i8 10, label %bb.et
    i8 9, label %bb.et
    i8 13, label %bb.et
    i8 58, label %bb.ev
  ], !prof !25

bb.et:                                            ; preds = %bb.es, %bb.es, %bb.es, %bb.es
  %i.oj = add i64 %i.og, 1                        ; 3 uses
  store i64 %i.oj, ptr %i.fu, align 8, !alias.scope !951, !noalias !947
  %exitcond.not.i.i.i.i220.i = icmp eq i64 %i.oj, %i.od
  br i1 %exitcond.not.i.i.i.i220.i, label %.loopexit.i.i.i217.i, label %bb.es

.loopexit.i.i.i217.i:                             ; preds = %bb.er, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !952
  store i64 3, ptr %i.f, align 8, !noalias !952
  %i.ok = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc221.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc221.i:                                      ; preds = %.loopexit.i.i.i217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !952
  br label %.loopexit302.i

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !952
  store i64 6, ptr %i.g, align 8, !noalias !952
  %i.ol = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc222.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc222.i:                                      ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !952
  br label %.loopexit302.i

bb.ev:                                            ; preds = %bb.es
  %i.om = add i64 %i.og, 1
  store i64 %i.om, ptr %i.fu, align 8, !alias.scope !953, !noalias !954
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit224.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit224.i: ; preds = %bb.ev
  %.pr280.i = load i64, ptr %i.af, align 8, !noalias !796 ; 3 uses
  %i.on = icmp eq i64 %.pr280.i, -1
  %.pre680.i = load ptr, ptr %.sroa.4134.0..sroa_idx.i, align 8, !noalias !796 ; 3 uses
  br i1 %i.on, label %.loopexit302.i, label %bb.ew

.loopexit302.i:                                   ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit224.i, %.noexc222.i, %.noexc221.i
  %i.oo = phi ptr [ %i.ol, %.noexc222.i ], [ %i.ok, %.noexc221.i ], [ %.pre680.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit224.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.759.i)
  br label %.loopexit288.i

bb.ew:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit224.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.759.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5135.0..sroa_idx.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !796
  %i.op = load i64, ptr %i.ak, align 8, !range !10, !alias.scope !955, !noalias !796, !noundef !5
  %i.oq = icmp eq i64 %i.op, -1
  br i1 %i.oq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit226.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit226.i unwind label %bb.ey, !noalias !800

bb.ey:                                            ; preds = %bb.ex
  %i.or = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr280.i, ptr %i.ak, align 8, !noalias !796
  store ptr %.pre680.i, ptr %.sroa.656.0..sroa_idx57.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.759.0..sroa_idx60.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.759.i, i64 16, i1 false), !noalias !796
  br label %.loopexit.split-lp.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit226.i: ; preds = %bb.ex, %bb.ew
  store i64 %.pr280.i, ptr %i.ak, align 8, !noalias !796
  store ptr %.pre680.i, ptr %.sroa.656.0..sroa_idx57.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.759.0..sroa_idx60.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.759.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.759.i)
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge

bb.ez:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.776.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !796
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.os = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.ot = load i64, ptr %i.os, align 8, !alias.scope !958, !noalias !959, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i227.i = load i64, ptr %i.fu, align 8, !alias.scope !960, !noalias !961 ; 2 uses
  %i.ou = icmp ult i64 %.promoted.i.i.i.i227.i, %i.ot
  br i1 %i.ou, label %.lr.ph.i.i.i.i230.i, label %.loopexit.i.i.i228.i

.lr.ph.i.i.i.i230.i:                              ; preds = %bb.ez
  %i.ov = load ptr, ptr %i.ft, align 8, !alias.scope !958, !noalias !959, !nonnull !5, !noundef !5
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fb, %.lr.ph.i.i.i.i230.i
  %i.ow = phi i64 [ %.promoted.i.i.i.i227.i, %.lr.ph.i.i.i.i230.i ], [ %i.oz, %bb.fb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !noalias !964, !noundef !5
  switch i8 %i.oy, label %bb.fc [
    i8 32, label %bb.fb
    i8 10, label %bb.fb
    i8 9, label %bb.fb
    i8 13, label %bb.fb
    i8 58, label %bb.fd
  ], !prof !25

bb.fb:                                            ; preds = %bb.fa, %bb.fa, %bb.fa, %bb.fa
  %i.oz = add i64 %i.ow, 1                        ; 3 uses
  store i64 %i.oz, ptr %i.fu, align 8, !alias.scope !965, !noalias !961
  %exitcond.not.i.i.i.i231.i = icmp eq i64 %i.oz, %i.ot
  br i1 %exitcond.not.i.i.i.i231.i, label %.loopexit.i.i.i228.i, label %bb.fa

.loopexit.i.i.i228.i:                             ; preds = %bb.ez, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !966
  store i64 3, ptr %i.d, align 8, !noalias !966
  %i.pa = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc232.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc232.i:                                      ; preds = %.loopexit.i.i.i228.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !966
  br label %.loopexit300.i

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !966
  store i64 6, ptr %i.e, align 8, !noalias !966
  %i.pb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc233.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc233.i:                                      ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !966
  br label %.loopexit300.i

bb.fd:                                            ; preds = %bb.fa
  %i.pc = add i64 %i.ow, 1
  store i64 %i.pc, ptr %i.fu, align 8, !alias.scope !967, !noalias !968
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit235.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit235.i: ; preds = %bb.fd
  %.pr281.i = load i64, ptr %i.ae, align 8, !noalias !796 ; 3 uses
  %i.pd = icmp eq i64 %.pr281.i, -1
  %.pre679.i = load ptr, ptr %.sroa.4137.0..sroa_idx.i, align 8, !noalias !796 ; 3 uses
  br i1 %i.pd, label %.loopexit300.i, label %bb.fe

.loopexit300.i:                                   ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit235.i, %.noexc233.i, %.noexc232.i
  %i.pe = phi ptr [ %i.pb, %.noexc233.i ], [ %i.pa, %.noexc232.i ], [ %.pre679.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit235.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.i)
  br label %.loopexit288.i

bb.fe:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB2E_.exit235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !796
  %i.pf = load i64, ptr %i.aj, align 8, !range !10, !alias.scope !969, !noalias !796, !noundef !5
  %i.pg = icmp eq i64 %i.pf, -1
  br i1 %i.pg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit237.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit237.i unwind label %bb.fg, !noalias !800

bb.fg:                                            ; preds = %bb.ff
  %i.ph = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr281.i, ptr %i.aj, align 8, !noalias !796
  store ptr %.pre679.i, ptr %.sroa.673.0..sroa_idx74.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.0..sroa_idx77.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.i, i64 16, i1 false), !noalias !796
  br label %.loopexit.split-lp.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit237.i: ; preds = %bb.ff, %bb.fe
  store i64 %.pr281.i, ptr %i.aj, align 8, !noalias !796
  store ptr %.pre679.i, ptr %.sroa.673.0..sroa_idx74.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.0..sroa_idx77.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.776.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.i)
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge

bb.fh:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.793.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !796
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !972, !noalias !973, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i238.i = load i64, ptr %i.fu, align 8, !alias.scope !974, !noalias !975 ; 2 uses
  %i.pk = icmp ult i64 %.promoted.i.i.i.i238.i, %i.pj
  br i1 %i.pk, label %.lr.ph.i.i.i.i241.i, label %.loopexit.i.i.i239.i

.lr.ph.i.i.i.i241.i:                              ; preds = %bb.fh
  %i.pl = load ptr, ptr %i.ft, align 8, !alias.scope !972, !noalias !973, !nonnull !5, !noundef !5
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fj, %.lr.ph.i.i.i.i241.i
  %i.pm = phi i64 [ %.promoted.i.i.i.i238.i, %.lr.ph.i.i.i.i241.i ], [ %i.pp, %bb.fj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !noalias !978, !noundef !5
  switch i8 %i.po, label %bb.fk [
    i8 32, label %bb.fj
    i8 10, label %bb.fj
    i8 9, label %bb.fj
    i8 13, label %bb.fj
    i8 58, label %bb.fl
  ], !prof !25

bb.fj:                                            ; preds = %bb.fi, %bb.fi, %bb.fi, %bb.fi
  %i.pp = add i64 %i.pm, 1                        ; 3 uses
  store i64 %i.pp, ptr %i.fu, align 8, !alias.scope !979, !noalias !975
  %exitcond.not.i.i.i.i242.i = icmp eq i64 %i.pp, %i.pj
  br i1 %exitcond.not.i.i.i.i242.i, label %.loopexit.i.i.i239.i, label %bb.fi

.loopexit.i.i.i239.i:                             ; preds = %bb.fh, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !980
  store i64 3, ptr %i.b, align 8, !noalias !980
  %i.pq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc243.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc243.i:                                      ; preds = %.loopexit.i.i.i239.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !980
  br label %.loopexit298.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !980
  store i64 6, ptr %i.c, align 8, !noalias !980
  %i.pr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc244.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc244.i:                                      ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !980
  br label %.loopexit298.i

bb.fl:                                            ; preds = %bb.fi
  %i.ps = add i64 %i.pm, 1
  store i64 %i.ps, ptr %i.fu, align 8, !alias.scope !981, !noalias !982
  invoke void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB34_4read7StrReadEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2E_.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !800

.invoke:                                          ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %i.pt = phi ptr [ @4, %bb.bs ], [ @3, %bb.br ], [ @2, %bb.bq ], [ @1, %bb.bp ], [ @5, %bb.bt ]
  %i.pu = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error15duplicate_fieldCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pt, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.loopexit288.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2E_.exit.i: ; preds = %bb.fl
  %.pr282.i = load i64, ptr %i.ad, align 8, !noalias !796 ; 3 uses
  %i.pv = icmp eq i64 %.pr282.i, -1
  %.pre.i = load ptr, ptr %.sroa.4140.0..sroa_idx.i, align 8, !noalias !796 ; 3 uses
  br i1 %i.pv, label %.loopexit298.i, label %bb.fm

.loopexit298.i:                                   ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2E_.exit.i, %.noexc244.i, %.noexc243.i
  %i.pw = phi ptr [ %i.pr, %.noexc244.i ], [ %i.pq, %.noexc243.i ], [ %.pre.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2E_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793.i)
  br label %.loopexit288.i

bb.fm:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB2E_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.793.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5141.0..sroa_idx.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !796
  %i.px = load i64, ptr %i.ai, align 8, !range !10, !alias.scope !983, !noalias !796, !noundef !5
  %i.py = icmp eq i64 %i.px, -1
  br i1 %i.py, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit.i unwind label %.thread.i, !noalias !800

.thread.i:                                        ; preds = %bb.fn
  %i.pz = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr282.i, ptr %i.ai, align 8, !noalias !796
  store ptr %.pre.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.793.0..sroa_idx94.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.793.i, i64 16, i1 false), !noalias !796
  br label %bb.gl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit.i: ; preds = %bb.fn, %bb.fm
  store i64 %.pr282.i, ptr %i.ai, align 8, !noalias !796
  store ptr %.pre.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.793.0..sroa_idx94.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.793.i, i64 16, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.793.i)
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge: ; preds = %bb.cz, %bb.dm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit237.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit226.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit215.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit.i
  br label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i

.loopexit288.i:                                   ; preds = %.noexc183.i, %.noexc184.i, %.noexc187.i, %.noexc191.i, %.invoke, %.noexc174.i, %.noexc175.i, %.noexc176.i, %.noexc177.i, %.noexc178.i, %.noexc179.i, %.noexc180.i, %.noexc181.i, %.noexc182.i, %.noexc186.i, %.noexc189.i, %.noexc190.i, %.noexc192.i, %.noexc193.i, %.noexc194.i, %.noexc196.i, %bb.be, %bb.bn, %.loopexit298.i, %.loopexit300.i, %.loopexit302.i, %.loopexit304.i, %.loopexit306.i
  %.sroa.1753.0 = phi ptr [ %i.lm, %.noexc189.i ], [ %i.pu, %.invoke ], [ %i.ni, %.loopexit306.i ], [ %i.fp, %bb.be ], [ %i.ny, %.loopexit304.i ], [ %i.md, %.noexc190.i ], [ %i.oo, %.loopexit302.i ], [ %i.in, %.noexc175.i ], [ %i.pe, %.loopexit300.i ], [ %i.mo, %.noexc193.i ], [ %i.pw, %.loopexit298.i ], [ %i.ga, %bb.bn ], [ %i.jj, %.noexc177.i ], [ %i.mv, %.noexc196.i ], [ %i.ix, %.noexc176.i ], [ %i.kl, %.noexc182.i ], [ %i.im, %.noexc174.i ], [ %i.mg, %.noexc192.i ], [ %i.jv, %.noexc179.i ], [ %i.kk, %.noexc181.i ], [ %i.kz, %.noexc186.i ], [ %i.mq, %.noexc194.i ], [ %i.jk, %.noexc178.i ], [ %i.jw, %.noexc180.i ], [ %i.kp, %.noexc184.i ], [ %i.mf, %.noexc191.i ], [ %i.la, %.noexc187.i ], [ %i.kn, %.noexc183.i ] ; 2 uses
  %i.qa = load i64, ptr %i.ai, align 8, !range !10, !alias.scope !984, !noalias !796, !noundef !5
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit248.i, label %bb.fo

bb.fo:                                            ; preds = %.loopexit288.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit248.i unwind label %bb.ga, !noalias !800

bb.fp:                                            ; preds = %bb.bo
  %.sroa.3100.i.sroa.0.0.copyload = load ptr, ptr %.sroa.623.0..sroa_idx24.i, align 8, !noalias !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3100.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx26.i, i64 16, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.bo
  %.sroa.3100.i.sroa.0.0 = phi ptr [ undef, %bb.bo ], [ %.sroa.3100.i.sroa.0.0.copyload, %bb.fp ]
  %.sroa.098.0.i43 = phi i64 [ 2, %bb.bo ], [ %i.hy, %bb.fp ]
  %i.qc = load i64, ptr %i.al, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not144.i = icmp eq i64 %i.qc, -1
  br i1 %.not144.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3104.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.0..sroa_idx40.i, i64 24, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.0102.0.i = phi i64 [ %i.qc, %bb.fr ], [ 2, %bb.fq ]
  %i.qd = load i64, ptr %i.ak, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not145.i = icmp eq i64 %i.qd, -1
  br i1 %.not145.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3108.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.656.0..sroa_idx57.i, i64 24, i1 false)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.0106.0.i = phi i64 [ %i.qd, %bb.ft ], [ 2, %bb.fs ]
  %i.qe = load i64, ptr %i.aj, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not146.i = icmp eq i64 %i.qe, -1
  br i1 %.not146.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3112.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.0..sroa_idx74.i, i64 24, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.0110.0.i = phi i64 [ %i.qe, %bb.fv ], [ 2, %bb.fu ]
  %i.qf = load i64, ptr %i.ai, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not147.i = icmp eq i64 %i.qf, -1
  br i1 %.not147.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3116.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.690.0..sroa_idx91.i, i64 24, i1 false)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.0114.0.i = phi i64 [ %i.qf, %bb.fx ], [ 2, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !796
  br label %_RINvXs0_NvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBb_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB30_4read7StrReadEEBd_.exit

bb.fz:                                            ; preds = %bb.gl, %bb.ga, %.loopexit.split-lp.i
  %.pn156.i = phi { ptr, i32 } [ %i.qh, %bb.ga ], [ %.pn259.i, %bb.gl ], [ %.pn.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.qg = load i64, ptr %i.aj, align 8, !range !10, !noalias !796, !noundef !5
  %.not158.i = icmp eq i64 %i.qg, -1
  br i1 %.not158.i, label %bb.gc, label %bb.gn

bb.ga:                                            ; preds = %bb.fo
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit248.i: ; preds = %bb.fo, %.loopexit288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !796
  %i.qi = load i64, ptr %i.aj, align 8, !range !10, !alias.scope !985, !noalias !796, !noundef !5
  %i.qj = icmp eq i64 %i.qi, -1
  br i1 %i.qj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit250.i, label %bb.gb

bb.gb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit248.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit250.i unwind label %bb.gd, !noalias !800

bb.gc:                                            ; preds = %bb.gn, %bb.gd, %bb.fz
  %.pn159.i = phi { ptr, i32 } [ %i.ql, %bb.gd ], [ %.pn156.i, %bb.gn ], [ %.pn156.i, %bb.fz ] ; 2 uses
  %i.qk = load i64, ptr %i.ak, align 8, !range !10, !noalias !796, !noundef !5
  %.not161.i = icmp eq i64 %i.qk, -1
  br i1 %.not161.i, label %bb.gf, label %bb.go

bb.gd:                                            ; preds = %bb.gb
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit250.i: ; preds = %bb.gb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigEEEB15_.exit248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !796
  %i.qm = load i64, ptr %i.ak, align 8, !range !10, !alias.scope !986, !noalias !796, !noundef !5
  %i.qn = icmp eq i64 %i.qm, -1
  br i1 %i.qn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit252.i, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit250.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit252.i unwind label %bb.gg, !noalias !800

bb.gf:                                            ; preds = %bb.go, %bb.gg, %bb.gc
  %.pn162.i = phi { ptr, i32 } [ %i.qp, %bb.gg ], [ %.pn159.i, %bb.go ], [ %.pn159.i, %bb.gc ] ; 2 uses
  %i.qo = load i64, ptr %i.al, align 8, !range !10, !noalias !796, !noundef !5
  %.not164.i = icmp eq i64 %i.qo, -1
  br i1 %.not164.i, label %bb.gi, label %bb.gp

bb.gg:                                            ; preds = %bb.ge
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit252.i: ; preds = %bb.ge, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit250.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !796
  %i.qq = load i64, ptr %i.al, align 8, !range !10, !alias.scope !987, !noalias !796, !noundef !5
  %i.qr = icmp eq i64 %i.qq, -1
  br i1 %i.qr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit254.i, label %bb.gh

bb.gh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit252.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit254.i unwind label %bb.gj, !noalias !800

bb.gi:                                            ; preds = %bb.gp, %bb.gj, %bb.gf
  %.pn165.i = phi { ptr, i32 } [ %i.qt, %bb.gj ], [ %.pn162.i, %bb.gp ], [ %.pn162.i, %bb.gf ] ; 2 uses
  %i.qs = load i64, ptr %i.am, align 8, !range !10, !noalias !796, !noundef !5
  %.not167.i = icmp eq i64 %i.qs, -1
  br i1 %.not167.i, label %common.resume, label %bb.gq

bb.gj:                                            ; preds = %bb.gh
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit254.i: ; preds = %bb.gh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit252.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !796
  %i.qu = load i64, ptr %i.am, align 8, !range !10, !alias.scope !988, !noalias !796, !noundef !5
  %i.qv = icmp eq i64 %i.qu, -1
  br i1 %i.qv, label %_RINvXs0_NvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBb_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB30_4read7StrReadEEBd_.exit, label %bb.gk

bb.gk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEEB15_.exit254.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am), !noalias !800
  br label %_RINvXs0_NvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBb_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB30_4read7StrReadEEBd_.exit

bb.gl:                                            ; preds = %.thread.i, %.loopexit.split-lp.i
  %.pn259.i = phi { ptr, i32 } [ %i.pz, %.thread.i ], [ %.pn.ph.i, %.loopexit.split-lp.i ]
end_hunk_3
begin_hunk_4_@_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsamv9RYRPgRi_15candle_examples:bb.a
  %i.k = load i8, ptr %i.a, align 8, !range !7, !noalias !1009, !noundef !5
  switch i8 %i.k, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread14 [
    i8 2, label %.thread55.i
    i8 0, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i
  ], !prof !8

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread14: ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !noalias !1009, !nonnull !5, !noundef !5
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.l), !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1009
  br label %bb.d

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i: ; preds = %bb.b
  %i.n = load i8, ptr %i.h, align 1, !noalias !1009, !noundef !5 ; 2 uses
  store i8 1, ptr %i.e, align 8, !alias.scope !1010, !noalias !1007
  store i8 %i.n, ptr %i.f, align 1, !alias.scope !1010, !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1009
  br label %bb.c

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i.thread: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !alias.scope !1010, !noalias !1007, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i.thread
  %i.p = phi i8 [ %i.o, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i.thread ], [ %i.n, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.peel.i ]
  switch i8 %i.p, label %.loopexit.i [
    i8 32, label %.peel.next.i.preheader
    i8 10, label %.peel.next.i.preheader
    i8 9, label %.peel.next.i.preheader
    i8 13, label %.peel.next.i.preheader
    i8 58, label %.loopexit
  ], !prof !25

.peel.next.i.preheader:                           ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.backedge, %.peel.next.i.preheader
  store i8 0, ptr %i.e, align 8, !alias.scope !1011, !noalias !1012
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1014
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g), !noalias !1007
  %i.q = load i8, ptr %i.a, align 8, !range !7, !noalias !1014, !noundef !5
  switch i8 %i.q, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i [
    i8 2, label %.thread55.i
    i8 0, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i
  ], !prof !8

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i: ; preds = %.peel.next.i
  %i.r = load ptr, ptr %i.i, align 8, !noalias !1014, !nonnull !5, !noundef !5
  %i.s = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1014
  br label %bb.d

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i: ; preds = %.peel.next.i
  %i.t = load i8, ptr %i.h, align 1, !noalias !1014, !noundef !5 ; 2 uses
  store i8 1, ptr %i.e, align 8, !alias.scope !1006, !noalias !1007
  store i8 %i.t, ptr %i.f, align 1, !alias.scope !1006, !noalias !1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1014
  switch i8 %i.t, label %.loopexit.i [
    i8 32, label %.peel.next.i.backedge
    i8 10, label %.peel.next.i.backedge
    i8 9, label %.peel.next.i.backedge
    i8 13, label %.peel.next.i.backedge
    i8 58, label %.loopexit
  ], !prof !25

.peel.next.i.backedge:                            ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i
  br label %.peel.next.i, !llvm.loop !1000

.thread55.i:                                      ; preds = %.peel.next.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1004
  store i64 3, ptr %i.b, align 8, !noalias !1004
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val4.i = load i64, ptr %i.u, align 8, !alias.scope !1004, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val5.i = load i64, ptr %i.v, align 8, !alias.scope !1004, !noundef !5
  %i.w = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val4.i, i64 noundef %.val5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1004
  br label %bb.d

.loopexit.i:                                      ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1004
  store i64 6, ptr %i.c, align 8, !noalias !1004
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !1004, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val3.i = load i64, ptr %i.y, align 8, !alias.scope !1004, !noundef !5
  %i.z = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i, i64 noundef %.val3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1004
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread14, %.loopexit.i, %.thread55.i
  %.sroa.0.1.i.ph = phi ptr [ %i.w, %.thread55.i ], [ %i.z, %.loopexit.i ], [ %i.s, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.thread.thread.i ], [ %i.m, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i.thread14 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.aa, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

.loopexit:                                        ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.i.i, %bb.c
  store i8 0, ptr %i.e, align 8, !alias.scope !1016
  call fastcc void @_RINvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #19, !inline_history !1003
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess13next_key_seedNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9MapAccesspENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !15, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !6, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5
  call void @_RINvXsi_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB2f_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !15, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1034, !noalias !1035, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !1036, !noalias !1037 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1034, !noalias !1035, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1040, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !25

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !1041, !noalias !1037
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1032
  store i64 3, ptr %i.a, align 8, !noalias !1032
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1032
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1032
  store i64 6, ptr %i.b, align 8, !noalias !1032
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1032
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1042
  tail call void @_RINvXsi_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1053, !noalias !1051, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !1053, !noalias !1051
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !1052, !noalias !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1054
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1051
  %i.g = load i64, ptr %i.a, align 8, !range !11, !noalias !1054, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1054 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1051, !noalias !1052
  store i8 -1, ptr %0, align 8, !alias.scope !1051, !noalias !1052
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1054 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1055, !noalias !1056
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1054
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYNtNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtBa_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor18visit_borrowed_strNtNtBc_5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1061
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1061
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noalias !1061, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !24, !noalias !1061, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !1061
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #20, !noalias !1061
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !1061, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1061
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1060
  br label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit

_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.c, %bb.d
  store i8 3, ptr %0, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.67.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1150, !noalias !1151, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !1152, !noalias !1153 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1150, !noalias !1151, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1156, !noundef !5 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1157, !noalias !1153
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1158
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1158
  store i64 5, ptr %i.r, align 8, !noalias !1158
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1158
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !20

bb.e:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !1159, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !1163, !noundef !5
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1164, !noalias !1165
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !26

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1168, !noundef !5
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !1169, !noalias !1165
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !26

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !1172, !noundef !5
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !1173, !noalias !1165
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i, label %bb.k, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1174
  store i64 5, ptr %i.f, align 8, !noalias !1174
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1174
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1174
  store i64 9, ptr %i.e, align 8, !noalias !1174
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1174
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !1176, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1180, !noundef !5
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !1181, !noalias !1182
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !26

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1185, !noundef !5
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !1186, !noalias !1182
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !26

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !1189, !noundef !5
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !1190, !noalias !1182
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit50.i, label %bb.r, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1191
  store i64 5, ptr %i.d, align 8, !noalias !1191
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1191
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1191
  store i64 9, ptr %i.c, align 8, !noalias !1191
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1191
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !1193, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1197, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !1198, !noalias !1199
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !26

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1202, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !1203, !noalias !1199
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !26

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1206, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !1207, !noalias !1199
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !26

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1210, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !1211, !noalias !1199
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit59.i, label %bb.aa, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1212
  store i64 5, ptr %i.b, align 8, !noalias !1212
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1212
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1212
  store i64 9, ptr %i.a, align 8, !noalias !1212
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1212
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !1214, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1158
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1147
  %i.bt = load i64, ptr %i.p, align 8, !range !10, !noalias !1158, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !1215, !noalias !1147
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !1148, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1158
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1147
  %i.by = load i64, ptr %i.n, align 8, !range !11, !noalias !1158, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1158 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !21

bb.ae:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !21

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !1216, !noalias !1158
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !1158
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !1217

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1158
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1158
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !1218, !noalias !1158
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1218, !noalias !1158
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !1219, !noalias !1158
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !1219, !noalias !1158
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !1158, !nonnull !5, !align !15, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1158
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !1158
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !1220, !noalias !1221
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !1220, !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1158
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1158
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1158 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !1147
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !1222, !noalias !1223
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1222, !noalias !1223
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1222, !noalias !1223
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1158
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1158
  store i64 24, ptr %i.m, align 8, !noalias !1158
  %i.cs = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1158
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !1224, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1158
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_seqINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB23_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1147
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1158
  %i.cx = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.at unwind label %bb.as, !noalias !1147 ; 5 uses

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #16
          to label %bb.bm unwind label %bb.ax, !noalias !1147

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1158
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1158
  %i.da = load i8, ptr %i.l, align 8, !range !12, !noalias !1158, !noundef !5
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread114.i, label %bb.aw

.thread114.i:                                     ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1158
  br label %.thread87.i

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1158, !nonnull !5, !align !15, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !1158
  store i8 -1, ptr %i.q, align 8, !noalias !1158
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.thread87.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !1158
  store i8 -1, ptr %i.q, align 8, !noalias !1158
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l), !noalias !1147
  br label %.thread87.i

bb.ax:                                            ; preds = %bb.bb, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !1147
  unreachable

.thread87.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1158
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr nonnull %i.cx), !noalias !1147
  br label %.thread87.i

bb.az:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1158
  store i64 24, ptr %i.j, align 8, !noalias !1158
  %i.dh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1158
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

bb.ba:                                            ; preds = %bb.ae
  %i.dj = add i64 %i.y, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !1225, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1158
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB23_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1147
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1158
  %i.dm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !1147 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %bb.bm unwind label %bb.ax, !noalias !1147

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1158
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1158
  %i.dp = load i8, ptr %i.i, align 8, !range !12, !noalias !1158, !noundef !5
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1158
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1158, !nonnull !5, !align !15, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !1158
  store i8 -1, ptr %i.q, align 8, !noalias !1158
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !1158
  store i8 -1, ptr %i.q, align 8, !noalias !1158
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !1147
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1158
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr nonnull %i.dm), !noalias !1147
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1158
  store i64 10, ptr %i.g, align 8, !noalias !1158
  %i.dv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1158
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1158
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1147
  %i.dw = load i64, ptr %i.o, align 8, !range !10, !noalias !1158, !noundef !5 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsamv9RYRPgRi_15candle_examples(ptr noalias noundef nonnull align 8 %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !1147
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !1158, !nonnull !5, !align !15, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1158
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !1158
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !1226, !noalias !1227
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !1226, !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1158
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit59.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit50.i, %bb.ag, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !1148
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1158
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE11parse_identCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 3, 5) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

bb.a:                                             ; preds = %.thread
  %i.i = icmp eq ptr %i.j, %i.d
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.01.026 = phi ptr [ %1, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.026, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.k = load i8, ptr %i.e, align 8, !range !6, !alias.scope !1237, !noalias !1238, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i8, ptr %i.f, align 1, !alias.scope !1237, !noalias !1238
  store i8 0, ptr %i.e, align 8, !alias.scope !1237, !noalias !1238
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g), !noalias !1238
  %i.n = load i8, ptr %i.a, align 8, !range !7, !noalias !1239, !noundef !5
  switch i8 %i.n, label %bb.d [
    i8 2, label %bb.e
    i8 0, label %.thread23
  ], !prof !8

.thread23:                                        ; preds = %bb.c
  %i.o = load i8, ptr %i.h, align 1, !noalias !1239, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1239, !nonnull !5, !noundef !5
  %i.r = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  br label %.loopexit

.thread:                                          ; preds = %bb.b, %.thread23
  %.sroa.10.11322 = phi i8 [ %i.o, %.thread23 ], [ %i.m, %bb.b ]
  %i.s = load i8, ptr %.sroa.01.026, align 1, !noundef !5
  %.not = icmp eq i8 %.sroa.10.11322, %i.s
  br i1 %.not, label %bb.a, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !1240, !noalias !1241, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i = load i64, ptr %i.u, align 8, !alias.scope !1240, !noalias !1241, !noundef !5
  %i.v = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !1240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 9, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i5 = load i64, ptr %i.w, align 8, !alias.scope !1242, !noalias !1243, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i6 = load i64, ptr %i.x, align 8, !alias.scope !1242, !noalias !1243, !noundef !5
  %i.y = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i5, i64 noundef %.val2.i6), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.sroa.0.1 = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ], [ %i.y, %bb.f ], [ null, %bb.a ]
  ret ptr %.sroa.0.1
}

end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1479, !noalias !1480, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1479, !noalias !1480, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1479, !noalias !1480, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !1481, !noundef !5
  switch i8 %i.o, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1484, !noalias !1482
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1485, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1486
  store i64 13, ptr %i.d, align 8, !noalias !1486
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1486
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1482, !noalias !1483
  store i64 1, ptr %i.f, align 8, !alias.scope !1482, !noalias !1483
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1486
  store i64 5, ptr %i.c, align 8, !noalias !1486
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1486
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !1482, !noalias !1483
  store i64 1, ptr %i.f, align 8, !alias.scope !1482, !noalias !1483
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsaPlfBUY5LAj_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !1488, !noundef !5 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  store i64 14, ptr %i.a, align 8, !noalias !1488
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1488
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !21

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1488
  store i64 14, ptr %i.b, align 8, !noalias !1488
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1488
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !1491, !noalias !1482
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i) #22
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !23, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !23, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !15, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !5, !align !15, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1514, !noalias !1515, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1514, !noalias !1515, !noundef !5 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1514, !noalias !1515, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !1516, !noundef !5 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1514, !noalias !1515
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !20

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !1517, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1518, !noundef !5
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !1519
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053) #22
  %i.ap = load i64, ptr %i.b, align 8, !range !23, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o
end_hunk_5
begin_hunk_6_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1611, !noalias !1612, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1611, !noalias !1612, !noundef !5 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1611, !noalias !1612, !nonnull !5, !noundef !5 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !1613, !noundef !5 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !1611, !noalias !1612
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, !prof !26

.preheader:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !1614, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !26

bb.d:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, %.preheader, %bb.c, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.y = phi i64 [ %i.o, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1615, !noundef !5
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1616
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !1617, !noundef !5
  switch i8 %i.ai, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !1618
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !1619, !noundef !5
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit.loopexit73, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit.loopexit73, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !llvm.loop !1554

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1620, !noundef !5 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !1554

.loopexit.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !1618
  switch i8 %i.aq, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1618
  store i64 13, ptr %i.c, align 8, !noalias !1618
  %i.at = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1618
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !1622
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1623, !noundef !5
  switch i8 %i.ax, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !1626
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1627, !noundef !5
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !1628, !noalias !1629
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, !prof !26

.preheader.i.i:                                   ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1630
  store i64 13, ptr %i.b, align 8, !noalias !1630
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1630
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !1631, !noundef !5
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

bb.i:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i
  %i.bn = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !1632
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !1634
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1635, !noundef !5
  switch i8 %i.br, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !1638
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !1639, !noundef !5
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !1640, !noalias !1641
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, !prof !26

.preheader.i:                                     ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1633
  store i64 13, ptr %i.a, align 8, !noalias !1633
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1633
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !1642, !noundef !5
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i
  %i.ch = add i64 %i.cc, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !1643
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !1618
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.e, %bb.l, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit.loopexit73, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40 ], [ %i.aa, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsamv9RYRPgRi_15candle_examples.exit.loopexit73 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1669, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !1669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1672, !noalias !1673, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1672, !noalias !1673, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !1674, !noundef !5
  switch i8 %i.n, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !1677, !noalias !1678, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !1679, !noundef !5
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !1677, !noalias !1678
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !20

bb.d:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1680, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1681
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsaPlfBUY5LAj_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !1683, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1683
  store i64 14, ptr %i.a, align 8, !noalias !1683
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1683
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !21

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1683
  store i64 14, ptr %i.b, align 8, !noalias !1683
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1683
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1682, !noalias !1684
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit
  ret void

end_hunk_6
begin_hunk_7_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsamv9RYRPgRi_15candle_examples:bb.a
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38, label %bb.z, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1818
  store i64 5, ptr %i.b, align 8, !noalias !1818
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1818
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1818
  store i64 9, ptr %i.a, align 8, !noalias !1818
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1818
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !1819
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !10, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !1820
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !11, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread26, %bb.ai, %bb.ag, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread26 ], [ %i.cb, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit ], [ %i.ce, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30 ], [ %i.cg, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsamv9RYRPgRi_15candle_examples(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !15, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread26:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !10, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !15, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1835, !noalias !1836, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !1834, !noalias !1837 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1835, !noalias !1836, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1840, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !19

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !1841, !noalias !1837
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !1842
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1870, !noalias !1871, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !1869, !noalias !1872 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1870, !noalias !1871, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1875, !noundef !5
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !19

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1876, !noalias !1872
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !1877
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !1878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !1880, !noundef !5
  switch i8 %i.v, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !1881, !noalias !1882
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsamv9RYRPgRi_15candle_examples.exit17: ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtB5_11TokenConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples13chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error15duplicate_fieldCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template13StringOrTokenENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2Z_4read7StrReadEEB1o_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsamv9RYRPgRi_15candle_examples13chat_template18ChatTemplateConfigENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB34_4read7StrReadEEB1o_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyINtNtB1U_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read9parse_strCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessINtNtBa_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_seqINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB23_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB23_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtBF_11TokenConfigNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBH_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsi_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsk_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB6_13KeyClassifierNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyINtNtBa_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsi_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB2f_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE12fix_position0ECsamv9RYRPgRi_15candle_examples(ptr noalias noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #10

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsamv9RYRPgRi_15candle_examples(ptr noalias noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext, i8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_7
