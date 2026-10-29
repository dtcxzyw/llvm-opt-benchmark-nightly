Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.08?download=true
inline.NumInlined: 442
inline.NumDeleted: 217
begin_hunk_0_@_RNvMs_NtCsYHiOVFtGb0_5hound4readINtB4_9WavReaderQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE27read_wave_format_extensibleCsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %0, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i116134, ptr %.sroa.476.0..sroa_idx, align 8
  br label %bb.af

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit118.thread: ; preds = %bb.c, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit118
  %i.p = load i16, ptr %i.c, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.q = icmp eq i16 %i.p, 22
  br i1 %i.q, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit118.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.r = ptrtoint ptr %i.y to i64
  %i.s = add i64 %.sroa.01.0.i111166, %i.r        ; 2 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.j, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.01.0.i111166 = phi i64 [ 0, %bb.h ], [ %i.s, %bb.i ] ; 3 uses
  %i.u = sub nuw nsw i64 2, %.sroa.01.0.i111166
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i111166
  %.val.i.i123 = load ptr, ptr %.val.i, align 8, !noalias !775, !nonnull !6, !align !10, !noundef !6
  %i.w = call { i64, ptr } @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i123, ptr noalias nofree noundef nonnull %i.v, i64 noundef range(i64 0, 23) %i.u) ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 3 uses
  %i.z = trunc nuw i64 %i.x to i1
  %.not103 = icmp eq ptr %i.y, null               ; 2 uses
  br i1 %i.z, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not103, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread137, label %bb.i

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread137: ; preds = %bb.k
  %i.aa = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 28) #24
  br label %bb.m

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114: ; preds = %bb.j
  br i1 %.not103, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread, label %bb.m

bb.l:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit118.thread
  store i64 1, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @142, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %.sroa.580.0..sroa_idx, align 8
  br label %bb.af

bb.m:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread137, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114
  %.sroa.0.0.i112140 = phi ptr [ %i.aa, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread137 ], [ %i.y, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %0, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i112140, ptr %.sroa.486.0..sroa_idx, align 8
  br label %bb.af

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread: ; preds = %bb.i, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114
  %i.ab = load i16, ptr %i.b, align 2             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !776
  store i32 0, ptr %i.a, align 4, !noalias !776
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %i.ac = ptrtoint ptr %i.aj to i64
  %i.ad = add i64 %.sroa.01.0.i167, %i.ac         ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 4
  br i1 %i.ae, label %bb.o, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.o:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread, %bb.n
  %.sroa.01.0.i167 = phi i64 [ 0, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit114.thread ], [ %i.ad, %bb.n ] ; 3 uses
  %i.af = sub nuw nsw i64 4, %.sroa.01.0.i167
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i167
  %.val.i.i125 = load ptr, ptr %.val.i, align 8, !noalias !777, !nonnull !6, !align !10, !noundef !6
  %i.ah = call { i64, ptr } @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i125, ptr noalias nofree noundef nonnull %i.ag, i64 noundef range(i64 0, 23) %i.af) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  %.not.i = icmp eq ptr %i.aj, null               ; 2 uses
  br i1 %i.ak, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread145, label %bb.n

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread145: ; preds = %bb.p
  %i.al = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 28) #24, !noalias !778
  br label %bb.q

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.o
  br i1 %.not.i, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread, label %bb.q

bb.q:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread145
  %.sroa.0.0.i148 = phi ptr [ %i.al, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread145 ], [ %i.aj, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !776
  store i64 0, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i148, ptr %.sroa.489.0..sroa_idx, align 8
  br label %bb.af

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread: ; preds = %bb.n, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.t
  %i.am = ptrtoint ptr %i.at to i64
  %i.an = add i64 %.sroa.01.0.i107168, %i.am      ; 2 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %bb.s, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread

bb.s:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread, %bb.r
  %.sroa.01.0.i107168 = phi i64 [ 0, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread ], [ %i.an, %bb.r ] ; 3 uses
  %i.ap = sub nuw nsw i64 16, %.sroa.01.0.i107168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i107168
  %.val.i.i127 = load ptr, ptr %.val.i, align 8, !noalias !779, !nonnull !6, !align !10, !noundef !6
  %i.ar = call { i64, ptr } @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i127, ptr noalias nofree noundef nonnull %i.aq, i64 noundef range(i64 0, 23) %i.ap) ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 3 uses
  %i.au = trunc nuw i64 %i.as to i1
  %.not104 = icmp eq ptr %i.at, null              ; 2 uses
  br i1 %i.au, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not104, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread154, label %bb.r

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread154: ; preds = %bb.t
  %i.av = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 28) #24
  br label %bb.u

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110: ; preds = %bb.s
  br i1 %.not104, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread, label %bb.u

bb.u:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread154, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110
  %.sroa.0.0.i108157 = phi ptr [ %i.av, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread154 ], [ %i.at, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110 ]
  store i64 0, ptr %0, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i108157, ptr %.sroa.494.0..sroa_idx, align 8
  br label %bb.ag

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread: ; preds = %bb.r, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110
  %i.aw = load i8, ptr %i.d, align 1, !noundef !6
  switch i8 %i.aw, label %bb.v [
    i8 1, label %bb.w
    i8 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread
  store i64 4, ptr %0, align 8
  br label %bb.ag

bb.w:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !noundef !6
  %i.bb = or i8 %i.ba, %i.ay
  %or.cond = icmp eq i8 %i.bb, 0
  br i1 %or.cond, label %bb.y, label %bb.v

bb.x:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit110.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !noundef !6
  %i.bg = or i8 %i.bf, %i.bd
  %or.cond38 = icmp eq i8 %i.bg, 0
  br i1 %or.cond38, label %bb.ab, label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bk = load <4 x i8>, ptr %i.bj, align 1
  %i.bl = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.bi, i64 0
  %i.bm = or <4 x i8> %i.bk, %i.bl
  %.fr221 = freeze <4 x i8> %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, -128
  %.fr221.scalar = bitcast <4 x i8> %.fr221 to i32
  %i.bq = icmp eq i32 %.fr221.scalar, 1048576
  %op.rdx214 = select i1 %i.bq, i1 %i.bp, i1 false
  br i1 %op.rdx214, label %bb.z, label %bb.v

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.bu = load <4 x i8>, ptr %i.bt, align 1
  %i.bv = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.bs, i64 0
  %i.bw = or <4 x i8> %i.bu, %i.bv
  %.fr222 = freeze <4 x i8> %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, -101
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = icmp eq i8 %i.cb, 113
  %.fr222.scalar = bitcast <4 x i8> %.fr222 to i32
  %i.cd = icmp eq i32 %.fr222.scalar, 939567616
  %op.rdx = select i1 %i.cd, i1 %i.bz, i1 false
  %op.rdx213 = select i1 %op.rdx, i1 %i.cc, i1 false
  br i1 %op.rdx213, label %bb.aa, label %bb.v

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.sroa.096.0 = phi i8 [ 1, %bb.z ], [ 0, %bb.ac ]
  %.not105 = icmp eq i16 %i.ab, 0
  br i1 %.not105, label %bb.ad, label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ch = load <4 x i8>, ptr %i.cg, align 1
  %i.ci = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.cf, i64 0
  %i.cj = or <4 x i8> %i.ch, %i.ci
  %.fr = freeze <4 x i8> %i.cj
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, -128
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.cn = icmp eq i32 %.fr.scalar, 1048576
  %op.rdx217 = select i1 %i.cn, i1 %i.cm, i1 false
  br i1 %op.rdx217, label %bb.ac, label %bb.v

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.cr = load <4 x i8>, ptr %i.cq, align 1
  %i.cs = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.cp, i64 0
  %i.ct = or <4 x i8> %i.cr, %i.cs
  %.fr218 = freeze <4 x i8> %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, -101
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 113
  %.fr218.scalar = bitcast <4 x i8> %.fr218 to i32
  %i.da = icmp eq i32 %.fr218.scalar, 939567616
  %op.rdx215 = select i1 %i.da, i1 %i.cw, i1 false
  %op.rdx216 = select i1 %op.rdx215, i1 %i.cz, i1 false
  br i1 %op.rdx216, label %bb.aa, label %bb.v

bb.ad:                                            ; preds = %bb.ae, %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %.sroa.096.0, ptr %i.db, align 4
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.ab, ptr %i.dc, align 2
  br label %bb.ad

bb.af:                                            ; preds = %bb.f, %bb.m, %bb.ag, %bb.q, %bb.l, %bb.g, %bb.ad
  ret void

bb.ag:                                            ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsYHiOVFtGb0_5hound4readINtB4_9WavReaderQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEE27read_wave_format_ieee_floatCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 16, 0) %2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  switch i32 %2, label %bb.i [
    i32 18, label %bb.b
    i32 16, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  %.val.i = load ptr, ptr %1, align 8, !noalias !784, !nonnull !6, !align !10, !noundef !6
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.b = ptrtoint ptr %i.i to i64
  %i.c = add i64 %.sroa.01.0.i22, %i.b            ; 2 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.d, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.01.0.i22 = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ] ; 3 uses
  %i.e = sub nuw nsw i64 2, %.sroa.01.0.i22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i22
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !785, !nonnull !6, !align !10, !noundef !6
  %i.g = call { i64, ptr } @_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull %i.f, i64 noundef range(i64 0, 23) %i.e) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = trunc nuw i64 %i.h to i1
  %.not = icmp eq ptr %i.i, null                  ; 2 uses
  br i1 %i.j, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread17, label %bb.c

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread17: ; preds = %bb.e
  %i.k = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 28) #24
  br label %bb.f

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.d
  br i1 %.not, label %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread17, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %.sroa.0.0.i20 = phi ptr [ %i.k, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread17 ], [ %i.i, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 0, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i20, ptr %.sroa.45.0..sroa_idx, align 8
  br label %bb.l

_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread: ; preds = %bb.c, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %i.l = load i16, ptr %i.a, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread
  store i64 1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @143, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.a, %_RNvXNtCsYHiOVFtGb0_5hound4readQQQINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtB2_7ReadExt9read_intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.o = load i16, ptr %i.n, align 2, !noundef !6
  %i.p = icmp eq i16 %i.o, 32
  br i1 %i.p, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @141, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.q, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @144, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.512.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.g, %bb.f, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775798
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 10
  switch i64 %i.e, label %bb.f [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 8, label %bb.d
    i64 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.6.0 = phi ptr [ @22, %bb.e ], [ @147, %bb.b ], [ @22, %bb.c ], [ @149, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.e ], [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_strCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %exitcond.not.i.i38 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i.i38, label %.outer.i.i._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.lr.ph

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.lr.ph: ; preds = %bb.a, %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %.sroa.05.0.ph.i.i10 = phi ptr [ %i.o, %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i ], [ %0, %bb.a ] ; 4 uses
  %.sroa.5.0.ph.i.i9 = phi i64 [ %i.q, %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i ], [ %1, %bb.a ] ; 3 uses
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i
  %i.f = add i64 %.sroa.010.0.i.i4, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %.sroa.5.0.ph.i.i9
  br i1 %exitcond.not.i.i, label %.outer.i.i._crit_edge, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i

.outer.i.i._crit_edge:                            ; preds = %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i, %bb.b, %bb.a
  %.sroa.5.0.ph.i.i.lcssa = phi i64 [ %.sroa.5.0.ph.i.i9, %bb.b ], [ %1, %bb.a ], [ %i.q, %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i ] ; 2 uses
  %.sroa.05.0.ph.i.i.lcssa = phi ptr [ %.sroa.05.0.ph.i.i10, %bb.b ], [ %0, %bb.a ], [ %i.o, %_RINvYNtNtCsaPlfBUY5LAj_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i ]
  %i.g = icmp eq i64 %.sroa.5.0.ph.i.i.lcssa, 0
  br i1 %i.g, label %_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.c

bb.c:                                             ; preds = %.outer.i.i._crit_edge
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.lcssa)
  br label %_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.lr.ph, %bb.b
  %.sroa.010.0.i.i4 = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.lr.ph ], [ %i.f, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i10, i64 %.sroa.010.0.i.i4
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !792, !noundef !6 ; 3 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_RNvNtCsaPlfBUY5LAj_10serde_json3ser6ESCAPE, i64 %i.j
end_hunk_0
